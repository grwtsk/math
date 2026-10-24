# correction_orientation_fixture

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "42f530d2011207fa66f61fb03f4dee2540d0ee99",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/320bc172ade74202a04e8d02ed8a83d2f71fcba011caccadf1b6634d9f31e577.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3bd76ce6-2cdb-818b-1ee6-5e984d3204be",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:719f895a-01ce-68e3-5dfb-fa5ed60e923e",
  "kind": "theorem",
  "lexical_name": "correction_orientation_fixture",
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
  "slug": "correction-orientation-fixture--5851df8af0decaabd28915bb",
  "source": {
    "blob": "42f530d2011207fa66f61fb03f4dee2540d0ee99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 94,
    "path": "GRWTSK/Topology/GeneralTopology/ScopeFixtures/Variant320bc172ade74202a04e8d02ed8a83d2f71fcba011caccadf1b6634d9f31e577.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5851df8af0decaabd28915bb46944791185c7fb71bf8ed585d886052c50eb06c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ScopeFixtures/Variant320bc172ade74202a04e8d02ed8a83d2f71fcba011caccadf1b6634d9f31e577.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:719f895a-01ce-68e3-5dfb-fa5ed60e923e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correction_orientation_fixture :
    (5 : ℝ) - (5 + 3 * 2) = -(3 * 2) ∧
      ¬((5 : ℝ) - (5 + 3 * 2) = 3 * 2) := by norm_num

end FutureChordFixtures
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ScopeFixtures/Variant320bc172ade74202a04e8d02ed8a83d2f71fcba011caccadf1b6634d9f31e577.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ScopeFixtures/Variant320bc172ade74202a04e8d02ed8a83d2f71fcba011caccadf1b6634d9f31e577.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42f530d2011207fa66f61fb03f4dee2540d0ee99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
