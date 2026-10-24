# norm_log_le_twenty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba3cb420-311d-0643-ca01-3d7be3878a6a",
  "kind": "theorem",
  "lexical_name": "norm_log_le_twenty",
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
  "slug": "norm-log-le-twenty--51ae7124b8ec5904a6b03fa7",
  "source": {
    "blob": "44b683e049ac87227567f5bcccc8d2cbd10209af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 31,
    "path": "GRWTSK/Analysis/Complex/NormalizedLogDerivativeBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51ae7124b8ec5904a6b03fa78da7ed89d2ca7b318db56fab4643ce2b6de4e372",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/NormalizedLogDerivativeBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba3cb420-311d-0643-ca01-3d7be3878a6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_log_le_twenty (L : ℂ → ℂ) (H : ℝ) (hH : 0 < H)
    (hL : DifferentiableOn ℂ L (ball 0 (11 / 4 : ℝ))) (h0 : L 0 = 0)
    (hreal : ∀ z ∈ ball 0 (11 / 4 : ℝ), (L z).re ≤ H)
    (z : ℂ) (hz : ‖z‖ ≤ 5 / 2) : ‖L z‖ ≤ 20 * H := by
  have hm : z ∈ ball (0 : ℂ) (11 / 4 : ℝ) := by
    rw [Metric.mem_ball, dist_zero_right]
    linarith
  have hb := Complex.borelCaratheodory_zero hH hL hreal (by norm_num) hm h0
  apply hb.trans
  apply (div_le_iff₀ (by linarith : 0 < (11 / 4 : ℝ) - ‖z‖)).mpr
  nlinarith [mul_le_mul_of_nonneg_left hz hH.le]

/-- A radius-1/4 Cauchy circle around the radius-9/4 core stays in radius 5/2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/NormalizedLogDerivativeBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/NormalizedLogDerivativeBound.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44b683e049ac87227567f5bcccc8d2cbd10209af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
