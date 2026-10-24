# cardinalMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "67ff2a50f55cebe14a07926569b84ce4922811a7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 23,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/78fb0f382ff969891a7c52300213679381ff059301addb81a5231eaaca2e9b29.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68251cab-6c30-ea87-6bb8-4f137214bbfb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:caf1efea-9d42-dcd1-f61e-76cc6dbac2d7",
  "kind": "theorem",
  "lexical_name": "cardinalMk",
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
  "slug": "cardinalmk--0c0275d714c7ea7e64624f3e",
  "source": {
    "blob": "67ff2a50f55cebe14a07926569b84ce4922811a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 23,
    "path": "GRWTSK/Algebra/Cardinality/Variant78fb0f382ff969891a7c52300213679381ff059301addb81a5231eaaca2e9b29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c0275d714c7ea7e64624f3eb7eb7ac0d865fd3ccfacb4182e0210bf879b09f4",
  "verification": {
    "reference": "docs/verification/Algebra/Cardinality/Variant78fb0f382ff969891a7c52300213679381ff059301addb81a5231eaaca2e9b29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:caf1efea-9d42-dcd1-f61e-76cc6dbac2d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cardinalMk (hS : S ≤ nonZeroDivisorsRight R) : #(OreLocalization S R) = #R :=
  le_antisymm (cardinalMk_le S) (mk_le_of_injective (numeratorHom_inj hS))

end OreLocalization
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Cardinality/Variant78fb0f382ff969891a7c52300213679381ff059301addb81a5231eaaca2e9b29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Cardinality/Variant78fb0f382ff969891a7c52300213679381ff059301addb81a5231eaaca2e9b29.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67ff2a50f55cebe14a07926569b84ce4922811a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
