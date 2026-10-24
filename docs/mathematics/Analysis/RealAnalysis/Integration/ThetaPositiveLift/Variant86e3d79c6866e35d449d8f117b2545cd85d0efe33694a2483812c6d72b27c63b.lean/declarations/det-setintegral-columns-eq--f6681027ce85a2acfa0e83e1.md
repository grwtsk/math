# det_setIntegral_columns_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f99fc53f2340308500a0932cba2d045d6032744",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2885d934-1eff-2516-d84e-11b07ec61a80",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d448d65-c142-aeef-5d5b-5fffc5664983",
  "kind": "theorem",
  "lexical_name": "det_setIntegral_columns_eq",
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
  "slug": "det-setintegral-columns-eq--f6681027ce85a2acfa0e83e1",
  "source": {
    "blob": "2f99fc53f2340308500a0932cba2d045d6032744",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 86,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6681027ce85a2acfa0e83e1c547e234936cbd9ea46aa68ff0ff3dac709afa67",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d448d65-c142-aeef-5d5b-5fffc5664983`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_setIntegral_columns_eq
    (f0 f1 f2 : ℝ → ℝ) (S T U : Set ℝ)
    (h0S : IntegrableOn f0 S) (h0T : IntegrableOn f0 T) (h0U : IntegrableOn f0 U)
    (h1S : IntegrableOn f1 S) (h1T : IntegrableOn f1 T) (h1U : IntegrableOn f1 U)
    (h2S : IntegrableOn f2 S) (h2T : IntegrableOn f2 T) (h2U : IntegrableOn f2 U) :
    Matrix.det !![∫ x in S, f0 x, ∫ y in T, f0 y, ∫ z in U, f0 z;
      ∫ x in S, f1 x, ∫ y in T, f1 y, ∫ z in U, f1 z;
      ∫ x in S, f2 x, ∫ y in T, f2 y, ∫ z in U, f2 z] =
      ∫ p in ((S ×ˢ T) ×ˢ U), rankThreeKernel f0 f1 f2 p
        ∂((volume.prod volume).prod volume) := by
  let a : (ℝ × ℝ) × ℝ → ℝ := fun p => f0 p.1.1 * f1 p.1.2 * f2 p.2
  let b : (ℝ × ℝ) × ℝ → ℝ := fun p => f0 p.1.1 * f2 p.1.2 * f1 p.2
  let c : (ℝ × ℝ) × ℝ → ℝ := fun p => f1 p.1.1 * f0 p.1.2 * f2 p.2
  let d : (ℝ × ℝ) × ℝ → ℝ := fun p => f1 p.1.1 * f2 p.1.2 * f0 p.2
  let e : (ℝ × ℝ) × ℝ → ℝ := fun p => f2 p.1.1 * f0 p.1.2 * f1 p.2
  let f : (ℝ × ℝ) × ℝ → ℝ := fun p => f2 p.1.1 * f1 p.1.2 * f0 p.2
  have ha : IntegrableOn a ((S ×ˢ T) ×ˢ U) ((volume.prod volume).prod volume) := by
    simpa [a] using triple_mul_integrableOn h0S h1T h2U
  have hb : IntegrableOn b ((S ×ˢ T) ×ˢ U) ((volume.prod volume).prod volume) := by
    simpa [b] using triple_mul_integrableOn h0S h2T h1U
  have hc : IntegrableOn c ((S ×ˢ T) ×ˢ U) ((volume.prod volume).prod volume) := by
    simpa [c] using triple_mul_integrableOn h1S h0T h2U
  have hd : IntegrableOn d ((S ×ˢ T) ×ˢ U) ((volume.prod volume).prod volume) := by
    simpa [d] using triple_mul_integrableOn h1S h2T h0U
  have he : IntegrableOn e ((S ×ˢ T) ×ˢ U) ((volume.prod volume).prod volume) := by
    simpa [e] using triple_mul_integrableOn h2S h0T h1U
  have hf : IntegrableOn f ((S ×ˢ T) ×ˢ U) ((volume.prod volume).prod volume) := by
    simpa [f] using triple_mul_integrableOn h2S h1T h0U
  have hk : rankThreeKernel f0 f1 f2 = ((((a - b) - c) + d) + e) - f := by
    funext p
    simp only [a, b, c, d, e, f, Pi.sub_apply, Pi.add_apply]
    unfold rankThreeKernel
    ring
  have hlin :
      (∫ p in ((S ×ˢ T) ×ˢ U), (((((a - b) - c) + d) + e) - f) p
        ∂((volume.prod volume).prod volume)) =
        (((((∫ p in ((S ×ˢ T) ×ˢ U), a p ∂((volume.prod volume).prod volume)) -
            (∫ p in ((S ×ˢ T) ×ˢ U), b p ∂((volume.prod volume).prod volume))) -
          (∫ p in ((S ×ˢ T) ×ˢ U), c p ∂((volume.prod volume).prod volume))) +
        (∫ p in ((S ×ˢ T) ×ˢ U), d p ∂((volume.prod volume).prod volume))) +
        (∫ p in ((S ×ˢ T) ×ˢ U), e p ∂((volume.prod volume).prod volume))) -
        (∫ p in ((S ×ˢ T) ×ˢ U), f p ∂((volume.prod volume).prod volume)) := by
    rw [integral_sub' ((((ha.sub hb).sub hc).add hd).add he) hf,
      integral_add' (((ha.sub hb).sub hc).add hd) he,
      integral_add' ((ha.sub hb).sub hc) hd,
      integral_sub' (ha.sub hb) hc,
      integral_sub' ha hb]
  rw [Matrix.det_fin_three]
  simp only [Matrix.of_apply, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val]
  rw [hk, hlin]
  rw [show (∫ p in ((S ×ˢ T) ×ˢ U), a p ∂((volume.prod volume).prod volume)) =
      (∫ x in S, f0 x) * (∫ y in T, f1 y) * (∫ z in U, f2 z) by
        simpa [a] using triple_setIntegral_mul f0 f1 f2 S T U,
    show (∫ p in ((S ×ˢ T) ×ˢ U), b p ∂((volume.prod volume).prod volume)) =
      (∫ x in S, f0 x) * (∫ y in T, f2 y) * (∫ z in U, f1 z) by
        simpa [b] using triple_setIntegral_mul f0 f2 f1 S T U,
    show (∫ p in ((S ×ˢ T) ×ˢ U), c p ∂((volume.prod volume).prod volume)) =
      (∫ x in S, f1 x) * (∫ y in T, f0 y) * (∫ z in U, f2 z) by
        simpa [c] using triple_setIntegral_mul f1 f0 f2 S T U,
    show (∫ p in ((S ×ˢ T) ×ˢ U), d p ∂((volume.prod volume).prod volume)) =
      (∫ x in S, f1 x) * (∫ y in T, f2 y) * (∫ z in U, f0 z) by
        simpa [d] using triple_setIntegral_mul f1 f2 f0 S T U,
    show (∫ p in ((S ×ˢ T) ×ˢ U), e p ∂((volume.prod volume).prod volume)) =
      (∫ x in S, f2 x) * (∫ y in T, f0 y) * (∫ z in U, f1 z) by
        simpa [e] using triple_setIntegral_mul f2 f0 f1 S T U,
    show (∫ p in ((S ×ˢ T) ×ˢ U), f p ∂((volume.prod volume).prod volume)) =
      (∫ x in S, f2 x) * (∫ y in T, f1 y) * (∫ z in U, f0 z) by
        simpa [f] using triple_setIntegral_mul f2 f1 f0 S T U]
  ring

/-- Determinant-preserving column subtraction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f99fc53f2340308500a0932cba2d045d6032744` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
