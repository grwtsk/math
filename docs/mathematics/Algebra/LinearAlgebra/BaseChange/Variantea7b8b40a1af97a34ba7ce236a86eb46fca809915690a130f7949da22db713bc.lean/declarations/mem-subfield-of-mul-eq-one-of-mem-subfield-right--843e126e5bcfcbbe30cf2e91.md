# mem_subfield_of_mul_eq_one_of_mem_subfield_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "21b00403c2cb935d0c22d47923ad3d67b0c19906",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 29,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea7b8b40a1af97a34ba7ce236a86eb46fca809915690a130f7949da22db713bc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d31502de-5e11-d81d-296c-81d107ef7b4d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1e1cc5fa-499d-9a4a-4cda-65acd51cfd03",
  "kind": "lemma",
  "lexical_name": "mem_subfield_of_mul_eq_one_of_mem_subfield_right",
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
  "slug": "mem-subfield-of-mul-eq-one-of-mem-subfield-right--843e126e5bcfcbbe30cf2e91",
  "source": {
    "blob": "21b00403c2cb935d0c22d47923ad3d67b0c19906",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 29,
    "path": "GRWTSK/Algebra/LinearAlgebra/BaseChange/Variantea7b8b40a1af97a34ba7ce236a86eb46fca809915690a130f7949da22db713bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:843e126e5bcfcbbe30cf2e913ac19a2dac2b25499e065bb1384e35e3bed14d25",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BaseChange/Variantea7b8b40a1af97a34ba7ce236a86eb46fca809915690a130f7949da22db713bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e1cc5fa-499d-9a4a-4cda-65acd51cfd03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_subfield_of_mul_eq_one_of_mem_subfield_right
    (h_mem : ∀ i j, A i j ∈ K) (i : n) (j : m) :
    B i j ∈ K := by
  cases nonempty_fintype m
  let A' : Matrix m m K := of fun i j ↦ ⟨A.submatrix id e i j, h_mem i (e j)⟩
  have hA' : A'.map K.subtype = A.submatrix id e := rfl
  have hA : IsUnit A' := by
    have h_unit : IsUnit (A.submatrix id e) :=
      isUnit_of_right_inverse (B := B.submatrix e id) (by simpa)
    have h_det : (A.submatrix id e).det = K.subtype A'.det := by
      simp [A', K.subtype.map_det, map, submatrix]
    simpa [isUnit_iff_isUnit_det, h_det] using h_unit
  obtain ⟨B', hB⟩ := exists_right_inverse_iff_isUnit.mpr hA
  suffices (B'.submatrix e.symm id).map K.subtype = B by simp [← this]
  replace hB : A * (B'.submatrix e.symm id).map K.subtype = 1 := by
    replace hB := congr_arg (fun C ↦ C.map K.subtype) hB
    simp_rw [Matrix.map_mul] at hB
    rw [hA', ← e.symm_symm, ← submatrix_id_mul_left] at hB
    simpa using hB
  classical
  simpa [← Matrix.mul_assoc, (mul_eq_one_comm_of_equiv e).mp hAB] using congr_arg (B * ·) hB

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BaseChange/Variantea7b8b40a1af97a34ba7ce236a86eb46fca809915690a130f7949da22db713bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BaseChange/Variantea7b8b40a1af97a34ba7ce236a86eb46fca809915690a130f7949da22db713bc.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21b00403c2cb935d0c22d47923ad3d67b0c19906` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
