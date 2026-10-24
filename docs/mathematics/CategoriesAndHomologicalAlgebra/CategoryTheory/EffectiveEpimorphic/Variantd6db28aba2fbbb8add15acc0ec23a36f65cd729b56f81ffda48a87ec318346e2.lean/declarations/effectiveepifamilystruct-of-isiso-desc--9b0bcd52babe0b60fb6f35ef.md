# EffectiveEpiFamilyStruct_of_isIso_desc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:511325e53701b401ca9d332992b931f96da0698e101e7e4bb88048a3eb3a24ff",
  "kind": "def",
  "lexical_name": "EffectiveEpiFamilyStruct_of_isIso_desc",
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
  "slug": "effectiveepifamilystruct-of-isiso-desc--9b0bcd52babe0b60fb6f35ef",
  "source": {
    "blob": "82d299e2123de55049075ce472bd145a0a8e7334",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 516,
    "line": 499,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b0bcd52babe0b60fb6f35ef239ff42b7a77e0582f83871148f921647d93733e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:511325e53701b401ca9d332992b931f96da0698e101e7e4bb88048a3eb3a24ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 499–516.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def EffectiveEpiFamilyStruct_of_isIso_desc {B : C} {α : Type*} (X : α → C)
    (π : (a : α) → (X a ⟶ B)) [HasCoproduct X] [IsIso (Sigma.desc π)] :
    EffectiveEpiFamilyStruct X π where
  desc e _ := (asIso (Sigma.desc π)).inv ≫ (Sigma.desc e)
  fac e h := by
    intro a
    have : π a = Sigma.ι X a ≫ (asIso (Sigma.desc π)).hom := by simp only [asIso_hom,
      colimit.ι_desc, Cofan.mk_pt, Cofan.mk_ι_app]
    rw [this, Category.assoc]
    simp only [asIso_hom, asIso_inv, IsIso.hom_inv_id_assoc, colimit.ι_desc, Cofan.mk_pt,
      Cofan.mk_ι_app]
  uniq e h m hm := by
    simp only [asIso_inv, IsIso.eq_inv_comp]
    ext a
    simp only [colimit.ι_desc_assoc, Discrete.functor_obj, Cofan.mk_pt, Cofan.mk_ι_app,
      colimit.ι_desc]
    exact hm a

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean#L499).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82d299e2123de55049075ce472bd145a0a8e7334` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
