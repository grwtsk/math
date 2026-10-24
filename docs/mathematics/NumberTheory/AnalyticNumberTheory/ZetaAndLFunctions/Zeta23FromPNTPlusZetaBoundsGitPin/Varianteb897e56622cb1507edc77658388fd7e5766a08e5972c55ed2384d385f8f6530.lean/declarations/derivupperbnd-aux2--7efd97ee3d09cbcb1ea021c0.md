# DerivUpperBnd_aux2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab6d4aed-6669-8201-1b8d-ce8eae564c44",
  "kind": "lemma",
  "lexical_name": "DerivUpperBnd_aux2",
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
  "slug": "derivupperbnd-aux2--7efd97ee3d09cbcb1ea021c0",
  "source": {
    "blob": "09d49757ff63d00301feb0306c7b87bf0440dee8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1510,
    "line": 1490,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Zeta23FromPNTPlusZetaBoundsGitPin/Varianteb897e56622cb1507edc77658388fd7e5766a08e5972c55ed2384d385f8f6530.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7efd97ee3d09cbcb1ea021c054abbac61aab164e9e446ccea8becde65c975981",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Zeta23FromPNTPlusZetaBoundsGitPin/Varianteb897e56622cb1507edc77658388fd7e5766a08e5972c55ed2384d385f8f6530.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab6d4aed-6669-8201-1b8d-ce8eae564c44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1490–1510.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma DerivUpperBnd_aux2 {A σ t : ℝ} (t_gt : 3 < |t|) (hσ : σ ∈ Icc (1 - A / |t|.log) 2) :
    let N := ⌊|t|⌋₊;
    let s := ↑σ + ↑t * I;
    0 < N → ↑N ≤ |t| → s ≠ 1 →
    1 / 2 < σ → ‖-↑N ^ (1 - s) / (1 - s) ^ 2‖ ≤ A.exp * 2 * (1 / 3) := by
  intro N s Npos N_le_t neOne σ_gt
  dsimp only [s]
  simp_rw [norm_div, norm_neg, norm_pow, norm_natCast_cpow_of_pos Npos _,
    sub_re, one_re, add_re, ofReal_re, mul_re, I_re, mul_zero, ofReal_im, I_im,
    mul_one, sub_self, add_zero]
  have h := UpperBnd_aux6 t_gt ⟨σ_gt, hσ.2⟩ neOne Npos N_le_t |>.1
  rw [(by ring_nf : N ^ (1 - σ) / ‖1 - (↑σ + ↑t * I)‖ ^ 2 =
          N ^ (1 - σ) / ‖1 - (↑σ + ↑t * I)‖ * 1 / ‖1 - (↑σ + ↑t * I)‖)]
  apply mul_le_mul ?_ ?_ (inv_nonneg.mpr <| norm_nonneg _) ?_
  · rw [mul_one]; exact le_trans h (by gcongr; exact UpperBnd_aux2 t_gt hσ.1)
  · rw [inv_eq_one_div, div_le_iff₀ <| norm_pos_iff.mpr <| sub_ne_zero_of_ne neOne.symm,
        mul_comm, ← mul_div_assoc, mul_one, le_div_iff₀ (by norm_num), one_mul]
    apply le_trans t_gt.le ?_
    rw [← abs_neg]; convert! abs_im_le_norm (1 - (σ + t * I)); simp
  · exact mul_nonneg (Real.exp_nonneg _) (by norm_num)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Zeta23FromPNTPlusZetaBoundsGitPin/Varianteb897e56622cb1507edc77658388fd7e5766a08e5972c55ed2384d385f8f6530.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Zeta23FromPNTPlusZetaBoundsGitPin/Varianteb897e56622cb1507edc77658388fd7e5766a08e5972c55ed2384d385f8f6530.lean#L1490).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09d49757ff63d00301feb0306c7b87bf0440dee8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
