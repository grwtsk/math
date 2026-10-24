# terminalLiteralKernel_eq_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c97fe28c-47dc-c31c-c372-c6f5f6749a27",
  "kind": "theorem",
  "lexical_name": "terminalLiteralKernel_eq_two",
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
  "slug": "terminalliteralkernel-eq-two--f741c36e28c31679e6b91c87",
  "source": {
    "blob": "5e83e4b73a439e8d3aa048d9226b6862e319b56f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 381,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SupplierTerminalSource/Variantd9ca275644ee35cdea8eb9d6be7e46f94c356b2260e7c72685c607cdd76ca741.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f741c36e28c31679e6b91c877fa9dedc66f98cf5e05bd26981d597a47b395934",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SupplierTerminalSource/Variantd9ca275644ee35cdea8eb9d6be7e46f94c356b2260e7c72685c607cdd76ca741.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c97fe28c-47dc-c31c-c372-c6f5f6749a27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 381–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem terminalLiteralKernel_eq_two {A t : ℝ} (hA : 1 ≤ A)
    (hleft : 2 * A - Real.log 2 - 1 / 8 < t)
    (_hright : t < 2 * A - Real.log 2) :
    terminalLiteralKernel A t =
      Real.log 2 / Real.sqrt 2 *
        (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (t + Real.log 2) -
          deriv (sourceCorrelation explicitSecondDerivative A) (t + Real.log 2) / 2) := by
  have hp : 0 < A := by linarith
  have hcut : 2 ≤ ⌊Real.exp (2 * A)⌋₊ := by
    apply Nat.le_floor
    have h := Real.add_one_le_exp (2 * A)
    norm_num
    linarith
  have hmem : 2 ∈ Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊ := Finset.mem_Icc.mpr ⟨le_rfl, hcut⟩
  dsimp [terminalLiteralKernel]
  rw [Finset.sum_eq_single 2]
  · norm_num
  · intro k hk hk2
    have hk3 : 3 ≤ k := by have hklo := (Finset.mem_Icc.mp hk).1; omega
    have hlog : Real.log 3 ≤ Real.log (k : ℝ) :=
      Real.log_le_log (by norm_num) (by exact_mod_cast hk3)
    have hs : 2 * A < t + Real.log (k : ℝ) := by
      linarith [log_three_sub_log_two]
    rw [sourceCorrelation_deriv_zero_above hp hs,
      sourceCorrelation_second_deriv_zero_above hp hs]
    simp
  · intro hn
    exact (hn hmem).elim

/-- Uniform positivity of the original literal integer kernel on a fixed-width
terminal strip, including every admissible real scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SupplierTerminalSource/Variantd9ca275644ee35cdea8eb9d6be7e46f94c356b2260e7c72685c607cdd76ca741.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SupplierTerminalSource/Variantd9ca275644ee35cdea8eb9d6be7e46f94c356b2260e7c72685c607cdd76ca741.lean#L381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e83e4b73a439e8d3aa048d9226b6862e319b56f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
