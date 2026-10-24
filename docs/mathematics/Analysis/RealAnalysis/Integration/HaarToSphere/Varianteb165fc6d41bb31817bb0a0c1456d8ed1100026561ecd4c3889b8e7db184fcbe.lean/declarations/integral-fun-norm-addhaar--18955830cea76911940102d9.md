# integral_fun_norm_addHaar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ff0a9b0-6f87-6df8-2bcd-e896772a9157",
  "kind": "lemma",
  "lexical_name": "integral_fun_norm_addHaar",
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
  "slug": "integral-fun-norm-addhaar--18955830cea76911940102d9",
  "source": {
    "blob": "7d379344c6f6d2ee9ea2a1cc6abb9b81e87074b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 145,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HaarToSphere/Varianteb165fc6d41bb31817bb0a0c1456d8ed1100026561ecd4c3889b8e7db184fcbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18955830cea76911940102d9424b32ed5d4c3ce33f62ad1915e099485620fa8d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HaarToSphere/Varianteb165fc6d41bb31817bb0a0c1456d8ed1100026561ecd4c3889b8e7db184fcbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ff0a9b0-6f87-6df8-2bcd-e896772a9157`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_fun_norm_addHaar (f : ℝ → F) :
    ∫ x, f (‖x‖) ∂μ = dim E • μ.real (ball 0 1) • ∫ y in Ioi (0 : ℝ), y ^ (dim E - 1) • f y :=
  calc
    ∫ x, f (‖x‖) ∂μ = ∫ x : ({(0)}ᶜ : Set E), f (‖x.1‖) ∂(μ.comap (↑)) := by
      rw [integral_subtype_comap (measurableSet_singleton _).compl fun x ↦ f (‖x‖),
        restrict_compl_singleton]
    _ = ∫ x : sphere (0 : E) 1 × Ioi (0 : ℝ), f x.2 ∂μ.toSphere.prod (.volumeIoiPow (dim E - 1)) :=
      μ.measurePreserving_homeomorphUnitSphereProd.integral_comp (Homeomorph.measurableEmbedding _)
        (f ∘ Subtype.val ∘ Prod.snd)
    _ = μ.toSphere.real univ • ∫ x : Ioi (0 : ℝ), f x ∂.volumeIoiPow (dim E - 1) :=
      integral_fun_snd (f ∘ Subtype.val)
    _ = _ := by
      simp only [Measure.volumeIoiPow, ENNReal.ofReal]
      rw [integral_withDensity_eq_integral_smul, μ.toSphere_real_apply_univ,
        ← nsmul_eq_mul, smul_assoc,
        integral_subtype_comap measurableSet_Ioi fun a ↦ Real.toNNReal (a ^ (dim E - 1)) • f a,
        setIntegral_congr_fun measurableSet_Ioi fun x hx ↦ ?_]
      · rw [NNReal.smul_def, Real.coe_toNNReal _ (pow_nonneg hx.out.le _)]
      · exact (measurable_subtype_coe.pow_const _).real_toNNReal

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HaarToSphere/Varianteb165fc6d41bb31817bb0a0c1456d8ed1100026561ecd4c3889b8e7db184fcbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HaarToSphere/Varianteb165fc6d41bb31817bb0a0c1456d8ed1100026561ecd4c3889b8e7db184fcbe.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d379344c6f6d2ee9ea2a1cc6abb9b81e87074b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
