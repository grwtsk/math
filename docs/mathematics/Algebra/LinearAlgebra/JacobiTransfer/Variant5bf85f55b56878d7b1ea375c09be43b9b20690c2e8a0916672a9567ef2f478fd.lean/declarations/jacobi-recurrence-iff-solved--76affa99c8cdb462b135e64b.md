# jacobi_recurrence_iff_solved

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6987b9147483d6fbc038469c0b9361a09d5bfd96",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:23cf5454-bad2-38c1-3950-07441a6a24d2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6f5308d5-f769-940e-39d1-96c99b6a0e88",
  "kind": "theorem",
  "lexical_name": "jacobi_recurrence_iff_solved",
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
  "slug": "jacobi-recurrence-iff-solved--76affa99c8cdb462b135e64b",
  "source": {
    "blob": "6987b9147483d6fbc038469c0b9361a09d5bfd96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 82,
    "path": "GRWTSK/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76affa99c8cdb462b135e64bdebe19e630f6b2b33b3609a4d0dbae8c8aead5b3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f5308d5-f769-940e-39d1-96c99b6a0e88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jacobi_recurrence_iff_solved {K : Type u} [Field K]
    (E b aCurrent aPrevious previous current next : K) (ha : aCurrent ≠ 0) :
    jacobiRecurrence E b aCurrent aPrevious previous current next ↔
      next = ((E - b) / aCurrent) * current -
        (aPrevious / aCurrent) * previous := by
  unfold jacobiRecurrence
  constructor
  · intro h
    apply (mul_left_cancel₀ ha)
    field_simp
    linear_combination h
  · intro h
    rw [h]
    field_simp
    ring

/-- Exact raw-state Jacobi transfer equivalence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6987b9147483d6fbc038469c0b9361a09d5bfd96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
