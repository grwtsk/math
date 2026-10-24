# source_quarter_budget_le_proposed_absolute_payment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9adb2408-9f21-09ad-a915-34c208b04250",
  "kind": "theorem",
  "lexical_name": "source_quarter_budget_le_proposed_absolute_payment",
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
  "slug": "source-quarter-budget-le-proposed-absolute-payment--13c13cca0eb68b73170ae87e",
  "source": {
    "blob": "a9ee815428dde726b6e13fba65cfc8dba451a308",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 71,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AbsoluteEnvelopeFiniteBudget/Variantd15e4e422100d4fa84380286a989d47826f31ae26fc72d55ec9f8c713ffa77d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13c13cca0eb68b73170ae87e915c269c2ec62d53c39c5644cb4b05c42fb42ec4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AbsoluteEnvelopeFiniteBudget/Variantd15e4e422100d4fa84380286a989d47826f31ae26fc72d55ec9f8c713ffa77d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9adb2408-9f21-09ad-a915-34c208b04250`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_quarter_budget_le_proposed_absolute_payment {A : ℝ} (hA : 1 ≤ A)
    (delta : ℝ → ℝ)
    (hint : IntervalIntegrable (fun x ↦ delta x / Real.sqrt x) volume
      (A ^ 2) (Real.exp (2 * A)))
    (hdelta : ∀ x ∈ Icc (A ^ 2) (Real.exp (2 * A)), x ^ (-1 / 4 : ℝ) ≤ delta x) :
    quarterBudget A ≤ paidBudget delta A := by
  have hA0 : 0 ≤ A := by linarith
  have he : A ≤ Real.exp A := by linarith [Real.add_one_le_exp A]
  have horder : A ^ 2 ≤ Real.exp (2 * A) := by
    have hp := mul_self_le_mul_self hA0 he
    simpa only [show 2 * A = A + A by ring, Real.exp_add, pow_two] using hp
  have hcont : ContinuousOn (fun x : ℝ ↦ x ^ (-3 / 4 : ℝ))
      (uIcc (A ^ 2) (Real.exp (2 * A))) := by
    rw [uIcc_of_le horder]
    apply continuousOn_id.rpow_const
    intro x hx
    left
    change x ≠ 0
    have hxlow := hx.1
    nlinarith
  apply intervalIntegral.integral_mono_on horder hcont.intervalIntegrable hint
  intro x hx
  have hx0 : 0 < x := by have := hx.1; nlinarith
  rw [← quarter_power_div_sqrt x hx0]
  exact div_le_div_of_nonneg_right (hdelta x hx) (Real.sqrt_nonneg x)


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AbsoluteEnvelopeFiniteBudget/Variantd15e4e422100d4fa84380286a989d47826f31ae26fc72d55ec9f8c713ffa77d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AbsoluteEnvelopeFiniteBudget/Variantd15e4e422100d4fa84380286a989d47826f31ae26fc72d55ec9f8c713ffa77d4.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9ee815428dde726b6e13fba65cfc8dba451a308` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
