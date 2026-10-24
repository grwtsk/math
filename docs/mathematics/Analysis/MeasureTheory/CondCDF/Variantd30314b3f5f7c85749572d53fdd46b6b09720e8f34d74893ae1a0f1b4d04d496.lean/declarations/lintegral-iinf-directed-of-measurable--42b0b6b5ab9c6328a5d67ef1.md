# lintegral_iInf_directed_of_measurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d0fb5fbeaffc2ee14b2acb6e73debb2d1df9ab46",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 135,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d30314b3f5f7c85749572d53fdd46b6b09720e8f34d74893ae1a0f1b4d04d496.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0305700d-10fe-6060-693e-31a54a08e863",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7d42a00c-95f6-8523-1265-70d44e14b4f5",
  "kind": "theorem",
  "lexical_name": "lintegral_iInf_directed_of_measurable",
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
  "slug": "lintegral-iinf-directed-of-measurable--42b0b6b5ab9c6328a5d67ef1",
  "source": {
    "blob": "d0fb5fbeaffc2ee14b2acb6e73debb2d1df9ab46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 135,
    "path": "GRWTSK/Analysis/MeasureTheory/CondCdf/Variantd30314b3f5f7c85749572d53fdd46b6b09720e8f34d74893ae1a0f1b4d04d496.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42b0b6b5ab9c6328a5d67ef1f179d9c33e293ffdc35385a494a4f69f9ac4be7d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CondCDF/Variantd30314b3f5f7c85749572d53fdd46b6b09720e8f34d74893ae1a0f1b4d04d496.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d42a00c-95f6-8523-1265-70d44e14b4f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_iInf_directed_of_measurable {mα : MeasurableSpace α} [Countable β]
    {f : β → α → ℝ≥0∞} {μ : Measure α} (hμ : μ ≠ 0) (hf : ∀ b, Measurable (f b))
    (hf_int : ∀ b, ∫⁻ a, f b a ∂μ ≠ ∞) (h_directed : Directed (· ≥ ·) f) :
    ∫⁻ a, ⨅ b, f b a ∂μ = ⨅ b, ∫⁻ a, f b a ∂μ := by
  cases nonempty_encodable β
  cases isEmpty_or_nonempty β
  · -- Porting note: the next `simp only` doesn't do anything, so added a workaround below.
    -- simp only [WithTop.iInf_empty, lintegral_const]
    conv =>
      lhs
      congr
      · skip
      · ext x
        rw [WithTop.iInf_empty]
    rw [WithTop.iInf_empty, lintegral_const]
    rw [ENNReal.top_mul', if_neg]
    simp only [Measure.measure_univ_eq_zero, hμ, not_false_iff]
  inhabit β
  have : ∀ a, ⨅ b, f b a = ⨅ n, f (h_directed.sequence f n) a := by
    refine' fun a =>
      le_antisymm (le_iInf fun n => iInf_le _ _)
        (le_iInf fun b => iInf_le_of_le (Encodable.encode b + 1) _)
    exact h_directed.sequence_le b a
  -- Porting note: used `∘` below to deal with its reduced reducibility
  calc
    ∫⁻ a, ⨅ b, f b a ∂μ
    _ = ∫⁻ a, ⨅ n, (f ∘ h_directed.sequence f) n a ∂μ := by simp only [this, Function.comp_apply]
    _ = ⨅ n, ∫⁻ a, (f ∘ h_directed.sequence f) n a ∂μ := by
      rw [lintegral_iInf ?_ h_directed.sequence_anti]
      · exact hf_int _
      · exact (fun n => hf _)
    _ = ⨅ b, ∫⁻ a, f b a ∂μ := by
      refine' le_antisymm (le_iInf fun b => _) (le_iInf fun n => _)
      · exact iInf_le_of_le (Encodable.encode b + 1) (lintegral_mono <| h_directed.sequence_le b)
      · exact iInf_le (fun b => ∫⁻ a, f b a ∂μ) _
#align lintegral_infi_directed_of_measurable lintegral_iInf_directed_of_measurable

end AuxLemmasToBeMoved

namespace MeasureTheory.Measure

variable {α β : Type*} {mα : MeasurableSpace α} (ρ : Measure (α × ℝ))

/-- Measure on `α` such that for a measurable set `s`, `ρ.Iic_snd r s = ρ (s ×ˢ Iic r)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CondCDF/Variantd30314b3f5f7c85749572d53fdd46b6b09720e8f34d74893ae1a0f1b4d04d496.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CondCdf/Variantd30314b3f5f7c85749572d53fdd46b6b09720e8f34d74893ae1a0f1b4d04d496.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0fb5fbeaffc2ee14b2acb6e73debb2d1df9ab46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
