# integrableOn_peak_smul_of_integrableOn_of_continuousWithinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8f268aa102add5bd5b7b1bf2c62c0b30f325c4b9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db2ef4a02a7d302b3d0362d98c3ae9292bd5cd3860e024a143d639447ec6f0b1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:66cd70b9-53c7-8cbd-5ef7-083288b14b43",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7d1ddaa9-4d20-f58e-c6c7-5628f3e5dcf5",
  "kind": "theorem",
  "lexical_name": "integrableOn_peak_smul_of_integrableOn_of_continuousWithinAt",
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
  "slug": "integrableon-peak-smul-of-integrableon-of-continuouswithinat--061d621d97fd4f08f9cec1a4",
  "source": {
    "blob": "8f268aa102add5bd5b7b1bf2c62c0b30f325c4b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 54,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PeakFunction/Variantdb2ef4a02a7d302b3d0362d98c3ae9292bd5cd3860e024a143d639447ec6f0b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:061d621d97fd4f08f9cec1a4ce76cfbb838e97efec22f2d4ca79007ddf5bca09",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PeakFunction/Variantdb2ef4a02a7d302b3d0362d98c3ae9292bd5cd3860e024a143d639447ec6f0b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d1ddaa9-4d20-f58e-c6c7-5628f3e5dcf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrableOn_peak_smul_of_integrableOn_of_continuousWithinAt (hs : MeasurableSet s)
    (hlφ : ∀ u : Set α, IsOpen u → x₀ ∈ u → TendstoUniformlyOn φ 0 l (s \ u))
    (hiφ : ∀ᶠ i in l, ∫ x in s, φ i x ∂μ = 1) (hmg : IntegrableOn g s μ)
    (hcg : ContinuousWithinAt g s x₀) : ∀ᶠ i in l, IntegrableOn (fun x => φ i x • g x) s μ := by
  obtain ⟨u, u_open, x₀u, hu⟩ : ∃ u, IsOpen u ∧ x₀ ∈ u ∧ ∀ x ∈ u ∩ s, g x ∈ ball (g x₀) 1
  exact mem_nhdsWithin.1 (hcg (ball_mem_nhds _ zero_lt_one))
  filter_upwards [tendstoUniformlyOn_iff.1 (hlφ u u_open x₀u) 1 zero_lt_one, hiφ] with i hi h'i
  have A : IntegrableOn (fun x => φ i x • g x) (s \ u) μ := by
    refine' Integrable.smul_of_top_right (hmg.mono (diff_subset _ _) le_rfl) _
    apply
      memℒp_top_of_bound
        ((integrable_of_integral_eq_one h'i).aestronglyMeasurable.mono_set (diff_subset _ _)) 1
    filter_upwards [self_mem_ae_restrict (hs.diff u_open.measurableSet)] with x hx
    simpa only [Pi.zero_apply, dist_zero_left] using (hi x hx).le
  have B : IntegrableOn (fun x => φ i x • g x) (s ∩ u) μ := by
    apply Integrable.smul_of_top_left
    · exact IntegrableOn.mono_set (integrable_of_integral_eq_one h'i) (inter_subset_left _ _)
    · apply
        memℒp_top_of_bound (hmg.mono_set (inter_subset_left _ _)).aestronglyMeasurable (‖g x₀‖ + 1)
      filter_upwards [self_mem_ae_restrict (hs.inter u_open.measurableSet)] with x hx
      rw [inter_comm] at hx
      exact (norm_lt_of_mem_ball (hu x hx)).le
  convert A.union B
  simp only [diff_union_inter]
#align integrable_on_peak_smul_of_integrable_on_of_continuous_within_at integrableOn_peak_smul_of_integrableOn_of_continuousWithinAt

variable [CompleteSpace E]

/-- If a sequence of peak functions `φᵢ` converges uniformly to zero away from a point `x₀`, and
`g` is integrable and continuous at `x₀`, then `∫ φᵢ • g` converges to `x₀`. Auxiliary lemma
where one assumes additionally `g x₀ = 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PeakFunction/Variantdb2ef4a02a7d302b3d0362d98c3ae9292bd5cd3860e024a143d639447ec6f0b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PeakFunction/Variantdb2ef4a02a7d302b3d0362d98c3ae9292bd5cd3860e024a143d639447ec6f0b1.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f268aa102add5bd5b7b1bf2c62c0b30f325c4b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
