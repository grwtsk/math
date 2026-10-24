# MemLp.piecewise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7dedf620-5a97-22a3-0ae2-c1116c9ccf2c",
  "kind": "lemma",
  "lexical_name": "MemLp.piecewise",
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
  "slug": "memlp-piecewise--e6957891a12b3873e2e69ec8",
  "source": {
    "blob": "80d15ec912ab377c581f26725b6c103050a031e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 194,
    "path": "GRWTSK/Analysis/MeasureTheory/Indicator/Variant095efaa609e69d874b14f4e3ba9b0ca75fde08c4351137744c8cdb0a76a5e224.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6957891a12b3873e2e69ec8e6738b6d0bf08e316cae2baf0c4745aacf45dbb7",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Indicator/Variant095efaa609e69d874b14f4e3ba9b0ca75fde08c4351137744c8cdb0a76a5e224.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7dedf620-5a97-22a3-0ae2-c1116c9ccf2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma MemLp.piecewise {f : α → ε} [DecidablePred (· ∈ s)] {g} (hs : MeasurableSet s)
    (hf : MemLp f p (μ.restrict s)) (hg : MemLp g p (μ.restrict sᶜ)) :
    MemLp (s.piecewise f g) p μ := by
  by_cases hp_zero : p = 0
  · simp only [hp_zero, memLp_zero_iff_aestronglyMeasurable]
    exact AEStronglyMeasurable.piecewise hs hf.aestronglyMeasurable hg.aestronglyMeasurable
  rw [memLp_iff]
  obtain rfl | hp_top := eq_or_ne p ∞
  · rw [eLpNorm_top_piecewise f g hs]
    exact max_lt hf hg
  rw [eLpNorm_lt_top_iff_lintegral_rpow_enorm_lt_top hp_zero hp_top
    (AEStronglyMeasurable.piecewise hs hf.aestronglyMeasurable hg.aestronglyMeasurable),
    ← lintegral_add_compl _ hs,
    ENNReal.add_lt_top]
  constructor
  · have h (x) (hx : x ∈ s) : ‖Set.piecewise s f g x‖ₑ ^ p.toReal = ‖f x‖ₑ ^ p.toReal := by
      simp [hx]
    rw [setLIntegral_congr_fun hs h]
    exact lintegral_rpow_enorm_lt_top_of_eLpNorm_lt_top hp_zero hp_top hf
  · have h (x) (hx : x ∈ sᶜ) : ‖Set.piecewise s f g x‖ₑ ^ p.toReal = ‖g x‖ₑ ^ p.toReal := by
      have hx' : x ∉ s := hx
      simp [hx']
    rw [setLIntegral_congr_fun hs.compl h]
    exact lintegral_rpow_enorm_lt_top_of_eLpNorm_lt_top hp_zero hp_top hg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Indicator/Variant095efaa609e69d874b14f4e3ba9b0ca75fde08c4351137744c8cdb0a76a5e224.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Indicator/Variant095efaa609e69d874b14f4e3ba9b0ca75fde08c4351137744c8cdb0a76a5e224.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80d15ec912ab377c581f26725b6c103050a031e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
