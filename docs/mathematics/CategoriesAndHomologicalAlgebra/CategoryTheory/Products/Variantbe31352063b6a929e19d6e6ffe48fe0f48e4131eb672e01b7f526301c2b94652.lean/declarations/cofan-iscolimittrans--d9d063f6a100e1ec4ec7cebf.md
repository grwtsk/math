# Cofan.isColimitTrans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1831acee5fab42079467ff6f74dd1e1020ecaf0614521b1f230e337cf76fbf28",
  "kind": "def",
  "lexical_name": "Cofan.isColimitTrans",
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
  "slug": "cofan-iscolimittrans--d9d063f6a100e1ec4ec7cebf",
  "source": {
    "blob": "6388f8c7a3ed47640ab3cfe274981a6edf8905cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 303,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantbe31352063b6a929e19d6e6ffe48fe0f48e4131eb672e01b7f526301c2b94652.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d9d063f6a100e1ec4ec7cebf2c18f306ff63678418f72865b46b400c66193f12",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantbe31352063b6a929e19d6e6ffe48fe0f48e4131eb672e01b7f526301c2b94652.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1831acee5fab42079467ff6f74dd1e1020ecaf0614521b1f230e337cf76fbf28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Cofan.isColimitTrans {X : α → C} (c : Cofan X) (hc : IsColimit c)
    {β : α → Type*} {Y : (a : α) → β a → C} (π : (a : α) → (b : β a) → Y a b ⟶ X a)
      (hs : ∀ a, IsColimit (Cofan.mk (X a) (π a))) :
        IsColimit (Cofan.mk (f := fun ⟨a,b⟩ => Y a b) c.pt
          (fun (⟨a, b⟩ : Σ a, _) ↦ π a b ≫ c.inj a)) := by
  refine mkCofanColimit _ ?_ ?_ ?_
  · exact fun t ↦ hc.desc (Cofan.mk _ fun a ↦ (hs a).desc (Cofan.mk t.pt (fun b ↦ t.inj ⟨a, b⟩)))
  · intro t ⟨a, b⟩
    simp only [mk_pt, cofan_mk_inj, Category.assoc]
    erw [hc.fac, (hs a).fac]
    rfl
  · intro t m h
    refine hc.hom_ext fun ⟨a⟩ ↦ (hs a).hom_ext fun ⟨b⟩ ↦ ?_
    erw [hc.fac, (hs a).fac]
    simpa using h ⟨a, b⟩

/-- Construct a morphism between categorical products (indexed by the same type)
from a family of morphisms between the factors.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantbe31352063b6a929e19d6e6ffe48fe0f48e4131eb672e01b7f526301c2b94652.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantbe31352063b6a929e19d6e6ffe48fe0f48e4131eb672e01b7f526301c2b94652.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6388f8c7a3ed47640ab3cfe274981a6edf8905cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
