# quotQuotUliftAddEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:162f1ce162695babb2259733749d99de5250fc0da6c70e2020e0375a607d31cf",
  "kind": "def",
  "lexical_name": "quotQuotUliftAddEquiv",
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
  "slug": "quotquotuliftaddequiv--2a2dd06696a16a403578fbe7",
  "source": {
    "blob": "2ff5d9686c4194d67868064c2bbd71b3867aad7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 164,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3cef405b0c5581de959752f15724d6c6e5a0daeaf0f029a99adf05c629cde022.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2a2dd06696a16a403578fbe734322a509239c03190c0c216183c620b9a0339a6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3cef405b0c5581de959752f15724d6c6e5a0daeaf0f029a99adf05c629cde022.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:162f1ce162695babb2259733749d99de5250fc0da6c70e2020e0375a607d31cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def quotQuotUliftAddEquiv [DecidableEq J] : Quot F ≃+ Quot (F ⋙ uliftFunctor.{u'}) where
  toFun := quotToQuotUlift F
  invFun := quotUliftToQuot F
  left_inv x := by
    conv_rhs => rw [← AddMonoidHom.id_apply _ x]
    rw [← AddMonoidHom.comp_apply, Quot.addMonoidHom_ext F (f := (quotUliftToQuot F).comp
      (quotToQuotUlift F)) (fun j a ↦ ?_)]
    rw [AddMonoidHom.comp_apply, AddMonoidHom.id_apply, quotToQuotUlift_ι, quotUliftToQuot_ι]
  right_inv x := by
    conv_rhs => rw [← AddMonoidHom.id_apply _ x]
    rw [← AddMonoidHom.comp_apply, Quot.addMonoidHom_ext _ (f := (quotToQuotUlift F).comp
      (quotUliftToQuot F)) (fun j a ↦ ?_)]
    rw [AddMonoidHom.comp_apply, AddMonoidHom.id_apply, quotUliftToQuot_ι, quotToQuotUlift_ι]
    rfl
  map_add' _ _ := by simp

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3cef405b0c5581de959752f15724d6c6e5a0daeaf0f029a99adf05c629cde022.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3cef405b0c5581de959752f15724d6c6e5a0daeaf0f029a99adf05c629cde022.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ff5d9686c4194d67868064c2bbd71b3867aad7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
