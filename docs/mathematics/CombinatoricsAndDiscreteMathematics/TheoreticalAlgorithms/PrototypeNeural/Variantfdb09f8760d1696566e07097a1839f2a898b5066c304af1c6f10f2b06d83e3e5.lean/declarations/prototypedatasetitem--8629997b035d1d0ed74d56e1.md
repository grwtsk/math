# prototypeDatasetItem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3c20280498f50223c8cd355407733da76dd530bb00fa44edd2bdf4948275a14",
  "kind": "def",
  "lexical_name": "prototypeDatasetItem",
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
  "slug": "prototypedatasetitem--8629997b035d1d0ed74d56e1",
  "source": {
    "blob": "18dd4d09d8a6dc5ca93745d0db9ebe5ce592c1a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 104,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrototypeNeural/Variantfdb09f8760d1696566e07097a1839f2a898b5066c304af1c6f10f2b06d83e3e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8629997b035d1d0ed74d56e1eedd2c3d789e7d847907e0adbb2889b4fe7e85bc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrototypeNeural/Variantfdb09f8760d1696566e07097a1839f2a898b5066c304af1c6f10f2b06d83e3e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3c20280498f50223c8cd355407733da76dd530bb00fa44edd2bdf4948275a14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prototypeDatasetItem
    (name path : String)
    (proofStatus : DatasetProofStatus)
    (negativeStatus : NegativeExampleStatus)
    (method : DatasetGenerationMethod)
    (synthetic : Bool)
    (split duplicateGroup : String) : DatasetItem where
  datasetItemId := ⟨"prototype:dataset-item:" ++ name⟩
  sourceRepository := "Native"
  sourceVersion := ⟨"prototype:source-tree:live-successor"⟩
  sourcePath := path
  sourceDigest := ⟨"prototype:source-digest:" ++ name⟩
  license := prototypeDatasetLicense
  checkerName := "Lean"
  checkerVersion := ⟨"lean:4.32.0"⟩
  assumptionContext := prototypeAssumptionContext
  authority := .externalCapability
  proofStatus := proofStatus
  negativeExampleStatus := negativeStatus
  generationMethod := method
  syntheticFlag := synthetic
  provenanceDigest := ⟨"prototype:provenance:" ++ name⟩
  splitIdentity := ⟨"prototype:split:" ++ split⟩
  semanticDuplicateGroup := ⟨"prototype:duplicate-group:" ++ duplicateGroup⟩

/-- Three-item pilot: theorem, counterexample, and explicitly synthetic fixture. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrototypeNeural/Variantfdb09f8760d1696566e07097a1839f2a898b5066c304af1c6f10f2b06d83e3e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrototypeNeural/Variantfdb09f8760d1696566e07097a1839f2a898b5066c304af1c6f10f2b06d83e3e5.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18dd4d09d8a6dc5ca93745d0db9ebe5ce592c1a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
