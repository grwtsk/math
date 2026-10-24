# lift_desc_f

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7fd925f7157706b3a4a8db9bc5fa33bc3d9698fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 566,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4db6d463c22f0a35187a4f0d2c2868cd3142d8b1671fa63938476ae163b096b7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fce1a51b-3138-aa90-9f8c-0db67a0bf2a1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba56127c-35b6-f817-9c81-0f3d0d6648d3",
  "kind": "lemma",
  "lexical_name": "lift_desc_f",
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
  "slug": "lift-desc-f--77fa89d8d1c1b49a8caae9d4",
  "source": {
    "blob": "7fd925f7157706b3a4a8db9bc5fa33bc3d9698fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 592,
    "line": 566,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/MappingCone/Variant4db6d463c22f0a35187a4f0d2c2868cd3142d8b1671fa63938476ae163b096b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77fa89d8d1c1b49a8caae9d44fd529d3c5063f7f682c1190502ae5dc66706f14",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/MappingCone/Variant4db6d463c22f0a35187a4f0d2c2868cd3142d8b1671fa63938476ae163b096b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba56127c-35b6-f817-9c81-0f3d0d6648d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 566–592.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lift_desc_f {K L : CochainComplex C ℤ} (α : Cocycle K F 1) (β : Cochain K G 0)
    (eq : δ 0 1 β + α.1.comp (Cochain.ofHom φ) (add_zero 1) = 0)
    (α' : Cochain F L (-1)) (β' : G ⟶ L)
    (eq' : δ (-1) 0 α' = Cochain.ofHom (φ ≫ β')) (n n' : ℤ) (hnn' : n + 1 = n') :
    (lift φ α β eq).f n ≫ (desc φ α' β' eq').f n =
    α.1.v n n' hnn' ≫ α'.v n' n (by omega) + β.v n n (add_zero n) ≫ β'.f n := by
  simp only [lift, desc, Cocycle.homOf_f, liftCocycle_coe, descCocycle_coe, Cocycle.ofHom_coe,
    liftCochain_v_descCochain_v φ α.1 β α' (Cochain.ofHom β') (zero_add 1) (neg_add_cancel 1) 0
    (add_zero 0) n n n (add_zero n) (add_zero n) n' hnn', Cochain.ofHom_v]


section

open Preadditive Category

variable (H : C ⥤ D) [H.Additive]
  [HasHomotopyCofiber ((H.mapHomologicalComplex (ComplexShape.up ℤ)).map φ)]

set_option backward.defeqAttrib.useBackward true in
/-- If `H : C ⥤ D` is an additive functor and `φ` is a morphism of cochain complexes
in `C`, this is the comparison isomorphism (in each degree `n`) between the image
by `H` of `mappingCone φ` and the mapping cone of the image by `H` of `φ`.
It is an auxiliary definition for `mapHomologicalComplexXIso` and
`mapHomologicalComplexIso`. This definition takes an extra
parameter `m : ℤ` such that `n + 1 = m` which may help getting better
definitional properties. See also the equational lemma `mapHomologicalComplexXIso_eq`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/MappingCone/Variant4db6d463c22f0a35187a4f0d2c2868cd3142d8b1671fa63938476ae163b096b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/MappingCone/Variant4db6d463c22f0a35187a4f0d2c2868cd3142d8b1671fa63938476ae163b096b7.lean#L566).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fd925f7157706b3a4a8db9bc5fa33bc3d9698fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
