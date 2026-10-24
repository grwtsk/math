# coefficientVariation_real_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2fd95202-216c-649c-73b1-766c5d0dd1db",
  "kind": "theorem",
  "lexical_name": "coefficientVariation_real_lower",
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
  "slug": "coefficientvariation-real-lower--c436f559a8750e8d45708777",
  "source": {
    "blob": "41fd4b162076f17d592dbed3b821e6e39baea449",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 24,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AbsoluteMass/Variant57c0c9a900029a175fadc9729c8a1c144935b454f9e3f1782d4a9fbcfe61b941.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c436f559a8750e8d457087771878ecd3f88f7362fb597552df3ff201a57e16da",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AbsoluteMass/Variant57c0c9a900029a175fadc9729c8a1c144935b454f9e3f1782d4a9fbcfe61b941.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fd95202-216c-649c-73b1-766c5d0dd1db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coefficientVariation_real_lower {x : ℝ} (hx : 6 ≤ x) :
    Real.sqrt x / 24 ≤ coefficientVariation ⌊x⌋₊ := by
  let M : ℕ := ⌊x⌋₊ / 6
  have hfloor : 6 ≤ ⌊x⌋₊ := Nat.le_floor hx
  have hM : 1 ≤ M := by dsimp [M]; omega
  have hMN : 6 * M ≤ ⌊x⌋₊ := by dsimp [M]; omega
  have hsmall : ⌊x⌋₊ + 1 ≤ 12 * M := by dsimp [M]; omega
  have hxM : x ≤ 12 * (M : ℝ) := by
    have hnext : x < (⌊x⌋₊ : ℝ) + 1 := Nat.lt_floor_add_one x
    have hsmallr : (⌊x⌋₊ : ℝ) + 1 ≤ 12 * (M : ℝ) := by exact_mod_cast hsmall
    linarith
  have hMr : (1 : ℝ) ≤ M := by exact_mod_cast hM
  have hx0 : 0 ≤ x := by linarith
  have hspos : 0 < Real.sqrt (6 * (M : ℝ)) := Real.sqrt_pos.2 (by nlinarith)
  have hp : 0 ≤ Real.sqrt x * Real.sqrt (6 * (M : ℝ)) := by positivity
  have hp2 : (Real.sqrt x * Real.sqrt (6 * (M : ℝ))) ^ 2 = x * (6 * (M : ℝ)) := by
    rw [mul_pow, Real.sq_sqrt hx0, Real.sq_sqrt (by nlinarith)]
  have hmul := mul_le_mul_of_nonneg_right hxM (show 0 ≤ 6 * (M : ℝ) by nlinarith)
  have hbound : Real.sqrt x * Real.sqrt (6 * (M : ℝ)) ≤ 24 * (M : ℝ) := by
    nlinarith
  have hdiv : Real.sqrt x / 24 ≤ (M : ℝ) / Real.sqrt (6 * (M : ℝ)) := by
    apply (le_div_iff₀ hspos).mpr
    nlinarith
  exact hdiv.trans (coefficientVariation_lower M ⌊x⌋₊ hM hMN)

end
end GRWTSK.RiemannHypothesis.Conversation.AbsoluteMass
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AbsoluteMass/Variant57c0c9a900029a175fadc9729c8a1c144935b454f9e3f1782d4a9fbcfe61b941.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AbsoluteMass/Variant57c0c9a900029a175fadc9729c8a1c144935b454f9e3f1782d4a9fbcfe61b941.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41fd4b162076f17d592dbed3b821e6e39baea449` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
