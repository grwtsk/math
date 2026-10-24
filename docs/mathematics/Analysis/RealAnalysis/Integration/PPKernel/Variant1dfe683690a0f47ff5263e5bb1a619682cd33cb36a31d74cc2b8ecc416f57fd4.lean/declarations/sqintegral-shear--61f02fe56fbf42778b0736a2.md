# sqIntegral_shear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b86b0e0-e9e1-a8c5-e317-a094495163be",
  "kind": "lemma",
  "lexical_name": "sqIntegral_shear",
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
  "slug": "sqintegral-shear--61f02fe56fbf42778b0736a2",
  "source": {
    "blob": "7c75669277cd28f7712457d57bb96fdc692ec435",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 123,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61f02fe56fbf42778b0736a2de2cf754af9ca432df54ada07bb1dee6485dfe0c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b86b0e0-e9e1-a8c5-e317-a094495163be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sqIntegral_shear (hΦ : Continuous Φ) {G : ℝ × ℝ → ℝ} (hG : Continuous G) :
    ∫ q in Icc T (2 * T) ×ˢ Icc T (2 * T), Φ (q.1 - q.2) ^ 2 * G q
      = ∫ x, Φ x ^ 2 * ∫ τ' in Ix T x, G (x + τ', τ') := by
  set S := Icc T (2 * T) with hS
  have hSm : MeasurableSet (S ×ˢ S) := measurableSet_Icc.prod measurableSet_Icc
  set f : ℝ × ℝ → ℝ := fun q => Φ (q.1 - q.2) ^ 2 * G q with hf
  have hfint : IntegrableOn f (S ×ˢ S) := by
    apply ContinuousOn.integrableOn_compact (isCompact_Icc.prod isCompact_Icc)
    apply Continuous.continuousOn; fun_prop
  have hind : Integrable ((S ×ˢ S).indicator f) := (integrable_indicator_iff hSm).mpr hfint
  have hemb : MeasurableEmbedding (fun z : ℝ × ℝ => (z.1 + z.2, z.2)) :=
    shearHomeo.measurableEmbedding
  have hcomp : Integrable (fun z : ℝ × ℝ => (S ×ˢ S).indicator f (z.1 + z.2, z.2))
      (volume.prod volume) := by
    have := (measurePreserving_shear.integrable_comp_emb hemb).mpr hind
    rwa [Measure.volume_eq_prod] at this
  -- pointwise identification of the sheared integrand
  have hpt : ∀ x τ', (S ×ˢ S).indicator f (x + τ', τ')
      = (Ix T x).indicator (fun τ' => Φ x ^ 2 * G (x + τ', τ')) τ' := by
    intro x τ'
    by_cases h : τ' ∈ Ix T x
    · have h' : (x + τ', τ') ∈ S ×ˢ S := Set.mk_mem_prod (mem_Ix.mp h).1 (mem_Ix.mp h).2
      rw [Set.indicator_of_mem h', Set.indicator_of_mem h, hf]
      simp
    · have h' : (x + τ', τ') ∉ S ×ˢ S := fun hh => h (mem_Ix.mpr ⟨hh.1, hh.2⟩)
      rw [Set.indicator_of_notMem h', Set.indicator_of_notMem h]
  calc ∫ q in S ×ˢ S, f q
      = ∫ q, (S ×ˢ S).indicator f q := (integral_indicator hSm).symm
    _ = ∫ z : ℝ × ℝ, (S ×ˢ S).indicator f (z.1 + z.2, z.2) :=
        (measurePreserving_shear.integral_comp hemb _).symm
    _ = ∫ x, ∫ τ', (S ×ˢ S).indicator f (x + τ', τ') := by
        rw [Measure.volume_eq_prod, integral_prod _ hcomp]
    _ = ∫ x, Φ x ^ 2 * ∫ τ' in Ix T x, G (x + τ', τ') := by
        refine integral_congr_ae (Filter.Eventually.of_forall fun x => ?_)
        simp_rw [hpt x]
        rw [integral_indicator (measurableSet_Ix T x), integral_const_mul]

/-- The sheared integrand is integrable in `x` (Fubini), so the outer integral above is a genuine
Lebesgue integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c75669277cd28f7712457d57bb96fdc692ec435` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
