# FunctionField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:22b5176f221dd16ec161238e5d3cf01498ee939ffd39f03c58b6049454d55c3d",
  "kind": "abbrev",
  "lexical_name": "FunctionField",
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
  "slug": "functionfield--b2cd81a30adf579f6ab4d37b",
  "source": {
    "blob": "c6a2fc39e4dcc96ebfcdbdef0e3f1103e3591c87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 849,
    "line": 842,
    "path": "GRWTSK/Algebra/LinearAlgebra/Weierstrass/Variant38c601376d17198248476eee6b84d427c8ee43d973470372d5bbbc2e9fee8f28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b2cd81a30adf579f6ab4d37bb190bfe573208f844f3e6eed8437092ed7f27914",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Weierstrass/Variant38c601376d17198248476eee6b84d427c8ee43d973470372d5bbbc2e9fee8f28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:22b5176f221dd16ec161238e5d3cf01498ee939ffd39f03c58b6049454d55c3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 842–849.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev FunctionField : Type u :=
  FractionRing W.CoordinateRing
#align weierstrass_curve.function_field WeierstrassCurve.FunctionField

namespace CoordinateRing

-- porting note: added the abbreviation `mk` for `AdjoinRoot.mk W.polynomial`
/-- An element of the coordinate ring `R[W]` of `W` over `R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Weierstrass/Variant38c601376d17198248476eee6b84d427c8ee43d973470372d5bbbc2e9fee8f28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Weierstrass/Variant38c601376d17198248476eee6b84d427c8ee43d973470372d5bbbc2e9fee8f28.lean#L842).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6a2fc39e4dcc96ebfcdbdef0e3f1103e3591c87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
