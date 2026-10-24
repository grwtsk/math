# catalogueEntryJson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:32b1a2b3187913b59d8aafa3baa628b147abb84a409353ec4575a7639aed1e8a",
  "kind": "def",
  "lexical_name": "catalogueEntryJson",
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
  "slug": "catalogueentryjson--1a6a55fd510737a20609450a",
  "source": {
    "blob": "ce5a7fc33489202fe23a2d31ab5e2e24b65f4cdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 201,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GenerateFixtures/Variant9851cff61829294eb98219cfe7bac8c582a1cd6d36db663fa69683ed8cd1eeb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a6a55fd510737a20609450ad7e3e6d6d3ed96e8acf86446c72d45203ac095df",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GenerateFixtures/Variant9851cff61829294eb98219cfe7bac8c582a1cd6d36db663fa69683ed8cd1eeb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:32b1a2b3187913b59d8aafa3baa628b147abb84a409353ec4575a7639aed1e8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def catalogueEntryJson (symbol : ElementarySymbol) (enc : CertifiedEncoding symbol) : String :=
  "{\"symbol\":" ++ stringJson symbol.name ++
  ",\"arity\":" ++ toString enc.arity ++
  ",\"tree\":" ++ treeJson enc.tree ++
  ",\"treeSize\":" ++ toString enc.size ++
  ",\"treeDepth\":" ++ toString enc.depth ++
  ",\"matrix\":" ++ circuitJson enc ++
  ",\"root\":" ++ toString enc.matrix.root.val ++
  ",\"wellFormed\":true" ++
  ",\"roundTrip\":true" ++
  ",\"semanticStatus\":\"structural_encoding_only\"" ++
  ",\"proofStatus\":\"checked_by_lean\"}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GenerateFixtures/Variant9851cff61829294eb98219cfe7bac8c582a1cd6d36db663fa69683ed8cd1eeb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GenerateFixtures/Variant9851cff61829294eb98219cfe7bac8c582a1cd6d36db663fa69683ed8cd1eeb7.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce5a7fc33489202fe23a2d31ab5e2e24b65f4cdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
