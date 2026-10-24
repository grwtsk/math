# yonedaMonObjIsoOfRepresentableBy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a83fef3522a8afe0efe0c10bad52a14e1787d6c554456243ef674ade3d7e18d7",
  "kind": "def",
  "lexical_name": "yonedaMonObjIsoOfRepresentableBy",
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
  "slug": "yonedamonobjisoofrepresentableby--ae8014a918a52a5c3e68e005",
  "source": {
    "blob": "f8c9e2efd164a1a7cc25b36ea3f194c49eeee6a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 346,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant0750f82f5b4ee573e55b2f1b89d51de615500480ebe4a402b47e6750b2c28ab1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae8014a918a52a5c3e68e0055ce9743cb49335d76348515015bec09055ace02e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant0750f82f5b4ee573e55b2f1b89d51de615500480ebe4a402b47e6750b2c28ab1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a83fef3522a8afe0efe0c10bad52a14e1787d6c554456243ef674ade3d7e18d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def yonedaMonObjIsoOfRepresentableBy
    (F : Cᵒᵖ ⥤ MonCat.{v}) (α : (F ⋙ forget _).RepresentableBy X) :
    letI := MonObj.ofRepresentableBy X F α
    yonedaMonObj X ≅ F :=
  letI := MonObj.ofRepresentableBy X F α
  NatIso.ofComponents (fun Y ↦ MulEquiv.toMonCatIso
    { toEquiv := α.homEquiv'
      map_mul' f₁ f₂ := by
        change α.homEquiv' (lift f₁ f₂ ≫ α.homEquiv'.symm (α.homEquiv' (fst X X) *
          α.homEquiv' (snd X X))) = α.homEquiv' f₁ * α.homEquiv' f₂
        simp only [α.homEquiv'_comp, Equiv.apply_symm_apply, map_mul]
        simp only [← α.homEquiv'_comp]
        simp }) (fun φ ↦ MonCat.hom_ext (MonoidHom.ext (α.homEquiv'_comp φ.unop)))

/-- The yoneda embedding of `Mon C` into presheaves of monoids. -/
@[to_additive (attr := simps)
/-- The yoneda embedding of `AddMon C` into presheaves of additive monoids. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant0750f82f5b4ee573e55b2f1b89d51de615500480ebe4a402b47e6750b2c28ab1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant0750f82f5b4ee573e55b2f1b89d51de615500480ebe4a402b47e6750b2c28ab1.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8c9e2efd164a1a7cc25b36ea3f194c49eeee6a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
