# hasLimitsOfShape

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4189f28a510f6c41dd60ad98b49304347743d160d2980082cfcb04791ba2e092",
  "kind": "instance",
  "lexical_name": "hasLimitsOfShape",
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
  "slug": "haslimitsofshape--2f4f67b203083223735c845e",
  "source": {
    "blob": "49e9f6fbe524846b260c42fb24c3423fdac5d494",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 283,
    "path": "GRWTSK/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f4f67b203083223735c845e83fbe8238e7f4c52889d394b02438f664537b01b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4189f28a510f6c41dd60ad98b49304347743d160d2980082cfcb04791ba2e092`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance hasLimitsOfShape [Small.{u} J] : HasLimitsOfShape J CommMonCat.{u} where
  has_limit _ := inferInstance

/-- The category of commutative monoids has all limits. -/
@[to_additive /-- The category of additive commutative monoids has all limits. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49e9f6fbe524846b260c42fb24c3423fdac5d494` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
