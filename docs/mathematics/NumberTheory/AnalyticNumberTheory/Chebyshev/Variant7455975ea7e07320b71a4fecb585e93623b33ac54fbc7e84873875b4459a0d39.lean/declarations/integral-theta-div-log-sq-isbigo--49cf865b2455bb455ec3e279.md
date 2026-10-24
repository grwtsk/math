# integral_theta_div_log_sq_isBigO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cce745cc-c2f5-1da5-021a-ae4e2a9ccca3",
  "kind": "theorem",
  "lexical_name": "integral_theta_div_log_sq_isBigO",
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
  "slug": "integral-theta-div-log-sq-isbigo--49cf865b2455bb455ec3e279",
  "source": {
    "blob": "6b4f47107dc0a1502ebe46e87d82b1eadd29dbcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 790,
    "line": 766,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant7455975ea7e07320b71a4fecb585e93623b33ac54fbc7e84873875b4459a0d39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49cf865b2455bb455ec3e279ac87a91f7506fdb5356b1374a5d3e8233dd3e791",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant7455975ea7e07320b71a4fecb585e93623b33ac54fbc7e84873875b4459a0d39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cce745cc-c2f5-1da5-021a-ae4e2a9ccca3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 766–790.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_theta_div_log_sq_isBigO :
    (fun x ↦ ∫ t in 2..x, θ t / (t * log t ^ 2)) =O[atTop] (fun x ↦ x / log x ^ 2) := by
  refine (IsBigO.of_bound (log 4) ?_).trans integral_one_div_log_sq_isBigO
  filter_upwards [eventually_ge_atTop 4] with x _
  simp_rw [norm_eq_abs]
  calc |∫ (t : ℝ) in 2..x, θ t / (t * log t ^ 2)|
    _ ≤ ∫ (x : ℝ) in 2..x, |θ x / (x * log x ^ 2)| :=
        intervalIntegral.abs_integral_le_integral_abs (by linarith)
    _ ≤ ∫ (x : ℝ) in 2..x, log 4 * (1 / log x ^ 2) :=
        intervalIntegral.integral_mono_on (by linarith) ?hf ?hg fun t ⟨ht, _⟩ ↦ ?hh
    _ = log 4 * |∫ (t : ℝ) in 2..x, 1 / log t ^ 2| := by
        rw [intervalIntegral.integral_const_mul, abs_of_nonneg]
        exact intervalIntegral.integral_nonneg (by linarith) fun u _ ↦ by positivity
  case hf =>
    refine (intervalIntegrable_iff.mpr ?_).abs
    rw [Set.uIoc_of_le (by linarith), ← integrableOn_Icc_iff_integrableOn_Ioc]
    exact integrableOn_theta_div_id_mul_log_sq x
  case hg =>
    refine (intervalIntegrable_one_div_log_sq ?_ ?_).const_mul _ <;> linarith
  case hh =>
    calc |θ t / (t * log t ^ 2)|
    _ = θ t / (t * log t ^ 2) := abs_of_nonneg (by positivity [theta_nonneg t])
    _ ≤ log 4 * t / (t * log t ^ 2) := by grw [theta_le_log4_mul_x (by linarith)]
    _ = log 4 * (1 / log t ^ 2) := by field

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant7455975ea7e07320b71a4fecb585e93623b33ac54fbc7e84873875b4459a0d39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant7455975ea7e07320b71a4fecb585e93623b33ac54fbc7e84873875b4459a0d39.lean#L766).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b4f47107dc0a1502ebe46e87d82b1eadd29dbcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
