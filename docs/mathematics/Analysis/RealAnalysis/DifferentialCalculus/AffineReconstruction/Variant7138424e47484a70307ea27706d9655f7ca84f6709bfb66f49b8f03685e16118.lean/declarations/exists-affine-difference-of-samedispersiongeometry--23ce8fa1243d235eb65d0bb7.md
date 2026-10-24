# exists_affine_difference_of_sameDispersionGeometry

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
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/7138424e47484a70307ea27706d9655f7ca84f6709bfb66f49b8f03685e16118.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:12b225a7-b27c-2b21-bede-7b8f30eda53b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ea87bdfa-896e-d890-9e15-69232c358a7e",
  "kind": "theorem",
  "lexical_name": "exists_affine_difference_of_sameDispersionGeometry",
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
  "slug": "exists-affine-difference-of-samedispersiongeometry--23ce8fa1243d235eb65d0bb7",
  "source": {
    "blob": "d7c79497fed4c76bc4cefc259b9b66f048157485",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 69,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant7138424e47484a70307ea27706d9655f7ca84f6709bfb66f49b8f03685e16118.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23ce8fa1243d235eb65d0bb771cd3b4fd2aa31a4b39bbb541505478557c5f120",
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

Occurrence: `result:ea87bdfa-896e-d890-9e15-69232c358a7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_affine_difference_of_sameDispersionGeometry
    {D₁ D₂ : AnalyticDispersionReconstruction E}
    (h : SameDispersionGeometry D₁ D₂) :
    ∃ (ell : E →L[ℝ] ℝ) (c : ℝ), ∀ x : E,
      D₁.gradient x = D₂.gradient x + ell ∧
      D₁.potential x = D₂.potential x + ell x + c := by
  obtain ⟨ell, hgrad⟩ :=
    exists_gradient_affine_shift_of_sameDispersionGeometry h
  let shiftedPotential : E → ℝ := fun x => D₂.potential x + ell x
  have hd₁ : Differentiable ℝ D₁.potential :=
    fun x => (D₁.potential_hasFDeriv x).differentiableAt
  have hshifted : Differentiable ℝ shiftedPotential := by
    intro x
    exact ((D₂.potential_hasFDeriv x).add ell.hasFDerivAt).differentiableAt
  have hfderiv : ∀ x : E,
      fderiv ℝ D₁.potential x =
        fderiv ℝ shiftedPotential x := by
    intro x
    have hs :
        fderiv ℝ shiftedPotential x =
          D₂.gradient x + ell := by
      exact ((D₂.potential_hasFDeriv x).add ell.hasFDerivAt).fderiv
    rw [D₁.fderiv_potential_eq, hgrad x, hs]
  obtain ⟨c, hc⟩ :=
    isOpen_univ.exists_eq_add_of_fderiv_eq
      isPreconnected_univ hd₁.differentiableOn
      hshifted.differentiableOn (fun x _ => hfderiv x)
  refine ⟨ell, c, ?_⟩
  intro x
  constructor
  · exact hgrad x
  · have hx := hc (Set.mem_univ x)
    simpa [shiftedPotential, add_assoc] using hx

/-- Equivalent subtraction form of the affine reconstruction theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant7138424e47484a70307ea27706d9655f7ca84f6709bfb66f49b8f03685e16118.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AffineReconstruction/Variant7138424e47484a70307ea27706d9655f7ca84f6709bfb66f49b8f03685e16118.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7c79497fed4c76bc4cefc259b9b66f048157485` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
