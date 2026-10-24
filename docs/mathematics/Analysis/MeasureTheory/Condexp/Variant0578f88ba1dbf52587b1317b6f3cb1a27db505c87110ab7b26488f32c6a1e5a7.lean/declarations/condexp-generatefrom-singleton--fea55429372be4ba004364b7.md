# condExp_generateFrom_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:908df105-70f2-384d-5421-0a1adb9c5683",
  "kind": "lemma",
  "lexical_name": "condExp_generateFrom_singleton",
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
  "slug": "condexp-generatefrom-singleton--fea55429372be4ba004364b7",
  "source": {
    "blob": "742d05005989bce92e9cb9295aa56b39f1c7cd4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 383,
    "line": 351,
    "path": "GRWTSK/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fea55429372be4ba004364b7f780a9c3cbc98dd929c99d32d626b8a1cb4435b8",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:908df105-70f2-384d-5421-0a1adb9c5683`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–383.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma condExp_generateFrom_singleton (hs : MeasurableSet s) {f : Ω → F} (hf : Integrable f μ) :
    μ[f | generateFrom {s}] =ᵐ[μ.restrict s] fun _ ↦ ∫ x, f x ∂μ[|s] := by
  by_cases hμs : μ s = 0
  · rw [Measure.restrict_eq_zero.2 hμs]
    rfl
  refine ae_eq_trans (condExp_restrict_ae_eq_restrict
    (generateFrom_singleton_le hs)
    (measurableSet_generateFrom rfl) hf).symm ?_
  · refine (ae_eq_condExp_of_forall_setIntegral_eq (generateFrom_singleton_le hs) hf.restrict ?_ ?_
      stronglyMeasurable_const.aestronglyMeasurable).symm
    · rintro t - -
      rw [integrableOn_const_iff]
      exact Or.inr <| measure_lt_top (μ.restrict s) t
    · rintro t ht -
      obtain (h | h | h | h) := measurableSet_generateFrom_singleton_iff.1 ht
      · simp [h]
      · simp only [h, cond, integral_smul_measure, ENNReal.toReal_inv, integral_const,
        MeasurableSet.univ, measureReal_restrict_apply, univ_inter, measureReal_restrict_apply_self,
        ← measureReal_def]
        rw [smul_inv_smul₀, Measure.restrict_restrict hs, inter_self]
        exact ENNReal.toReal_ne_zero.2 ⟨hμs, measure_ne_top _ _⟩
      · simp only [h, integral_const, MeasurableSet.univ, measureReal_restrict_apply, univ_inter,
          measureReal_restrict_apply hs.compl, compl_inter_self, measureReal_empty, zero_smul,
          ((Measure.restrict_apply_eq_zero hs.compl).2 <| compl_inter_self s ▸ measure_empty),
          setIntegral_zero_measure]
      · simp only [h, Measure.restrict_univ, cond, integral_smul_measure, ENNReal.toReal_inv, ←
        measureReal_def, integral_const, MeasurableSet.univ, measureReal_restrict_apply, univ_inter]
        rw [smul_inv_smul₀]
        exact (measureReal_ne_zero_iff (by finiteness)).2 hμs

@[deprecated (since := "2025-01-21")]
alias condexp_generateFrom_singleton := condExp_generateFrom_singleton

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `742d05005989bce92e9cb9295aa56b39f1c7cd4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
