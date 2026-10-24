# induction2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fa55cb792a8c141ee4bff880e3d529ac4d62e9a7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 341,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c03e6c52-a53f-27c1-16c2-66daf72052ab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cd082813-bf91-38e8-fdcb-c73c8d9298e7",
  "kind": "theorem",
  "lexical_name": "induction2",
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
  "slug": "induction2--1c39b3c9c93bd8001c36c81d",
  "source": {
    "blob": "fa55cb792a8c141ee4bff880e3d529ac4d62e9a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 372,
    "line": 341,
    "path": "GRWTSK/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c39b3c9c93bd8001c36c81d57c137237e2463a90aad5c7bac99cc08978d14e4",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd082813-bf91-38e8-fdcb-c73c8d9298e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–372.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induction2 {α β γ : solvableByRad F E} (hγ : γ ∈ F⟮α, β⟯) (hα : P α) (hβ : P β) : P γ := by
  let p := minpoly F α
  let q := minpoly F β
  have hpq := Polynomial.splits_of_splits_mul _
    (mul_ne_zero (minpoly.ne_zero (isIntegral α)) (minpoly.ne_zero (isIntegral β)))
    (SplittingField.splits (p * q))
  let f : ↥F⟮α, β⟯ →ₐ[F] (p * q).SplittingField := Classical.choice <| algHom_mk_adjoin_splits (by
    intro x hx
    cases' hx with hx hx
    rw [hx]
    exact ⟨isIntegral α, hpq.1⟩
    cases hx
    exact ⟨isIntegral β, hpq.2⟩)
  have key : minpoly F γ = minpoly F (f ⟨γ, hγ⟩) := by
    refine' minpoly.eq_of_irreducible_of_monic
      (minpoly.irreducible (isIntegral γ)) _ (minpoly.monic (isIntegral γ))
    suffices aeval (⟨γ, hγ⟩ : F⟮α, β⟯) (minpoly F γ) = 0 by
      rw [aeval_algHom_apply, this, AlgHom.map_zero]
    -- Porting note: this instance is needed for the following `apply`
    haveI := @IntermediateField.toAlgebra F (solvableByRad F E) _ _ _ F⟮α, β⟯
      (solvableByRad F E) _ (Algebra.id (solvableByRad F E))
    apply (algebraMap (↥F⟮α, β⟯) (solvableByRad F E)).injective
    simp only [map_zero, _root_.map_eq_zero]
    -- Porting note: end of the proof was `exact minpoly.aeval F γ`.
    apply Subtype.val_injective
    simp [Polynomial.aeval_subalgebra_coe (minpoly F γ)]
  rw [P, key]
  refine' gal_isSolvable_of_splits ⟨Normal.splits _ (f ⟨γ, hγ⟩)⟩ (gal_mul_isSolvable hα hβ)
  apply SplittingField.instNormal
#align solvable_by_rad.induction2 solvableByRad.induction2

/-- An auxiliary induction lemma, which is generalized by `solvableByRad.isSolvable`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa55cb792a8c141ee4bff880e3d529ac4d62e9a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
