# pole_sub_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a46e3e34-4b35-5797-853b-bc7971485566",
  "kind": "theorem",
  "lexical_name": "pole_sub_abs_le",
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
  "slug": "pole-sub-abs-le--00d3220e175c36d374add007",
  "source": {
    "blob": "b2bf3431c600444c752ecb8e3541f77d463cb19f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 149,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant02545721c41430693a234ba45ff3a1c681bbdabbdbe5aa39d60bbe817de5339b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00d3220e175c36d374add007aadc9c2e556ed4a437af91b968f6db9fd4a51057",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant02545721c41430693a234ba45ff3a1c681bbdabbdbe5aa39d60bbe817de5339b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a46e3e34-4b35-5797-853b-bc7971485566`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pole_sub_abs_le {R : ℝ} {f g : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume)
    (hsf : Function.support f ⊆ Icc (-R) R) (hsg : Function.support g ⊆ Icc (-R) R) :
    |realPoleContribution f - realPoleContribution g| ≤
      poleCoefficient R * lpNorm (fun x ↦ f x - g x) 2 volume *
        (lpNorm f 2 volume + lpNorm g 2 volume) := by
  have hp : Continuous (fun x : ℝ ↦ Real.exp (x / 2)) := by fun_prop
  have hm : Continuous (fun x : ℝ ↦ Real.exp (-x / 2)) := by fun_prop
  have he : MemLp (fun x ↦ f x - g x) 2 volume := hf.sub hg
  have hes := support_sub_subset hsf hsg
  have hmf := moment_abs_le hf hsf hm
  have hpg := moment_abs_le hg hsg hp
  have hpe := moment_abs_le he hes hp
  have hme := moment_abs_le he hes hm
  rw [← moment_sub hf hg hsf hsg hp] at hpe
  rw [← moment_sub hf hg hsf hsg hm] at hme
  let pf := ∫ x, Real.exp (x / 2) * f x
  let mf := ∫ x, Real.exp (-x / 2) * f x
  let pg := ∫ x, Real.exp (x / 2) * g x
  let mg := ∫ x, Real.exp (-x / 2) * g x
  change |pf - pg| ≤ _ at hpe
  change |mf - mg| ≤ _ at hme
  change |mf| ≤ _ at hmf
  change |pg| ≤ _ at hpg
  change |2 * pf * mf - 2 * pg * mg| ≤ _
  calc
    _ = 2 * |(pf - pg) * mf + pg * (mf - mg)| := by
      rw [← abs_of_pos (show (0 : ℝ) < 2 by norm_num), ← abs_mul]
      congr 1
      ring
    _ ≤ 2 * (|pf - pg| * |mf| + |pg| * |mf - mg|) := by
      simpa only [abs_mul] using mul_le_mul_of_nonneg_left
        (abs_add_le ((pf - pg) * mf) (pg * (mf - mg))) (by norm_num : (0 : ℝ) ≤ 2)
    _ ≤ 2 * ((lpNorm (supportedWeight R (fun x ↦ Real.exp (x / 2))) 2 volume *
          lpNorm (fun x ↦ f x - g x) 2 volume) *
          (lpNorm (supportedWeight R (fun x ↦ Real.exp (-x / 2))) 2 volume *
            lpNorm f 2 volume) +
        (lpNorm (supportedWeight R (fun x ↦ Real.exp (x / 2))) 2 volume *
          lpNorm g 2 volume) *
          (lpNorm (supportedWeight R (fun x ↦ Real.exp (-x / 2))) 2 volume *
            lpNorm (fun x ↦ f x - g x) 2 volume)) := by
      gcongr <;> exact mul_nonneg lpNorm_nonneg lpNorm_nonneg
    _ = _ := by unfold poleCoefficient; ring

/-- The source finite prime coefficient keeps its strict cutoff, including the prime-two term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant02545721c41430693a234ba45ff3a1c681bbdabbdbe5aa39d60bbe817de5339b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant02545721c41430693a234ba45ff3a1c681bbdabbdbe5aa39d60bbe817de5339b.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2bf3431c600444c752ecb8e3541f77d463cb19f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
