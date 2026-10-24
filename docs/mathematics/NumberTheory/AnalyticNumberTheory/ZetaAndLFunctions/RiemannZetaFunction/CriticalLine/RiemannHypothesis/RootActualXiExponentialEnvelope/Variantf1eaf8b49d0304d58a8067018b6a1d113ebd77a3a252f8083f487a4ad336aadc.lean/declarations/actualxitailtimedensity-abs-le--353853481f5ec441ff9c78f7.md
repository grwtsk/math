# actualXiTailTimeDensity_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2044a8f0-1b90-1bf7-2c1a-c4ab1253cb8b",
  "kind": "theorem",
  "lexical_name": "actualXiTailTimeDensity_abs_le",
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
  "slug": "actualxitailtimedensity-abs-le--353853481f5ec441ff9c78f7",
  "source": {
    "blob": "1e0a0cf4d4529cf53bab07a5206c71dcbbe781b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 28,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiExponentialEnvelope/Variantf1eaf8b49d0304d58a8067018b6a1d113ebd77a3a252f8083f487a4ad336aadc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:353853481f5ec441ff9c78f709be885fe91c3533de1ede1fe3f4573f19756432",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiExponentialEnvelope/Variantf1eaf8b49d0304d58a8067018b6a1d113ebd77a3a252f8083f487a4ad336aadc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2044a8f0-1b90-1bf7-2c1a-c4ab1253cb8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiTailTimeDensity_abs_le {t : ℝ} (ht : Real.log 7 ≤ t) :
    |actualXiTailTimeDensity t| ≤ actualXiExponentialEnvelopeConstant * Real.exp (t / 2) := by
  let c : ℝ := 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)
  have ht0 : 0 ≤ t := (Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 7)).trans ht
  have he1 : 1 ≤ Real.exp t := Real.one_le_exp_iff.mpr ht0
  have hp := Chebyshev.psi_le_const_mul_self (Real.exp_pos t).le
  have ha : |shiftedActualChebyshev (Real.exp t)| ≤
      actualXiExponentialEnvelopeConstant * Real.exp t := by
    have hh := (abs_add_le (Chebyshev.psi (Real.exp t) - Real.exp t) c).trans
      (add_le_add_right (abs_sub (Chebyshev.psi (Real.exp t)) (Real.exp t)) |c|)
    rw [abs_of_nonneg (Chebyshev.psi_nonneg _), abs_of_pos (Real.exp_pos _)] at hh
    unfold shiftedActualChebyshev actualXiExponentialEnvelopeConstant
    change |Chebyshev.psi (Real.exp t) - Real.exp t + c| ≤
      (Real.log 4 + 5 + |c|) * Real.exp t
    nlinarith [abs_nonneg c]
  rw [actualXiTailTimeDensity, abs_mul, abs_of_pos (Real.exp_pos _)]
  calc
    _ ≤ (actualXiExponentialEnvelopeConstant * Real.exp t) * Real.exp (-t / 2) :=
      mul_le_mul_of_nonneg_right ha (Real.exp_pos _).le
    _ = _ := by rw [mul_assoc, ← Real.exp_add]; congr 2 <;> ring

/-- Genuine finite L1 precedes integration of the original signed density. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiExponentialEnvelope/Variantf1eaf8b49d0304d58a8067018b6a1d113ebd77a3a252f8083f487a4ad336aadc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiExponentialEnvelope/Variantf1eaf8b49d0304d58a8067018b6a1d113ebd77a3a252f8083f487a4ad336aadc.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e0a0cf4d4529cf53bab07a5206c71dcbbe781b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
