# leftKanExtensionIsoFiberwiseColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3befad8e9c5dcafa6b77f82e0648efeabc02965e8e3768d1cd2a7e36ad11edc9",
  "kind": "def",
  "lexical_name": "leftKanExtensionIsoFiberwiseColimit",
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
  "slug": "leftkanextensionisofiberwisecolimit--fe579e76b752faf26380ca45",
  "source": {
    "blob": "a6084efe0f60be759815cb9bb88e4257ec1d2123",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 115,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant3ae6948500017af565f455003729c183393691a006e1637b026496134d9f4464.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe579e76b752faf26380ca45661ea947f08e2c329b390d59b8d228163ba9cc67",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant3ae6948500017af565f455003729c183393691a006e1637b026496134d9f4464.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3befad8e9c5dcafa6b77f82e0648efeabc02965e8e3768d1cd2a7e36ad11edc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def leftKanExtensionIsoFiberwiseColimit [HasLeftKanExtension L F] :
    leftKanExtension L F ≅ fiberwiseColimit (grothendieckProj L ⋙ F) :=
  letI : ∀ X, HasColimit (Grothendieck.ι (functor L) X ⋙ grothendieckProj L ⋙ F) :=
      fun X => hasColimit_of_iso <| Iso.symm <|
        isoWhiskerRight (eqToIso ((functor L).map_id X)) _ ≪≫
        Functor.leftUnitor (Grothendieck.ι (functor L) X ⋙ grothendieckProj L ⋙ F)
  Iso.symm <| NatIso.ofComponents
    (fun X => HasColimit.isoOfNatIso (isoWhiskerRight (ιCompGrothendieckProj L X) F) ≪≫
      (leftKanExtensionObjIsoColimit L F X).symm)
    fun f => colimit.hom_ext (by simp)

end

section HasLeftKanExtension

variable [∀ (F : C ⥤ H), HasLeftKanExtension L F]

variable (H) in
/-- The left Kan extension functor `L.Lan` is left adjoint to the precomposition by `L`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant3ae6948500017af565f455003729c183393691a006e1637b026496134d9f4464.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant3ae6948500017af565f455003729c183393691a006e1637b026496134d9f4464.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6084efe0f60be759815cb9bb88e4257ec1d2123` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
