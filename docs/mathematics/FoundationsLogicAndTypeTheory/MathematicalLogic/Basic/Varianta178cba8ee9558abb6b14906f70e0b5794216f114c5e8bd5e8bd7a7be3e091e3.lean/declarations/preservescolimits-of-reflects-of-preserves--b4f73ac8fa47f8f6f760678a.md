# preservesColimits_of_reflects_of_preserves

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "01df9f8564451e0e875942a0a367a4bf8055dfe6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 674,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a178cba8ee9558abb6b14906f70e0b5794216f114c5e8bd5e8bd7a7be3e091e3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:35e6040b-9c83-4fab-32e2-5dbb577e01a9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1edc488e-adf0-7fb6-03dc-8a56c42e96db",
  "kind": "lemma",
  "lexical_name": "preservesColimits_of_reflects_of_preserves",
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
  "slug": "preservescolimits-of-reflects-of-preserves--b4f73ac8fa47f8f6f760678a",
  "source": {
    "blob": "01df9f8564451e0e875942a0a367a4bf8055dfe6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 679,
    "line": 674,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta178cba8ee9558abb6b14906f70e0b5794216f114c5e8bd5e8bd7a7be3e091e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4f73ac8fa47f8f6f760678aa48b7bd2c14107ff403f42f4a12611dff465e54c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta178cba8ee9558abb6b14906f70e0b5794216f114c5e8bd5e8bd7a7be3e091e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1edc488e-adf0-7fb6-03dc-8a56c42e96db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 674–679.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesColimits_of_reflects_of_preserves [PreservesColimitsOfSize.{w', w} (F ⋙ G)]
    [ReflectsColimitsOfSize.{w', w} G] : PreservesColimitsOfSize.{w', w} F where
  preservesColimitsOfShape := preservesColimitsOfShape_of_reflects_of_preserves F G

set_option backward.defeqAttrib.useBackward true in
/-- Transfer reflection of colimits along a natural isomorphism in the diagram. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta178cba8ee9558abb6b14906f70e0b5794216f114c5e8bd5e8bd7a7be3e091e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta178cba8ee9558abb6b14906f70e0b5794216f114c5e8bd5e8bd7a7be3e091e3.lean#L674).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01df9f8564451e0e875942a0a367a4bf8055dfe6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
