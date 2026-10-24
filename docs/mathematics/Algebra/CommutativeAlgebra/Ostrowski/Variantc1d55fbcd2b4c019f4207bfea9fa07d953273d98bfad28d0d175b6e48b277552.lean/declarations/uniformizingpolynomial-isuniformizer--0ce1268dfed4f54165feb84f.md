# uniformizingPolynomial_isUniformizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6c96ad746f4e844474d3d9e6518e4d7f7c7e98f2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 191,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c1d55fbcd2b4c019f4207bfea9fa07d953273d98bfad28d0d175b6e48b277552.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2e6ec22-d8d1-2427-fb2d-6bda5024761f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f81b0721-2fff-25ee-36be-fdeb976a9f60",
  "kind": "lemma",
  "lexical_name": "uniformizingPolynomial_isUniformizer",
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
  "slug": "uniformizingpolynomial-isuniformizer--0ce1268dfed4f54165feb84f",
  "source": {
    "blob": "6c96ad746f4e844474d3d9e6518e4d7f7c7e98f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 191,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Ostrowski/Variantc1d55fbcd2b4c019f4207bfea9fa07d953273d98bfad28d0d175b6e48b277552.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ce1268dfed4f54165feb84fc02b8eaff2d8e545427e30cae6a2656be5dd602b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Ostrowski/Variantc1d55fbcd2b4c019f4207bfea9fa07d953273d98bfad28d0d175b6e48b277552.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f81b0721-2fff-25ee-36be-fdeb976a9f60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma uniformizingPolynomial_isUniformizer [hv : IsRankOneDiscrete v] :
    v.IsUniformizer πᵥ := by
  have h0 : v πᵥ ≠ 0 := by simpa using uniformizingPolynomial_ne_zero hle
  rw [IsUniformizer, ← hv.valueGroup_genLTOne_eq_generator, ← h0.isUnit.unit_spec, Units.val_inj]
  apply LinearOrderedCommGroup.Subgroup.genLTOne_unique
  · rw [← Units.val_lt_val, h0.isUnit.unit_spec, Units.val_one]
    exact valuation_uniformizingPolynomial_lt_one hle
  · ext γ
    simp only [coePolynomial_eq_algebraMap, MonoidWithZeroHom.mem_valueGroup_iff_of_comm, ne_eq,
      map_eq_zero, Subgroup.mem_zpowers_iff]
    refine ⟨fun ⟨k, hk⟩ ↦ ?_, fun ⟨a, ha, b, hab⟩ ↦ ?_⟩
    · use 1, one_ne_zero, πᵥ ^ k
      simp only [← Units.val_inj, Units.val_zpow_eq_zpow_val] at hk
      simp [← hk]
    · obtain ⟨ka, hka⟩ := exists_zpow_uniformizingPolynomial hle ha
      obtain ⟨kb, hkb⟩ := exists_zpow_uniformizingPolynomial hle (f := b) (by aesop)
      rw [MonoidWithZeroHom.coe_ofClass, hka, hkb] at hab
      use kb - ka
      have : v ↑πᵥ ^ ka ≠ 0 := zpow_ne_zero _ h0
      simp [zpow_sub, ← Units.val_inj, ← coePolynomial_eq_algebraMap, field, ← hab]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Ostrowski/Variantc1d55fbcd2b4c019f4207bfea9fa07d953273d98bfad28d0d175b6e48b277552.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Ostrowski/Variantc1d55fbcd2b4c019f4207bfea9fa07d953273d98bfad28d0d175b6e48b277552.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c96ad746f4e844474d3d9e6518e4d7f7c7e98f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
