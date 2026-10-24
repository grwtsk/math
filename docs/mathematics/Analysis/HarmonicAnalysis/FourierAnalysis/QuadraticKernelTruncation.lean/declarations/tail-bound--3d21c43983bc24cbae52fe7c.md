# tail_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6a86ceb1bdbde45ed63abe1a007d25b835c9962",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 228,
      "path": "GRWTSK/Analysis/Fourier/QuadraticKernelTruncation.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:41b111fa-4742-d795-e569-d516e6f02267",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c375e82b-9c59-308f-b42d-613599d15316",
  "kind": "theorem",
  "lexical_name": "tail_bound",
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
  "slug": "tail-bound--3d21c43983bc24cbae52fe7c",
  "source": {
    "blob": "f6a86ceb1bdbde45ed63abe1a007d25b835c9962",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 228,
    "path": "GRWTSK/Analysis/Fourier/QuadraticKernelTruncation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d21c43983bc24cbae52fe7c396c7c3d0ebc9f2452e1f5035203c3e2db63fa46",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/QuadraticKernelTruncation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c375e82b-9c59-308f-b42d-613599d15316`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tail_bound {c H T : ℝ} (hc : 1 < c) (hH : 1 ≤ H) (hT : 0 ≤ T) :
    |tail c H T| ≤ tailConstant c*T*Real.exp ((2*c-1)*T)/H := by
  let F : ℝ×ℝ → ℂ := fun p => density c T p.1 p.2
  let S : Set ℝ := Icc (-H) H
  let K : ℝ := T*Real.exp ((2*c-1)*T)
  let z : ℂ := (∫ p : ℝ×ℝ, F p)-(∫ p : ℝ×ℝ in S×ˢS, F p)
  have hF : Integrable F := density_integrable hc hT
  have hK : 0 ≤ K := mul_nonneg hT (Real.exp_pos _).le
  have ht := tensor_truncation_norm_bound F (fun t => ‖pickupKernel c t‖) K
    hF (pickupKernel_integrable hc).norm hK (fun _ => norm_nonneg _)
    (fun p => density_norm_bound hc hT p.1 p.2) S measurableSet_Icc
  have hnorm : ‖z‖ ≤ 4*K*kernelL1Mass c*absoluteDirichletBudget c/H := by
    calc
      ‖z‖ ≤ 2*K*kernelL1Mass c*(∫ t : ℝ in Sᶜ, ‖pickupKernel c t‖) := ht
      _ ≤ 2*K*kernelL1Mass c*(2*absoluteDirichletBudget c/H) :=
        mul_le_mul_of_nonneg_left (pickupKernel_absolute_complement_tail hc hH)
          (mul_nonneg (mul_nonneg (by norm_num) hK) (kernelL1Mass_nonnegative c))
      _ = _ := by ring
  have hfull : (∫ p : ℝ×ℝ, F p) = ∫ t : ℝ, ∫ s : ℝ, density c T t s := by
    rw [Measure.volume_eq_prod]
    exact integral_prod F hF
  have hcore : (∫ p : ℝ×ℝ in S×ˢS, F p) =
      ∫ t : ℝ in Icc (-H) H, ∫ s : ℝ in Icc (-H) H, density c T t s := by
    rw [Measure.volume_eq_prod]
    exact setIntegral_prod F hF.integrableOn
  have hreturn : tail c H T = ((2*Real.pi)^2)⁻¹*z.re := by
    dsimp only [tail,kernelEnergy,head,z]
    rw [hfull,hcore,Complex.sub_re]
    ring
  rw [hreturn,abs_mul,abs_of_nonneg (inv_nonneg.mpr (sq_nonneg _))]
  calc
    _ ≤ ((2*Real.pi)^2)⁻¹*‖z‖ :=
      mul_le_mul_of_nonneg_left (Complex.abs_re_le_norm z) (inv_nonneg.mpr (sq_nonneg _))
    _ ≤ ((2*Real.pi)^2)⁻¹*(4*K*kernelL1Mass c*absoluteDirichletBudget c/H) :=
      mul_le_mul_of_nonneg_left hnorm (inv_nonneg.mpr (sq_nonneg _))
    _ = tailConstant c*T*Real.exp ((2*c-1)*T)/H := by dsimp only [tailConstant,K]; ring

/-- The height pays precisely the exposed exponential time cost. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/QuadraticKernelTruncation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/QuadraticKernelTruncation.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6a86ceb1bdbde45ed63abe1a007d25b835c9962` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
