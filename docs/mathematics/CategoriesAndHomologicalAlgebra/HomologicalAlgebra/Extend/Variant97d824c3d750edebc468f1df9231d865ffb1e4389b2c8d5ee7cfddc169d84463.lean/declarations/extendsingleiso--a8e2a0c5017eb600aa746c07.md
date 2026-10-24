# extendSingleIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:63a03402133a56e19882889f8e1c832a2873208ae896ae8de0539cf1b7266803",
  "kind": "def",
  "lexical_name": "extendSingleIso",
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
  "slug": "extendsingleiso--a8e2a0c5017eb600aa746c07",
  "source": {
    "blob": "4ed846b09b5fa59587c92aad90dfa54328af632c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 295,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant97d824c3d750edebc468f1df9231d865ffb1e4389b2c8d5ee7cfddc169d84463.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a8e2a0c5017eb600aa746c074557f2d0d78ec5aeae2f4b66a823b90841de0471",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant97d824c3d750edebc468f1df9231d865ffb1e4389b2c8d5ee7cfddc169d84463.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:63a03402133a56e19882889f8e1c832a2873208ae896ae8de0539cf1b7266803`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def extendSingleIso (h : e.f i = i') :
    ((single C c i).obj X).extend e ≅ (single C c' i').obj X where
  hom :=
    mkHomToSingle
      ((((single C c i).obj X).extendXIso e h).hom ≫ (singleObjXSelf c i X).hom) (by simp)
  inv :=
    mkHomFromSingle
      ((singleObjXSelf c i X).inv ≫ (((single C c i).obj X).extendXIso e h).inv) (by simp)
  hom_inv_id := by
    ext j'
    by_cases hj : ∃ j, e.f j = j'
    · obtain ⟨j, hj⟩ := hj
      by_cases hij : j = i
      · obtain rfl : i' = j' := by rw [← hj, hij, h]
        simp
      · exact ((isZero_single_obj_X _ _ _ _ hij).of_iso
          (((single C c i).obj X).extendXIso e hj)).eq_of_src _ _
    · exact IsZero.eq_of_src (isZero_extend_X _ _ _ (by tauto)) _ _

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant97d824c3d750edebc468f1df9231d865ffb1e4389b2c8d5ee7cfddc169d84463.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant97d824c3d750edebc468f1df9231d865ffb1e4389b2c8d5ee7cfddc169d84463.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ed846b09b5fa59587c92aad90dfa54328af632c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
