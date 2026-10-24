# unique_knowledge_gluing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8931de1a-4a5a-fd13-1905-29d0f51bc841",
  "kind": "theorem",
  "lexical_name": "unique_knowledge_gluing",
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
  "slug": "unique-knowledge-gluing--f90644bbaf396ce78b2a74a6",
  "source": {
    "blob": "cbb9cd15758720b62b1f788e23ad9874ee597352",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 51,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibGluing/Variantc7795fc8d3710de24a10dd25dd91cd2d1373e515f1a6b9f031c4175f276e5fb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f90644bbaf396ce78b2a74a60e4e82f3bc10ce97673150f1d538a4ad3b03b79f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibGluing/Variantc7795fc8d3710de24a10dd25dd91cd2d1373e515f1a6b9f031c4175f276e5fb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8931de1a-4a5a-fd13-1905-29d0f51bc841`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unique_knowledge_gluing
    {C : Type u} [Category.{v} C]
    {J : GrothendieckTopology C}
    (F : CategoryTheory.Sheaf J (Type u))
    (condition : KnowledgeGluingCondition F)
    (U : C) (S : Sieve U) (hS : S ∈ J U)
    (x : ∀ ⦃V : C⦄ (f : V ⟶ U),
      S f → F.val.obj (Opposite.op V))
    (compatible :
      ∀ ⦃V₁ V₂ W : C⦄
        (f₁ : V₁ ⟶ U) (f₂ : V₂ ⟶ U)
        (hf₁ : S f₁) (hf₂ : S f₂)
        (g₁ : W ⟶ V₁) (g₂ : W ⟶ V₂),
        g₁ ≫ f₁ = g₂ ≫ f₂ →
          F.val.map g₁.op (x f₁ hf₁) =
          F.val.map g₂.op (x f₂ hf₂)) :
    ExistsUnique
      (fun globalSection : F.val.obj (Opposite.op U) =>
        ∀ ⦃V : C⦄ (f : V ⟶ U) (hf : S f),
          F.val.map f.op globalSection = x f hf) :=
by
  exact condition.uniqueGluing U S hS x compatible

end Think.Knowledge.Sheaf
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibGluing/Variantc7795fc8d3710de24a10dd25dd91cd2d1373e515f1a6b9f031c4175f276e5fb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibGluing/Variantc7795fc8d3710de24a10dd25dd91cd2d1373e515f1a6b9f031c4175f276e5fb2.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbb9cd15758720b62b1f788e23ad9874ee597352` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
