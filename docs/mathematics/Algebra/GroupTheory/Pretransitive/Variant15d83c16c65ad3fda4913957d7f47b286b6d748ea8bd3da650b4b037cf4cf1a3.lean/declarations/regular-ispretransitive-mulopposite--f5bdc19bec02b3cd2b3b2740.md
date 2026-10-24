# Regular.isPretransitive_mulOpposite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af35e87d89c51a81fb0f7407f32a0ea9613ac69cc86c3d1659cae7a9aa71788c",
  "kind": "instance",
  "lexical_name": "Regular.isPretransitive_mulOpposite",
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
  "slug": "regular-ispretransitive-mulopposite--f5bdc19bec02b3cd2b3b2740",
  "source": {
    "blob": "0044ae81210976dda91488e7b2d101c13e9891c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 83,
    "path": "GRWTSK/Algebra/GroupTheory/Pretransitive/Variant15d83c16c65ad3fda4913957d7f47b286b6d748ea8bd3da650b4b037cf4cf1a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f5bdc19bec02b3cd2b3b27405c0db7cc2d6bca3d050a97d7e8eb3d01839f446f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Pretransitive/Variant15d83c16c65ad3fda4913957d7f47b286b6d748ea8bd3da650b4b037cf4cf1a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:af35e87d89c51a81fb0f7407f32a0ea9613ac69cc86c3d1659cae7a9aa71788c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Regular.isPretransitive_mulOpposite [Group G] : IsPretransitive Gᵐᵒᵖ G :=
  ⟨fun x y ↦ ⟨.op (x⁻¹ * y), mul_inv_cancel_left _ _⟩⟩

end MulAction

namespace MulAction

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pretransitive/Variant15d83c16c65ad3fda4913957d7f47b286b6d748ea8bd3da650b4b037cf4cf1a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pretransitive/Variant15d83c16c65ad3fda4913957d7f47b286b6d748ea8bd3da650b4b037cf4cf1a3.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0044ae81210976dda91488e7b2d101c13e9891c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
