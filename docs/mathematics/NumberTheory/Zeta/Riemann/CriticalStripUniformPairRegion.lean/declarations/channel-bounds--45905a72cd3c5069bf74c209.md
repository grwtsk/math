# channel_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be3f2056-f6e5-560d-5adc-05ff255a8117",
  "kind": "lemma",
  "lexical_name": "channel_bounds",
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
  "slug": "channel-bounds--45905a72cd3c5069bf74c209",
  "source": {
    "blob": "871b093df09dd18eaba0c5e7800c3df8495ac2b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 80,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripUniformPairRegion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45905a72cd3c5069bf74c209ba2d8484957a46d2b8bc545e6f254b0869311474",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripUniformPairRegion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be3f2056-f6e5-560d-5adc-05ff255a8117`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma channel_bounds {W : Packet} {z : ℂ} (hz : z ∈ W.carrier) (hoff : z.re ≠ 1/2) :
    (W.lowerEven : ℝ) ≤ ‖even W.model (MirrorChannels.center z) (MirrorChannels.offset z)‖ ∧
    (W.lowerOdd : ℝ) ≤ ‖odd W.model (MirrorChannels.center z) (MirrorChannels.offset z)‖ := by
  let d : ℝ := z.re-1/2
  let v : ℂ := (z.im-(W.height : ℝ))*I
  have hv : W.centerDisk.Valid v := by
    change ‖v-(Gaussian.ofRat 0).value‖ ≤ (W.heightRadius : ℝ)
    simpa [v,Gaussian.value_ofRat,norm_mul,Complex.norm_real,Real.norm_eq_abs] using hz.2
  have hD : (0 : ℝ) ≤ (W.offsetRadius : ℝ) := (abs_nonneg d).trans hz.1
  have hd2 : d^2 ≤ (W.offsetRadius : ℝ)^2 := by
    have h := pow_le_pow_left₀ (abs_nonneg d) hz.1 2
    simpa only [sq_abs] using h
  have hq : W.squaredDisk.Valid ((d : ℂ)^2) := by
    change ‖(d : ℂ)^2-(Gaussian.ofRat (W.offsetRadius^2/2)).value‖ ≤ _
    rw [Gaussian.value_ofRat]
    have he : (d : ℂ)^2-((W.offsetRadius^2/2 : ℚ) : ℂ) =
        ((d^2-(W.offsetRadius : ℝ)^2/2 : ℝ) : ℂ) := by push_cast; ring
    rw [he,Complex.norm_real,Real.norm_eq_abs]
    have hb : |d^2-(W.offsetRadius : ℝ)^2/2| ≤ (W.offsetRadius : ℝ)^2/2 :=
      abs_le.mpr ⟨by nlinarith [sq_nonneg d],by linarith⟩
    simpa only [squaredDisk,Rat.cast_div,Rat.cast_pow,Rat.cast_ofNat] using hb
  have hp := GRWTSK.Analysis.Complex.GaussianPolynomialPair.enclose_valid W.coefficients hv hq
  have hplus : MirrorChannels.center z+MirrorChannels.offset z-W.anchor=v+(d : ℂ) := by
    apply Complex.ext <;> simp [v,d,MirrorChannels.center,MirrorChannels.offset,anchor,Gaussian.value] <;> ring
  have hminus : MirrorChannels.center z-MirrorChannels.offset z-W.anchor=v-(d : ℂ) := by
    apply Complex.ext <;> simp [v,d,MirrorChannels.center,MirrorChannels.offset,anchor,Gaussian.value] <;> ring
  have he : even W.model (MirrorChannels.center z) (MirrorChannels.offset z)=
      even (QP.eval W.coefficients) v (d : ℂ) := by
    unfold even model
    rw [hplus,hminus]
  have ho : odd W.model (MirrorChannels.center z) (MirrorChannels.offset z)=
      odd (QP.eval W.coefficients) v (d : ℂ) := by
    unfold odd model
    rw [hplus,hminus]
    rfl
  rw [he,ho,GRWTSK.Analysis.Complex.GaussianPolynomialPair.pair_even,
    GRWTSK.Analysis.Complex.GaussianPolynomialPair.pair_odd _ _
      (Complex.ofReal_ne_zero.mpr (sub_ne_zero.mpr hoff))]
  exact ⟨hp.1.lower_le,hp.2.lower_le⟩

/-- All real points of the rectangle are controlled; no grid or offset floor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripUniformPairRegion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripUniformPairRegion.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `871b093df09dd18eaba0c5e7800c3df8495ac2b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
