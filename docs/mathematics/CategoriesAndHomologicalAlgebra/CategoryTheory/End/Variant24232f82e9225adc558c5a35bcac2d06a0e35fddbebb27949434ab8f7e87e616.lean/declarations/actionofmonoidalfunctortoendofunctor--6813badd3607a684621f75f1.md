# actionOfMonoidalFunctorToEndofunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f363b7ab00487c93d014da6bca01e955c95de6bd83984acf1973037187839074",
  "kind": "def",
  "lexical_name": "actionOfMonoidalFunctorToEndofunctor",
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
  "slug": "actionofmonoidalfunctortoendofunctor--6813badd3607a684621f75f1",
  "source": {
    "blob": "bafeb84db829117f0e1d0b2f06fc37ea1a987c24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 196,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant24232f82e9225adc558c5a35bcac2d06a0e35fddbebb27949434ab8f7e87e616.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6813badd3607a684621f75f172e681c3cc4e48a00281e3b0f931b814589b7f81",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant24232f82e9225adc558c5a35bcac2d06a0e35fddbebb27949434ab8f7e87e616.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f363b7ab00487c93d014da6bca01e955c95de6bd83984acf1973037187839074`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actionOfMonoidalFunctorToEndofunctor (F : C ⥤ D ⥤ D) [F.Monoidal] :
    MonoidalRightAction C D where
  actionObj d c := (F.obj c).obj d
  actionHomLeft f c := (F.obj c).map f
  actionHomRight d _ _ f := (F.map f).app d
  actionAssocIso d c c' := Functor.Monoidal.μIso F c c' |>.app d |>.symm
  actionUnitIso d := Functor.Monoidal.εIso F |>.app d |>.symm
  actionAssocIso_hom_naturality {c₁ c₁' c₂ c₂' c₃ c₃'} f g h := by
    have e := congrArg (fun t ↦ t.app c₁) <|
      Functor.OplaxMonoidal.δ_natural F g h
    dsimp at e
    rw [endofunctorMonoidalCategory_tensorMap_app] at e
    simp [reassoc_of% e]

/-- If the action of `C` on `D` comes from a monoidal functor `C ⥤ (D ⥤ D)`,
then `curriedActionMop C D` is naturally isomorphic to that functor. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant24232f82e9225adc558c5a35bcac2d06a0e35fddbebb27949434ab8f7e87e616.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant24232f82e9225adc558c5a35bcac2d06a0e35fddbebb27949434ab8f7e87e616.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bafeb84db829117f0e1d0b2f06fc37ea1a987c24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
