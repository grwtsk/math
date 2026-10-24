# leftDistributor_assoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5ed8155-61e8-aecd-fffe-e13fa6afd334",
  "kind": "theorem",
  "lexical_name": "leftDistributor_assoc",
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
  "slug": "leftdistributor-assoc--03361296e7082236544dbb2c",
  "source": {
    "blob": "dc2093d709c80399a0706fd89dfc401b67d3a430",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 197,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03361296e7082236544dbb2c42bdfcb4a60211f31733a687347f58b656df4ea9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5ed8155-61e8-aecd-fffe-e13fa6afd334`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leftDistributor_assoc {J : Type} [Finite J] (X Y : C) (f : J → C) :
    (asIso (𝟙 X) ⊗ leftDistributor Y f) ≪≫ leftDistributor X _ =
      (α_ X Y (⨁ f)).symm ≪≫ leftDistributor (X ⊗ Y) f ≪≫ biproduct.mapIso fun _ => α_ X Y _ := by
  classical
  cases nonempty_fintype J
  ext
  simp only [Category.comp_id, Category.assoc, eqToHom_refl, Iso.trans_hom, Iso.symm_hom,
    asIso_hom, comp_zero, comp_dite, Preadditive.sum_comp, Preadditive.comp_sum, tensor_sum,
    id_tensor_comp, tensorIso_hom, leftDistributor_hom, biproduct.mapIso_hom, biproduct.ι_map,
    biproduct.ι_π, Finset.sum_dite_irrel, Finset.sum_dite_eq', Finset.sum_const_zero]
  simp_rw [← id_tensorHom]
  simp only [← id_tensor_comp, biproduct.ι_π]
  simp only [id_tensor_comp, tensor_dite, comp_dite]
  simp

/-- The isomorphism showing how tensor product on the right distributes over direct sums. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc2093d709c80399a0706fd89dfc401b67d3a430` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
