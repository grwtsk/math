# Anonymous macro_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d7176aaeb6616244089d61e65ae70efc8e8e84a7b6556bfb41adb11f6071c63",
  "kind": "macro_rules",
  "lexical_name": null,
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
  "slug": "macro-rules--9e81d4d7c41b3d95d88bad81",
  "source": {
    "blob": "771d02a592bb62f2b199a417411b21d6738d8dab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 28,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/HeronsFormula/Variantdba7c9140d2a63f72fc20c22b92b2a52d1eeccaa43cd694df7ca840c0cc4fd96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e81d4d7c41b3d95d88bad81800849e1b628fd0c68c2945d535a178cf79ce68c",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/HeronsFormula/Variantdba7c9140d2a63f72fc20c22b92b2a52d1eeccaa43cd694df7ca840c0cc4fd96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d7176aaeb6616244089d61e65ae70efc8e8e84a7b6556bfb41adb11f6071c63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
local macro_rules | `($x ^ $y) => `(HPow.hPow $x $y) -- Porting note: See issue lean4#2220

namespace Theorems100

local notation "√" => Real.sqrt

variable {V : Type _} {P : Type _} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [MetricSpace P]
  [NormedAddTorsor V P]

/-- **Heron's formula**: The area of a triangle with side lengths `a`, `b`, and `c` is
  `√(s * (s - a) * (s - b) * (s - c))` where `s = (a + b + c) / 2` is the semiperimeter.
  We show this by equating this formula to `a * b * sin γ`, where `γ` is the angle opposite
  the side `c`.
 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/HeronsFormula/Variantdba7c9140d2a63f72fc20c22b92b2a52d1eeccaa43cd694df7ca840c0cc4fd96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/HeronsFormula/Variantdba7c9140d2a63f72fc20c22b92b2a52d1eeccaa43cd694df7ca840c0cc4fd96.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `771d02a592bb62f2b199a417411b21d6738d8dab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
