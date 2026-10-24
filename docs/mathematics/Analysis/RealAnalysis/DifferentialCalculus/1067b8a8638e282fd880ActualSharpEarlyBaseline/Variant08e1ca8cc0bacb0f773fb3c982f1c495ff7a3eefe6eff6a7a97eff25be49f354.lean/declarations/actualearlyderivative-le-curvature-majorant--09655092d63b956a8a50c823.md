# actualEarlyDerivative_le_curvature_majorant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0a2f94d-698c-29c2-826f-e4d7dd968d41",
  "kind": "theorem",
  "lexical_name": "actualEarlyDerivative_le_curvature_majorant",
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
  "slug": "actualearlyderivative-le-curvature-majorant--09655092d63b956a8a50c823",
  "source": {
    "blob": "330a33648b147894a99ae4f8c48add4eb95425c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 64,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/1067b8a8638e282fd880ActualSharpEarlyBaseline/Variant08e1ca8cc0bacb0f773fb3c982f1c495ff7a3eefe6eff6a7a97eff25be49f354.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09655092d63b956a8a50c82306677a9622015bb299a1924d58381c6d981a9fa3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/1067b8a8638e282fd880ActualSharpEarlyBaseline/Variant08e1ca8cc0bacb0f773fb3c982f1c495ff7a3eefe6eff6a7a97eff25be49f354.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0a2f94d-698c-29c2-826f-e4d7dd968d41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualEarlyDerivative_le_curvature_majorant {A x : ℝ} (hA : 25600 ≤ A)
    (hx : x ∈ Icc (1 : ℝ) (vaughanCutoff A : ℝ)) :
    (⌊x⌋₊ : ℝ) * deriv (plainProfile A 1) x ≤
      -(x - 1) / (2 * x * Real.sqrt x) +
        (162826 / (7623 * A ^ 2)) *
          ((Real.log x) ^ 2 / 4 + Real.log x) / Real.sqrt x := by
  have hA1 : 1 ≤ A := by linarith
  have hp : 0 < A := by linarith
  have hx0 : 0 < x := by linarith [hx.1]
  have hs : 0 < Real.sqrt x := Real.sqrt_pos.2 hx0
  have ht : 0 ≤ Real.log x := Real.log_nonneg hx.1
  have htU := Real.log_le_log hx0 hx.2
  have htW := htU.trans (log_vaughanCutoff_le_early_window hA)
  have hw := criticalWeight_early_lower (by linarith : 40 ≤ A) ht htW
  have hl := actualCriticalWeight_lower_curvature hA1 ht
  have hf : x - 1 ≤ (⌊x⌋₊ : ℝ) := (Nat.sub_one_lt_floor x).le
  have hfc : (x - 1) * criticalWeight A (Real.log x) ≤
      (⌊x⌋₊ : ℝ) * criticalWeight A (Real.log x) :=
    mul_le_mul_of_nonneg_right hf (by linarith)
  have he := mul_le_mul_of_nonneg_left hl (show 0 ≤ x - 1 by linarith [hx.1])
  have hr : 0 ≤ (162826 / (7623 * A ^ 2)) *
      ((Real.log x) ^ 2 / 4 + Real.log x) := by positivity
  have hferr : (x - 1) * ((162826 / (7623 * A ^ 2)) *
      ((Real.log x) ^ 2 / 4 + Real.log x)) ≤
      x * ((162826 / (7623 * A ^ 2)) *
      ((Real.log x) ^ 2 / 4 + Real.log x)) :=
    mul_le_mul_of_nonneg_right (by linarith) hr
  rw [(plainProfile_hasDerivAt hp 1 hx0).deriv]
  simp only [Real.log_one, zero_add]
  rw [exp_neg_half_log_eq_inv_sqrt hx0]
  have hden : 0 < x * Real.sqrt x := mul_pos hx0 hs
  have hn : -((⌊x⌋₊ : ℝ) * criticalWeight A (Real.log x)) ≤
      -(x - 1) / 2 + x * ((162826 / (7623 * A ^ 2)) *
        ((Real.log x) ^ 2 / 4 + Real.log x)) := by nlinarith
  have hd := div_le_div_of_nonneg_right hn hden.le
  calc
    _ = -((⌊x⌋₊ : ℝ) * criticalWeight A (Real.log x)) / (x * Real.sqrt x) := by
      unfold criticalWeight
      field_simp
      ring
    _ ≤ _ := hd
    _ = _ := by field_simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/1067b8a8638e282fd880ActualSharpEarlyBaseline/Variant08e1ca8cc0bacb0f773fb3c982f1c495ff7a3eefe6eff6a7a97eff25be49f354.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/1067b8a8638e282fd880ActualSharpEarlyBaseline/Variant08e1ca8cc0bacb0f773fb3c982f1c495ff7a3eefe6eff6a7a97eff25be49f354.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `330a33648b147894a99ae4f8c48add4eb95425c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
