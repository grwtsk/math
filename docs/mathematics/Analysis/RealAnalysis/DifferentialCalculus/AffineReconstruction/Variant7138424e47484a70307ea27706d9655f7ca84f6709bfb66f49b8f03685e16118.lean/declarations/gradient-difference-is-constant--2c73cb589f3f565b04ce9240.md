# gradient_difference_is_constant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d7c79497fed4c76bc4cefc259b9b66f048157485",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/7138424e47484a70307ea27706d9655f7ca84f6709bfb66f49b8f03685e16118.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e7ea03a8-6a39-8fc0-7b0b-22ebf9249372",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4916fd50-d88c-84dd-5d61-1544a36c56f5",
  "kind": "theorem",
  "lexical_name": "gradient_difference_is_constant",
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
  "slug": "gradient-difference-is-constant--2c73cb589f3f565b04ce9240",
  "source": {
    "blob": "d7c79497fed4c76bc4cefc259b9b66f048157485",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 117,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant7138424e47484a70307ea27706d9655f7ca84f6709bfb66f49b8f03685e16118.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c73cb589f3f565b04ce9240e432a5d96e1944a86325eaf92837212b9603d272",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant7138424e47484a70307ea27706d9655f7ca84f6709bfb66f49b8f03685e16118.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4916fd50-d88c-84dd-5d61-1544a36c56f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gradient_difference_is_constant
    {D₁ D₂ : AnalyticDispersionReconstruction E}
    (h : SameDispersionGeometry D₁ D₂) :
    ∃ ell : E →L[ℝ] ℝ, ∀ x : E,
      D₁.gradient x - D₂.gradient x = ell := by
  obtain ⟨ell, hgrad⟩ :=
    exists_gradient_affine_shift_of_sameDispersionGeometry h
  refine ⟨ell, ?_⟩
  intro x
  rw [hgrad x]
  abel

/-- The global reconstruction theorem: on the full vector space, same dispersion
geometry means that all potential ambiguity is affine. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant7138424e47484a70307ea27706d9655f7ca84f6709bfb66f49b8f03685e16118.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant7138424e47484a70307ea27706d9655f7ca84f6709bfb66f49b8f03685e16118.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7c79497fed4c76bc4cefc259b9b66f048157485` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
