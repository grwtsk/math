# leftKanExtensionIsoFiberwiseColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d6a80dffb14f8ab86bc706d595bf334f1c16bbb0a2ef3c3545867506183824a",
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
  "slug": "leftkanextensionisofiberwisecolimit--3312bbb3bb1acc1fef84bcb8",
  "source": {
    "blob": "7ea6c4382911ff7c18e8c2a6701b1100a87cd27f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 127,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Varianta5889859e740c2b0807e1318cf5d3751fe4c7209e33a185d67aebea95e54a2ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3312bbb3bb1acc1fef84bcb858ad377b6513738a1bc75870ef2701716f1e2e74",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Varianta5889859e740c2b0807e1318cf5d3751fe4c7209e33a185d67aebea95e54a2ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d6a80dffb14f8ab86bc706d595bf334f1c16bbb0a2ef3c3545867506183824a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def leftKanExtensionIsoFiberwiseColimit [HasLeftKanExtension L F] :
    leftKanExtension L F ≅ fiberwiseColimit (grothendieckProj L ⋙ F) :=
  letI : ∀ X, HasColimit (Grothendieck.ι (functor L) X ⋙ grothendieckProj L ⋙ F) :=
      fun X => hasColimit_of_iso <| Iso.symm <|
        isoWhiskerRight (eqToIso congr($((functor L).map_id X).toFunctor)) _ ≪≫
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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Varianta5889859e740c2b0807e1318cf5d3751fe4c7209e33a185d67aebea95e54a2ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Varianta5889859e740c2b0807e1318cf5d3751fe4c7209e33a185d67aebea95e54a2ab.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ea6c4382911ff7c18e8c2a6701b1100a87cd27f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
