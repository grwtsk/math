# splitting_map_eq_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7e85d31df611fe20ea421061bff3676808c8f9e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 235,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/93a8d8eeeefe48dbebc3206c3acc36ab8bc6d551f3e825296f1d5da4ef834f21.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:49ee6c5e-f8cd-3bc2-f317-1df51edfe746",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:163c6327-f19f-cd7f-4435-9bc45f28b810",
  "kind": "theorem",
  "lexical_name": "splitting_map_eq_id",
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
  "slug": "splitting-map-eq-id--11a5255c3dcdb58496b6873e",
  "source": {
    "blob": "7e85d31df611fe20ea421061bff3676808c8f9e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 235,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variant93a8d8eeeefe48dbebc3206c3acc36ab8bc6d551f3e825296f1d5da4ef834f21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11a5255c3dcdb58496b6873efa383f390c8c79ed3ddbe15a66fd14ea4653dafe",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variant93a8d8eeeefe48dbebc3206c3acc36ab8bc6d551f3e825296f1d5da4ef834f21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:163c6327-f19f-cd7f-4435-9bc45f28b810`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem splitting_map_eq_id (Δ : SimplexCategoryᵒᵖ) :
    SimplicialObject.Splitting.map (Γ₀.obj K)
        (fun n : ℕ => Sigma.ι (Γ₀.Obj.summand K (op [n])) (Splitting.IndexSet.id (op [n]))) Δ =
      𝟙 _ := colimit.hom_ext (fun ⟨A⟩ => by
  induction' Δ using Opposite.rec' with Δ
  induction' Δ using SimplexCategory.rec with n
  dsimp [Splitting.map]
  simp only [colimit.ι_desc, Cofan.mk_ι_app, Γ₀.obj_map]
  erw [Γ₀.Obj.map_on_summand₀ K (SimplicialObject.Splitting.IndexSet.id A.1)
      (show A.e ≫ 𝟙 _ = A.e.op.unop ≫ 𝟙 _ by rfl),
    Γ₀.Obj.Termwise.mapMono_id, A.ext', id_comp, comp_id]
  rfl)
#align algebraic_topology.dold_kan.Γ₀.splitting_map_eq_id AlgebraicTopology.DoldKan.Γ₀.splitting_map_eq_id

/-- By construction, the simplicial `Γ₀.obj K` is equipped with a splitting. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variant93a8d8eeeefe48dbebc3206c3acc36ab8bc6d551f3e825296f1d5da4ef834f21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variant93a8d8eeeefe48dbebc3206c3acc36ab8bc6d551f3e825296f1d5da4ef834f21.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e85d31df611fe20ea421061bff3676808c8f9e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
