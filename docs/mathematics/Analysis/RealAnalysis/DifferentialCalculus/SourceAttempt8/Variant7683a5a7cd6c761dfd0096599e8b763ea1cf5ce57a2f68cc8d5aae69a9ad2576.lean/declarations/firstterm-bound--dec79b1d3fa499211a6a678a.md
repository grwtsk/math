# firstTerm_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71550abb-fc38-d4ee-3abe-774d20b69a1c",
  "kind": "theorem",
  "lexical_name": "firstTerm_bound",
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
  "slug": "firstterm-bound--dec79b1d3fa499211a6a678a",
  "source": {
    "blob": "65a2a0a9556705a9b6cadea17e53e93624a0191a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 95,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dec79b1d3fa499211a6a678a242138ea278779aac367700dd5995c1e5354d226",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71550abb-fc38-d4ee-3abe-774d20b69a1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem firstTerm_bound {l u y : ℝ} (hl : -2 < l) (hy : y ∈ Ioo l u) (n : ℕ) :
    ‖firstTerm y n‖ ≤ max |l| |u| / (2 * lowerCoefficient l) * weight n := by
  have hc := lowerCoefficient_pos hl
  have ha := ContinuousResearch.CompensatedGammaIntegral.physicalRate_pos n
  have hay : 0 < y + a n := by
    simpa only [add_comm] using ContinuousResearch.CompensatedGammaIntegral.shifted_physicalRate_pos
      (lt_trans hl hy.1) n
  have hb : |y| ≤ max |l| |u| := by
    apply abs_le.mpr
    constructor
    · have := neg_abs_le l
      have := le_max_left |l| |u|
      linarith [hy.1]
    · have := le_abs_self u
      have := le_max_right |l| |u|
      linarith [hy.2]
  have hlow := rate_lower hl hy.1 n
  have hp : 0 < (n : ℝ) + 1 := by positivity
  have hd : 2 * lowerCoefficient l * ((n : ℝ) + 1) ^ 2 ≤ a n * (y + a n) := by
    have hm := mul_le_mul_of_nonneg_left hlow (le_of_lt ha)
    dsimp [a, ContinuousResearch.CompensatedGammaIntegral.physicalRate] at hm ⊢
    nlinarith
  rw [firstTerm, Real.norm_eq_abs, abs_div, abs_of_pos (mul_pos ha hay)]
  calc
    _ ≤ max |l| |u| / (a n * (y + a n)) := div_le_div_of_nonneg_right hb (by positivity)
    _ ≤ max |l| |u| / (2 * lowerCoefficient l * ((n : ℝ) + 1) ^ 2) :=
      div_le_div_of_nonneg_left (le_trans (abs_nonneg _) (le_max_left _ _)) (by positivity) hd
    _ = _ := by rw [weight_eq]; field_simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65a2a0a9556705a9b6cadea17e53e93624a0191a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
