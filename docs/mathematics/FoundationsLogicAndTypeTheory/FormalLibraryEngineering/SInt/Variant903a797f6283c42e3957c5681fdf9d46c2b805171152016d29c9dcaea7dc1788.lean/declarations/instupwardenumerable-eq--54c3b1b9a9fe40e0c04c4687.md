# instUpwardEnumerable_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f32285ef2b6b568f5b86e81b1787859bfcbc0b98",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 546,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/903a797f6283c42e3957c5681fdf9d46c2b805171152016d29c9dcaea7dc1788.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5e6678c0-3a7a-b7a1-55d5-673fd70d6d31",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a7ea22a4-ec2a-a4ff-34bb-2c8853c45cce",
  "kind": "theorem",
  "lexical_name": "instUpwardEnumerable_eq",
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
  "slug": "instupwardenumerable-eq--54c3b1b9a9fe40e0c04c4687",
  "source": {
    "blob": "f32285ef2b6b568f5b86e81b1787859bfcbc0b98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 556,
    "line": 546,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant903a797f6283c42e3957c5681fdf9d46c2b805171152016d29c9dcaea7dc1788.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54c3b1b9a9fe40e0c04c4687d5740528e74786156e609174edbf6b7f76e73adc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant903a797f6283c42e3957c5681fdf9d46c2b805171152016d29c9dcaea7dc1788.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7ea22a4-ec2a-a4ff-34bb-2c8853c45cce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 546–556.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem instUpwardEnumerable_eq :
    instUpwardEnumerable = HasModel.instUpwardEnumerable := by
  apply UpwardEnumerable.ext
  · apply funext; intro x
    apply HasModel.succ?_eq_of_technicalCondition
    simp [HasModel.encode, succ?, ← Int64.toBitVec_inj, toBitVec_minValueSealed_eq_intMinSealed]
  · ext
    simp only [HasModel.succMany?_eq]
    simp [UpwardEnumerable.succMany?, HasModel.encode, HasModel.decode,
      ← toInt_toBitVec, toBitVec_maxValueSealed_eq_intMaxSealed, ofIntLE_eq_ofInt]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant903a797f6283c42e3957c5681fdf9d46c2b805171152016d29c9dcaea7dc1788.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant903a797f6283c42e3957c5681fdf9d46c2b805171152016d29c9dcaea7dc1788.lean#L546).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f32285ef2b6b568f5b86e81b1787859bfcbc0b98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
