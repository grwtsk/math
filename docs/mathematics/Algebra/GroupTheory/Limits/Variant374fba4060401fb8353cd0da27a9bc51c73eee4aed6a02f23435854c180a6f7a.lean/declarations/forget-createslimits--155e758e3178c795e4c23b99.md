# forget_createsLimits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6cc09111152b7387601d21cda095b2b89c726d8d2c8e07824e6de6ec55e153b",
  "kind": "instance",
  "lexical_name": "forget_createsLimits",
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
  "slug": "forget-createslimits--155e758e3178c795e4c23b99",
  "source": {
    "blob": "49e9f6fbe524846b260c42fb24c3423fdac5d494",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 205,
    "path": "GRWTSK/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:155e758e3178c795e4c23b9903180eac4bc54e3553d546a94c1a226ffc378820",
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

Occurrence: `declaration:d6cc09111152b7387601d21cda095b2b89c726d8d2c8e07824e6de6ec55e153b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance forget_createsLimits : CreatesLimits (forget MonCat.{u}) :=
  MonCat.forget_createsLimitsOfSize.{u, u}

end MonCat

open MonCat

namespace CommMonCat

variable {J : Type v} [Category.{w} J] (F : J ⥤ CommMonCat.{u})

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Limits/Variant374fba4060401fb8353cd0da27a9bc51c73eee4aed6a02f23435854c180a6f7a.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49e9f6fbe524846b260c42fb24c3423fdac5d494` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
