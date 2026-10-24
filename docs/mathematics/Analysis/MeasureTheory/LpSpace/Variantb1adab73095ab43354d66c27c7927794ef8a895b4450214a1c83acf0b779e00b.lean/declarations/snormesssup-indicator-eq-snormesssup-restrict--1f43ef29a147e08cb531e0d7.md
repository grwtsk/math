# snormEssSup_indicator_eq_snormEssSup_restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5df79e4-22d4-d5f6-f7be-985178318d4d",
  "kind": "theorem",
  "lexical_name": "snormEssSup_indicator_eq_snormEssSup_restrict",
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
  "slug": "snormesssup-indicator-eq-snormesssup-restrict--1f43ef29a147e08cb531e0d7",
  "source": {
    "blob": "145ecda4c8c3a4972cf1bcac83026924983d5cf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 665,
    "line": 651,
    "path": "GRWTSK/Analysis/MeasureTheory/LpSpace/Variantb1adab73095ab43354d66c27c7927794ef8a895b4450214a1c83acf0b779e00b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f43ef29a147e08cb531e0d75ae413cfcc495d48f0b32a6715667524e0b73a93",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/LpSpace/Variantb1adab73095ab43354d66c27c7927794ef8a895b4450214a1c83acf0b779e00b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5df79e4-22d4-d5f6-f7be-985178318d4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 651–665.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem snormEssSup_indicator_eq_snormEssSup_restrict {f : α → F} (hs : MeasurableSet s) :
    snormEssSup (s.indicator f) μ = snormEssSup f (μ.restrict s) := by
  simp_rw [snormEssSup, nnnorm_indicator_eq_indicator_nnnorm, ENNReal.coe_indicator]
  by_cases hs_null : μ s = 0
  · rw [Measure.restrict_zero_set hs_null]
    simp only [essSup_measure_zero, ENNReal.essSup_eq_zero_iff, ENNReal.bot_eq_zero]
    have hs_empty : s =ᵐ[μ] (∅ : Set α) := by rw [ae_eq_set]; simpa using hs_null
    refine' (indicator_ae_eq_of_ae_eq_set hs_empty).trans _
    rw [Set.indicator_empty]
    rfl
  rw [essSup_indicator_eq_essSup_restrict (eventually_of_forall fun x => ?_) hs hs_null]
  rw [Pi.zero_apply]
  exact zero_le _
#align measure_theory.snorm_ess_sup_indicator_eq_snorm_ess_sup_restrict MeasureTheory.snormEssSup_indicator_eq_snormEssSup_restrict

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/LpSpace/Variantb1adab73095ab43354d66c27c7927794ef8a895b4450214a1c83acf0b779e00b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/LpSpace/Variantb1adab73095ab43354d66c27c7927794ef8a895b4450214a1c83acf0b779e00b.lean#L651).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `145ecda4c8c3a4972cf1bcac83026924983d5cf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
