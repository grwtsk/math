# lintegral_parallelComp_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8bfbd3d-8edd-23bc-bddb-b71220894998",
  "kind": "lemma",
  "lexical_name": "lintegral_parallelComp_symm",
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
  "slug": "lintegral-parallelcomp-symm--639ac75f4b8e0c8a286d40dc",
  "source": {
    "blob": "6caf3577b5e189c09c526d350907e745046a2fdc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 112,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ParallelComp/Variant3024454f21244cc74c84345439d8d5794714b9b3ad418ab73659247262658a7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:639ac75f4b8e0c8a286d40dcfe31cf2125d083f46a9124e58c7c34a841920691",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ParallelComp/Variant3024454f21244cc74c84345439d8d5794714b9b3ad418ab73659247262658a7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8bfbd3d-8edd-23bc-bddb-b71220894998`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lintegral_parallelComp_symm [IsSFiniteKernel κ] [IsSFiniteKernel η]
    (ac : α × γ) {g : β × δ → ℝ≥0∞} (hg : Measurable g) :
    ∫⁻ bd, g bd ∂(κ ∥ₖ η) ac = ∫⁻ d, ∫⁻ b, g (b, d) ∂κ ac.1 ∂η ac.2 := by
  rw [parallelComp_apply, MeasureTheory.lintegral_prod_symm _ hg.aemeasurable]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ParallelComp/Variant3024454f21244cc74c84345439d8d5794714b9b3ad418ab73659247262658a7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ParallelComp/Variant3024454f21244cc74c84345439d8d5794714b9b3ad418ab73659247262658a7e.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6caf3577b5e189c09c526d350907e745046a2fdc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
