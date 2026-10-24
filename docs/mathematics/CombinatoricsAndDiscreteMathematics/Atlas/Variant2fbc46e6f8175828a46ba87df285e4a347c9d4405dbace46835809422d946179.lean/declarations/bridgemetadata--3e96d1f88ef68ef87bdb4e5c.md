# BridgeMetadata

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3af9ffc86410ca8e71b264adb0af101ac7431e0771ef44912c5cfebf299dc300",
  "kind": "structure",
  "lexical_name": "BridgeMetadata",
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
  "slug": "bridgemetadata--3e96d1f88ef68ef87bdb4e5c",
  "source": {
    "blob": "587f6324971c126614a14de3290f949678351a7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 185,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e96d1f88ef68ef87bdb4e5cfe381a3c2f50d327b53f58204e9df24d25c79c48",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3af9ffc86410ca8e71b264adb0af101ac7431e0771ef44912c5cfebf299dc300`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BridgeMetadata where
  /-- Source declaration annotation; the bridge evidence supplies mathematical authority. -/
  proofDeclaration : String
  /-- Source scope annotation retained independently of semantic equivalence. -/
  sourceScope : String
  deriving DecidableEq, Repr

/-- The endpoints are bound to the types of the checked evidence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `587f6324971c126614a14de3290f949678351a7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
