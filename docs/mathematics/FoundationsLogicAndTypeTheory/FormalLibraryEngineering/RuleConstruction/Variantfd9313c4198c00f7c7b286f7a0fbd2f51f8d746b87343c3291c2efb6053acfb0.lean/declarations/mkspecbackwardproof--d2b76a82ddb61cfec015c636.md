# mkSpecBackwardProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:44070ef64a0d0c34140ddc0ffcb925d82bf20849f412af9324c6c66bdf1bb7ea",
  "kind": "def",
  "lexical_name": "mkSpecBackwardProof",
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
  "slug": "mkspecbackwardproof--d2b76a82ddb61cfec015c636",
  "source": {
    "blob": "e39485b4727669e40b2752d74a633be14945f721",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 191,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variantfd9313c4198c00f7c7b286f7a0fbd2f51f8d746b87343c3291c2efb6053acfb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2b76a82ddb61cfec015c6367ab21b577a7e080703f261ee9491a406e0116fa3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variantfd9313c4198c00f7c7b286f7a0fbd2f51f8d746b87343c3291c2efb6053acfb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:44070ef64a0d0c34140ddc0ffcb925d82bf20849f412af9324c6c66bdf1bb7ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkSpecBackwardProof
    (pre prog postSpec epostSpec specProof EPred : Expr) (ss ssTypes : Array Expr)
    (stateArgNames : Array Name := #[]) : MetaM AbstractMVarsResult := do
  /- we start with `pre ⊑ wp prog post epost` where
  1. `pre` represents the Lean expression for `pre`
  2. `prog`, `postSpec`, and `epostSpec` are the selected arguments of the spec's `wp` RHS
  3. `specProof` is the proof of the spec `pre ⊑ wp prog postSpec epostSpec`
  4. `ss` represents the Lean expressions for the state variables `s1`, `s2`, ..., `sn`
  5. `ssTypes` represents the Lean types for the state variables `s1`, `s2`, ..., `sn` -/
  let mut postAbstract := postSpec.consumeMData
  let mut epostAbstract := epostSpec.consumeMData
  let mut specApplied := specProof

  /- abstract concrete `post` if it is not already abstract -/
  unless postAbstract.isMVar do
    /- `α → Pred`: type of `post` -/
    let postTy ← Meta.inferType postSpec
    /- mvar `postAbstract` for new abstract `post` -/
    postAbstract ← mkFreshExprMVar (userName := `Post) postTy
    /- premise type `∀ (a : α) (s₁ : σ₁) ... (sₙ : σₙ), postSpec a s₁ ... sₙ → postAbstract a s₁ ... sₙ` -/
    let hpostTy ← mkPostPointwisePremise postSpec postAbstract postTy ssTypes stateArgNames
    /- mvar `?postImpl` for the proof of the premise -/
    let hpost ← mkFreshExprMVar (userName := `postImpl) hpostTy
    /- `wp_consequence_le` expects its premise at the *function-lattice* order `postSpec ⊑ postAbstract`,
       whereas `hpost` is stated pointwise (`∀ a s…, postSpec a s… ⊑ postAbstract a s…`). The two are
       defeq, but unfolding the function-lattice `⊑` instance is blocked when the post's domain is a
       metavariable (e.g. the accumulator `β` of a `forIn` loop spec). Cast `hpost` to the function
       order here so the defeq is forced at this depth, keeping the user-facing VC pointwise. -/
    let relTy ← mkAppM ``PartialOrder.rel #[postSpec, postAbstract]
    let hpostRel ← mkExpectedTypeHint hpost relTy
    /- get the proof of `pre ⊑ wp prog postAbstract epostSpec`, where `post` is abstracted.
       Uses wp_consequence_le: post ⊑ post' → pre ⊑ wp x post epost → pre ⊑ wp x post' epost -/
    specApplied ← mkAppM ``WP.wp_consequence_le #[prog, postSpec, postAbstract, epostSpec, hpostRel, specApplied]

  /- abstract concrete `epost` if it is not already abstract -/
  unless epostAbstract.isMVar do
    /- `EPost⟨t₁, t₂, ..., tₙ⟩`: type of `epost` -/
    let epostTy ← Meta.inferType epostSpec
    /- mvar `epostAbstract` for new abstract `epost` -/
    epostAbstract ← mkFreshExprMVar (userName := `EPost) epostTy
    /- if `epost` is `⊥`, then `epost ⊑ epostAbstract` holds trivially and
      abstracting `epost` can be simply done by `WP.wp_econs_bot_le` without
      introducing a new premise. This case is quite common, that's why we handle
      it specially. -/
    let isBot ← try
        let botEPost ← mkAppOptM ``Lean.Order.bot #[epostTy, none]
        isDefEqGuarded epostSpec botEPost
      catch _ => pure false
    if isBot then
      /- get the proof of `pre ⊑ wp prog postAbstract epostAbstract`, where `epost (= ⊥)` is abstracted.
        This proof DOES NOT have a `?epostImpl` premise -/
      specApplied ← mkAppM ``WP.wp_econs_bot_le #[prog, postAbstract, epostAbstract, specApplied]
    else
      /- Decompose `epostSpec ⊑ epostAbstract` into per-component proofs
        using `EPost.Cons.mk_le` and `EPost.Nil.le` -/
      let hepost ← decomposeEPostRel EPred epostSpec epostAbstract stateArgNames
      specApplied ← mkAppM ``WP.wp_econs_le #[prog, postAbstract, epostSpec, epostAbstract, hepost, specApplied]

  /- By default we always abstract `pre`, since in most of the specifications
    `pre` is not schematic. In exceptional cases, where `pre` is schematic, it
    is redundant, but we still do that to keep the code simple.

    Here we also apply the excess state arguments to `pre` and `wp prog postAbstract epostAbstract` -/
  /- use `beta` to create `pre s₁ ... sₙ`  to avoid creating beta redexes when `pre` is a lambda -/
  let preApplied := pre.beta ss
  /- proof of the original theorem with abstracted `post` and `epost` specialized to the excess state arguments -/
  specApplied := mkAppN specApplied ss
  /- `wp prog postAbstract epostAbstract s₁ ... sₙ` -/
  let wpTy ← mkAppM ``Std.Internal.Do.wp <| #[prog, postAbstract, epostAbstract] ++ ss
  let specAppliedTy ← mkAppM ``PartialOrder.rel #[preApplied, wpTy]
  /- later when the whole proof is type checked, we want to help the kernel by providing the expected type -/
  specApplied ← mkExpectedTypeHint specApplied specAppliedTy
  let preAppliedTy ← Meta.inferType preApplied
  /- create a new mvar for the abstracted `pre` -/
  let preAbstract ← mkFreshExprMVar (userName := `Pre) preAppliedTy
  let specAbstractTy ← mkAppM ``PartialOrder.rel #[preAbstract, preApplied]
  /- create a new mvar for the proof of the abstracted `pre` -/
  let specAbstract ← mkFreshExprMVar (userName := `vc) specAbstractTy
  /- use `PartialOrder.rel_trans` to compose the abstracted `pre` and the proof of the original theorem -/
  specApplied ← mkAppM ``PartialOrder.rel_trans #[specAbstract, specApplied]

  abstractMVars specApplied

/--
Normalize an instantiated equality spec `lhs = rhs` (both of type `info.M α`) to the `⊑ wp` form
`wp rhs Q E ⊑ wp lhs Q E` by instantiating `wp_le_wp_of_eq` with fresh schematic `Q`/`E`.

The schematic `Q`/`E` make the postcondition and exception-postcondition VCs collapse in
`mkSpecBackwardProof`, so the resulting rule rewrites a `wp lhs` goal to a `wp rhs` premise, matching
the equational behaviour of a simp spec. Leftover dictionary metavariables (abstract-monad equations
such as `Spec.UnfoldLift.get`) are synthesized first, and dictionary projections in `rhs` are reduced
so the RHS exposes the actual operation (e.g. `MonadState.modifyGet`'s RHS `inst.modifyGet` reduces to
`MonadStateOf.modifyGet`). Reducing, rather than folding the projection, is essential: folding would
turn it back into the keyed head `MonadState.modifyGet` and the rewrite would loop.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variantfd9313c4198c00f7c7b286f7a0fbd2f51f8d746b87343c3291c2efb6053acfb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variantfd9313c4198c00f7c7b286f7a0fbd2f51f8d746b87343c3291c2efb6053acfb0.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e39485b4727669e40b2752d74a633be14945f721` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
