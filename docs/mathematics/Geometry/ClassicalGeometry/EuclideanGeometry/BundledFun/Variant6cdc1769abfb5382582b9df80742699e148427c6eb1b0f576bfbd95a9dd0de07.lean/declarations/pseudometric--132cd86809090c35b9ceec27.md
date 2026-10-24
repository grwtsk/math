# PseudoMetric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d7352882d386fc8cc02db34c46d48bee2bcbd538065cc3023ff67b8c37d00be5",
  "kind": "structure",
  "lexical_name": "PseudoMetric",
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
  "slug": "pseudometric--132cd86809090c35b9ceec27",
  "source": {
    "blob": "a0d75fa7e5bde60d22a337547efa6df325ce1aad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 32,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:132cd86809090c35b9ceec27db8038b37057f2563619c1f686e9d2359b1c6d66",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d7352882d386fc8cc02db34c46d48bee2bcbd538065cc3023ff67b8c37d00be5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PseudoMetric [Zero R] [Add R] [LE R] where
  /-- The underlying binary function mapping into a linearly ordered additive monoid. -/
  toFun : X → X → R
  /-- A pseudometric must take identical elements to 0. -/
  refl' x : toFun x x = 0
  /-- A pseudometric must be symmetric. -/
  symm' x y : toFun x y = toFun y x
  /-- A pseudometric must respect the triangle inequality. -/
  triangle' x y z : toFun x z ≤ toFun x y + toFun y z

namespace PseudoMetric

section Basic

variable [Zero R] [Add R] [LE R] (d : PseudoMetric X R)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0d75fa7e5bde60d22a337547efa6df325ce1aad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
