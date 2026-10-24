# kernelIsoKer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:25cc1a4a4245217a3b14a43a2d0202c0ee4835fb864d0b8340731605ec921613",
  "kind": "def",
  "lexical_name": "kernelIsoKer",
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
  "slug": "kernelisoker--d07c25fb4d9d420cbbc8670f",
  "source": {
    "blob": "6cba23b08ba730e01cc709e4acafae59c0667264",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 451,
    "line": 413,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d07c25fb4d9d420cbbc8670f95853501fe5e6242e7df2e0266766be5216e57b7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:25cc1a4a4245217a3b14a43a2d0202c0ee4835fb864d0b8340731605ec921613`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 413–451.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def kernelIsoKer {G H : AddCommGroupCat.{u}} (f : G ⟶ H) :
    kernel f ≅ AddCommGroupCat.of f.ker where
  hom :=
    { toFun := fun g => ⟨kernel.ι f g, FunLike.congr_fun (kernel.condition f) g⟩
      map_zero' := by
        refine Subtype.ext ?_
        simp [(AddSubgroup.coe_zero _).symm]
      map_add' := fun g g' => by
        refine Subtype.ext ?_
        change _ = _ + _
        dsimp
        simp }
  inv := kernel.lift f (AddSubgroup.subtype f.ker) <| by
    -- porting note : used to be `tidy`, but `aesop` can't do it
    refine FunLike.ext _ _ ?_
    rintro ⟨x, (hx : f _ = 0)⟩
    exact hx
  hom_inv_id := by
    -- Porting note: it would be nice to do the next two steps by a single `ext`,
    -- but this will require thinking carefully about the relative priorities of `@[ext]` lemmas.
    refine equalizer.hom_ext ?_
    ext x
    dsimp
    generalize_proofs _ h1 h2
    erw [FunLike.congr_fun (kernel.lift_ι f _ h1) ⟨_, h2⟩]
    rfl
  inv_hom_id := by
    apply AddCommGroupCat.ext
    simp only [AddMonoidHom.coe_mk, coe_id, coe_comp]
    rintro ⟨x, mem⟩
    refine Subtype.ext ?_
    simp only [ZeroHom.coe_mk, Function.comp_apply, id_eq]
    generalize_proofs _ h1 h2
    erw [FunLike.congr_fun (kernel.lift_ι f _ h1) ⟨_, mem⟩]
    rfl
set_option linter.uppercaseLean3 false in
#align AddCommGroup.kernel_iso_ker AddCommGroupCat.kernelIsoKer

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean#L413).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cba23b08ba730e01cc709e4acafae59c0667264` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
