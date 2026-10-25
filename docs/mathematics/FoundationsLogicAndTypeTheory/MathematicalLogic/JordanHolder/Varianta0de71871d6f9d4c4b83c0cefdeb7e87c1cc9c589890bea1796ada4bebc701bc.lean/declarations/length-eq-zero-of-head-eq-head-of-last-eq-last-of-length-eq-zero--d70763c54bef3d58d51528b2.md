# length_eq_zero_of_head_eq_head_of_last_eq_last_of_length_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2701be4fea9d98894655c9f52274acf331eab6e3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 334,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f40c7b3e-2b75-c99b-bce6-fca62abf20fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ed4442bd-5ff9-68e6-8f73-d6efee898f60",
  "kind": "theorem",
  "lexical_name": "length_eq_zero_of_head_eq_head_of_last_eq_last_of_length_eq_zero",
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
  "slug": "length-eq-zero-of-head-eq-head-of-last-eq-last-of-length-eq-zero--d70763c54bef3d58d51528b2",
  "source": {
    "blob": "2701be4fea9d98894655c9f52274acf331eab6e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 334,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d70763c54bef3d58d51528b2889df45222a7473b202347c8dab25aeb7b39d336",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed4442bd-5ff9-68e6-8f73-d6efee898f60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem length_eq_zero_of_head_eq_head_of_last_eq_last_of_length_eq_zero
    {s₁ s₂ : CompositionSeries X} (hb : s₁.head = s₂.head)
    (ht : s₁.last = s₂.last) (hs₁ : s₁.length = 0) : s₂.length = 0 := by
  have : Fin.last s₂.length = (0 : Fin s₂.length.succ) :=
    s₂.injective (hb.symm.trans ((congr_arg s₁ (Fin.ext (by simp [hs₁]))).trans ht)).symm
  simpa [Fin.ext_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2701be4fea9d98894655c9f52274acf331eab6e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
