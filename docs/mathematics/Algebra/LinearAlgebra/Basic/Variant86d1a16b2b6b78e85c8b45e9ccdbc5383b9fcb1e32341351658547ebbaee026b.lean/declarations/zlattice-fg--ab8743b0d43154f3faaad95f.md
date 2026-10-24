# Zlattice.FG

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e6e5e6b-2a18-7d29-c0af-7a40e046f3ee",
  "kind": "theorem",
  "lexical_name": "Zlattice.FG",
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
  "slug": "zlattice-fg--ab8743b0d43154f3faaad95f",
  "source": {
    "blob": "500406adf6f99576f675c0993f02cb54f422a446",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 492,
    "line": 458,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant86d1a16b2b6b78e85c8b45e9ccdbc5383b9fcb1e32341351658547ebbaee026b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab8743b0d43154f3faaad95f47b66f8470c8c6ca84ba7297351a8ad9f41db6f4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant86d1a16b2b6b78e85c8b45e9ccdbc5383b9fcb1e32341351658547ebbaee026b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e6e5e6b-2a18-7d29-c0af-7a40e046f3ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 458–492.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Zlattice.FG [hs : IsZLattice K L] : L.FG := by
  obtain ⟨s, ⟨h_incl, ⟨h_span, h_lind⟩⟩⟩ := exists_linearIndependent K (L : Set E)
  -- Let `s` be a maximal `K`-linear independent family of elements of `L`. We show that
  -- `L` is finitely generated (as a ℤ-module) because it fits in the exact sequence
  -- `0 → span ℤ s → L → L ⧸ span ℤ s → 0` with `span ℤ s` and `L ⧸ span ℤ s` finitely generated.
  refine fg_of_fg_map_of_fg_inf_ker (span ℤ s).mkQ ?_ ?_
  · -- Let `b` be the `K`-basis of `E` formed by the vectors in `s`. The elements of
    -- `L ⧸ span ℤ s = L ⧸ span ℤ b` are in bijection with elements of `L ∩ fundamentalDomain b`
    -- so there are finitely many since `fundamentalDomain b` is bounded.
    refine fg_def.mpr ⟨map (span ℤ s).mkQ L, ?_, span_eq _⟩
    let b := Basis.mk h_lind (by
      rw [← hs.span_top, ← h_span]
      exact span_mono (by simp only [Subtype.range_coe_subtype, Set.setOf_mem_eq, subset_rfl]))
    rw [show span ℤ s = span ℤ (Set.range b) by simp [b, Basis.coe_mk, Subtype.range_coe_subtype]]
    have : Fintype s := h_lind.setFinite.fintype
    refine Set.Finite.of_finite_image (f := ((↑) : _ →  E) ∘ quotientEquiv b) ?_
      (Function.Injective.injOn (Subtype.coe_injective.comp (quotientEquiv b).injective))
    have : ((fundamentalDomain b) ∩ L).Finite := by
      change ((fundamentalDomain b) ∩ L.toAddSubgroup).Finite
      have : DiscreteTopology L.toAddSubgroup := (inferInstance : DiscreteTopology L)
      exact Metric.finite_isBounded_inter_isClosed (fundamentalDomain_isBounded b) inferInstance
    refine Set.Finite.subset this ?_
    rintro _ ⟨_, ⟨⟨x, ⟨h_mem, rfl⟩⟩, rfl⟩⟩
    rw [Function.comp_apply, mkQ_apply, quotientEquiv_apply_mk, fractRestrict_apply]
    refine ⟨?_, ?_⟩
    · exact fract_mem_fundamentalDomain b x
    · rw [fract, SetLike.mem_coe, sub_eq_add_neg]
      refine Submodule.add_mem _ h_mem
        (neg_mem (Set.mem_of_subset_of_mem ?_ (Subtype.mem (floor b x))))
      rw [SetLike.coe_subset_coe, Basis.coe_mk, Subtype.range_coe_subtype, Set.setOf_mem_eq]
      exact span_le.mpr h_incl
  · -- `span ℤ s` is finitely generated because `s` is finite
    rw [ker_mkQ, inf_of_le_right (span_le.mpr h_incl)]
    exact fg_span (LinearIndependent.setFinite h_lind)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant86d1a16b2b6b78e85c8b45e9ccdbc5383b9fcb1e32341351658547ebbaee026b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant86d1a16b2b6b78e85c8b45e9ccdbc5383b9fcb1e32341351658547ebbaee026b.lean#L458).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `500406adf6f99576f675c0993f02cb54f422a446` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
