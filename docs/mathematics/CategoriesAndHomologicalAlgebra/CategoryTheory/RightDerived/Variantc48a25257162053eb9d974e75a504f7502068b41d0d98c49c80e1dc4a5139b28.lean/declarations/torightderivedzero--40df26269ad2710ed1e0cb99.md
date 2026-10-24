# toRightDerivedZero'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fdb22ff13a909560f6d1695e1fbe71119fff2a214ee08ba8d53c17e75799c2ea",
  "kind": "def",
  "lexical_name": "toRightDerivedZero'",
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
  "slug": "torightderivedzero--40df26269ad2710ed1e0cb99",
  "source": {
    "blob": "edd6de2c456a25a304893d9c89c9749a29c577b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 262,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc48a25257162053eb9d974e75a504f7502068b41d0d98c49c80e1dc4a5139b28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:40df26269ad2710ed1e0cb99c5da30ab34789cedaf1b7add82d1db036ffc1c7a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc48a25257162053eb9d974e75a504f7502068b41d0d98c49c80e1dc4a5139b28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fdb22ff13a909560f6d1695e1fbe71119fff2a214ee08ba8d53c17e75799c2ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def toRightDerivedZero' {X : C}
    (P : InjectiveResolution X) (F : C ⥤ D) [F.Additive] :
    F.obj X ⟶ ((F.mapHomologicalComplex _).obj P.cocomplex).cycles 0 :=
  HomologicalComplex.liftCycles _ (F.map (P.ι.f 0)) 1 (by simp) (by
    dsimp
    rw [← F.map_comp, HomologicalComplex.Hom.comm, HomologicalComplex.single_obj_d,
      zero_comp, F.map_zero])

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc48a25257162053eb9d974e75a504f7502068b41d0d98c49c80e1dc4a5139b28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc48a25257162053eb9d974e75a504f7502068b41d0d98c49c80e1dc4a5139b28.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edd6de2c456a25a304893d9c89c9749a29c577b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
