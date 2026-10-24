# exists_galois_representative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e677e57bba4bf43c32315a095e9a02efd3ccd9e9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 277,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/fa328199fe816b72de75a76192c12c5acbabdfbe6d3b72a9cee97aa726a46d52.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:491d5107-69fb-5684-91ee-44c59e7d11e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3cdf177a-9069-e24e-552e-e911f0a3817e",
  "kind": "lemma",
  "lexical_name": "exists_galois_representative",
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
  "slug": "exists-galois-representative--1f2b90f19ad2123f0a4736c2",
  "source": {
    "blob": "e677e57bba4bf43c32315a095e9a02efd3ccd9e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 277,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variantfa328199fe816b72de75a76192c12c5acbabdfbe6d3b72a9cee97aa726a46d52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f2b90f19ad2123f0a4736c2a956ad6f6a6749899919092ab21353ec49a8d3d6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variantfa328199fe816b72de75a76192c12c5acbabdfbe6d3b72a9cee97aa726a46d52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3cdf177a-9069-e24e-552e-e911f0a3817e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_galois_representative (X : C) : ∃ (A : C) (a : F.obj A),
    IsGalois A ∧ Function.Bijective (fun (f : A ⟶ X) ↦ F.map f a) := by
  obtain ⟨A, u, a, h1, h2, h3⟩ := fiber_in_connected_component F (selfProd F X)
    (mkSelfProdFib F X)
  use A
  use a
  constructor
  · refine (isGalois_iff_pretransitive F A).mpr ⟨fun x y ↦ ?_⟩
    obtain ⟨fi1, hfi1⟩ := subobj_selfProd_trans h1 x
    obtain ⟨fi2, hfi2⟩ := subobj_selfProd_trans h1 y
    use fi1 ≪≫ fi2.symm
    change F.map (fi1.hom ≫ fi2.inv) x = y
    simp only [map_comp, FintypeCat.comp_apply]
    rw [hfi1, ← hfi2]
    exact ConcreteCategory.congr_hom (F.mapIso fi2).hom_inv_id y
  · refine ⟨evaluation_injective_of_isConnected F A X a, ?_⟩
    intro x
    use u ≫ Pi.π _ x
    exact (selfProdProj_fiber h1) x

/-- Any element in the fiber of an object `X` is the evaluation of a morphism from a
Galois object. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variantfa328199fe816b72de75a76192c12c5acbabdfbe6d3b72a9cee97aa726a46d52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variantfa328199fe816b72de75a76192c12c5acbabdfbe6d3b72a9cee97aa726a46d52.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e677e57bba4bf43c32315a095e9a02efd3ccd9e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
