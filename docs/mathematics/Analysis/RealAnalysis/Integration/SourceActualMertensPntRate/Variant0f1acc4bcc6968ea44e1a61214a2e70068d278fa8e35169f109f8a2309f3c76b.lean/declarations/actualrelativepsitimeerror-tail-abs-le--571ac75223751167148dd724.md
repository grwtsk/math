# actualRelativePsiTimeError_tail_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc758ae2-0936-415a-2123-73ffbc0a5c03",
  "kind": "theorem",
  "lexical_name": "actualRelativePsiTimeError_tail_abs_le",
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
  "slug": "actualrelativepsitimeerror-tail-abs-le--571ac75223751167148dd724",
  "source": {
    "blob": "9580b6bf2c0233862571810fad613bd4a8f9dacc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 55,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMertensPntRate/Variant0f1acc4bcc6968ea44e1a61214a2e70068d278fa8e35169f109f8a2309f3c76b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:571ac75223751167148dd7244f193b6b7363b81bbad4bc3758911791568f32dc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualMertensPntRate/Variant0f1acc4bcc6968ea44e1a61214a2e70068d278fa8e35169f109f8a2309f3c76b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc758ae2-0936-415a-2123-73ffbc0a5c03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRelativePsiTimeError_tail_abs_le {c C t : ℝ}
    (hc : 0 < c) (hC : 0 ≤ C) (ht : 0 ≤ t)
    (hdelta : ∀ r ≥ t, |actualRelativePsiTimeError r| ≤
      C * Real.exp (-c * r ^ ((1 : ℝ) / 10))) :
    |∫ r in Ioi t, actualRelativePsiTimeError r| ≤
      C * Real.exp (-(c / 2) * t ^ ((1 : ℝ) / 10)) *
        ∫ r in Ioi 0, Real.exp (-(c / 2) * r ^ ((1 : ℝ) / 10)) := by
  let g : ℝ → ℝ := fun r => Real.exp (-(c / 2) * r ^ ((1 : ℝ) / 10))
  have hg : IntegrableOn g (Ioi 0) := actualPntHalfRate_integrable hc
  have hgt : IntegrableOn g (Ioi t) := hg.mono_set (Ioi_subset_Ioi ht)
  have hdf := actualRelativePsiTimeError_tail_integrable ht
  have hfac : ∀ r ∈ Ioi t, |actualRelativePsiTimeError r| ≤
      (C * g t) * g r := by
    intro r hr
    have hpow : t ^ ((1 : ℝ) / 10) ≤ r ^ ((1 : ℝ) / 10) :=
      Real.rpow_le_rpow ht hr.le (by norm_num)
    have hex : Real.exp (-(c / 2) * r ^ ((1 : ℝ) / 10)) ≤ g t := by
      apply Real.exp_le_exp.mpr
      dsimp [g]
      nlinarith
    calc
      _ ≤ C * Real.exp (-c * r ^ ((1 : ℝ) / 10)) := hdelta r hr.le
      _ = C * (g r * g r) := by dsimp [g]; rw [← Real.exp_add]; congr 2; ring
      _ ≤ C * (g t * g r) :=
        mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_right hex (Real.exp_pos _).le) hC
      _ = (C * g t) * g r := by ring
  have hmono : (∫ r in Ioi t, |actualRelativePsiTimeError r|) ≤
      (C * g t) * ∫ r in Ioi t, g r := by
    simpa only [integral_const_mul] using
      setIntegral_mono_on hdf.abs (hgt.const_mul (C * g t)) measurableSet_Ioi hfac
  have htail : (∫ r in Ioi t, g r) ≤ ∫ r in Ioi 0, g r :=
    setIntegral_mono_set hg (ae_of_all _ (fun r => (Real.exp_pos _).le))
      (Eventually.of_forall (fun r hr => lt_of_le_of_lt ht hr))
  calc
    _ ≤ ∫ r in Ioi t, |actualRelativePsiTimeError r| := by
      simpa only [Real.norm_eq_abs] using norm_integral_le_integral_norm
        (f := actualRelativePsiTimeError) (μ := volume.restrict (Ioi t))
    _ ≤ (C * g t) * ∫ r in Ioi t, g r := hmono
    _ ≤ (C * g t) * ∫ r in Ioi 0, g r :=
      mul_le_mul_of_nonneg_left htail (mul_nonneg hC (Real.exp_pos _).le)
    _ = _ := rfl

/-- A genuine PNT majorant supplies a stretched-exponential actual centered rate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualMertensPntRate/Variant0f1acc4bcc6968ea44e1a61214a2e70068d278fa8e35169f109f8a2309f3c76b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMertensPntRate/Variant0f1acc4bcc6968ea44e1a61214a2e70068d278fa8e35169f109f8a2309f3c76b.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9580b6bf2c0233862571810fad613bd4a8f9dacc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
