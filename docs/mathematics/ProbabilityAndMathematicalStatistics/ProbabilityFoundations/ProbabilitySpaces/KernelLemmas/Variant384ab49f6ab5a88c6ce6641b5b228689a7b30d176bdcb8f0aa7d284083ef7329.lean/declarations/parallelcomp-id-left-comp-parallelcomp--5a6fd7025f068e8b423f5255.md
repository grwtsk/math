# parallelComp_id_left_comp_parallelComp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89d76489-f1ce-1dcd-caab-a0a516d807e3",
  "kind": "lemma",
  "lexical_name": "parallelComp_id_left_comp_parallelComp",
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
  "slug": "parallelcomp-id-left-comp-parallelcomp--5a6fd7025f068e8b423f5255",
  "source": {
    "blob": "1dbd3b119f64c29a1fa64360c0d6e6b0c16b8380",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 88,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/KernelLemmas/Variant384ab49f6ab5a88c6ce6641b5b228689a7b30d176bdcb8f0aa7d284083ef7329.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a6fd7025f068e8b423f5255f26f898eb4133c6d664ec052d0d6a919633d175e",
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

Occurrence: `result:89d76489-f1ce-1dcd-caab-a0a516d807e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma parallelComp_id_left_comp_parallelComp
    {η : Kernel X' Z} [IsSFiniteKernel η] {ξ : Kernel Z T} [IsSFiniteKernel ξ] :
    (Kernel.id ∥ₖ ξ) ∘ₖ (κ ∥ₖ η) = κ ∥ₖ (ξ ∘ₖ η) := by
  by_cases hκ : IsSFiniteKernel κ
  swap; · simp [hκ]
  ext a s hs
  rw [comp_apply' _ _ _ hs, parallelComp_apply,
    MeasureTheory.lintegral_prod _ (Kernel.measurable_coe _ hs).aemeasurable]
  rw [parallelComp_apply, Measure.prod_apply hs]
  congr with x
  rw [comp_apply' _ _ _ (measurable_prodMk_left hs)]
  congr with y
  rw [parallelComp_apply' hs, Kernel.id_apply,
    lintegral_dirac' _ (measurable_measure_prodMk_left hs)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/KernelLemmas/Variant384ab49f6ab5a88c6ce6641b5b228689a7b30d176bdcb8f0aa7d284083ef7329.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/KernelLemmas/Variant384ab49f6ab5a88c6ce6641b5b228689a7b30d176bdcb8f0aa7d284083ef7329.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1dbd3b119f64c29a1fa64360c0d6e6b0c16b8380` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
