# QuasicoherentData.bind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c147b2140eaefac3c2039294e9fc071e824edfb68b691d66c69c561cbf9e6cc6",
  "kind": "def",
  "lexical_name": "QuasicoherentData.bind",
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
  "slug": "quasicoherentdata-bind--963a678e7e35e1fd89093115",
  "source": {
    "blob": "31970a43c74f2305849a8e268639116d24d6d885",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 451,
    "line": 437,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variant70d131c281159fca682050db890339658aaf1998dbc935fd2e7bab3bab95d08b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:963a678e7e35e1fd89093115cc2f7bd4693380457e089ef80d81a463e5a15dbc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variant70d131c281159fca682050db890339658aaf1998dbc935fd2e7bab3bab95d08b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c147b2140eaefac3c2039294e9fc071e824edfb68b691d66c69c561cbf9e6cc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 437–451.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def QuasicoherentData.bind {R : Sheaf J RingCat.{u}}
    (M : SheafOfModules.{u} R) {I : Type u}
    (X : I → C) (hX : J.CoversTop X) (D : Π i, QuasicoherentData (M.over (X i))) :
    M.QuasicoherentData where
  I := (i : I) × (D i).I
  X ij := ((D ij.1).X ij.2).left
  coversTop := hX.over (fun i ↦ (D i).coversTop)
  presentation i :=
    letI e := pushforwardPushforwardEquivalence (Over.iteratedSliceEquiv ((D i.1).X i.2))
      (S := (R.over _).over _) (R := R.over _) (𝟙 _) (𝟙 _)
      (by ext : 2; exact R.1.map_id _) (by ext : 2; exact R.1.map_id _)
    (((D i.1).presentation i.2).map e.inverse (.refl _)).ofIsIso
      (e.fullyFaithfulFunctor.preimageIso
      (by exact e.counitIso.app ((M.over (X i.1)).over ((D i.1).X i.2)))).hom

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variant70d131c281159fca682050db890339658aaf1998dbc935fd2e7bab3bab95d08b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variant70d131c281159fca682050db890339658aaf1998dbc935fd2e7bab3bab95d08b.lean#L437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31970a43c74f2305849a8e268639116d24d6d885` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
