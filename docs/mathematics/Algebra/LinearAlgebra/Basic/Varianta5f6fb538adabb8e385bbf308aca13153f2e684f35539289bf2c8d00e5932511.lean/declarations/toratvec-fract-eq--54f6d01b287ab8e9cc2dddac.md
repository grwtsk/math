# toRatVec_fract_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fe1eea1b73c9120189bdeb4950845ebf2f496a93",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 532,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a5f6fb538adabb8e385bbf308aca13153f2e684f35539289bf2c8d00e5932511.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:50d07915-f8f7-02c4-b090-54b200e8916e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d49fa0a6-4690-9c8a-89d7-820a40b755e7",
  "kind": "theorem",
  "lexical_name": "toRatVec_fract_eq",
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
  "slug": "toratvec-fract-eq--54f6d01b287ab8e9cc2dddac",
  "source": {
    "blob": "fe1eea1b73c9120189bdeb4950845ebf2f496a93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 549,
    "line": 532,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Varianta5f6fb538adabb8e385bbf308aca13153f2e684f35539289bf2c8d00e5932511.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54f6d01b287ab8e9cc2dddac7f04f7148cecb6dde58dc42a0a94c0de6b6bdfda",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Varianta5f6fb538adabb8e385bbf308aca13153f2e684f35539289bf2c8d00e5932511.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d49fa0a6-4690-9c8a-89d7-820a40b755e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 532–549.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem toRatVec_fract_eq (x) :
    toRatVec (hs.fract x) = toRatVec hs.base +
      ∑ i, Int.fract (hs.basis.repr (toRatVec x - toRatVec hs.base) i) • toRatVec i.1 := by
  simp only [fract]
  rw [← map_tsub_of_le _ _ _ (hs.floor_toNat_sum_le x)]
  simp only [map_add, map_sum, map_nsmul]
  rw [← sub_add_eq_add_sub, sub_add, ← Finset.sum_sub_distrib]
  conv =>
    enter [1, 2, 2, _]
    rw [← Nat.cast_smul_eq_nsmul ℤ, ← Nat.cast_smul_eq_nsmul ℤ, ← sub_smul,
      Int.toNat_sub_toNat_neg]
  rw [sub_eq_iff_eq_add, add_assoc, ← sub_eq_iff_eq_add', ← Finset.sum_add_distrib]
  simp only [floor]
  conv =>
    enter [2, 2, _]
    rw [← Int.cast_smul_eq_zsmul ℚ, ← add_smul, Int.fract_add_floor, ← hs.basis_apply]
  rw [hs.basis.sum_repr]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Varianta5f6fb538adabb8e385bbf308aca13153f2e684f35539289bf2c8d00e5932511.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Varianta5f6fb538adabb8e385bbf308aca13153f2e684f35539289bf2c8d00e5932511.lean#L532).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe1eea1b73c9120189bdeb4950845ebf2f496a93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
