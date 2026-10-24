# integral_comp_smul_deriv'''

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b0856d1349c9f1bb25c91f481091e125e3222b5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 154,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/861027c146abd8a3e18f407e8e32ea6d9fe48544c2040c691765eb55ab494bb1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2f46aec1-585f-0cea-5e36-6760b44e1436",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:613c341e-1b0f-afa9-bbe1-f71991612977",
  "kind": "theorem",
  "lexical_name": "integral_comp_smul_deriv'''",
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
  "slug": "integral-comp-smul-deriv--21fcd827edaf49244e189c8e",
  "source": {
    "blob": "9b0856d1349c9f1bb25c91f481091e125e3222b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 154,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant861027c146abd8a3e18f407e8e32ea6d9fe48544c2040c691765eb55ab494bb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21fcd827edaf49244e189c8ecc2e485795561fe6fd5fc3ca60a4317e41d77dc8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant861027c146abd8a3e18f407e8e32ea6d9fe48544c2040c691765eb55ab494bb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:613c341e-1b0f-afa9-bbe1-f71991612977`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_comp_smul_deriv''' (hf : ContinuousOn f [[a, b]])
    (hff' : ∀ x ∈ Ioo (min a b) (max a b), HasDerivWithinAt f (f' x) (Ioi x) x)
    (hg_cont : ContinuousOn g (f '' Ioo (min a b) (max a b))) (hg1 : IntegrableOn g (f '' [[a, b]]))
    (hg2 : IntegrableOn (fun x ↦ f' x • (g ∘ f) x) [[a, b]]) :
    (∫ x in a..b, f' x • (g ∘ f) x) = ∫ u in f a..f b, g u := by
  by_cases hE : CompleteSpace E; swap
  · simp [intervalIntegral, integral, hE]
  rw [hf.image_uIcc, ← intervalIntegrable_iff'] at hg1
  have h_cont : ContinuousOn (fun u ↦ ∫ t in f a..f u, g t) [[a, b]] := by
    refine (continuousOn_primitive_interval' hg1 ?_).comp hf ?_
    · rw [← hf.image_uIcc]; exact mem_image_of_mem f left_mem_uIcc
    · rw [← hf.image_uIcc]; exact mapsTo_image _ _
  have h_der :
    ∀ x ∈ Ioo (min a b) (max a b),
      HasDerivWithinAt (fun u ↦ ∫ t in f a..f u, g t) (f' x • (g ∘ f) x) (Ioi x) x := by
    intro x hx
    obtain ⟨c, hc⟩ := nonempty_Ioo.mpr hx.1
    obtain ⟨d, hd⟩ := nonempty_Ioo.mpr hx.2
    have cdsub : [[c, d]] ⊆ Ioo (min a b) (max a b) := by
      rw [uIcc_of_le (hc.2.trans hd.1).le]
      exact Icc_subset_Ioo hc.1 hd.2
    replace hg_cont := hg_cont.mono (image_subset f cdsub)
    let J := [[sInf (f '' [[c, d]]), sSup (f '' [[c, d]])]]
    have hJ : f '' [[c, d]] = J := (hf.mono (cdsub.trans Ioo_subset_Icc_self)).image_uIcc
    rw [hJ] at hg_cont
    have h2x : f x ∈ J := by rw [← hJ]; exact mem_image_of_mem _ (mem_uIcc_of_le hc.2.le hd.1.le)
    have h2g : IntervalIntegrable g volume (f a) (f x) := by
      refine hg1.mono_set ?_
      rw [← hf.image_uIcc]
      exact hf.surjOn_uIcc left_mem_uIcc (Ioo_subset_Icc_self hx)
    have h3g : StronglyMeasurableAtFilter g (𝓝[J] f x) :=
      hg_cont.stronglyMeasurableAtFilter_nhdsWithin measurableSet_Icc (f x)
    haveI : Fact (f x ∈ J) := ⟨h2x⟩
    have : HasDerivWithinAt (fun u ↦ ∫ x in f a..u, g x) (g (f x)) J (f x) :=
      intervalIntegral.integral_hasDerivWithinAt_right h2g h3g (hg_cont (f x) h2x)
    refine (this.scomp x ((hff' x hx).Ioo_of_Ioi hd.1) ?_).Ioi_of_Ioo hd.1
    rw [← hJ]
    refine (mapsTo_image _ _).mono ?_ Subset.rfl
    exact Ioo_subset_Icc_self.trans ((Icc_subset_Icc_left hc.2.le).trans Icc_subset_uIcc)
  rw [← intervalIntegrable_iff'] at hg2
  simp_rw [integral_eq_sub_of_hasDeriv_right h_cont h_der hg2, integral_same, sub_zero]

/-- Change of variables for continuous integrands. If `f` is continuous on `[a, b]` and has
continuous right-derivative `f'` in `(a, b)`, and `g` is continuous on `f '' [a, b]` then we can
substitute `u = f x` to get `∫ x in a..b, f' x • (g ∘ f) x = ∫ u in f a..f b, g u`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant861027c146abd8a3e18f407e8e32ea6d9fe48544c2040c691765eb55ab494bb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant861027c146abd8a3e18f407e8e32ea6d9fe48544c2040c691765eb55ab494bb1.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b0856d1349c9f1bb25c91f481091e125e3222b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
