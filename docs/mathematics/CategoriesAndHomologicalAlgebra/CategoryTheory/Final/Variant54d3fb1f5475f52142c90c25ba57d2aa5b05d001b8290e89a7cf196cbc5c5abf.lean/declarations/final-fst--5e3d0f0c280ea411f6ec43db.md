# final_fst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bfe0dc3335a34771f3fc7f76faa482b6fc440d333172fe5b70cde5f2f0a00974",
  "kind": "instance",
  "lexical_name": "final_fst",
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
  "slug": "final-fst--5e3d0f0c280ea411f6ec43db",
  "source": {
    "blob": "0477b3466294fb4dd92edb20b35dac1bc4211a31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 81,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant54d3fb1f5475f52142c90c25ba57d2aa5b05d001b8290e89a7cf196cbc5c5abf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5e3d0f0c280ea411f6ec43db3cd558110cbdae3fda8152aed4cb2f0a1c5ae80d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant54d3fb1f5475f52142c90c25ba57d2aa5b05d001b8290e89a7cf196cbc5c5abf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bfe0dc3335a34771f3fc7f76faa482b6fc440d333172fe5b70cde5f2f0a00974`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance final_fst [R.Final] : (fst L R).Final := by
  let sA : A ≌ AsSmall.{max u₁ u₂ u₃ v₁ v₂ v₃} A := AsSmall.equiv
  let sB : B ≌ AsSmall.{max u₁ u₂ u₃ v₁ v₂ v₃} B := AsSmall.equiv
  let sT : T ≌ AsSmall.{max u₁ u₂ u₃ v₁ v₂ v₃} T := AsSmall.equiv
  let L' := sA.inverse ⋙ L ⋙ sT.functor
  let R' := sB.inverse ⋙ R ⋙ sT.functor
  let fC : Comma L R ⥤ Comma L' R' :=
    map (F₁ := sA.functor) (F := sT.functor) (F₂ := sB.functor)
      (isoWhiskerRight sA.unitIso (L ⋙ sT.functor)).hom
      (isoWhiskerRight sB.unitIso (R ⋙ sT.functor)).hom
  have : Final (fst L' R') := final_fst_small _ _
  apply final_of_natIso (F := (fC ⋙ fst L' R' ⋙ sA.inverse))
  exact (Functor.associator _ _ _).symm.trans (Iso.compInverseIso (mapFst _ _))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant54d3fb1f5475f52142c90c25ba57d2aa5b05d001b8290e89a7cf196cbc5c5abf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant54d3fb1f5475f52142c90c25ba57d2aa5b05d001b8290e89a7cf196cbc5c5abf.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0477b3466294fb4dd92edb20b35dac1bc4211a31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
