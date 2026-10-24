# IsAffineOpen.isLocalization_stalk_aux'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "941355433d09b45c53809ac658b279827279d001",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 630,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8ae7ff00ceca27aeed5508522683451ddb8ab3b9d3e1cba4ecf6f08ddf675031.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ab123c65-1474-231c-faab-3c7a213e2ac8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:36ff9ab0-0f82-6d35-1fce-fd2538f376e8",
  "kind": "theorem",
  "lexical_name": "IsAffineOpen.isLocalization_stalk_aux'",
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
  "slug": "isaffineopen-islocalization-stalk-aux--c49f3584f457fb4805f4a7a9",
  "source": {
    "blob": "941355433d09b45c53809ac658b279827279d001",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 660,
    "line": 630,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variant8ae7ff00ceca27aeed5508522683451ddb8ab3b9d3e1cba4ecf6f08ddf675031.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c49f3584f457fb4805f4a7a9ba36bd8794cebde6d2b6b3fd2bd90be1d67f5ae3",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineScheme/Variant8ae7ff00ceca27aeed5508522683451ddb8ab3b9d3e1cba4ecf6f08ddf675031.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36ff9ab0-0f82-6d35-1fce-fd2538f376e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 630–660.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsAffineOpen.isLocalization_stalk_aux' {X : Scheme} {U : Opens X} (hU : IsAffineOpen U)
    (y : PrimeSpectrum (X.presheaf.obj <| op U)) (hy : hU.fromSpec.1.base y ∈ U) :
    hU.fromSpec.val.c.app (op U) ≫ (Scheme.Spec.obj <| op (X.presheaf.obj <| op U)).presheaf.germ
      (U := (Opens.map hU.fromSpec.val.base).obj U) ⟨y, hy⟩ =
    StructureSheaf.toStalk (X.presheaf.obj <| op U) y := by
  haveI : IsAffine _ := hU
  delta IsAffineOpen.fromSpec Scheme.isoSpec StructureSheaf.toStalk
  simp only [Scheme.comp_val_c_app, Category.assoc]
  dsimp only [Functor.op, asIso_inv, unop_op]
  erw [IsAffineOpen.isLocalization_stalk_aux]
  simp only [Category.assoc]
  conv_lhs => rw [← Category.assoc]
  erw [← X.presheaf.map_comp, Spec_Γ_naturality_assoc]
  congr 1
  simp only [← Category.assoc]
  convert
    (Spec.structureSheaf (X.presheaf.obj <| op U)).presheaf.germ_res
      (U := (Opens.map hU.fromSpec.val.base).obj U) (homOfLE le_top) ⟨y, hy⟩ using 2
  rw [Category.assoc]
  erw [NatTrans.naturality]
  rw [← LocallyRingedSpace.Γ_map_op, ← LocallyRingedSpace.Γ.map_comp_assoc, ← op_comp]
  erw [← Scheme.Spec.map_comp]
  rw [← op_comp, ← X.presheaf.map_comp]
  convert_to LocallyRingedSpace.Γ.map
    (Quiver.Hom.op <| Scheme.Spec.map (X.presheaf.map (𝟙 (op U))).op) ≫ _ = _
  simp only [CategoryTheory.Functor.map_id, op_id]
  erw [CategoryTheory.Functor.map_id]
  rw [Category.id_comp]
  rfl

set_option maxHeartbeats 800000 in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineScheme/Variant8ae7ff00ceca27aeed5508522683451ddb8ab3b9d3e1cba4ecf6f08ddf675031.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variant8ae7ff00ceca27aeed5508522683451ddb8ab3b9d3e1cba4ecf6f08ddf675031.lean#L630).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `941355433d09b45c53809ac658b279827279d001` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
