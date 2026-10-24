# eLpNorm_enorm_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5660dbd-9dba-f89d-2602-44c5211c56c4",
  "kind": "theorem",
  "lexical_name": "eLpNorm_enorm_rpow",
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
  "slug": "elpnorm-enorm-rpow--1ff3b07964ab049b7ff42740",
  "source": {
    "blob": "8fcf4a49f25efe1ab9f50139de711ac97c531135",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 552,
    "line": 529,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantdecb9671e851ec691f505a424069357e4a5f4fe7157be436b9be54f7dc2becf2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ff3b07964ab049b7ff4274002fc1ca3113afce70b26fccce8af47e4e3f51605",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantdecb9671e851ec691f505a424069357e4a5f4fe7157be436b9be54f7dc2becf2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5660dbd-9dba-f89d-2602-44c5211c56c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 529–552.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eLpNorm_enorm_rpow {ε : Type*} [TopologicalSpace ε] [ContinuousENorm ε] (f : α → ε)
    (hf : AEStronglyMeasurable f μ) (hq_pos : 0 < q) :
    eLpNorm (‖f ·‖ₑ ^ q) p μ = eLpNorm f (p * ENNReal.ofReal q) μ ^ q := by
  have hfrpow : AEStronglyMeasurable (‖f ·‖ₑ ^ q) μ :=
    ENNReal.continuous_rpow_const.comp_aestronglyMeasurable hf.enorm.aestronglyMeasurable
  by_cases h0 : p = 0
  · simp [h0, hf, hfrpow, ENNReal.zero_rpow_of_pos hq_pos]
  by_cases hp_top : p = ∞
  · simp only [hp_top, eLpNorm_exponent_top hfrpow, ENNReal.top_mul', hq_pos.not_ge,
      ENNReal.ofReal_eq_zero, ite_false, eLpNorm_exponent_top hf,
      eLpNormEssSup_eq_essSup_enorm]
    have h_rpow : essSup (‖‖f ·‖ₑ ^ q‖ₑ) μ = essSup (‖f ·‖ₑ ^ q) μ := by congr
    rw [h_rpow]
    have h_rpow_mono := ENNReal.strictMono_rpow_of_pos hq_pos
    have h_rpow_surj := (ENNReal.rpow_left_bijective hq_pos.ne.symm).2
    let iso := h_rpow_mono.orderIsoOfSurjective _ h_rpow_surj
    exact (iso.essSup_apply (fun x => ‖f x‖ₑ) μ).symm
  rw [eLpNorm_eq_eLpNorm' h0 hp_top hfrpow, eLpNorm_eq_eLpNorm' _ (by finiteness) hf]
  swap
  · refine mul_ne_zero h0 ?_
    rwa [Ne, ENNReal.ofReal_eq_zero, not_le]
  rw [ENNReal.toReal_mul, ENNReal.toReal_ofReal hq_pos.le]
  exact eLpNorm'_enorm_rpow f p.toReal q hq_pos

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantdecb9671e851ec691f505a424069357e4a5f4fe7157be436b9be54f7dc2becf2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantdecb9671e851ec691f505a424069357e4a5f4fe7157be436b9be54f7dc2becf2.lean#L529).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fcf4a49f25efe1ab9f50139de711ac97c531135` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
