# actualDivisorPeriodicResidual_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:156c70a9-ee5d-4221-1621-5beead88d23e",
  "kind": "theorem",
  "lexical_name": "actualDivisorPeriodicResidual_abs_le",
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
  "slug": "actualdivisorperiodicresidual-abs-le--257ed812c4938506ba711929",
  "source": {
    "blob": "686d7360da1f76a90c054e49c1feb5dcd0c7eb72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCenteredPeriodMeanBudgetAttempt02/Variant281414b65951066b8593c503d5838b1d04b981b52ded3cd5e531032afdddca6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:257ed812c4938506ba711929298088a9ae7972f088109c5b1e8ace5bb2568322",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCenteredPeriodMeanBudgetAttempt02/Variant281414b65951066b8593c503d5838b1d04b981b52ded3cd5e531032afdddca6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:156c70a9-ee5d-4221-1621-5beead88d23e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualDivisorPeriodicResidual_abs_le (d M : ℕ) (hd : 1 ≤ d) :
    |actualDivisorPeriodicResidual d M| ≤ ((d : ℝ) - 1) / (2 * d) := by
  have hdR : 0 < (d : ℝ) := by exact_mod_cast (show 0 < d by omega)
  have hr : 0 ≤ ((M % d : ℕ) : ℝ) := by positivity
  have hr' : ((M % d : ℕ) : ℝ) + 1 ≤ (d : ℝ) := by
    exact_mod_cast (show M % d + 1 ≤ d by
      have := Nat.mod_lt M (show 0 < d by omega)
      omega)
  have he : actualDivisorPeriodicResidual d M =
      (2 * ((M % d : ℕ) : ℝ) - (d : ℝ) + 1) / (2 * d) := by
    unfold actualDivisorPeriodicResidual
    field_simp
    ring
  rw [he, abs_div, abs_of_pos (by positivity : 0 < 2 * (d : ℝ))]
  apply (div_le_div_iff_of_pos_right (by positivity : 0 < 2 * (d : ℝ))).2
  exact abs_le.mpr ⟨by linarith, by linarith⟩

/-- All actual Moebius signs and the zero unit row are kept before taking norms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCenteredPeriodMeanBudgetAttempt02/Variant281414b65951066b8593c503d5838b1d04b981b52ded3cd5e531032afdddca6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCenteredPeriodMeanBudgetAttempt02/Variant281414b65951066b8593c503d5838b1d04b981b52ded3cd5e531032afdddca6f.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `686d7360da1f76a90c054e49c1feb5dcd0c7eb72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
