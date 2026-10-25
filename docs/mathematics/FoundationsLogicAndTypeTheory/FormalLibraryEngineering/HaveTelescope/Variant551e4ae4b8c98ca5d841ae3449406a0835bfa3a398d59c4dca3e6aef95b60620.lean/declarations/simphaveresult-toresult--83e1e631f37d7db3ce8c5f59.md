# SimpHaveResult.toResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d3592613c6115e01f41195aaf5e02a43bc834255f84504422ac4342605d9bf60",
  "kind": "def",
  "lexical_name": "SimpHaveResult.toResult",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "simphaveresult-toresult--83e1e631f37d7db3ce8c5f59",
  "source": {
    "blob": "4e020348ec2f18dbc5fa70001e85ec4b22868421",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 367,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83e1e631f37d7db3ce8c5f592347f92494998190b5f5ab44af2a54fb9a94bb1f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d3592613c6115e01f41195aaf5e02a43bc834255f84504422ac4342605d9bf60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 367–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def SimpHaveResult.toResult (u : Level) (source : Expr) (result : SimpHaveResult) (keepUnused : Bool) : MetaM MonadSimp.Result := do
  match result with
  | { expr, exprType, exprInit, exprResult, proof, modified, .. } =>
    if modified then
      let proof :=
          -- Add a type hint to convert back into `have` form.
          mkExpectedPropHint (expectedProp := mkApp3 (mkConst ``Eq [u]) exprType source exprResult) <|
            -- Add in a second type hint, for use in an optimization to avoid zeta/beta reductions in the kernel
            -- The base case in `simpHaveTelescopeAux` detects this construction and uses `exprType`/`exprInit`
            -- to construct the `SimpHaveResult`.
            -- If the kernel were to support `have` forms of the congruence lemmas this would not be necessary.
            mkExpectedPropHint (expectedProp := mkApp3 (mkConst ``Eq [u]) exprType exprInit expr) proof
      if keepUnused then
        return .step exprResult proof
      else
        let exprResult' ← zetaUnused exprResult
        if exprResult' == exprResult then
          return .step exprResult proof
        else
          let proof := mkApp6 (mkConst ``Eq.trans [u]) exprType source exprResult exprResult' proof
            (mkApp2 (mkConst ``Eq.refl [u]) exprType exprResult')
          return .step exprResult' proof
    else if keepUnused then
      return .rfl
    else
      let exprResult ← zetaUnused source
      if exprResult == source then
        return .rfl
      else
        let proof := mkApp2 (mkConst ``Eq.refl [u]) exprType exprResult
        return .step exprResult proof

/--
Routine for simplifying `have` telescopes. Used by `simpLet`.
This is optimized to be able to handle deep `have` telescopes while avoiding quadratic complexity
arising from the locally nameless expression representations.

## Overview

Consider a `have` telescope:
```
have x₁ : T₁ := v₁; ...; have xₙ : Tₙ := vₙ; b
```
We say `xᵢ` is *fixed* if it appears in the type of `b`.
If `xᵢ` is fixed, then it can only be rewritten using definitional equalities.
Otherwise, we can freely rewrite the value using a propositional equality `vᵢ = vᵢ'`.
The body `b` can always be freely rewritten using a propositional equality `b = b'`.
(All the mentioned equalities must be type correct with respect to the obvious local contexts.)

If `xᵢ` neither appears in `b` nor any `Tⱼ` nor any `vⱼ`, then its `have` is *unused*.
Unused `have`s can be eliminated, which we do if `cfg.zetaUnused` is true.
We clear `have`s from the end, to be able to transitively clear chains of unused `have`s.
This is why we honor `zetaUnused` here even though `reduceStep` is also responsible for it;
`reduceStep` can only eliminate unused `have`s at the start of a telescope.
Eliminating all transitively unused `have`s at once like this also avoids quadratic complexity.

If `debug.simp.check.have` is enabled then we typecheck the resulting expression and proof.

## Proof generation

There are two main complications with generating proofs.
1. We work almost exclusively with expressions with loose bound variables,
   to avoid overhead from instantiating and abstracting free variables,
   which can lead to complexity quadratic in the telescope length.
   (See `HaveTelescopeInfo`.)
2. We want to avoid triggering zeta reductions in the kernel.

Regarding this second point, the issue is that we cannot organize the proof using congruence theorems
in the obvious way. For example, given
```
theorem have_congr {α : Sort u} {β : Sort v} {a a' : α} {f f' : α → β}
    (h₁ : a = a') (h₂ : ∀ x, f x = f' x) :
    (have x := a; f x) = (have x := a'; f' x)
```
the kernel sees that the type of `have_congr (fun x => b) (fun x => b') h₁ h₂`
is `(have x := a; (fun x => b) x) = (have x := a'; (fun x => b') x)`,
since when instantiating values it does not beta reduce at the same time.
Hence, when `is_def_eq` is applied to the LHS and `have x := a; b` for example,
it will do `whnf_core` to both sides.

Instead, we use the form `(fun x => b) a = (fun x => b') a'` in the proofs,
which we can reliably match up without triggering beta reductions in the kernel.
The zeta/beta reductions are then limited to the type hint for the entire telescope,
when we convert this back into `have` form.
In the base case, we include an optimization to avoid unnecessary zeta/beta reductions,
by detecting a `simpHaveTelescope` proofs and removing the type hint.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620.lean#L367).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e020348ec2f18dbc5fa70001e85ec4b22868421` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
