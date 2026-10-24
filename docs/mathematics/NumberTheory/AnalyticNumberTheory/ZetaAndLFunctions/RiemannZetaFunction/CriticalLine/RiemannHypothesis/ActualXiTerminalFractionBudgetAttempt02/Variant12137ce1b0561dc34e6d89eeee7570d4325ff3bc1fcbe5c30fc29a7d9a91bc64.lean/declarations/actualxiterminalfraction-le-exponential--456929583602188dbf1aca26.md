# actualXiTerminalFraction_le_exponential

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:836c3f09-3e9e-f5b4-2bb3-2fd7602f970c",
  "kind": "theorem",
  "lexical_name": "actualXiTerminalFraction_le_exponential",
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
  "slug": "actualxiterminalfraction-le-exponential--456929583602188dbf1aca26",
  "source": {
    "blob": "336efdd1ccb55cc09d1fad1c8a6183824eacdafa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 96,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualXiTerminalFractionBudgetAttempt02/Variant12137ce1b0561dc34e6d89eeee7570d4325ff3bc1fcbe5c30fc29a7d9a91bc64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:456929583602188dbf1aca265d1bc62422d7e81dd8671e25c0add7e46eae5641",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualXiTerminalFractionBudgetAttempt02/Variant12137ce1b0561dc34e6d89eeee7570d4325ff3bc1fcbe5c30fc29a7d9a91bc64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:836c3f09-3e9e-f5b4-2bb3-2fd7602f970c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiTerminalFraction_le_exponential {T : ℝ} (hT : Real.log 7 ≤ T) :
    actualXiTerminalFraction T ≤
      2 * Real.sqrt 2 * actualXiExponentialEnvelopeConstant * Real.exp (-T / 2) := by
  obtain ⟨hn, hh⟩ := actualXiLogStep_floor_guards hT
  have hp : 0 < (Nat.floor (Real.exp T) : ℝ) := by
    exact_mod_cast (show 0 < Nat.floor (Real.exp T) by omega)
  have hs : 0 < Real.sqrt (Nat.floor (Real.exp T) : ℝ) := Real.sqrt_pos.2 hp
  have h2 : 0 < Real.sqrt 2 := Real.sqrt_pos.2 (by norm_num)
  have hc : 0 ≤ actualXiExponentialEnvelopeConstant := by
    unfold actualXiExponentialEnvelopeConstant
    positivity
  have hs0 := Real.sqrt_le_sqrt hh
  rw [Real.sqrt_div (Real.exp_pos T).le, sqrt_exp_half] at hs0
  have hlo : Real.exp (T / 2) ≤ Real.sqrt 2 * Real.sqrt (Nat.floor (Real.exp T) : ℝ) := by
    simpa only [mul_comm] using (div_le_iff₀ h2).1 hs0
  apply (actualXiTerminalFraction_le_inverse_sqrt hT).trans
  calc
    _ = (2 * Real.sqrt 2 * actualXiExponentialEnvelopeConstant) /
        (Real.sqrt 2 * Real.sqrt (Nat.floor (Real.exp T) : ℝ)) := by field_simp
    _ ≤ (2 * Real.sqrt 2 * actualXiExponentialEnvelopeConstant) / Real.exp (T / 2) :=
      div_le_div_of_nonneg_left (by positivity) (Real.exp_pos _) hlo
    _ = _ := by
      rw [show -T / 2 = -(T / 2) by ring, Real.exp_neg]
      ring

/-- The actual last fraction tends to zero on the full real scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualXiTerminalFractionBudgetAttempt02/Variant12137ce1b0561dc34e6d89eeee7570d4325ff3bc1fcbe5c30fc29a7d9a91bc64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualXiTerminalFractionBudgetAttempt02/Variant12137ce1b0561dc34e6d89eeee7570d4325ff3bc1fcbe5c30fc29a7d9a91bc64.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `336efdd1ccb55cc09d1fad1c8a6183824eacdafa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
