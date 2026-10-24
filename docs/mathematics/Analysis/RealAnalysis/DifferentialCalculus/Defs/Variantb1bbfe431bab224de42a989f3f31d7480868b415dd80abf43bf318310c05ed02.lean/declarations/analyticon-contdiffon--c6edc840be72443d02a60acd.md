# AnalyticOn.contDiffOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4ab507f7d08758f6092f4529f1eb045208584f61",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 706,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b1bbfe431bab224de42a989f3f31d7480868b415dd80abf43bf318310c05ed02.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:78512f62-5ee6-3849-c83e-1c840a983601",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d81804a-3c5c-772a-280e-e778a348b71d",
  "kind": "theorem",
  "lexical_name": "AnalyticOn.contDiffOn",
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
  "slug": "analyticon-contdiffon--c6edc840be72443d02a60acd",
  "source": {
    "blob": "4ab507f7d08758f6092f4529f1eb045208584f61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 717,
    "line": 706,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantb1bbfe431bab224de42a989f3f31d7480868b415dd80abf43bf318310c05ed02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6edc840be72443d02a60acd78df6a7eaec6562c1095c23fb380dde89bfc5d2e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantb1bbfe431bab224de42a989f3f31d7480868b415dd80abf43bf318310c05ed02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d81804a-3c5c-772a-280e-e778a348b71d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 706–717.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AnalyticOn.contDiffOn (h : AnalyticOn 𝕜 f s) (hs : UniqueDiffOn 𝕜 s) :
    ContDiffOn 𝕜 n f s := by
  suffices ContDiffOn 𝕜 ω f s from this.of_le le_top
  rcases h.exists_hasFTaylorSeriesUpToOn hs with ⟨p, hp⟩
  intro x hx
  refine ⟨s, ?_, p, hp⟩
  rw [insert_eq_of_mem hx]
  exact self_mem_nhdsWithin

/-- On a set with unique differentiability, an analytic function is automatically `C^ω`, as its
successive derivatives are also analytic. This does not require completeness of the space. See
also `AnalyticOnNhd.contDiffOn_of_completeSpace`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantb1bbfe431bab224de42a989f3f31d7480868b415dd80abf43bf318310c05ed02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantb1bbfe431bab224de42a989f3f31d7480868b415dd80abf43bf318310c05ed02.lean#L706).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ab507f7d08758f6092f4529f1eb045208584f61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
