# IsZariskiLocalAtTarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a66c8dc393c17ba29139bf751e3f985b0dfdef7e3aafbbcb9fb327e857bb33bd",
  "kind": "abbrev",
  "lexical_name": "IsZariskiLocalAtTarget",
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
  "slug": "iszariskilocalattarget--b7e200af582f5c06218e5768",
  "source": {
    "blob": "b3decf21a7ae6c5c601c467741370705012fd02b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 112,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant683c025b547e6ba09a8b0cd63d95ade22af6ec62b21f9927a945148ba4e4405a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b7e200af582f5c06218e5768f5f40809237bd8fb288fa41ac72720f801a1c3b4",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant683c025b547e6ba09a8b0cd63d95ade22af6ec62b21f9927a945148ba4e4405a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a66c8dc393c17ba29139bf751e3f985b0dfdef7e3aafbbcb9fb327e857bb33bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev IsZariskiLocalAtTarget (P : MorphismProperty Scheme.{u}) :=
  P.IsLocalAtTarget Scheme.zariskiPrecoverage

namespace IsZariskiLocalAtTarget

/--
`P` is local at the target if
1. `P` respects isomorphisms.
2. If `P` holds for `f : X ⟶ Y`, then `P` holds for `f ∣_ U` for any `U`.
3. If `P` holds for `f ∣_ U` for an open cover `U` of `Y`, then `P` holds for `f`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant683c025b547e6ba09a8b0cd63d95ade22af6ec62b21f9927a945148ba4e4405a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant683c025b547e6ba09a8b0cd63d95ade22af6ec62b21f9927a945148ba4e4405a.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3decf21a7ae6c5c601c467741370705012fd02b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
