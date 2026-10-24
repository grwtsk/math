# CoverageBoundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:474fe742ebaa370cf21396e5e6b34b3c680cccd189862e1a2a9f1a645704e715",
  "kind": "structure",
  "lexical_name": "CoverageBoundary",
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
  "slug": "coverageboundary--9f09da6092031549c5e354f4",
  "source": {
    "blob": "5f9ec3ffcba744c666b50a67de9bf19e231e7a36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 12,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CoverageBoundary/Variant16cc0c3a5d08b8139dbb01b4d578ce7f922c165149364358602a3a9b01c36736.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f09da6092031549c5e354f4e13044fabe994251cf8d91e5168082a526f0b732",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CoverageBoundary/Variant16cc0c3a5d08b8139dbb01b4d578ce7f922c165149364358602a3a9b01c36736.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:474fe742ebaa370cf21396e5e6b34b3c680cccd189862e1a2a9f1a645704e715`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CoverageBoundary where
  registryVersion : StableId
  discoveryCutoff : Digest
  discoverySourceIds : List StableId
  admissionPolicyDigest : Digest
  registry : Registry
  discovery : DiscoveryLedger
  exceptionIds : List StableId
  continuousDiscoveryNonclaim : Nonclaim
  boundaryDigest : Digest

namespace CoverageBoundary

/-- Every observed candidate has a retained disposition record. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CoverageBoundary/Variant16cc0c3a5d08b8139dbb01b4d578ce7f922c165149364358602a3a9b01c36736.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CoverageBoundary/Variant16cc0c3a5d08b8139dbb01b4d578ce7f922c165149364358602a3a9b01c36736.lean#L12).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f9ec3ffcba744c666b50a67de9bf19e231e7a36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
