# zsmul_mem_zmultiples_iff_exists_sub_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0bed401e7386048928516a9c188ef4c254e7f8bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 22,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/786f004b9f66415618f4fcdae02d370fd755d5cf782a7dfe363da79195d68e42.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86ab135f-983a-0d98-e89f-b299219ab797",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c90c45ac-a548-6a8b-d879-8d7250e47c88",
  "kind": "theorem",
  "lexical_name": "zsmul_mem_zmultiples_iff_exists_sub_div",
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
  "slug": "zsmul-mem-zmultiples-iff-exists-sub-div--4728d1607fee051f08bdbf38",
  "source": {
    "blob": "0bed401e7386048928516a9c188ef4c254e7f8bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 22,
    "path": "GRWTSK/Algebra/GroupTheory/Quotient/Variant786f004b9f66415618f4fcdae02d370fd755d5cf782a7dfe363da79195d68e42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4728d1607fee051f08bdbf38a9cdc54a08567bd72e563dbd7ad6d89775a7314f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Quotient/Variant786f004b9f66415618f4fcdae02d370fd755d5cf782a7dfe363da79195d68e42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c90c45ac-a548-6a8b-d879-8d7250e47c88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zsmul_mem_zmultiples_iff_exists_sub_div {r : R} {z : ℤ} (hz : z ≠ 0) :
    z • r ∈ AddSubgroup.zmultiples p ↔
      ∃ k : Fin z.natAbs, r - (k : ℕ) • (p / z : R) ∈ AddSubgroup.zmultiples p := by
  rw [AddSubgroup.mem_zmultiples_iff]
  simp_rw [AddSubgroup.mem_zmultiples_iff, div_eq_mul_inv, ← smul_mul_assoc, eq_sub_iff_add_eq]
  have hz' : (z : R) ≠ 0 := Int.cast_ne_zero.mpr hz
  conv_rhs => simp +singlePass only [← (mul_right_injective₀ hz').eq_iff]
  simp_rw [← zsmul_eq_mul, smul_add, ← mul_smul_comm, zsmul_eq_mul (z : R)⁻¹, mul_inv_cancel₀ hz',
    mul_one, ← natCast_zsmul, smul_smul, ← add_smul]
  constructor
  · rintro ⟨k, h⟩
    simp_rw [← h]
    refine ⟨⟨(k % z).toNat, ?_⟩, k / z, ?_⟩
    · rw [← Int.ofNat_lt, Int.toNat_of_nonneg (Int.emod_nonneg _ hz)]
      exact (Int.emod_lt_abs _ hz).trans_eq (Int.abs_eq_natAbs _)
    rw [Fin.val_mk, Int.toNat_of_nonneg (Int.emod_nonneg _ hz)]
    nth_rewrite 3 [← Int.ediv_add_emod k z]
    rfl
  · rintro ⟨k, n, h⟩
    exact ⟨_, h⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Quotient/Variant786f004b9f66415618f4fcdae02d370fd755d5cf782a7dfe363da79195d68e42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Quotient/Variant786f004b9f66415618f4fcdae02d370fd755d5cf782a7dfe363da79195d68e42.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bed401e7386048928516a9c188ef4c254e7f8bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
