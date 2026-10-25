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
      "line": 451,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/903a797f6283c42e3957c5681fdf9d46c2b805171152016d29c9dcaea7dc1788.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ba079e7d-ffb2-4330-692a-3790a1564c8e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e7bd8a03-cfd3-df92-62dc-e6519c7c6c6a",
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
  "slug": "instupwardenumerable-eq--573080ce89d2e8ef72980726",
  "source": {
    "blob": "f32285ef2b6b568f5b86e81b1787859bfcbc0b98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 461,
    "line": 451,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant903a797f6283c42e3957c5681fdf9d46c2b805171152016d29c9dcaea7dc1788.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:573080ce89d2e8ef72980726421bbf99b9860737615eae1c7ee0bde7626796a0",
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

Occurrence: `result:e7bd8a03-cfd3-df92-62dc-e6519c7c6c6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 451–461.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem instUpwardEnumerable_eq :
    instUpwardEnumerable = HasModel.instUpwardEnumerable := by
  apply UpwardEnumerable.ext
  · apply funext; intro x
    apply HasModel.succ?_eq_of_technicalCondition
    simp [HasModel.encode, succ?, ← Int32.toBitVec_inj, toBitVec_minValueSealed_eq_intMinSealed]
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SInt/Variant903a797f6283c42e3957c5681fdf9d46c2b805171152016d29c9dcaea7dc1788.lean#L451).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f32285ef2b6b568f5b86e81b1787859bfcbc0b98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
