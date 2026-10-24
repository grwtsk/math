# induction2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:287fba45-6ed9-c36f-02c7-0878d2856eaa",
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
  "slug": "induction2--caf487e4b3d786cfb915fb48",
  "source": {
    "blob": "8d6d7951c2c9ae73c653ba91d01c67a2f323b262",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 309,
    "path": "GRWTSK/Algebra/FieldTheory/AbelRuffini/Variant50b7f3345ff87bbd229123f8ec7c58a0e743611bf64bda542ba5dc41de9b5930.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:caf487e4b3d786cfb915fb489a0b9b606593925972588303c84283776d1e2008",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/AbelRuffini/Variant50b7f3345ff87bbd229123f8ec7c58a0e743611bf64bda542ba5dc41de9b5930.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:287fba45-6ed9-c36f-02c7-0878d2856eaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induction2 {α β γ : solvableByRad F E} (hγ : γ ∈ F⟮α, β⟯) (hα : P α) (hβ : P β) : P γ := by
  let p := minpoly F α
  let q := minpoly F β
  have hpq := Polynomial.splits_of_splits_mul _
    (mul_ne_zero (minpoly.ne_zero (isIntegral α)) (minpoly.ne_zero (isIntegral β)))
    (SplittingField.splits (p * q))
  let f : ↥F⟮α, β⟯ →ₐ[F] (p * q).SplittingField :=
    Classical.choice <| nonempty_algHom_adjoin_of_splits <| by
      intro x hx
      simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hx
      cases hx with rw [hx]
      | inl hx => exact ⟨isIntegral α, hpq.1⟩
      | inr hx => exact ⟨isIntegral β, hpq.2⟩
  have key : minpoly F γ = minpoly F (f ⟨γ, hγ⟩) := by
    refine minpoly.eq_of_irreducible_of_monic
      (minpoly.irreducible (isIntegral γ)) ?_ (minpoly.monic (isIntegral γ))
    suffices aeval (⟨γ, hγ⟩ : F⟮α, β⟯) (minpoly F γ) = 0 by
      rw [aeval_algHom_apply, this, map_zero]
    apply (algebraMap (↥F⟮α, β⟯) (solvableByRad F E)).injective
    simp only [map_zero, _root_.map_eq_zero]
    -- Porting note: end of the proof was `exact minpoly.aeval F γ`.
    apply Subtype.val_injective
    dsimp only [← coe_type_toSubalgebra]
    rw [Polynomial.aeval_subalgebra_coe (minpoly F γ)]
    simp
  rw [P, key]
  refine gal_isSolvable_of_splits ⟨Normal.splits ?_ (f ⟨γ, hγ⟩)⟩ (gal_mul_isSolvable hα hβ)
  apply SplittingField.instNormal

/-- An auxiliary induction lemma, which is generalized by `solvableByRad.isSolvable`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/FieldTheory/AbelRuffini/Variant50b7f3345ff87bbd229123f8ec7c58a0e743611bf64bda542ba5dc41de9b5930.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldTheory/AbelRuffini/Variant50b7f3345ff87bbd229123f8ec7c58a0e743611bf64bda542ba5dc41de9b5930.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d6d7951c2c9ae73c653ba91d01c67a2f323b262` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
