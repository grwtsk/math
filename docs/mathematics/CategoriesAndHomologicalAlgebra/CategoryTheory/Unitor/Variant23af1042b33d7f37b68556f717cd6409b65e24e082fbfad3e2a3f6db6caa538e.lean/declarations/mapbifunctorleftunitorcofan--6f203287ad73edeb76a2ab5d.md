# mapBifunctorLeftUnitorCofan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29662892afde1739fc365a78ca0117dac5fafbfd1ac74a825a51d705d546ced5",
  "kind": "def",
  "lexical_name": "mapBifunctorLeftUnitorCofan",
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
  "slug": "mapbifunctorleftunitorcofan--6f203287ad73edeb76a2ab5d",
  "source": {
    "blob": "0f80d2a0396b1a879a505789c245c21033ccd38b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 64,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant23af1042b33d7f37b68556f717cd6409b65e24e082fbfad3e2a3f6db6caa538e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6f203287ad73edeb76a2ab5d253d7c7ab8d4070b6547ce6b8b4ff9d40cf9b2e0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant23af1042b33d7f37b68556f717cd6409b65e24e082fbfad3e2a3f6db6caa538e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29662892afde1739fc365a78ca0117dac5fafbfd1ac74a825a51d705d546ced5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mapBifunctorLeftUnitorCofan (hp : ∀ (j : J), p ⟨0, j⟩ = j) (Y) (j : J) :
    (((mapBifunctor F I J).obj ((single₀ I).obj X)).obj Y).CofanMapObjFun p j :=
  CofanMapObjFun.mk _ _ _ (Y j) (fun a ha =>
    if ha : a.1 = 0 then
      (mapBifunctorObjSingle₀ObjIso F X e Y a ha).hom ≫ eqToHom (by aesop)
    else
      (mapBifunctorObjSingle₀ObjIsInitial F X Y a ha).to _)

@[simp, reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant23af1042b33d7f37b68556f717cd6409b65e24e082fbfad3e2a3f6db6caa538e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant23af1042b33d7f37b68556f717cd6409b65e24e082fbfad3e2a3f6db6caa538e.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f80d2a0396b1a879a505789c245c21033ccd38b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
