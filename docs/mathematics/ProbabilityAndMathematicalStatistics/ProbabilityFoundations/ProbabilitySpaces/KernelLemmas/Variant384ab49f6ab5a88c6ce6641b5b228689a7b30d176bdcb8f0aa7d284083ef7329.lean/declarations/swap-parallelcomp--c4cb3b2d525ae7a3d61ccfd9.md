# swap_parallelComp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:205db36b-441a-99ce-952d-2626e114694e",
  "kind": "lemma",
  "lexical_name": "swap_parallelComp",
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
  "slug": "swap-parallelcomp--c4cb3b2d525ae7a3d61ccfd9",
  "source": {
    "blob": "1dbd3b119f64c29a1fa64360c0d6e6b0c16b8380",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 67,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/KernelLemmas/Variant384ab49f6ab5a88c6ce6641b5b228689a7b30d176bdcb8f0aa7d284083ef7329.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4cb3b2d525ae7a3d61ccfd9ee1fc7f8fe994d4053cdfc4b52ba45a6d47d01e8",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/KernelLemmas/Variant384ab49f6ab5a88c6ce6641b5b228689a7b30d176bdcb8f0aa7d284083ef7329.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:205db36b-441a-99ce-952d-2626e114694e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma swap_parallelComp : swap Y T ∘ₖ (κ ∥ₖ η) = η ∥ₖ κ ∘ₖ swap X Z := by
  by_cases hκ : IsSFiniteKernel κ
  swap; · simp [hκ]
  by_cases hη : IsSFiniteKernel η
  swap; · simp [hη]
  ext ac s hs
  simp_rw [comp_apply, parallelComp_apply, Measure.bind_apply hs (Kernel.aemeasurable _),
    swap_apply, lintegral_dirac' _ (Kernel.measurable_coe _ hs), parallelComp_apply' hs,
    Prod.fst_swap, Prod.snd_swap]
  rw [MeasureTheory.lintegral_prod_symm]
  swap; · exact ((Kernel.id.measurable_coe hs).comp measurable_swap).aemeasurable
  congr with d
  simp_rw [Prod.swap_prod_mk, Measure.dirac_apply' _ hs, ← Set.indicator_comp_right,
    lintegral_indicator (measurable_prodMk_left hs)]
  simp

section ParallelComp

variable {X' Y' Z' : Type*} {mX' : MeasurableSpace X'} {mY' : MeasurableSpace Y'}
  {mZ' : MeasurableSpace Z'}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/KernelLemmas/Variant384ab49f6ab5a88c6ce6641b5b228689a7b30d176bdcb8f0aa7d284083ef7329.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/KernelLemmas/Variant384ab49f6ab5a88c6ce6641b5b228689a7b30d176bdcb8f0aa7d284083ef7329.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1dbd3b119f64c29a1fa64360c0d6e6b0c16b8380` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
