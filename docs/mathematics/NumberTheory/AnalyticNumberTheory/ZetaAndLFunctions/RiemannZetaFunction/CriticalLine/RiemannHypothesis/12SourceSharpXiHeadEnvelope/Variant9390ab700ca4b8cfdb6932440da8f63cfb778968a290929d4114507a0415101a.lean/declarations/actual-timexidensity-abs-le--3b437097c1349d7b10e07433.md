# actual_timeXiDensity_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:596bbf8b-00b7-f3a3-93d6-a2927fb2e4d8",
  "kind": "theorem",
  "lexical_name": "actual_timeXiDensity_abs_le",
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
  "slug": "actual-timexidensity-abs-le--3b437097c1349d7b10e07433",
  "source": {
    "blob": "516bd4f40771741bb6491a6e67e32d0b9f580963",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 37,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/12SourceSharpXiHeadEnvelope/Variant9390ab700ca4b8cfdb6932440da8f63cfb778968a290929d4114507a0415101a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b437097c1349d7b10e074330f88fb8eb99e9bbe893bb2d24d23ee9b23d65133",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/12SourceSharpXiHeadEnvelope/Variant9390ab700ca4b8cfdb6932440da8f63cfb778968a290929d4114507a0415101a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:596bbf8b-00b7-f3a3-93d6-a2927fb2e4d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_timeXiDensity_abs_le {t : ℝ} (ht : Real.log 7 ≤ t) :
    |timeXiDensity t| ≤ sharpXiEnvelopeConstant * Real.exp (t / 2) := by
  let c : ℝ := 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)
  have hy : 7 ≤ Real.exp t := by
    simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 7)] using Real.exp_le_exp.mpr ht
  have hpsi := Chebyshev.psi_le_const_mul_self (Real.exp_pos t).le
  have hps0 := Chebyshev.psi_nonneg (Real.exp t)
  have hc : |c| ≤ |c| / 7 * Real.exp t := by nlinarith [abs_nonneg c]
  have he : |shiftedActualChebyshev (Real.exp t)| ≤
      sharpXiEnvelopeConstant * Real.exp t := by
    unfold shiftedActualChebyshev sharpXiEnvelopeConstant
    change |Chebyshev.psi (Real.exp t) - Real.exp t + c| ≤
      (Real.log 4 + 3 + |c| / 7) * Real.exp t
    apply abs_le.mpr
    constructor <;> nlinarith [neg_abs_le c, le_abs_self c,
      Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 4)]
  rw [timeXiDensity, abs_mul, abs_of_pos (Real.exp_pos _)]
  calc
    _ ≤ (sharpXiEnvelopeConstant * Real.exp t) * Real.exp (-t / 2) :=
      mul_le_mul_of_nonneg_right he (Real.exp_pos _).le
    _ = _ := by rw [mul_assoc, ← Real.exp_add]; congr 2; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/12SourceSharpXiHeadEnvelope/Variant9390ab700ca4b8cfdb6932440da8f63cfb778968a290929d4114507a0415101a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/12SourceSharpXiHeadEnvelope/Variant9390ab700ca4b8cfdb6932440da8f63cfb778968a290929d4114507a0415101a.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `516bd4f40771741bb6491a6e67e32d0b9f580963` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
