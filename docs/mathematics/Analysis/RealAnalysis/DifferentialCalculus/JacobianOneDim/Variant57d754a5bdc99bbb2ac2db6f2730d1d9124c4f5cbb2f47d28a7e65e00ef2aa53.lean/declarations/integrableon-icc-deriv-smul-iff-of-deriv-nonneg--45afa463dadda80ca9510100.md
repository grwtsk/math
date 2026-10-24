# integrableOn_Icc_deriv_smul_iff_of_deriv_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6060317-d17c-e148-4dfe-4c8bb7df3d3f",
  "kind": "theorem",
  "lexical_name": "integrableOn_Icc_deriv_smul_iff_of_deriv_nonneg",
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
  "slug": "integrableon-icc-deriv-smul-iff-of-deriv-nonneg--45afa463dadda80ca9510100",
  "source": {
    "blob": "0f448cc8a62dc92b1f9164768532218eebaa4aab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 341,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45afa463dadda80ca95101001901c4eb9d61a6bf4a5562efcb1d67d5c64bce39",
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

Occurrence: `result:d6060317-d17c-e148-4dfe-4c8bb7df3d3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrableOn_Icc_deriv_smul_iff_of_deriv_nonneg {a b : ℝ} {g : ℝ → F}
    (hf : ContinuousOn f (Icc a b))
    (hff' : ∀ x ∈ Ioo a b, HasDerivAt f (f' x) x)
    (hf' : ∀ x ∈ Ioo a b, 0 ≤ f' x) (hab : a ≤ b) :
    IntegrableOn (fun x ↦ (f' x) • g (f x)) (Icc a b) ↔ IntegrableOn g (Icc (f a) (f b)) := by
  have M : MonotoneOn f (Icc a b) := by
    apply monotoneOn_of_deriv_nonneg (convex_Icc a b) hf
    · rw [interior_Icc]
      exact fun z hz ↦ (hff' z hz).differentiableAt.differentiableWithinAt
    · rw [interior_Icc]
      intro z hz
      simpa [(hff' z hz).deriv] using hf' z hz
  have A : IntegrableOn g (Icc (f a) (f b)) ↔ IntegrableOn g (f '' (Ioo a b)) := by
    apply integrableOn_congr_set_ae
    rw [← hf.image_Icc_of_monotoneOn hab M]
    refine ae_eq_set.2 ⟨?_, by simp [show f '' Ioo a b \ f '' Icc a b = ∅ by grind]⟩
    have : f '' (Icc a b) \ f '' Ioo a b ⊆ {f a, f b} := by grind
    apply measure_mono_null this
    apply Finite.measure_zero (by simp)
  rw [A, integrableOn_Icc_iff_integrableOn_Ioo,
    integrableOn_image_iff_integrableOn_deriv_smul_of_monotoneOn measurableSet_Ioo]
  · exact fun z hz ↦ (hff' z hz).hasDerivWithinAt
  · exact M.mono Ioo_subset_Icc_self

/-- Change of variable formula for differentiable functions: if a real function `f` is
antitone and differentiable on a measurable set `s`, then the Lebesgue integral of a function
`u : ℝ → ℝ≥0∞` on `f '' s` coincides with the integral of `(-f' x) * u ∘ f` on `s`.
Note that the measurability of `f '' s` is given by `MeasurableSet.image_of_antitoneOn`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f448cc8a62dc92b1f9164768532218eebaa4aab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
