# sqrt_twoX_le_two_thresholdAmplitude

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54873a1e-b25e-f279-890b-1c1db3aca891",
  "kind": "theorem",
  "lexical_name": "sqrt_twoX_le_two_thresholdAmplitude",
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
  "slug": "sqrt-twox-le-two-thresholdamplitude--832f5851e2656bee1bd97efa",
  "source": {
    "blob": "b255aa4601e71c26aba1c46684f21f70ca7d7695",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 59,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/GradedThetaThresholdTransport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:832f5851e2656bee1bd97efa031acee8fa7b264dab488be266739f1a80d09ecd",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/GradedThetaThresholdTransport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54873a1e-b25e-f279-890b-1c1db3aca891`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sqrt_twoX_le_two_thresholdAmplitude
    {ρ η : ℝ}
    (hρ : (1 / 2 : ℝ) ≤ ρ)
    (hη : 0 < η)
    {X : ℕ} (hX : 0 < X) :
    Real.sqrt (((2 * X : ℕ) : ℝ)) ≤
      2 * Real.rpow (X : ℝ) (ρ + η / 2) := by
  have hXr : (0 : ℝ) < (X : ℝ) := by exact_mod_cast hX
  have hX1 : (1 : ℝ) ≤ (X : ℝ) := by
    exact_mod_cast (Nat.one_le_iff_ne_zero.mpr (Nat.ne_of_gt hX))
  have hsqrt2 :
      Real.sqrt (((2 * X : ℕ) : ℝ)) ≤
        2 * Real.sqrt (X : ℝ) := by
    have hl : 0 ≤ Real.sqrt (((2 * X : ℕ) : ℝ)) :=
      Real.sqrt_nonneg _
    have hr : 0 ≤ 2 * Real.sqrt (X : ℝ) := by positivity
    apply (sq_le_sq₀ hl hr).1
    rw [Real.sq_sqrt (by positivity),
      mul_pow, Real.sq_sqrt hXr.le]
    push_cast
    nlinarith
  have hsqrtPow :
      Real.sqrt (X : ℝ) ≤
        Real.rpow (X : ℝ) (ρ + η / 2) := by
    rw [Real.sqrt_eq_rpow]
    exact Real.rpow_le_rpow_of_exponent_le
      hX1 (by linarith)
  exact hsqrt2.trans
    (mul_le_mul_of_nonneg_left hsqrtPow (by norm_num))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/GradedThetaThresholdTransport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/GradedThetaThresholdTransport.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b255aa4601e71c26aba1c46684f21f70ca7d7695` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
