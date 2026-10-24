# fourierTransformCLM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:001728acc9ddf362d56a329534eb796e7b03381a1cfdbf40dc686dab8ed22ba5",
  "kind": "def",
  "lexical_name": "fourierTransformCLM",
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
  "slug": "fouriertransformclm--627937e6baa8056eac256e9a",
  "source": {
    "blob": "9b1b1d854b9f26a2415f272883d832adc7753fda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 31,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierSchwartz/Varianta1031adc45308c10bbf8a02ef10c07052a27c0009bd635fdb9dc26f10e02ee6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:627937e6baa8056eac256e9a081dd72cc5c091a73f69b86cf7c6ae228c9fb551",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/FourierSchwartz/Varianta1031adc45308c10bbf8a02ef10c07052a27c0009bd635fdb9dc26f10e02ee6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:001728acc9ddf362d56a329534eb796e7b03381a1cfdbf40dc686dab8ed22ba5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def fourierTransformCLM : 𝓢(V, E) →L[𝕜] 𝓢(V, E) := by
  refine mkCLM (fun (f : V → E) ↦ 𝓕 f) ?_ ?_ ?_ ?_
  · intro f g x
    simp only [fourierIntegral_eq, Pi.add_apply, smul_add]
    rw [integral_add]
    · exact (fourierIntegral_convergent_iff _).2 f.integrable
    · exact (fourierIntegral_convergent_iff _).2 g.integrable
  · intro c f x
    simp only [fourierIntegral_eq, Pi.smul_apply, RingHom.id_apply, smul_comm _ c, integral_smul]
  · intro f
    exact Real.contDiff_fourierIntegral (fun n _ ↦ integrable_pow_mul volume f n)
  · rintro ⟨k, n⟩
    refine ⟨Finset.range (n + integrablePower (volume : Measure V) + 1) ×ˢ Finset.range (k + 1),
       (2 * π) ^ n * (2 * ↑n + 2) ^ k * (Finset.range (n + 1) ×ˢ Finset.range (k + 1)).card
         * 2 ^ integrablePower (volume : Measure V) *
         (∫ (x : V), (1 + ‖x‖) ^ (- (integrablePower (volume : Measure V) : ℝ))) * 2,
       ⟨by positivity, fun f x ↦ ?_⟩⟩
    apply (pow_mul_norm_iteratedFDeriv_fourierIntegral_le (f.smooth ⊤)
      (fun k n _hk _hn ↦ integrable_pow_mul_iteratedFDeriv _ f k n) le_top le_top x).trans
    simp only [mul_assoc]
    gcongr
    calc
    ∑ p ∈ Finset.range (n + 1) ×ˢ Finset.range (k + 1),
        ∫ (v : V), ‖v‖ ^ p.1 * ‖iteratedFDeriv ℝ p.2 (⇑f) v‖
      ≤ ∑ p ∈ Finset.range (n + 1) ×ˢ Finset.range (k + 1),
        2 ^ integrablePower (volume : Measure V) *
        (∫ (x : V), (1 + ‖x‖) ^ (- (integrablePower (volume : Measure V) : ℝ))) * 2 *
        ((Finset.range (n + integrablePower (volume : Measure V) + 1) ×ˢ Finset.range (k + 1)).sup
          (schwartzSeminormFamily 𝕜 V E)) f := by
      apply Finset.sum_le_sum (fun p hp ↦ ?_)
      simp only [Finset.mem_product, Finset.mem_range] at hp
      apply (f.integral_pow_mul_iteratedFDeriv_le 𝕜 _ _ _).trans
      simp only [mul_assoc]
      rw [two_mul]
      gcongr
      · apply Seminorm.le_def.1
        have : (0, p.2) ∈ (Finset.range (n + integrablePower (volume : Measure V) + 1)
            ×ˢ Finset.range (k + 1)) := by simp [hp.2]
        apply Finset.le_sup this (f := fun p ↦ SchwartzMap.seminorm 𝕜 p.1 p.2 (E := V) (F := E))
      · apply Seminorm.le_def.1
        have : (p.1 + integrablePower (volume : Measure V), p.2) ∈ (Finset.range
            (n + integrablePower (volume : Measure V) + 1) ×ˢ Finset.range (k + 1)) := by
          simp [hp.2]
          omega
        apply Finset.le_sup this (f := fun p ↦ SchwartzMap.seminorm 𝕜 p.1 p.2 (E := V) (F := E))
    _ = _ := by simp [mul_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FourierSchwartz/Varianta1031adc45308c10bbf8a02ef10c07052a27c0009bd635fdb9dc26f10e02ee6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierSchwartz/Varianta1031adc45308c10bbf8a02ef10c07052a27c0009bd635fdb9dc26f10e02ee6c.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b1b1d854b9f26a2415f272883d832adc7753fda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
