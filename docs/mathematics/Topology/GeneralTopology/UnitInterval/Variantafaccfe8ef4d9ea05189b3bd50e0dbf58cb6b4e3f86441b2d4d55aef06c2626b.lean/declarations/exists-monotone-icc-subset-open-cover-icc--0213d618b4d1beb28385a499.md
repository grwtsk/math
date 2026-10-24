# exists_monotone_Icc_subset_open_cover_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3544319eea46ede241e2aced4fd147a810f38825",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 470,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/afaccfe8ef4d9ea05189b3bd50e0dbf58cb6b4e3f86441b2d4d55aef06c2626b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1093b378-1a90-40b3-27dd-a4bb1af14241",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a0f7f7e2-5e9e-ca2f-d801-2d1b7c84f3b4",
  "kind": "lemma",
  "lexical_name": "exists_monotone_Icc_subset_open_cover_Icc",
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
  "slug": "exists-monotone-icc-subset-open-cover-icc--0213d618b4d1beb28385a499",
  "source": {
    "blob": "3544319eea46ede241e2aced4fd147a810f38825",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 480,
    "line": 470,
    "path": "GRWTSK/Topology/GeneralTopology/UnitInterval/Variantafaccfe8ef4d9ea05189b3bd50e0dbf58cb6b4e3f86441b2d4d55aef06c2626b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0213d618b4d1beb28385a499080423b8251f5cee61ac67c738b32588660f5dfc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UnitInterval/Variantafaccfe8ef4d9ea05189b3bd50e0dbf58cb6b4e3f86441b2d4d55aef06c2626b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0f7f7e2-5e9e-ca2f-d801-2d1b7c84f3b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 470–480.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_monotone_Icc_subset_open_cover_Icc {ι} {a b : ℝ} (h : a ≤ b) {c : ι → Set (Icc a b)}
    (hc₁ : ∀ i, IsOpen (c i)) (hc₂ : univ ⊆ ⋃ i, c i) : ∃ t : ℕ → Icc a b, t 0 = a ∧
      Monotone t ∧ (∃ m, ∀ n ≥ m, t n = b) ∧ ∀ n, ∃ i, Icc (t n) (t (n + 1)) ⊆ c i := by
  obtain ⟨δ, δ_pos, ball_subset⟩ := lebesgue_number_lemma_of_metric isCompact_univ hc₁ hc₂
  have hδ := half_pos δ_pos
  refine ⟨addNSMul h (δ/2), addNSMul_zero h,
    monotone_addNSMul h hδ.le, addNSMul_eq_right h hδ, fun n ↦ ?_⟩
  obtain ⟨i, hsub⟩ := ball_subset (addNSMul h (δ / 2) n) trivial
  exact ⟨i, fun t ht ↦ hsub ((abs_sub_addNSMul_le h hδ.le n ht).trans_lt <| half_lt_self δ_pos)⟩

/-- Any open cover of the unit interval can be refined to a finite partition into subintervals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UnitInterval/Variantafaccfe8ef4d9ea05189b3bd50e0dbf58cb6b4e3f86441b2d4d55aef06c2626b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UnitInterval/Variantafaccfe8ef4d9ea05189b3bd50e0dbf58cb6b4e3f86441b2d4d55aef06c2626b.lean#L470).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3544319eea46ede241e2aced4fd147a810f38825` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
