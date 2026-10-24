# Nondegenerate.smul_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9f37a3984764deded8c8dbe6a5bb4b4bbd3f5cf0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 195,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e7cdddcf8cc2db406feae3b3f5db085a07689a5285c7419c4b24496f7e33f6c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d39d122d-eef3-2074-ae1c-b99be2702396",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:911853c6-5271-8099-711e-7c9844f02b84",
  "kind": "theorem",
  "lexical_name": "Nondegenerate.smul_iff",
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
  "slug": "nondegenerate-smul-iff--d20caa6890fdd5d9bc3f99ae",
  "source": {
    "blob": "9f37a3984764deded8c8dbe6a5bb4b4bbd3f5cf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 195,
    "path": "GRWTSK/Algebra/LinearAlgebra/ToLinearEquiv/Variante7cdddcf8cc2db406feae3b3f5db085a07689a5285c7419c4b24496f7e33f6c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d20caa6890fdd5d9bc3f99ae90514f9c4e1056069dd74aec1aee3b82b2d5a8cc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ToLinearEquiv/Variante7cdddcf8cc2db406feae3b3f5db085a07689a5285c7419c4b24496f7e33f6c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:911853c6-5271-8099-711e-7c9844f02b84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nondegenerate.smul_iff [Finite n] {A : Type*} [CommRing A] [IsDomain A]
    {M : Matrix n n A} {t : A} (h : t ≠ 0) :
    (t • M).Nondegenerate ↔ M.Nondegenerate := by
  simp_rw [Nondegenerate, smul_mulVec_assoc, dotProduct_smul]
  refine ⟨fun hM v hv ↦ hM v fun w ↦ ?_, fun hM v hv ↦ hM v fun w ↦ ?_⟩
  · simp [hv]
  · exact (mul_eq_zero_iff_left h).mp <| hv w

alias ⟨Nondegenerate.det_ne_zero, Nondegenerate.of_det_ne_zero⟩ := nondegenerate_iff_det_ne_zero

end Nondegenerate

end LinearEquiv

section Determinant

/-- A matrix whose nondiagonal entries are negative with the sum of the entries of each
column positive has nonzero determinant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ToLinearEquiv/Variante7cdddcf8cc2db406feae3b3f5db085a07689a5285c7419c4b24496f7e33f6c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ToLinearEquiv/Variante7cdddcf8cc2db406feae3b3f5db085a07689a5285c7419c4b24496f7e33f6c5.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f37a3984764deded8c8dbe6a5bb4b4bbd3f5cf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
