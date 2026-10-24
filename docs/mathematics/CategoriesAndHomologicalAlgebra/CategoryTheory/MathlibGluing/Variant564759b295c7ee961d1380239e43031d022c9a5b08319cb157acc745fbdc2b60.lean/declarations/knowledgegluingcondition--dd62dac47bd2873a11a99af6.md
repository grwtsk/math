# KnowledgeGluingCondition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b18427cdadfd9a575928d2c1f7f4f8b49385c683099acd52cabd0635999d131f",
  "kind": "structure",
  "lexical_name": "KnowledgeGluingCondition",
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
  "slug": "knowledgegluingcondition--dd62dac47bd2873a11a99af6",
  "source": {
    "blob": "2fbf548ba1f7a2ea8574992bb7d8d2410602d9f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 18,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibGluing/Variant564759b295c7ee961d1380239e43031d022c9a5b08319cb157acc745fbdc2b60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd62dac47bd2873a11a99af6968647a9d7c399b288dcc536f461c7585190d532",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibGluing/Variant564759b295c7ee961d1380239e43031d022c9a5b08319cb157acc745fbdc2b60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b18427cdadfd9a575928d2c1f7f4f8b49385c683099acd52cabd0635999d131f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure KnowledgeGluingCondition
    {C : Type u} [Category.{v} C]
    {J : GrothendieckTopology C}
    (F : CategoryTheory.Sheaf J (Type u)) where
  uniqueGluing :
    ∀ (U : C) (S : Sieve U), S ∈ J U →
    ∀
      (x : ∀ ⦃V : C⦄ (f : V ⟶ U),
        S f → F.val.obj (Opposite.op V)),
    (∀ ⦃V₁ V₂ W : C⦄
      (f₁ : V₁ ⟶ U) (f₂ : V₂ ⟶ U)
      (hf₁ : S f₁) (hf₂ : S f₂)
      (g₁ : W ⟶ V₁) (g₂ : W ⟶ V₂),
      g₁ ≫ f₁ = g₂ ≫ f₂ →
        F.val.map g₁.op (x f₁ hf₁) =
        F.val.map g₂.op (x f₂ hf₂)) →
    ExistsUnique
      (fun globalSection : F.val.obj (Opposite.op U) =>
        ∀ ⦃V : C⦄ (f : V ⟶ U) (hf : S f),
          F.val.map f.op globalSection = x f hf)

/--
Sheaf gluing invariant: compatible local sections over a covering sieve uniquely
glue into one globally coherent Knowledge section.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibGluing/Variant564759b295c7ee961d1380239e43031d022c9a5b08319cb157acc745fbdc2b60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibGluing/Variant564759b295c7ee961d1380239e43031d022c9a5b08319cb157acc745fbdc2b60.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fbf548ba1f7a2ea8574992bb7d8d2410602d9f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
