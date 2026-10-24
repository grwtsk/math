# diagram_adjacency_preservation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a76fb3cff774a74824038a8028ce0c95a4c65810",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 209,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e5a1ed72ac7ab0fbfb2bed7c5403be0b12434137d0cb6a9ac80bca9637490dcd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:60ca784b-a3fd-213a-bb06-ccb488e0a459",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cc78393d-44b9-830b-0fec-daf9eb9902fb",
  "kind": "theorem",
  "lexical_name": "diagram_adjacency_preservation",
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
  "slug": "diagram-adjacency-preservation--35059f9ba091ad8d83550d90",
  "source": {
    "blob": "a76fb3cff774a74824038a8028ce0c95a4c65810",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 209,
    "path": "GRWTSK/Algebra/LinearAlgebra/ExtraGeometry/Variante5a1ed72ac7ab0fbfb2bed7c5403be0b12434137d0cb6a9ac80bca9637490dcd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35059f9ba091ad8d83550d908a93d041a92e8e622bdcdc388372d74f332237ed",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ExtraGeometry/Variante5a1ed72ac7ab0fbfb2bed7c5403be0b12434137d0cb6a9ac80bca9637490dcd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc78393d-44b9-830b-0fec-daf9eb9902fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagram_adjacency_preservation : ∀ k i j,
    d4A (diagramPermutation k i) (diagramPermutation k j) = d4A i j := by
  intro k i j
  fin_cases k <;> fin_cases i <;> fin_cases j <;> decide +kernel

end FormalResearch.MutationGame.ExtraGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ExtraGeometry/Variante5a1ed72ac7ab0fbfb2bed7c5403be0b12434137d0cb6a9ac80bca9637490dcd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ExtraGeometry/Variante5a1ed72ac7ab0fbfb2bed7c5403be0b12434137d0cb6a9ac80bca9637490dcd.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a76fb3cff774a74824038a8028ce0c95a4c65810` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
