# integral_image_eq_integral_deriv_smul_of_monotoneOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c07d38b-dae0-5c57-1b41-4d4bcd450b57",
  "kind": "theorem",
  "lexical_name": "integral_image_eq_integral_deriv_smul_of_monotoneOn",
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
  "slug": "integral-image-eq-integral-deriv-smul-of-monotoneon--4aaa769edcfd3298e8f8a2ec",
  "source": {
    "blob": "0f448cc8a62dc92b1f9164768532218eebaa4aab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 274,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4aaa769edcfd3298e8f8a2ec25dd430a0d742e2468957095bee9ed03258c9180",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c07d38b-dae0-5c57-1b41-4d4bcd450b57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_image_eq_integral_deriv_smul_of_monotoneOn (hs : MeasurableSet s)
    (hf' : ∀ x ∈ s, HasDerivWithinAt f (f' x) s x) (hf : MonotoneOn f s) (g : ℝ → F) :
    ∫ x in f '' s, g x = ∫ x in s, f' x • g (f x) := by
  by_cases H : IntegrableOn g (f '' s); swap
  · rw [integral_undef H, integral_undef]
    simpa [integrableOn_image_iff_integrableOn_deriv_smul_of_monotoneOn hs hf' hf] using! H
  have H' : IntegrableOn (fun x ↦ (f' x) • g (f x)) s :=
    (integrableOn_image_iff_integrableOn_deriv_smul_of_monotoneOn hs hf' hf g).1 H
  rcases exists_decomposition_of_monotoneOn_hasDerivWithinAt hs hf hf' with
    ⟨a, b, c, h_union, ha, hb, hc, h_disj, h_disj', a_count, fb_count, deriv_b, deriv_c, inj_c⟩
  have a_s : a ⊆ s := by rw [← h_union]; exact subset_union_left
  have bc_s : b ∪ c ⊆ s := by rw [← h_union]; exact subset_union_right
  have b_s : b ⊆ s := by rw [← h_union]; exact subset_union_left.trans subset_union_right
  have c_s : c ⊆ s := by rw [← h_union]; exact subset_union_right.trans subset_union_right
  have I : ∫ x in s, f' x • g (f x) = ∫ x in c, f' x • g (f x) := by
    have : ∫ x in a, f' x • g (f x) = 0 :=
      setIntegral_measure_zero _ (a_count.measure_zero volume)
    rw [← h_union, setIntegral_union h_disj (hb.union hc) (H'.mono_set a_s) (H'.mono_set bc_s),
      this, zero_add]
    have : ∫ x in b, f' x • g (f x) = 0 :=
      setIntegral_eq_zero_of_forall_eq_zero (fun x hx ↦ by simp [deriv_b x hx])
    rw [setIntegral_union h_disj' hc (H'.mono_set b_s) (H'.mono_set c_s), this, zero_add]
  have J : ∫ x in f '' s, g x = ∫ x in f '' c, g x := by
    apply setIntegral_congr_set
    rw [← h_union, image_union, image_union]
    have A : (f '' a ∪ (f '' b ∪ f '' c) : Set ℝ) =ᵐ[volume] (f '' b ∪ f '' c : Set ℝ) := by
      refine union_ae_eq_right_of_ae_eq_empty (ae_eq_empty.mpr ?_)
      exact (a_count.image _).measure_zero _
    have B : (f '' b ∪ f '' c : Set ℝ) =ᵐ[volume] f '' c :=
      union_ae_eq_right_of_ae_eq_empty (ae_eq_empty.mpr (fb_count.measure_zero _))
    exact A.trans B
  rw [I, J]
  let F' : ℝ → (ℝ →L[ℝ] ℝ) := fun x ↦ ContinuousLinearMap.smulRight (1 : ℝ →L[ℝ] ℝ) (f' x)
  have hF' (x : ℝ) (hx : x ∈ c) : HasFDerivWithinAt f (F' x) c x :=
    (hf' x (c_s hx)).hasFDerivWithinAt.mono c_s
  have : ∫ x in c, f' x • g (f x) = ∫ x in c, |(F' x).det| • g (f x) := by
    apply setIntegral_congr_fun hc (fun x hx ↦ ?_)
    simp only [LinearMap.det_ring, ContinuousLinearMap.coe_coe, ContinuousLinearMap.smulRight_apply,
      one_apply_eq_self, smul_eq_mul, one_mul, F']
    rw [abs_of_nonneg (deriv_c x hx)]
  rw [this]
  exact integral_image_eq_integral_abs_det_fderiv_smul _ hc hF' inj_c _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f448cc8a62dc92b1f9164768532218eebaa4aab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
