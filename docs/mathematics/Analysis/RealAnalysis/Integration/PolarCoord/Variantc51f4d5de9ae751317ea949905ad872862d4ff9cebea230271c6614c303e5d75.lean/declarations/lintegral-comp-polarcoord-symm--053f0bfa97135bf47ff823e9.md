# lintegral_comp_polarCoord_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fc5c9ac0f2d2715086cb37a07c02227f49e9a556",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 151,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:997906f9-17ea-5bdd-672e-60351dbb636d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bafabf0f-08f0-8e58-eceb-de7a42727a7a",
  "kind": "theorem",
  "lexical_name": "lintegral_comp_polarCoord_symm",
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
  "slug": "lintegral-comp-polarcoord-symm--053f0bfa97135bf47ff823e9",
  "source": {
    "blob": "fc5c9ac0f2d2715086cb37a07c02227f49e9a556",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 151,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PolarCoord/Variantc51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:053f0bfa97135bf47ff823e9a6b2b7b3d0e3c5fab3b1affd6266bd1c99f2017d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PolarCoord/Variantc51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bafabf0f-08f0-8e58-eceb-de7a42727a7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_comp_polarCoord_symm (f : ℝ × ℝ → ℝ≥0∞) :
    ∫⁻ (p : ℝ × ℝ) in polarCoord.target, ENNReal.ofReal p.1 • f (polarCoord.symm p) =
      ∫⁻ (p : ℝ × ℝ), f p := by
  symm
  calc
    _ = ∫⁻ p in polarCoord.symm '' polarCoord.target, f p := by
      rw [← setLIntegral_univ, setLIntegral_congr polarCoord_source_ae_eq_univ.symm,
        polarCoord.symm_image_target_eq_source ]
    _ = ∫⁻ (p : ℝ × ℝ) in polarCoord.target, ENNReal.ofReal |p.1| • f (polarCoord.symm p) := by
      rw [lintegral_image_eq_lintegral_abs_det_fderiv_mul volume _
        (fun p _ ↦ (hasFDerivAt_polarCoord_symm p).hasFDerivWithinAt)]
      · simp_rw [det_fderivPolarCoordSymm]; rfl
      exacts [polarCoord.symm.injOn, measurableSet_Ioi.prod measurableSet_Ioo]
    _ = ∫⁻ (p : ℝ × ℝ) in polarCoord.target, ENNReal.ofReal p.1 • f (polarCoord.symm p) := by
      refine setLIntegral_congr_fun polarCoord.open_target.measurableSet ?_
      filter_upwards with _ hx using by rw [abs_of_pos hx.1]

end Real

noncomputable section Complex

namespace Complex

open scoped Real ENNReal

/-- The polar coordinates partial homeomorphism in `ℂ`, mapping `r (cos θ + I * sin θ)` to `(r, θ)`.
It is a homeomorphism between `ℂ - ℝ≤0` and `(0, +∞) × (-π, π)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PolarCoord/Variantc51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PolarCoord/Variantc51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc5c9ac0f2d2715086cb37a07c02227f49e9a556` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
