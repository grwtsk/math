# ofι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:852e64c8a5d709e5cd4f08baac569a2423947043e3b6cf4f9794a78a84b11b3e",
  "kind": "def",
  "lexical_name": "ofι",
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
  "slug": "of--fcd6a76cb4cd6027fdf318f1",
  "source": {
    "blob": "7bba9087fa05cdac0ba14d9e7ffbc1e577bb14a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 576,
    "line": 549,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variantc9aa13a4690b508a3b75c751b7a52385afbadcc7d3f110befc9dbbf51d051694.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fcd6a76cb4cd6027fdf318f174dad7f52e0841b8d5d3a5470920b8a43423ee2e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variantc9aa13a4690b508a3b75c751b7a52385afbadcc7d3f110befc9dbbf51d051694.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:852e64c8a5d709e5cd4f08baac569a2423947043e3b6cf4f9794a78a84b11b3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 549–576.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def ofι {J : MulticospanShape.{w, w'}} (I : MulticospanIndex J C)
    (P : C) (ι : ∀ a, P ⟶ I.left a)
    (w : ∀ b, ι (J.fst b) ≫ I.fst b = ι (J.snd b) ≫ I.snd b) : Multifork I where
  pt := P
  π :=
    { app := fun x =>
        match x with
        | WalkingMulticospan.left _ => ι _
        | WalkingMulticospan.right b => ι (J.fst b) ≫ I.fst b
      naturality := by
        #adaptation_note /-- Proof repaired after leanprover/lean4#13363.
        The proof used to finish from this point as
        ```
        rintro (_ | _) (_ | _) (_ | _ | _) <;>
          dsimp <;> simp only [Category.id_comp, Category.comp_id]
        apply w
        ```
        The replacement proof is a short-term fix, and we request that the authors/maintainers of
        this file review the proof, and either approve it by removing this note,
        revise the proof or the prerequisites appropriately, or minimize a problem in lean4 that
        still needs addressing. -/
        rintro (_ | _) (_ | _) (_ | _ | _) <;>
          simp only [WalkingMulticospan.Hom.id_eq_id,
            Functor.map_id, Functor.const_obj_map, Category.comp_id] <;>
          dsimp <;> simp only [Category.id_comp]
        apply w }

@[simp]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variantc9aa13a4690b508a3b75c751b7a52385afbadcc7d3f110befc9dbbf51d051694.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variantc9aa13a4690b508a3b75c751b7a52385afbadcc7d3f110befc9dbbf51d051694.lean#L549).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bba9087fa05cdac0ba14d9e7ffbc1e577bb14a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
