# exists_gradient_affine_shift_of_sameDispersionGeometry

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
      "line": 45,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/7138424e47484a70307ea27706d9655f7ca84f6709bfb66f49b8f03685e16118.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:03bc1f5e-8215-12d1-192e-b292fd350463",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b9968e25-e009-f765-0d8e-c2c0078a386d",
  "kind": "theorem",
  "lexical_name": "exists_gradient_affine_shift_of_sameDispersionGeometry",
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
  "slug": "exists-gradient-affine-shift-of-samedispersiongeometry--1c1758713dbdef5d87908e09",
  "source": {
    "blob": "d7c79497fed4c76bc4cefc259b9b66f048157485",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 45,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant7138424e47484a70307ea27706d9655f7ca84f6709bfb66f49b8f03685e16118.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c1758713dbdef5d87908e09f3762484ed6948c374c2628eb7e1bc88798d3a5b",
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

Occurrence: `result:b9968e25-e009-f765-0d8e-c2c0078a386d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_gradient_affine_shift_of_sameDispersionGeometry
    {D₁ D₂ : AnalyticDispersionReconstruction E}
    (h : SameDispersionGeometry D₁ D₂) :
    ∃ ell : E →L[ℝ] ℝ, ∀ x : E,
      D₁.gradient x = D₂.gradient x + ell := by
  have hd₁ : Differentiable ℝ D₁.gradient :=
    fun x => (D₁.gradient_hasFDeriv x).differentiableAt
  have hd₂ : Differentiable ℝ D₂.gradient :=
    fun x => (D₂.gradient_hasFDeriv x).differentiableAt
  have hfderiv : ∀ x : E,
      fderiv ℝ D₁.gradient x = fderiv ℝ D₂.gradient x := by
    intro x
    rw [D₁.fderiv_gradient_eq, D₂.fderiv_gradient_eq,
      hessian_eq_of_sameDispersionGeometry h x]
  obtain ⟨ell, hell⟩ :=
    isOpen_univ.exists_eq_add_of_fderiv_eq
      isPreconnected_univ hd₁.differentiableOn hd₂.differentiableOn
      (fun x _ => hfderiv x)
  refine ⟨ell, ?_⟩
  intro x
  exact hell (Set.mem_univ x)

/-- Equal dispersion geometry reconstructs the potentials up to one global
affine functional. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant7138424e47484a70307ea27706d9655f7ca84f6709bfb66f49b8f03685e16118.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant7138424e47484a70307ea27706d9655f7ca84f6709bfb66f49b8f03685e16118.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7c79497fed4c76bc4cefc259b9b66f048157485` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
