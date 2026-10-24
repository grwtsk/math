# atom_step_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b12fb9f2-370e-3637-cafa-6177ee750e64",
  "kind": "theorem",
  "lexical_name": "atom_step_norm_le",
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
  "slug": "atom-step-norm-le--eb9a1ad983fbf562eacb8d37",
  "source": {
    "blob": "ab6dd13f336cc0360a24f113bb72f1c6773c36cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 178,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusEnergyNorm/Variantb40ae2c132e4cf9a7d0ddb5ae8d6a1d8e267e569109f4a103634d3a79e9c0123.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb9a1ad983fbf562eacb8d372ef57e47da9de5e49036b59a5905c91a51d25022",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusEnergyNorm/Variantb40ae2c132e4cf9a7d0ddb5ae8d6a1d8e267e569109f4a103634d3a79e9c0123.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b12fb9f2-370e-3637-cafa-6177ee750e64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem atom_step_norm_le {A : ℝ} (hA : 1 ≤ A) (hp : 0 < A)
    {n : ℕ} (hn : 1 ≤ n) :
    ‖atom A hp n - atom A hp (n + 1)‖ ≤
      sharpFactor A *
        (1 / Real.sqrt (n : ℝ) - 1 / Real.sqrt ((n + 1 : ℕ) : ℝ)) := by
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
  have hnm : (n : ℝ) ≤ ((n + 1 : ℕ) : ℝ) := by exact_mod_cast Nat.le_succ n
  have hd : 0 ≤ 1 / Real.sqrt (n : ℝ) - 1 / Real.sqrt ((n + 1 : ℕ) : ℝ) :=
    sub_nonneg.mpr (one_div_le_one_div_of_le (Real.sqrt_pos.2 hn0)
      (Real.sqrt_le_sqrt hnm))
  have ht := sourceCorrelation_linear_taylor_bound hA 0
    (Real.log ((n + 1 : ℕ) : ℝ) - Real.log (n : ℝ))
  rw [zero_add, actual_correlation_at_zero A hA, correlation_deriv_zero A hp,
    mul_zero, sub_zero] at ht
  have hc : 2 * (1 - sourceCorrelation explicitSecondDerivative A
      (Real.log ((n + 1 : ℕ) : ℝ) - Real.log (n : ℝ))) ≤
        162826 / (7623 * A ^ 2) *
          (Real.log ((n + 1 : ℕ) : ℝ) - Real.log (n : ℝ)) ^ 2 := by
    have ht' := (abs_le.mp ht).1
    linarith
  have hi : ⟪atom A hp n, atom A hp (n + 1)⟫_ℝ =
      (1 / Real.sqrt (n : ℝ)) * (1 / Real.sqrt ((n + 1 : ℕ) : ℝ)) *
        sourceCorrelation explicitSecondDerivative A
          (Real.log ((n + 1 : ℕ) : ℝ) - Real.log (n : ℝ)) := by
    rw [atom, atom, real_inner_smul_left, real_inner_smul_right, shift_inner]
    ring
  have hs := norm_sub_sq_real (atom A hp n) (atom A hp (n + 1))
  rw [atom_norm hA hp, atom_norm hA hp, hi] at hs
  have hc' := mul_le_mul_of_nonneg_left hc
    (by positivity : 0 ≤ (1 / Real.sqrt (n : ℝ)) *
      (1 / Real.sqrt ((n + 1 : ℕ) : ℝ)))
  have hl := mul_le_mul_of_nonneg_left (log_step_square_le hn)
    (by positivity : 0 ≤ 162826 / (7623 * A ^ 2))
  have hsq : ‖atom A hp n - atom A hp (n + 1)‖ ^ 2 ≤
      (1 + 4 * (162826 / (7623 * A ^ 2))) *
        (1 / Real.sqrt (n : ℝ) - 1 / Real.sqrt ((n + 1 : ℕ) : ℝ)) ^ 2 := by
    nlinarith
  have he : (sharpFactor A *
      (1 / Real.sqrt (n : ℝ) - 1 / Real.sqrt ((n + 1 : ℕ) : ℝ))) ^ 2 =
        (1 + 4 * (162826 / (7623 * A ^ 2))) *
          (1 / Real.sqrt (n : ℝ) - 1 / Real.sqrt ((n + 1 : ℕ) : ℝ)) ^ 2 := by
    rw [mul_pow, sharpFactor_sq]
  rw [← he] at hsq
  exact (sq_le_sq₀ (norm_nonneg _) (mul_nonneg (Real.sqrt_nonneg _) hd)).mp hsq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusEnergyNorm/Variantb40ae2c132e4cf9a7d0ddb5ae8d6a1d8e267e569109f4a103634d3a79e9c0123.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusEnergyNorm/Variantb40ae2c132e4cf9a7d0ddb5ae8d6a1d8e267e569109f4a103634d3a79e9c0123.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab6dd13f336cc0360a24f113bb72f1c6773c36cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
