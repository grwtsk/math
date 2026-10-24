# HomotopyLike

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2cc1acb79330fd3239a807b309fc64d3c6dfbe5795d938ee1385d5f385f6f8d1",
  "kind": "class",
  "lexical_name": "HomotopyLike",
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
  "slug": "homotopylike--b4ae5aa2d8b0499c84b1ca40",
  "source": {
    "blob": "814ba603d25c5dd377b35ce721271aaf81abc815",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 99,
    "path": "GRWTSK/Topology/AlgebraicTopology/Basic/Variantea63603cd183622ec9b0f2fba58c9da02c7673030edd5661d41fc8c0b31e4f48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b4ae5aa2d8b0499c84b1ca40de35630efcc5312fec855f3a0a45a242f3714dd7",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Basic/Variantea63603cd183622ec9b0f2fba58c9da02c7673030edd5661d41fc8c0b31e4f48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2cc1acb79330fd3239a807b309fc64d3c6dfbe5795d938ee1385d5f385f6f8d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class HomotopyLike {X Y : outParam (Type*)} [TopologicalSpace X] [TopologicalSpace Y]
    (F : Type*) (f₀ f₁ : outParam <| C(X, Y)) extends ContinuousMapClass F (I × X) Y where
  /-- value of the homotopy at 0 -/
  map_zero_left (f : F) : ∀ x, f (0, x) = f₀ x
  /-- value of the homotopy at 1 -/
  map_one_left (f : F) : ∀ x, f (1, x) = f₁ x
#align continuous_map.homotopy_like ContinuousMap.HomotopyLike

end

namespace Homotopy

section

variable {f₀ f₁ : C(X, Y)}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Basic/Variantea63603cd183622ec9b0f2fba58c9da02c7673030edd5661d41fc8c0b31e4f48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Basic/Variantea63603cd183622ec9b0f2fba58c9da02c7673030edd5661d41fc8c0b31e4f48.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `814ba603d25c5dd377b35ce721271aaf81abc815` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
