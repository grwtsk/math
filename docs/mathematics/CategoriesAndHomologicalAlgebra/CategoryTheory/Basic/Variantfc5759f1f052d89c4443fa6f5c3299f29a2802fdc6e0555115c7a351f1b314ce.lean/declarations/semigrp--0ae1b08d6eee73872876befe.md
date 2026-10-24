# Semigrp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f21054eac34769001b06926a3fd14c7acb545f08bf0bffbf2fa38a3d859673b7",
  "kind": "structure",
  "lexical_name": "Semigrp",
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
  "slug": "semigrp--0ae1b08d6eee73872876befe",
  "source": {
    "blob": "1c3a1891230d3ff20f52c4073302f21638fd9a83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 225,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfc5759f1f052d89c4443fa6f5c3299f29a2802fdc6e0555115c7a351f1b314ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ae1b08d6eee73872876befec96eaed36d4c312a5efa99f7927b8b4a15311f98",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfc5759f1f052d89c4443fa6f5c3299f29a2802fdc6e0555115c7a351f1b314ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f21054eac34769001b06926a3fd14c7acb545f08bf0bffbf2fa38a3d859673b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Semigrp : Type (u + 1) where
  /-- The underlying type. -/
  (carrier : Type u)
  [str : Semigroup carrier]

attribute [instance] AddSemigrp.str Semigrp.str

initialize_simps_projections AddSemigrp (carrier → coe, -str)
initialize_simps_projections Semigrp (carrier → coe, -str)

namespace Semigrp

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfc5759f1f052d89c4443fa6f5c3299f29a2802fdc6e0555115c7a351f1b314ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfc5759f1f052d89c4443fa6f5c3299f29a2802fdc6e0555115c7a351f1b314ce.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c3a1891230d3ff20f52c4073302f21638fd9a83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
