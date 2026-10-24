# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad3b79e5a3a53e9fd8ce54f3bfcc305ae5f7a21b972e119f558ecaa376735a39",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--edf7d916a336ecf6ef09f2d3",
  "source": {
    "blob": "6fe40105c38bc5c4f963aadce4a70bf3766ce194",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 162,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ParallelComp/Variant8afb3058721eb7f37f8e868097e5277bcced0c846003433b1eaf2996e7c0bd15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:edf7d916a336ecf6ef09f2d3372988d728c79716a9bae7c9b44d5a439b315a7c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ParallelComp/Variant8afb3058721eb7f37f8e868097e5277bcced0c846003433b1eaf2996e7c0bd15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad3b79e5a3a53e9fd8ce54f3bfcc305ae5f7a21b972e119f558ecaa376735a39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : IsSFiniteKernel (κ ∥ₖ η) := by
  by_cases h : IsSFiniteKernel κ
  swap
  · simp only [h, not_false_eq_true, parallelComp_of_not_isSFiniteKernel_left]
    infer_instance
  by_cases h : IsSFiniteKernel η
  swap
  · simp only [h, not_false_eq_true, parallelComp_of_not_isSFiniteKernel_right]
    infer_instance
  simp_rw [← kernel_sum_seq κ, ← kernel_sum_seq η, parallelComp_sum_left, parallelComp_sum_right]
  infer_instance

end ProbabilityTheory.Kernel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ParallelComp/Variant8afb3058721eb7f37f8e868097e5277bcced0c846003433b1eaf2996e7c0bd15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ParallelComp/Variant8afb3058721eb7f37f8e868097e5277bcced0c846003433b1eaf2996e7c0bd15.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fe40105c38bc5c4f963aadce4a70bf3766ce194` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
