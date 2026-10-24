# abs_circleAverage_le_circleAverage_abs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9cc33b7c-3a9a-8eaf-045d-eb3dad71d768",
  "kind": "theorem",
  "lexical_name": "abs_circleAverage_le_circleAverage_abs",
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
  "slug": "abs-circleaverage-le-circleaverage-abs--f2a0656a4b62a5740b8437a5",
  "source": {
    "blob": "fee8d1ab6e50edfc1b3355aa70f6d2515b934d48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 303,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2a0656a4b62a5740b8437a5284bc15c60e63df937fa21c48c68d025a4d94e9e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9cc33b7c-3a9a-8eaf-045d-eb3dad71d768`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_circleAverage_le_circleAverage_abs {f : ℂ → ℝ} :
    |circleAverage f c R| ≤ circleAverage |f| c R := by
  rw [circleAverage, circleAverage, smul_eq_mul, smul_eq_mul, abs_mul,
    abs_of_pos (inv_pos.2 two_pi_pos), mul_le_mul_iff_of_pos_left (inv_pos.2 two_pi_pos)]
  exact intervalIntegral.abs_integral_le_integral_abs (le_of_lt two_pi_pos)

/--
The circle average of a nonnegative function is nonnegative.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fee8d1ab6e50edfc1b3355aa70f6d2515b934d48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
