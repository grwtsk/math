# ContinuousAt.clm_apply_of_inCoordinates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3bcd60575268952101c9876171e5116af0dc10e3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 375,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ce33bf9c-0eef-ec4e-69fd-8a34f2927579",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0bce33e4-1a41-477d-f200-802d14261a13",
  "kind": "lemma",
  "lexical_name": "ContinuousAt.clm_apply_of_inCoordinates",
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
  "slug": "continuousat-clm-apply-of-incoordinates--28ad5f029386b7e9d23b4e4b",
  "source": {
    "blob": "3bcd60575268952101c9876171e5116af0dc10e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 416,
    "line": 375,
    "path": "GRWTSK/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28ad5f029386b7e9d23b4e4b9d3f65d4bc8d318879b2da7be5b762ed6a15ff33",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0bce33e4-1a41-477d-f200-802d14261a13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–416.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ContinuousAt.clm_apply_of_inCoordinates
    (hϕ : ContinuousAt
      (fun m ↦ inCoordinates F₁ E₁ F₂ E₂ (b₁ m₀) (b₁ m) (b₂ m₀) (b₂ m) (ϕ m)) m₀)
    (hv : ContinuousAt (fun m ↦ (v m : TotalSpace F₁ E₁)) m₀)
    (hb₂ : ContinuousAt b₂ m₀) :
    ContinuousAt (fun m ↦ (ϕ m (v m) : TotalSpace F₂ E₂)) m₀ := by
  rw [← continuousWithinAt_univ] at hϕ hv hb₂ ⊢
  exact hϕ.clm_apply_of_inCoordinates hv hb₂

end

section

/- Declare a base space `B` and three vector bundles `E₁`, `E₂` and `E₃` over `B`
(with model fibers `F₁`, `F₂` and `F₃`).

Also a second space `M`, which will be the source of all our maps.
-/
variable {𝕜 B F₁ F₂ F₃ M : Type*} [NontriviallyNormedField 𝕜] {n : WithTop ℕ∞}
  {E₁ : B → Type*}
  [∀ x, AddCommGroup (E₁ x)] [∀ x, Module 𝕜 (E₁ x)] [NormedAddCommGroup F₁] [NormedSpace 𝕜 F₁]
  [TopologicalSpace (TotalSpace F₁ E₁)] [∀ x, TopologicalSpace (E₁ x)]
  {E₂ : B → Type*} [∀ x, AddCommGroup (E₂ x)]
  [∀ x, Module 𝕜 (E₂ x)] [NormedAddCommGroup F₂] [NormedSpace 𝕜 F₂]
  [TopologicalSpace (TotalSpace F₂ E₂)] [∀ x, TopologicalSpace (E₂ x)]
  {E₃ : B → Type*} [∀ x, AddCommGroup (E₃ x)]
  [∀ x, Module 𝕜 (E₃ x)] [NormedAddCommGroup F₃] [NormedSpace 𝕜 F₃]
  [TopologicalSpace (TotalSpace F₃ E₃)] [∀ x, TopologicalSpace (E₃ x)]
  [TopologicalSpace B] [TopologicalSpace M]
  [FiberBundle F₁ E₁] [VectorBundle 𝕜 F₁ E₁]
  [FiberBundle F₂ E₂] [VectorBundle 𝕜 F₂ E₂]
  [FiberBundle F₃ E₃] [VectorBundle 𝕜 F₃ E₃]
  {b : M → B} {v : ∀ x, E₁ (b x)} {s : Set M} {x : M}

section OneVariable

variable [∀ x, IsTopologicalAddGroup (E₂ x)] [∀ x, ContinuousSMul 𝕜 (E₂ x)]
  {ϕ : ∀ x, (E₁ (b x) →L[𝕜] E₂ (b x))}

/-- Consider a `C^n` map `v : M → E₁` to a vector bundle, over a basemap `b : M → B`, and
linear maps `ϕ m : E₁ (b m) → E₂ (b m)` depending smoothly on `m`.
One can apply `ϕ m` to `v m`, and the resulting map is `C^n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bcd60575268952101c9876171e5116af0dc10e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
