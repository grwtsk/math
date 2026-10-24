# LinearMap.exists_linearEquiv_eq_graph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25d7be0f-95df-2fc6-55fd-3bdb6a3ef66c",
  "kind": "lemma",
  "lexical_name": "LinearMap.exists_linearEquiv_eq_graph",
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
  "slug": "linearmap-exists-linearequiv-eq-graph--04c88ba520557057302deb4b",
  "source": {
    "blob": "f73e0cb69d50ca951603d09c249bb69a15232465",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 960,
    "line": 938,
    "path": "GRWTSK/Algebra/LinearAlgebra/Prod/Variantd7f6e4ae96de25b4b2235af41c551430cd833fabef9be4f44839ec3c49666b78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04c88ba520557057302deb4b4bef58fc7f28f4da20b7d3f0d970589ef160ee88",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Prod/Variantd7f6e4ae96de25b4b2235af41c551430cd833fabef9be4f44839ec3c49666b78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25d7be0f-95df-2fc6-55fd-3bdb6a3ef66c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 938–960.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LinearMap.exists_linearEquiv_eq_graph {f : G →ₛₗ[σ] H × I} (hf₁ : Surjective (Prod.fst ∘ f))
    (hf₂ : Surjective (Prod.snd ∘ f)) (hf : ∀ g₁ g₂, (f g₁).1 = (f g₂).1 ↔ (f g₁).2 = (f g₂).2) :
    ∃ e : H ≃ₗ[S] I, range f = e.toLinearMap.graph := by
  obtain ⟨e₁, he₁⟩ := f.exists_range_eq_graph hf₁ fun _ _ ↦ (hf _ _).1
  obtain ⟨e₂, he₂⟩ := ((LinearEquiv.prodComm _ _ _).toLinearMap.comp f).exists_range_eq_graph
    (by simpa) <| by simp [hf]
  have he₁₂ h i : e₁ h = i ↔ e₂ i = h := by
    simp only [SetLike.ext_iff, LinearMap.mem_graph_iff] at he₁ he₂
    rw [Eq.comm, ← he₁ (h, i), Eq.comm, ← he₂ (i, h)]
    simp only [mem_range, coe_comp, LinearEquiv.coe_coe, Function.comp_apply,
      LinearEquiv.prodComm_apply, Prod.swap_eq_iff_eq_swap, Prod.swap_prod_mk]
  exact ⟨
  { toFun := e₁
    map_smul' := e₁.map_smul'
    map_add' := e₁.map_add'
    invFun := e₂
    left_inv := fun h ↦ by rw [← he₁₂]
    right_inv := fun i ↦ by rw [he₁₂] }, he₁⟩

/-- **Goursat's lemma** for module isomorphisms.

Let `G ≤ H × I` be a submodule of a product of modules. Assume that the natural maps from `G` to
both factors are bijective. Then `G` is the graph of some module isomorphism `f : H ≃ I`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Prod/Variantd7f6e4ae96de25b4b2235af41c551430cd833fabef9be4f44839ec3c49666b78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Prod/Variantd7f6e4ae96de25b4b2235af41c551430cd833fabef9be4f44839ec3c49666b78.lean#L938).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f73e0cb69d50ca951603d09c249bb69a15232465` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
