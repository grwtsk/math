# simpFixedPrefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2542590571deb59ea2e02293e7e6900b7671a3586c5f246fd67cf4218f748095",
  "kind": "def",
  "lexical_name": "simpFixedPrefix",
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
  "slug": "simpfixedprefix--1525c6e6fea027336dc3ca6f",
  "source": {
    "blob": "559b0157c620291795eaf092087dd0ad761dabf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 233,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant5a40cf81ca4b91bf7e8dd0f5ffb0657a5c05114cbbf8dd973c882f63b6b36482.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1525c6e6fea027336dc3ca6fba77b6b0c94eb058610571da5d24950c377eff70",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant5a40cf81ca4b91bf7e8dd0f5ffb0657a5c05114cbbf8dd973c882f63b6b36482.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2542590571deb59ea2e02293e7e6900b7671a3586c5f246fd67cf4218f748095`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def simpFixedPrefix (e : Expr) (prefixSize : Nat) (suffixSize : Nat) : SimpM Result := do
  let numArgs := e.getAppNumArgs
  if numArgs ≤ prefixSize then
    -- Nothing to be done
    return .rfl
  else if numArgs > prefixSize + suffixSize then
    simpOverApplied e (numArgs - prefixSize - suffixSize) (main suffixSize)
  else
    main (numArgs - prefixSize) e
where
  main (n : Nat) (e : Expr) : SimpM Result := do
    return (← go n e).1

  go (i : Nat) (e : Expr) : SimpM (Result × Expr) := do
    if i == 0 then
      return (.rfl, default)
    else
      let .app f a := e | unreachable!
      let (hf, fType) ← go (i-1) f
      -- Propagate `cd` from both sub-results. Even when both return `.rfl`,
      -- either might succeed in a different context, changing the result.
      match hf, (← simp a) with
      | .rfl _ cd₁,  .rfl _ cd₂ => return (mkRflResultCD (cd₁ || cd₂), default)
      | .step f' hf _ cd₁, .rfl _ cd₂ =>
        let .forallE _ α β _ ← whnfToForall fType | unreachable!
        let e' ← mkAppS f' a
        let u ← getLevel α
        let v ← getLevel β
        let h := mkApp6 (mkConst ``congrFun' [u, v]) α β f f' hf a
        return (.step e' h (contextDependent := cd₁ || cd₂), β)
      | .rfl _ cd₁, .step a' ha _ cd₂ =>
        let fType ← getFnType f (i-1)
        let .forallE _ α β _ ← whnfToForall fType | unreachable!
        let e' ← mkAppS f a'
        let u ← getLevel α
        let v ← getLevel β
        let h := mkApp6 (mkConst ``congrArg [u, v]) α β a a' f ha
        return (.step e' h (contextDependent := cd₁ || cd₂), β)
      | .step f' hf _ cd₁, .step a' ha _ cd₂ =>
        let .forallE _ α β _ ← whnfToForall fType | unreachable!
        let e' ← mkAppS f' a'
        let u ← getLevel α
        let v ← getLevel β
        let h := mkApp8 (mkConst ``congr [u, v]) α β f f' a a' hf ha
        return (.step e' h (contextDependent := cd₁ || cd₂), β)

/--
Simplifies arguments of a function application with interlaced rewritable/fixed arguments.
Uses `rewritable[i]` to determine whether argument `i` should be simplified.
For rewritable arguments, calls `simp` and uses `congrFun'`, `congrArg`, and `congr`; for fixed arguments,
uses `congrFun` to propagate changes from earlier arguments.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant5a40cf81ca4b91bf7e8dd0f5ffb0657a5c05114cbbf8dd973c882f63b6b36482.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant5a40cf81ca4b91bf7e8dd0f5ffb0657a5c05114cbbf8dd973c882f63b6b36482.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `559b0157c620291795eaf092087dd0ad761dabf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
