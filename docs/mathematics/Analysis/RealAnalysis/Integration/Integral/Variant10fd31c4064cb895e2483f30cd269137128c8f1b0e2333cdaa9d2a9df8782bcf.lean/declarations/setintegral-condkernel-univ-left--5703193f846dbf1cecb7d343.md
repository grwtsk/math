# setIntegral_condKernel_univ_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:003a355e-ff9e-96f6-d56c-6dfb1b7b38c1",
  "kind": "lemma",
  "lexical_name": "setIntegral_condKernel_univ_left",
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
  "slug": "setintegral-condkernel-univ-left--5703193f846dbf1cecb7d343",
  "source": {
    "blob": "dfe92dbc1261cdcb5b6b96c43d6bfbcfbd97c11d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 220,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant10fd31c4064cb895e2483f30cd269137128c8f1b0e2333cdaa9d2a9df8782bcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5703193f846dbf1cecb7d34351fc3ee48019fba9e4ba444a100f300e22e130b7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integral/Variant10fd31c4064cb895e2483f30cd269137128c8f1b0e2333cdaa9d2a9df8782bcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:003a355e-ff9e-96f6-d56c-6dfb1b7b38c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma setIntegral_condKernel_univ_left {t : Set Ω} (ht : MeasurableSet t)
    (hf : IntegrableOn f (Set.univ ×ˢ t) ρ) :
    ∫ b, ∫ ω in t, f (b, ω) ∂(ρ.condKernel b) ∂ρ.fst = ∫ x in Set.univ ×ˢ t, f x ∂ρ := by
  rw [← setIntegral_condKernel MeasurableSet.univ ht hf]; simp_rw [Measure.restrict_univ]

end Integral

end MeasureTheory.Measure

namespace MeasureTheory

/-! ### Integrability

We place these lemmas in the `MeasureTheory` namespace to enable dot notation. -/

open ProbabilityTheory

variable {α Ω E F : Type*} {mα : MeasurableSpace α} [MeasurableSpace Ω]
  [StandardBorelSpace Ω] [Nonempty Ω] [NormedAddCommGroup E] [NormedSpace ℝ E]
  [NormedAddCommGroup F] {ρ : Measure (α × Ω)} [IsFiniteMeasure ρ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integral/Variant10fd31c4064cb895e2483f30cd269137128c8f1b0e2333cdaa9d2a9df8782bcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant10fd31c4064cb895e2483f30cd269137128c8f1b0e2333cdaa9d2a9df8782bcf.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfe92dbc1261cdcb5b6b96c43d6bfbcfbd97c11d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
