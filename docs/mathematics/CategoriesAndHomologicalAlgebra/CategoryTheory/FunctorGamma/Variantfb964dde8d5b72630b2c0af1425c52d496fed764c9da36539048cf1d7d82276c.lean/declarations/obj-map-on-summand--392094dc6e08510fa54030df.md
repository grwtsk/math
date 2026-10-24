# Obj.map_on_summand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9c97a363cb05fb590c5bebbe6516853faab1bf17",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 230,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fb964dde8d5b72630b2c0af1425c52d496fed764c9da36539048cf1d7d82276c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ebec4345-63a5-d569-1fcc-7fc275abc5e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e1518f9f-6844-9850-1201-246ec3d5f59d",
  "kind": "theorem",
  "lexical_name": "Obj.map_on_summand",
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
  "slug": "obj-map-on-summand--392094dc6e08510fa54030df",
  "source": {
    "blob": "9c97a363cb05fb590c5bebbe6516853faab1bf17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 230,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variantfb964dde8d5b72630b2c0af1425c52d496fed764c9da36539048cf1d7d82276c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:392094dc6e08510fa54030df88fbf8711fa55d42437bd01c9a3e75127e3acd97",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variantfb964dde8d5b72630b2c0af1425c52d496fed764c9da36539048cf1d7d82276c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1518f9f-6844-9850-1201-246ec3d5f59d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Obj.map_on_summand {Δ Δ' : SimplexCategoryᵒᵖ} (A : Splitting.IndexSet Δ) (θ : Δ ⟶ Δ')
    {Δ'' : SimplexCategory} {e : Δ'.unop ⟶ Δ''} {i : Δ'' ⟶ A.1.unop} [Epi e] [Mono i]
    (fac : e ≫ i = θ.unop ≫ A.e) :
    ((Γ₀.splitting K).cofan Δ).inj A ≫ (Γ₀.obj K).map θ =
      Γ₀.Obj.Termwise.mapMono K i ≫ ((Γ₀.splitting K).cofan Δ').inj (Splitting.IndexSet.mk e) := by
  dsimp [Splitting.cofan]
  change (_ ≫ (Γ₀.obj K).map A.e.op) ≫ (Γ₀.obj K).map θ = _
  rw [assoc, ← Functor.map_comp]
  dsimp [splitting]
  rw [Γ₀.Obj.map_on_summand₀ K (Splitting.IndexSet.id A.1)
    (show e ≫ i = ((Splitting.IndexSet.e A).op ≫ θ).unop ≫ 𝟙 _ by rw [comp_id, fac]; rfl)]
  dsimp only [Splitting.IndexSet.id_fst, Splitting.IndexSet.mk, op_unop, Splitting.IndexSet.e]
  rw [Γ₀.Obj.map_on_summand₀ K (Splitting.IndexSet.id (op Δ''))
      (show e ≫ 𝟙 Δ'' = e.op.unop ≫ 𝟙 _ by simp), Termwise.mapMono_id]
  dsimp only [Splitting.IndexSet.id_fst]
  rw [id_comp]
  rfl

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variantfb964dde8d5b72630b2c0af1425c52d496fed764c9da36539048cf1d7d82276c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variantfb964dde8d5b72630b2c0af1425c52d496fed764c9da36539048cf1d7d82276c.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c97a363cb05fb590c5bebbe6516853faab1bf17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
