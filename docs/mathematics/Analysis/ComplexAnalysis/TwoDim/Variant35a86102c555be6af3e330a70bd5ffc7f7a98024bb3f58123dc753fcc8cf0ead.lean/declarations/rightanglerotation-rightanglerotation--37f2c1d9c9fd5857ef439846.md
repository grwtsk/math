# rightAngleRotation_rightAngleRotation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d3153767d6ced8f971c3f85a2174bc13c59c8047",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 272,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/35a86102c555be6af3e330a70bd5ffc7f7a98024bb3f58123dc753fcc8cf0ead.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9ed720dc-5296-7f0b-506c-bf1b420e1666",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5ccb44b6-06fc-20fe-5294-9d60a66a51d7",
  "kind": "theorem",
  "lexical_name": "rightAngleRotation_rightAngleRotation",
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
  "slug": "rightanglerotation-rightanglerotation--37f2c1d9c9fd5857ef439846",
  "source": {
    "blob": "d3153767d6ced8f971c3f85a2174bc13c59c8047",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 272,
    "path": "GRWTSK/Analysis/ComplexAnalysis/TwoDim/Variant35a86102c555be6af3e330a70bd5ffc7f7a98024bb3f58123dc753fcc8cf0ead.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37f2c1d9c9fd5857ef4398467e826912959bc8b08678edd472854c0369c8dde4",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/TwoDim/Variant35a86102c555be6af3e330a70bd5ffc7f7a98024bb3f58123dc753fcc8cf0ead.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ccb44b6-06fc-20fe-5294-9d60a66a51d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rightAngleRotation_rightAngleRotation (x : E) : J (J x) = -x := by
  rw [rightAngleRotation]
  exact o.rightAngleRotationAux₁_rightAngleRotationAux₁ x
#align orientation.right_angle_rotation_right_angle_rotation Orientation.rightAngleRotation_rightAngleRotation

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/TwoDim/Variant35a86102c555be6af3e330a70bd5ffc7f7a98024bb3f58123dc753fcc8cf0ead.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/TwoDim/Variant35a86102c555be6af3e330a70bd5ffc7f7a98024bb3f58123dc753fcc8cf0ead.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3153767d6ced8f971c3f85a2174bc13c59c8047` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
