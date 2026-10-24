# mapBifunctorObjSingle₀ObjIsInitial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4caebe933ba2a65d8d900d0cf83b72d297730b5a453e79ed3de283b52bfdc088",
  "kind": "def",
  "lexical_name": "mapBifunctorObjSingle₀ObjIsInitial",
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
  "slug": "mapbifunctorobjsingle-objisinitial--bb811fa48a939615c96dd5ff",
  "source": {
    "blob": "b3491e4f57a7d640cd1fa6e9ddbf7c7ea4240cfc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 48,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bb811fa48a939615c96dd5ffc40731c866f91d6087ded96a475b4fd0e9a1e424",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4caebe933ba2a65d8d900d0cf83b72d297730b5a453e79ed3de283b52bfdc088`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mapBifunctorObjSingle₀ObjIsInitial (a : I × J) (ha : a.1 ≠ 0) :
    IsInitial (((mapBifunctor F I J).obj ((single₀ I).obj X)).obj Y a) :=
  IsInitial.isInitialObj (F.flip.obj (Y a.2)) _ (isInitialSingleObjApply _ _ _ ha)

/-- Given `F : C ⥤ D ⥤ D`, `X : C`, `e : F.obj X ≅ 𝟭 D`, `Y : GradedObject J D` and
`p : I × J → J` such that `p ⟨0, j⟩ = j` for all `j`,
this is the (colimit) cofan which shall be used to construct the isomorphism
`mapBifunctorMapObj F p ((single₀ I).obj X) Y ≅ Y`, see `mapBifunctorLeftUnitor`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3491e4f57a7d640cd1fa6e9ddbf7c7ea4240cfc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
