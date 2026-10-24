# Profile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bcfe9e9e2f46e836247498a6b32cea9d3c4b47e4d76d472f2b0a2fdf84f36b16",
  "kind": "structure",
  "lexical_name": "Profile",
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
  "slug": "profile--a663ea9402fdcf86c44e3a82",
  "source": {
    "blob": "77726e9bbc1842c9335cd4b9e0d89a97feeb827a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 24,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A6e7fe88f55b4133e/Variant61f94e2ccd58ac877ac00e0a72d3279465e3ad5b18d742f1e25ca37cc6e9d269.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a663ea9402fdcf86c44e3a821071e362813b786c28ee7326c88edc81eca96d9f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A6e7fe88f55b4133e/Variant61f94e2ccd58ac877ac00e0a72d3279465e3ad5b18d742f1e25ca37cc6e9d269.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bcfe9e9e2f46e836247498a6b32cea9d3c4b47e4d76d472f2b0a2fdf84f36b16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Profile where
  schemaVersion : Nat
  id : ProjectionProfileId
  version : String
  algorithmVersion : String
  axis : Axis
  adapter : Adapter
  root : Root
  backbone : Backbone
  mode : Mode
  lifecycle : List Concept.Lifecycle
  identityCollapse : IdentityCollapse
  parentRelations : List ParentRelationRule
  authorityRanks : List NamedRank
  authorityThreshold : Int
  provenanceRanks : List NamedRank
  nodeClassRanks : List NamedRank
  roleRanks : List NamedRank
  kindRanks : List NamedRank
  siblingOrder : List String
  tieBreak : String
  fallback : Fallback
  displayPolicies : List DisplayPolicy
  deriving DecidableEq

namespace Profile

end Profile

end Mathematics.Projection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A6e7fe88f55b4133e/Variant61f94e2ccd58ac877ac00e0a72d3279465e3ad5b18d742f1e25ca37cc6e9d269.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A6e7fe88f55b4133e/Variant61f94e2ccd58ac877ac00e0a72d3279465e3ad5b18d742f1e25ca37cc6e9d269.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77726e9bbc1842c9335cd4b9e0d89a97feeb827a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
