# rhOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a32ce35-a5d7-b4fd-7aa6-a974a68f930e",
  "kind": "theorem",
  "lexical_name": "rhOn",
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
  "slug": "rhon--e90efe5f5a2fae8bc33c7ac4",
  "source": {
    "blob": "871b093df09dd18eaba0c5e7800c3df8495ac2b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 147,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripUniformPairRegion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e90efe5f5a2fae8bc33c7ac44ed52bad95978e0bfdacd620307b5f10832e4f80",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripUniformPairRegion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a32ce35-a5d7-b4fd-7aa6-a974a68f930e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rhOn {W : Packet} {C : Config} (hcheck : W.check C=true) (hb : W.Binds C) :
    RHOn W.carrier := by
  have hg := (W.check_iff C).mp hcheck
  obtain ⟨hc,hh,hD,hD1,he0,he1,hs,hv,hd,ha,hend⟩ := hg
  intro z hz hz0
  by_contra hoff
  have hTq : (0 : ℚ) ≤ W.heightBound := add_nonneg (abs_nonneg _) hh
  have hT : (0 : ℝ) ≤ (W.heightBound : ℝ) := by exact_mod_cast hTq
  have hheight := abs_le.mp (height_bound hz)
  have hp : MirrorChannels.center z+MirrorChannels.offset z ∈ band (W.heightBound : ℝ) := by
    rw [MirrorChannels.center_plus_offset]
    exact ⟨hz0.mem_critical_strip.1,hz0.mem_critical_strip.2,hheight.1,hheight.2⟩
  have hm : MirrorChannels.center z-MirrorChannels.offset z ∈ band (W.heightBound : ℝ) := by
    rw [MirrorChannels.center_minus_offset]
    have hr := hz0.critical_reflection.mem_critical_strip
    have hi : (criticalReflection z).im=z.im := by simp [criticalReflection]
    exact ⟨hr.1,hr.2,by rwa [hi],by rwa [hi]⟩
  let E := UniformPairEvaluation.sourceEnclosure hc hT (by exact_mod_cast hs)
    (MirrorChannels.offset_ne_zero hoff) hp hm
  have hvCast := RationalEvaluatedPair.sourceValue_cast C.cutoff W.heightBound
  have hdCast := RationalEvaluatedPair.sourceSecant_cast C.cutoff W.heightBound
  rw [abs_of_nonneg hT] at hvCast hdCast
  have he : E.valueError ≤ (W.valueError : ℝ) := by
    change valueRadius ((W.heightBound : ℝ)+6) C.cutoff+(C.valueRadius : ℝ) ≤ _
    rw [hvCast]
    exact_mod_cast hv
  have ho : E.secantError ≤ (W.secantError : ℝ) := by
    change derivativeRadius ((W.heightBound : ℝ)+6) C.cutoff+(C.derivativeRadius : ℝ) ≤ _
    rw [hdCast]
    exact_mod_cast hd
  have he2 := pow_le_pow_left₀ E.value_nonneg he 2
  have ho2 := pow_le_pow_left₀ E.secant_nonneg ho 2
  have hbudget : E.budget ≤ (W.valueError : ℝ)^2+
      ‖MirrorChannels.offset z‖^2*(W.secantError : ℝ)^2 :=
    add_le_add he2 (mul_le_mul_of_nonneg_left ho2 (sq_nonneg _))
  apply E.excludes_pair (hbudget.trans_lt (polynomial_margin hg hb hz hoff))
  rw [MirrorChannels.center_plus_offset,MirrorChannels.center_minus_offset]
  exact ⟨poleNormalizedZeta_zero_of_target hz0,poleNormalizedZeta_zero_of_target hz0.critical_reflection⟩

end Packet

/-- A proven cover is still required; a local passing rectangle is not a shell. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripUniformPairRegion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripUniformPairRegion.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `871b093df09dd18eaba0c5e7800c3df8495ac2b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
