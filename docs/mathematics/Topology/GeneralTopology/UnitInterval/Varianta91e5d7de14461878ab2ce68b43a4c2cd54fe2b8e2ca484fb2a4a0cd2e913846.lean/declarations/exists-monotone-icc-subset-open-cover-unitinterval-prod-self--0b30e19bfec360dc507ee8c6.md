# exists_monotone_Icc_subset_open_cover_unitInterval_prod_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b87c8f8c-63c2-3bf9-c846-f7275fc78bff",
  "kind": "lemma",
  "lexical_name": "exists_monotone_Icc_subset_open_cover_unitInterval_prod_self",
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
  "slug": "exists-monotone-icc-subset-open-cover-unitinterval-prod-self--0b30e19bfec360dc507ee8c6",
  "source": {
    "blob": "5f8e5c219d30cfff66dcefb4bc75774560033326",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 511,
    "line": 495,
    "path": "GRWTSK/Topology/GeneralTopology/UnitInterval/Varianta91e5d7de14461878ab2ce68b43a4c2cd54fe2b8e2ca484fb2a4a0cd2e913846.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b30e19bfec360dc507ee8c629db0d375d86485daf75b39da24f772e188ac6a1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UnitInterval/Varianta91e5d7de14461878ab2ce68b43a4c2cd54fe2b8e2ca484fb2a4a0cd2e913846.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b87c8f8c-63c2-3bf9-c846-f7275fc78bff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 495–511.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_monotone_Icc_subset_open_cover_unitInterval_prod_self {ι} {c : ι → Set (I × I)}
    (hc₁ : ∀ i, IsOpen (c i)) (hc₂ : univ ⊆ ⋃ i, c i) :
    ∃ t : ℕ → I, t 0 = 0 ∧ Monotone t ∧ (∃ n, ∀ m ≥ n, t m = 1) ∧
      ∀ n m, ∃ i, Icc (t n) (t (n + 1)) ×ˢ Icc (t m) (t (m + 1)) ⊆ c i := by
  obtain ⟨δ, δ_pos, ball_subset⟩ := lebesgue_number_lemma_of_metric isCompact_univ hc₁ hc₂
  have hδ := half_pos δ_pos
  simp_rw [Subtype.ext_iff]
  have h : (0 : ℝ) ≤ 1 := zero_le_one
  refine ⟨addNSMul h (δ/2), addNSMul_zero h,
    monotone_addNSMul h hδ.le, addNSMul_eq_right h hδ, fun n m ↦ ?_⟩
  obtain ⟨i, hsub⟩ := ball_subset (addNSMul h (δ / 2) n, addNSMul h (δ / 2) m) trivial
  exact ⟨i, fun t ht ↦ hsub (Metric.mem_ball.mpr <| (max_le (abs_sub_addNSMul_le h hδ.le n ht.1) <|
    abs_sub_addNSMul_le h hδ.le m ht.2).trans_lt <| half_lt_self δ_pos)⟩

end partition

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UnitInterval/Varianta91e5d7de14461878ab2ce68b43a4c2cd54fe2b8e2ca484fb2a4a0cd2e913846.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UnitInterval/Varianta91e5d7de14461878ab2ce68b43a4c2cd54fe2b8e2ca484fb2a4a0cd2e913846.lean#L495).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f8e5c219d30cfff66dcefb4bc75774560033326` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
