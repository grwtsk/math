# Seminorm.gaugeSeminorm_ball

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1ffd510-ff09-06c1-f971-5a67baedbe8f",
  "kind": "theorem",
  "lexical_name": "Seminorm.gaugeSeminorm_ball",
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
  "slug": "seminorm-gaugeseminorm-ball--883c4dd5a44bf77a517654ee",
  "source": {
    "blob": "e8c28dd23a27afa7e0e6b43f0e3730e21ac09e93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 542,
    "line": 530,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:883c4dd5a44bf77a517654eea269b3e38d4db920696463d3c2f9b808b031bb0c",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1ffd510-ff09-06c1-f971-5a67baedbe8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 530–542.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Seminorm.gaugeSeminorm_ball (p : Seminorm ℝ E) :
    gaugeSeminorm (p.balanced_ball_zero 1) (p.convex_ball 0 1) (p.absorbent_ball_zero zero_lt_one) =
      p :=
  FunLike.coe_injective p.gauge_ball
#align seminorm.gauge_seminorm_ball Seminorm.gaugeSeminorm_ball

end AddCommGroup

section Seminormed

variable [SeminormedAddCommGroup E] [NormedSpace ℝ E] {s : Set E} {r : ℝ} {x : E}
open Metric

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Gauge/Variant37880a518553320e52a9225f5436672866c5b495caeb2504457c576be76b8840.lean#L530).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8c28dd23a27afa7e0e6b43f0e3730e21ac09e93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
