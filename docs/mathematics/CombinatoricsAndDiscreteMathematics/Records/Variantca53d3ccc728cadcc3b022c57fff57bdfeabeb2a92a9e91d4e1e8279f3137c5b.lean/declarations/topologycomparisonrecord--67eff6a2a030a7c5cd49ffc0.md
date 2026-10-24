# TopologyComparisonRecord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0e856def3143849fde20985a6d5c10db585d9cf776b4873b0591f00a0f85aea4",
  "kind": "structure",
  "lexical_name": "TopologyComparisonRecord",
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
  "slug": "topologycomparisonrecord--67eff6a2a030a7c5cd49ffc0",
  "source": {
    "blob": "22d4b7f53e18eb3c2985721d1e870107f19cc4ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 83,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Records/Variantca53d3ccc728cadcc3b022c57fff57bdfeabeb2a92a9e91d4e1e8279f3137c5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:67eff6a2a030a7c5cd49ffc05c5575cd9faf24afc8663ec9422f7b67623274d7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Records/Variantca53d3ccc728cadcc3b022c57fff57bdfeabeb2a92a9e91d4e1e8279f3137c5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0e856def3143849fde20985a6d5c10db585d9cf776b4873b0591f00a0f85aea4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TopologyComparisonRecord where
  id : RecordId
  change : RecordId
  comparisonProfile : Option ProfileId
  beforeTopology : Option RecordId
  afterTopology : Option RecordId
  classification : TopologyChangeClass
  commonCarrier : Bool
  exact : Bool
  limitations : Set String

/-- Complete level-indexed reflective mutation receipt. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Records/Variantca53d3ccc728cadcc3b022c57fff57bdfeabeb2a92a9e91d4e1e8279f3137c5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Records/Variantca53d3ccc728cadcc3b022c57fff57bdfeabeb2a92a9e91d4e1e8279f3137c5b.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22d4b7f53e18eb3c2985721d1e870107f19cc4ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
