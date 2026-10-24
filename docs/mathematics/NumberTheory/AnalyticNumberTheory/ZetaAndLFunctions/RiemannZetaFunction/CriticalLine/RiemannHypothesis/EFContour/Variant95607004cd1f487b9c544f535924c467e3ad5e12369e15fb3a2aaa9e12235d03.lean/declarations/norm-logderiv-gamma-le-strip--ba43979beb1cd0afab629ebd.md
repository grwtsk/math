# norm_logDeriv_Gammaℝ_le_strip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31424604-75d1-495f-a257-c154d2702e59",
  "kind": "lemma",
  "lexical_name": "norm_logDeriv_Gammaℝ_le_strip",
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
  "slug": "norm-logderiv-gamma-le-strip--ba43979beb1cd0afab629ebd",
  "source": {
    "blob": "81e495413fa057991eff8203fff81c2aefef8151",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 90,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFContour/Variant95607004cd1f487b9c544f535924c467e3ad5e12369e15fb3a2aaa9e12235d03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba43979beb1cd0afab629ebdae84ce7e1d30af236f9b382904c5438604195e48",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFContour/Variant95607004cd1f487b9c544f535924c467e3ad5e12369e15fb3a2aaa9e12235d03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31424604-75d1-495f-a257-c154d2702e59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_logDeriv_Gammaℝ_le_strip {u : ℂ} (hre : -1 / 4 ≤ u.re) (hre' : u.re ≤ 2) (him : 2 ≤ |u.im|) :
    ‖logDeriv Gammaℝ u‖ ≤ Real.log (|u.im| + 3) + 6 := by
  rcases lt_or_ge 0 u.re with hpos | hnp
  · have := ZeroCount.norm_logDeriv_Gammaℝ_le_log hpos (by linarith) him
    linarith
  · have hu : u.im ≠ 0 := by intro h; rw [h] at him; norm_num at him
    rw [logDeriv_Gammaℝ_shift hu]
    have h2 := ZeroCount.norm_logDeriv_Gammaℝ_le_log (s := u + 2) (by simp; linarith) (by simp; linarith)
      (by simpa using him)
    have hinv : ‖1 / u‖ ≤ 1 := by
      rw [norm_div, norm_one, div_le_one (norm_pos_iff.mpr (ne_zero_of_im_ne_zero hu))]
      exact le_trans (by linarith) (Complex.abs_im_le_norm u)
    calc ‖logDeriv Gammaℝ (u + 2) - 1 / u‖ ≤ ‖logDeriv Gammaℝ (u + 2)‖ + ‖1 / u‖ := norm_sub_le _ _
      _ ≤ (Real.log (|(u + 2).im| + 3) + 5) + 1 := add_le_add h2 hinv
      _ = Real.log (|u.im| + 3) + 6 := by simp; ring

/-- horizontal bound for L₋: ‖(Lfn − L₂)(s)‖ ≤ log(|Im s|+3) + 7 on 1−c ≤ Re s ≤ c, |Im s| ≥ 2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFContour/Variant95607004cd1f487b9c544f535924c467e3ad5e12369e15fb3a2aaa9e12235d03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFContour/Variant95607004cd1f487b9c544f535924c467e3ad5e12369e15fb3a2aaa9e12235d03.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81e495413fa057991eff8203fff81c2aefef8151` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
