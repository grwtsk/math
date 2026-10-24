# sharp_tail_of_six

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e94586d-9cfd-6d0e-8c2c-69403138473c",
  "kind": "theorem",
  "lexical_name": "sharp_tail_of_six",
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
  "slug": "sharp-tail-of-six--5618edcc49d234ac444a32a2",
  "source": {
    "blob": "5be6fd9a28129c76789de5303f31e1eee19b16cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 26,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/09SourceJointActualCountTail/Variant44073a9a7437d27680e780708d6d7e9c583483dc5f4c87234cbcfe83859375c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5618edcc49d234ac444a32a25eb156511cf5da66d84b8f83f83058a14aba9f88",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/09SourceJointActualCountTail/Variant44073a9a7437d27680e780708d6d7e9c583483dc5f4c87234cbcfe83859375c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e94586d-9cfd-6d0e-8c2c-69403138473c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sharp_tail_of_six (A0 : ℝ)
    (hcount : ∀ R : ℝ, 4 ≤ R →
      Summable (fun ρ : (zetaZeros zetaSeam).carrier =>
        if R ≤ |(ρ : ℂ).im| then
          ((zetaZeros zetaSeam).mult ρ : ℝ) / |(ρ : ℂ).im| ^ 6 else 0) ∧
      actualZeroSixTail R ≤ 2 * A0 * (Real.log R + 2) / R ^ 5) :
    ∀ A R : ℝ, 91 ≤ A → 4 ≤ R →
      ‖actualZeroHeightTail A R‖ ≤
        9000000 * A0 * Real.exp A * (Real.log R + 2) / (A ^ 9 * R ^ 5) := by
  intro A R hA hR
  obtain ⟨hsm, hb⟩ := hcount R hR
  let coeff : ℝ := 4500000 * Real.exp A / A ^ 9
  have hc : 0 ≤ coeff := by dsimp [coeff]; positivity
  have hpoint (ρ : (zetaZeros zetaSeam).carrier) :
      ‖if R ≤ |(ρ : ℂ).im| then
        ((zetaZeros zetaSeam).mult ρ : ℂ) * actualInitialPrimeMellin A ρ else 0‖ ≤
      coeff * (if R ≤ |(ρ : ℂ).im| then
        ((zetaZeros zetaSeam).mult ρ : ℝ) / |(ρ : ℂ).im| ^ 6 else 0) := by
    by_cases hρ : R ≤ |(ρ : ℂ).im|
    · simp only [hρ, if_true, norm_mul, Complex.norm_natCast]
      have hw := actualInitialPrimeMellin_sharp_strip_norm_le A ρ hA
        ((zetaZeros zetaSeam).strip _ ρ.2) (show 4 ≤ |(ρ : ℂ).im| by linarith)
      have hn : ‖actualInitialPrimeMellin A ρ‖ ≤ coeff / |(ρ : ℂ).im| ^ 6 := by
        simpa only [coeff, div_div] using hw
      have hh := mul_le_mul_of_nonneg_left hn
        (show 0 ≤ ((zetaZeros zetaSeam).mult ρ : ℝ) by positivity)
      exact hh.trans_eq (by ring)
    · simp only [hρ, if_false, norm_zero, mul_zero, le_refl]
  have ht := tsum_of_norm_bounded (hsm.mul_left coeff).hasSum hpoint
  unfold actualZeroHeightTail
  calc
    _ ≤ coeff * actualZeroSixTail R := by
      simpa only [tsum_mul_left, actualZeroSixTail] using ht
    _ ≤ coeff * (2 * A0 * (Real.log R + 2) / R ^ 5) :=
      mul_le_mul_of_nonneg_left hb hc
    _ = _ := by dsimp [coeff]; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/09SourceJointActualCountTail/Variant44073a9a7437d27680e780708d6d7e9c583483dc5f4c87234cbcfe83859375c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/09SourceJointActualCountTail/Variant44073a9a7437d27680e780708d6d7e9c583483dc5f4c87234cbcfe83859375c0.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5be6fd9a28129c76789de5303f31e1eee19b16cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
