# normalOfIsPushoutSndOfNormal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c7692577e4062396bd844266d9cfd56ee9f69613e25d050e7a63d38cdc8863ed",
  "kind": "def",
  "lexical_name": "normalOfIsPushoutSndOfNormal",
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
  "slug": "normalofispushoutsndofnormal--8d9d8c9041703cc96209aae4",
  "source": {
    "blob": "3998a97256b84f5237f7f6a151cbd6dc43b86bcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 219,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e10b2e3a7d0c15d3fa21d0c8b0110812618fe82a121a51486d10a08749f21b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8d9d8c9041703cc96209aae499e2e47dfc010e906a46f1400957cfb1cace3443",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e10b2e3a7d0c15d3fa21d0c8b0110812618fe82a121a51486d10a08749f21b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c7692577e4062396bd844266d9cfd56ee9f69613e25d050e7a63d38cdc8863ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def normalOfIsPushoutSndOfNormal {P Q R S : C} {f : P ⟶ Q} {g : P ⟶ R} {h : Q ⟶ S} {k : R ⟶ S}
    [gn : NormalEpi g] (comm : f ≫ h = g ≫ k) (t : IsColimit (PushoutCocone.mk _ _ comm)) :
    NormalEpi h where
  W := gn.W
  g := gn.g ≫ f
  w := by
    have reassoc' {W : C} (h' : R ⟶ W) :  gn.g ≫ g ≫ h' = 0 ≫ h' := by
      rw [← Category.assoc, eq_whisker gn.w]
    rw [Category.assoc, comm, reassoc', zero_comp]
  isColimit := by
    letI hn := regularOfIsPushoutSndOfRegular comm t
    have q := (@zero_comp _ _ _ gn.W _ _ f).symm
    convert hn.isColimit
#align category_theory.normal_of_is_pushout_snd_of_normal CategoryTheory.normalOfIsPushoutSndOfNormal

/-- The first leg of a pushout cocone is a normal epimorphism if the left component is too.

See also `pushout.fstOfEpi` for the basic epimorphism version, and
`normalOfIsPushoutSndOfNormal` for the flipped version.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e10b2e3a7d0c15d3fa21d0c8b0110812618fe82a121a51486d10a08749f21b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e10b2e3a7d0c15d3fa21d0c8b0110812618fe82a121a51486d10a08749f21b1.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3998a97256b84f5237f7f6a151cbd6dc43b86bcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
