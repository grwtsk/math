# lintegral_abs_det_fderiv_le_addHaar_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1cb52c3e-7339-0479-fb81-583f65b3df5e",
  "kind": "theorem",
  "lexical_name": "lintegral_abs_det_fderiv_le_addHaar_image",
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
  "slug": "lintegral-abs-det-fderiv-le-addhaar-image--2298e35bc2f24db162aa1542",
  "source": {
    "blob": "f7cad2063b178cca3d9a88bb2ae37986675b0814",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1085,
    "line": 1041,
    "path": "GRWTSK/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2298e35bc2f24db162aa15425c5f5f9cf07c05a5fa01fa7e5e333030c5f073f1",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1cb52c3e-7339-0479-fb81-583f65b3df5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1041–1085.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_abs_det_fderiv_le_addHaar_image (hs : MeasurableSet s)
    (hf' : ∀ x ∈ s, HasFDerivWithinAt f (f' x) s x) (hf : InjOn f s) :
    (∫⁻ x in s, ENNReal.ofReal |(f' x).det| ∂μ) ≤ μ (f '' s) := by
  /- We already know the result for finite-measure sets. We cover `s` by finite-measure sets using
    `spanningSets μ`, and apply the previous result to each of these parts. -/
  let u n := disjointed (spanningSets μ) n
  have u_meas : ∀ n, MeasurableSet (u n) := by
    intro n
    apply MeasurableSet.disjointed fun i => ?_
    exact measurableSet_spanningSets μ i
  have A : s = ⋃ n, s ∩ u n := by
    rw [← inter_iUnion, iUnion_disjointed, iUnion_spanningSets, inter_univ]
  calc
    (∫⁻ x in s, ENNReal.ofReal |(f' x).det| ∂μ) =
        ∑' n, ∫⁻ x in s ∩ u n, ENNReal.ofReal |(f' x).det| ∂μ := by
      conv_lhs => rw [A]
      rw [lintegral_iUnion]
      · intro n; exact hs.inter (u_meas n)
      · exact pairwise_disjoint_mono (disjoint_disjointed _) fun n => inter_subset_right
    _ ≤ ∑' n, μ (f '' (s ∩ u n)) := by
      apply ENNReal.tsum_le_tsum fun n => ?_
      apply
        lintegral_abs_det_fderiv_le_addHaar_image_aux2 μ (hs.inter (u_meas n)) _
          (fun x hx => (hf' x hx.1).mono inter_subset_left) (hf.mono inter_subset_left)
      have : μ (u n) < ∞ :=
        lt_of_le_of_lt (measure_mono (disjointed_subset _ _)) (measure_spanningSets_lt_top μ n)
      exact ne_of_lt (lt_of_le_of_lt (measure_mono inter_subset_right) this)
    _ = μ (f '' s) := by
      conv_rhs => rw [A, image_iUnion]
      rw [measure_iUnion]
      · intro i j hij
        apply Disjoint.image _ hf inter_subset_left inter_subset_left
        exact
          Disjoint.mono inter_subset_right inter_subset_right
            (disjoint_disjointed _ hij)
      · intro i
        exact
          measurable_image_of_fderivWithin (hs.inter (u_meas i))
            (fun x hx => (hf' x hx.1).mono inter_subset_left)
            (hf.mono inter_subset_left)

/-- Change of variable formula for differentiable functions, set version: if a function `f` is
injective and differentiable on a measurable set `s`, then the measure of `f '' s` is given by the
integral of `|(f' x).det|` on `s`.
Note that the measurability of `f '' s` is given by `measurable_image_of_fderivWithin`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean#L1041).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7cad2063b178cca3d9a88bb2ae37986675b0814` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
