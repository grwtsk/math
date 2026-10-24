# polynomial_margin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f471d5d-0131-7bfd-04d7-a67f0c52c7fb",
  "kind": "theorem",
  "lexical_name": "polynomial_margin",
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
  "slug": "polynomial-margin--690b3bbd9c129a970b329d67",
  "source": {
    "blob": "871b093df09dd18eaba0c5e7800c3df8495ac2b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 121,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripUniformPairRegion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:690b3bbd9c129a970b329d67544e5e3ae8dcd40c608f4210b1a3b1c6895ffd00",
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

Occurrence: `result:6f471d5d-0131-7bfd-04d7-a67f0c52c7fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polynomial_margin {W : Packet} {C : Config} (hg : W.Guard C)
    (hb : W.Binds C) {z : ℂ} (hz : z ∈ W.carrier) (hoff : z.re ≠ 1/2) :
    (W.valueError : ℝ)^2+‖MirrorChannels.offset z‖^2*(W.secantError : ℝ)^2 <
      energy C.polynomial (MirrorChannels.center z) (MirrorChannels.offset z) := by
  obtain ⟨hc,hh,hD,hD1,he0,he1,hs,hv,hd,ha,hend⟩ := hg
  have hq0 : 0 < ‖MirrorChannels.offset z‖^2 := sq_pos_of_pos
    (norm_pos_iff.mpr (MirrorChannels.offset_ne_zero hoff))
  have hq : ‖MirrorChannels.offset z‖^2 ≤ (W.offsetRadius : ℝ)^2 := by
    rw [MirrorChannels.offset_norm]
    exact pow_le_pow_left₀ (abs_nonneg _) hz.1 2
  have hgap := affine_margin_pos (a := (W.constantGap : ℝ)) (b := (W.slopeGap : ℝ))
    (q := ‖MirrorChannels.offset z‖^2) (Q := (W.offsetRadius : ℝ)^2)
    (by exact_mod_cast ha) hq0 hq (by exact_mod_cast hend)
  have hm := channel_bounds hz hoff
  have hfunc : W.model=C.polynomial := funext hb
  rw [hfunc] at hm
  have he2 := pow_le_pow_left₀
    (show (0 : ℝ) ≤ (W.lowerEven : ℝ) by exact_mod_cast W.bounds.1.lower_nonneg) hm.1 2
  have ho2 := pow_le_pow_left₀
    (show (0 : ℝ) ≤ (W.lowerOdd : ℝ) by exact_mod_cast W.bounds.2.lower_nonneg) hm.2 2
  have hw := mul_le_mul_of_nonneg_left ho2 (sq_nonneg ‖MirrorChannels.offset z‖)
  simp only [constantGap,slopeGap,Rat.cast_sub,Rat.cast_pow] at hgap
  unfold energy
  nlinarith

/-- The missing all-point model margin is discharged by the checked region data. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripUniformPairRegion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripUniformPairRegion.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `871b093df09dd18eaba0c5e7800c3df8495ac2b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
