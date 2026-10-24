# gammaTraceFloor_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da6ea5d8-7239-a030-8391-9f941e0c9338",
  "kind": "theorem",
  "lexical_name": "gammaTraceFloor_nonneg",
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
  "slug": "gammatracefloor-nonneg--55a098a871d82981f8334f0a",
  "source": {
    "blob": "8c2ae6892075eaec10b15dfcdec6dedcc61cd1df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 56,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiniteGammaReturn/Variant55d4601e323f16a3c0eb9ecdef3901bab64433c320b290b0567b970d9973fcfd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55a098a871d82981f8334f0a65a2d25f7925aa00c74a9e570ba7ff2fbed99223",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiniteGammaReturn/Variant55d4601e323f16a3c0eb9ecdef3901bab64433c320b290b0567b970d9973fcfd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da6ea5d8-7239-a030-8391-9f941e0c9338`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gammaTraceFloor_nonneg (Q : ℝ) (hQ : 91 ≤ Q) : 0 ≤ gammaTraceFloor Q := by
  have hg : 0 ≤ Real.eulerMascheroniConstant := by
    linarith [Real.one_half_lt_eulerMascheroniConstant]
  have hl0 : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  have hl1 : Real.log (2 : ℝ) ≤ 1 := by
    simpa only [show (2 : ℝ) - 1 = 1 by norm_num] using
      Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)
  have hlog : Real.log (2 : ℝ) ^ 2 ≤ 1 := by nlinarith
  have hq : 0 < 2 * Q ^ 2 := by
    have hpos : 0 < Q := by linarith
    positivity
  have ht : 5 * Real.log (2 : ℝ) ^ 2 ≤ 2 * Q ^ 2 := by nlinarith
  have hfrac : 5 * Real.log (2 : ℝ) ^ 2 / (2 * Q ^ 2) ≤ 1 :=
    (div_le_iff₀ hq).mpr (by simpa using ht)
  unfold gammaTraceFloor
  exact mul_nonneg (mul_nonneg hg (Real.exp_pos _).le) (by linarith)
end RH16FiniteGammaReturn
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiniteGammaReturn/Variant55d4601e323f16a3c0eb9ecdef3901bab64433c320b290b0567b970d9973fcfd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiniteGammaReturn/Variant55d4601e323f16a3c0eb9ecdef3901bab64433c320b290b0567b970d9973fcfd.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c2ae6892075eaec10b15dfcdec6dedcc61cd1df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
