# continuousWithinAt_of_locally_uniform_approx_of_continuousWithinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d6e8341515dd8ed2978f40a54d4141d1a9c294ef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e49433d80f69b92eaeacfbb00e1090bba0d7cc14345fba78e203c8fc3013483a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d0468d3c-edb0-3cb9-9ea8-4135a8c5aedb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e13d3e5c-2cfa-789f-2acd-3b5367e3cf3e",
  "kind": "theorem",
  "lexical_name": "continuousWithinAt_of_locally_uniform_approx_of_continuousWithinAt",
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
  "slug": "continuouswithinat-of-locally-uniform-approx-of-continuouswithinat--d14e88a00a807e4280d09541",
  "source": {
    "blob": "d6e8341515dd8ed2978f40a54d4141d1a9c294ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 38,
    "path": "GRWTSK/Topology/GeneralTopology/UniformApproximation/Variante49433d80f69b92eaeacfbb00e1090bba0d7cc14345fba78e203c8fc3013483a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d14e88a00a807e4280d095410a1af287c845c1542ea4c7f2bbacfbaef7596ed1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformApproximation/Variante49433d80f69b92eaeacfbb00e1090bba0d7cc14345fba78e203c8fc3013483a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e13d3e5c-2cfa-789f-2acd-3b5367e3cf3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousWithinAt_of_locally_uniform_approx_of_continuousWithinAt (hx : x ∈ s)
    (L : ∀ u ∈ 𝓤 β, ∃ t ∈ 𝓝[s] x, ∃ F : α → β, ContinuousWithinAt F s x ∧ ∀ y ∈ t, (f y, F y) ∈ u) :
    ContinuousWithinAt f s x := by
  refine Uniform.continuousWithinAt_iff'_left.2 fun u₀ hu₀ => ?_
  obtain ⟨u₁, h₁, u₁₀⟩ : ∃ u ∈ 𝓤 β, u ○ u ⊆ u₀ := comp_mem_uniformity_sets hu₀
  obtain ⟨u₂, h₂, hsymm, u₂₁⟩ : ∃ u ∈ 𝓤 β, (∀ {a b}, (a, b) ∈ u → (b, a) ∈ u) ∧ u ○ u ⊆ u₁ :=
    comp_symm_of_uniformity h₁
  rcases L u₂ h₂ with ⟨t, tx, F, hFc, hF⟩
  have A : ∀ᶠ y in 𝓝[s] x, (f y, F y) ∈ u₂ := Eventually.mono tx hF
  have B : ∀ᶠ y in 𝓝[s] x, (F y, F x) ∈ u₂ := Uniform.continuousWithinAt_iff'_left.1 hFc h₂
  have C : ∀ᶠ y in 𝓝[s] x, (f y, F x) ∈ u₁ :=
    (A.and B).mono fun y hy => u₂₁ (prodMk_mem_compRel hy.1 hy.2)
  have : (F x, f x) ∈ u₁ :=
    u₂₁ (prodMk_mem_compRel (refl_mem_uniformity h₂) (hsymm (A.self_of_nhdsWithin hx)))
  exact C.mono fun y hy => u₁₀ (prodMk_mem_compRel hy this)

/-- A function which can be locally uniformly approximated by functions which are continuous at
a point is continuous at this point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UniformApproximation/Variante49433d80f69b92eaeacfbb00e1090bba0d7cc14345fba78e203c8fc3013483a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformApproximation/Variante49433d80f69b92eaeacfbb00e1090bba0d7cc14345fba78e203c8fc3013483a.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6e8341515dd8ed2978f40a54d4141d1a9c294ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
