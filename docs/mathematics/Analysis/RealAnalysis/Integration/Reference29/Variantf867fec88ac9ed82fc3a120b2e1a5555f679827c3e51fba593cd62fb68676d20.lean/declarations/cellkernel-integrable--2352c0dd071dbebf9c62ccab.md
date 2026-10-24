# cellKernel_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78882903-1eec-80bf-1ab4-fd7d9389f2dc",
  "kind": "theorem",
  "lexical_name": "cellKernel_integrable",
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
  "slug": "cellkernel-integrable--2352c0dd071dbebf9c62ccab",
  "source": {
    "blob": "c6e045884df9203c1f495c87f420c4a07a55f6ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 101,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Reference29/Variantf867fec88ac9ed82fc3a120b2e1a5555f679827c3e51fba593cd62fb68676d20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2352c0dd071dbebf9c62ccabfa310d35571f8201cce5f5822d75e53df21b66c2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Reference29/Variantf867fec88ac9ed82fc3a120b2e1a5555f679827c3e51fba593cd62fb68676d20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78882903-1eec-80bf-1ab4-fd7d9389f2dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cellKernel_integrable
    (r : ℝ → ℝ) (hc : Continuous r) {A l b k : ℝ} (hlb : l ≤ b)
    (hk : 0 < k) (hs : tsupport r ⊆ Icc (-A) A) :
    Integrable (cellKernel r)
      (((volume.restrict (Ioc l b)).prod
        (volume.restrict (Ioc k (k + 1)))).prod volume) := by
  let μt := volume.restrict (Ioc l b)
  let μu := volume.restrict (Ioc k (k + 1))
  let V := Icc (l - A) (b + A)
  let μv := volume.restrict V
  let clamp : ℝ → ℝ := fun u => max k u
  let g : (ℝ × ℝ) × ℝ → ℝ := fun p =>
    r (p.2 - p.1.1) * r (p.2 + Real.log (clamp p.1.2)) /
      (clamp p.1.2 * Real.sqrt (clamp p.1.2))
  have hcl : Continuous clamp := continuous_const.max continuous_id
  have hpos (u : ℝ) : 0 < clamp u := hk.trans_le (le_max_left _ _)
  have hlog : Continuous (fun u => Real.log (clamp u)) :=
    hcl.log (fun u => (hpos u).ne')
  have hg : Continuous g := by
    apply Continuous.div
    · exact (hc.comp (continuous_snd.sub (continuous_fst.comp continuous_fst))).mul
        (hc.comp (continuous_snd.add (hlog.comp (continuous_snd.comp continuous_fst))))
    · exact (hcl.comp (continuous_snd.comp continuous_fst)).mul
        ((hcl.comp (continuous_snd.comp continuous_fst)).sqrt)
    · intro p
      exact mul_ne_zero (hpos p.1.2).ne' (Real.sqrt_ne_zero'.mpr (hpos p.1.2))
  let box := (Icc l b ×ˢ Icc k (k + 1)) ×ˢ V
  have hbox : IsCompact box := (isCompact_Icc.prod isCompact_Icc).prod isCompact_Icc
  obtain ⟨C, hC⟩ := hbox.exists_bound_of_continuousOn hg.continuousOn
  have hcarrier : ∀ᵐ p ∂(μt.prod μu).prod μv,
      p ∈ (Ioc l b ×ˢ Ioc k (k + 1)) ×ˢ V := by
    change ∀ᵐ p ∂(((volume : Measure ℝ).restrict (Ioc l b)).prod
      ((volume : Measure ℝ).restrict (Ioc k (k + 1)))).prod
      ((volume : Measure ℝ).restrict V), p ∈ (Ioc l b ×ˢ Ioc k (k + 1)) ×ˢ V
    rw [Measure.prod_restrict, Measure.prod_restrict]
    exact ae_restrict_mem ((measurableSet_Ioc.prod measurableSet_Ioc).prod measurableSet_Icc)
  have hbound : ∀ᵐ p ∂(μt.prod μu).prod μv, ‖g p‖ ≤ C := by
    filter_upwards [hcarrier] with p hp
    exact hC p ⟨⟨⟨hp.1.1.1.le, hp.1.1.2⟩,
      ⟨hp.1.2.1.le, hp.1.2.2⟩⟩, hp.2⟩
  have herror : Integrable errorExp μt := (errorExp_intervalIntegrable l b hlb).1
  have hbase := (herror.comp_fst μu).comp_fst μv
  have hi : Integrable (fun p : (ℝ × ℝ) × ℝ => errorExp p.1.1 * g p)
      ((μt.prod μu).prod μv) :=
    hbase.mul_bdd hg.aestronglyMeasurable hbound
  have hiOn : IntegrableOn (fun p : (ℝ × ℝ) × ℝ => errorExp p.1.1 * g p)
      (univ ×ˢ V) ((μt.prod μu).prod volume) := by
    rw [IntegrableOn, ← Measure.prod_restrict, Measure.restrict_univ]
    exact hi
  have hcarrierFull : ∀ᵐ p ∂(μt.prod μu).prod volume,
      p ∈ (Ioc l b ×ˢ Ioc k (k + 1)) ×ˢ (univ : Set ℝ) := by
    change ∀ᵐ p ∂(((volume : Measure ℝ).restrict (Ioc l b)).prod
      ((volume : Measure ℝ).restrict (Ioc k (k + 1)))).prod (volume : Measure ℝ),
      p ∈ (Ioc l b ×ˢ Ioc k (k + 1)) ×ˢ (univ : Set ℝ)
    rw [Measure.prod_restrict, Measure.restrict_prod_eq_prod_univ]
    exact ae_restrict_mem ((measurableSet_Ioc.prod measurableSet_Ioc).prod MeasurableSet.univ)
  have hiFull : Integrable (fun p : (ℝ × ℝ) × ℝ => errorExp p.1.1 * g p)
      ((μt.prod μu).prod volume) := by
    apply hiOn.integrable_of_ae_notMem_eq_zero
    filter_upwards [hcarrierFull] with p hp hout
    have hv : p.2 ∉ V := by simpa only [mem_prod, mem_univ, true_and] using hout
    have hz := row_vanishes_outside_time_box r hs hp.1.1 hv
    simp only [g, hz, zero_mul, zero_div, mul_zero]
  apply hiFull.congr
  filter_upwards [hcarrierFull] with p hp
  have hu : clamp p.1.2 = p.1.2 := max_eq_right hp.1.2.1.le
  dsimp only [cellKernel, g]
  rw [hu]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Reference29/Variantf867fec88ac9ed82fc3a120b2e1a5555f679827c3e51fba593cd62fb68676d20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Reference29/Variantf867fec88ac9ed82fc3a120b2e1a5555f679827c3e51fba593cd62fb68676d20.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6e045884df9203c1f495c87f420c4a07a55f6ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
