# GlueData'.t''

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:11e57036ac700a2accc6e72eb4fc2236ec1aa7b0aef4916f5c8813f636fbde3c",
  "kind": "def",
  "lexical_name": "GlueData'.t''",
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
  "slug": "gluedata-t--53dd2bfdf38dce6fdd3142ca",
  "source": {
    "blob": "0c1b3437fd49137daa23c24d703fa3635f3360c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 439,
    "line": 408,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variantb183124ed0be896054c234be7d05a8073b48cd23ad6f972194a444c9f98574f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:53dd2bfdf38dce6fdd3142cae61198449030409810b0c84a2627c78a1bc2c9fa",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variantb183124ed0be896054c234be7d05a8073b48cd23ad6f972194a444c9f98574f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:11e57036ac700a2accc6e72eb4fc2236ec1aa7b0aef4916f5c8813f636fbde3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 408–439.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def GlueData'.t'' (D : GlueData' C) (i j k : D.J) :
    pullback (D.f' i j) (D.f' i k) ⟶ pullback (D.f' j k) (D.f' j i) :=
  if hij : i = j then
    (pullbackSymmetry _ _).hom ≫
      pullback.map _ _ _ _ (eqToHom (by aesop)) (eqToHom (by aesop)) (eqToHom (by aesop))
        (by aesop) (by aesop)
  else if hik : i = k then
    have : IsIso (pullback.snd (D.f' j k) (D.f' j i)) := by
      subst hik; infer_instance
    pullback.fst _ _ ≫ eqToHom (dite_eq_right hij) ≫ D.t _ _ _ ≫
      eqToHom (dite_eq_right (Ne.symm hij)).symm ≫ inv (pullback.snd _ _)
  else if hjk : j = k then
    have : IsIso (pullback.snd (D.f' j k) (D.f' j i)) := by
      apply +allowSynthFailures pullback_snd_iso_of_left_iso
      simp only [hjk, GlueData'.f', ↓reduceDIte]
      infer_instance
    pullback.fst _ _ ≫ eqToHom (dite_eq_right hij) ≫ D.t _ _ _ ≫
      eqToHom (dite_eq_right (Ne.symm hij)).symm ≫ inv (pullback.snd _ _)
  else
    haveI := Ne.symm hij
    pullback.map _ _ _ _ (eqToHom (by aesop)) (eqToHom (by rw [dite_eq_right hik]))
        (eqToHom (by simp)) (by delta f'; aesop) (by delta f'; aesop) ≫
      D.t' i j k hij hik hjk ≫
      pullback.map _ _ _ _ (eqToHom (by aesop)) (eqToHom (by aesop)) (eqToHom (by simp))
        (by delta f'; aesop) (by delta f'; aesop)

set_option backward.isDefEq.respectTransparency false in
open scoped Classical in
/--
The constructed `GlueData` of a `GlueData'`, where `GlueData'` is a variant of `GlueData` that only
requires conditions on `V (i, j)` when `i ≠ j`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variantb183124ed0be896054c234be7d05a8073b48cd23ad6f972194a444c9f98574f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variantb183124ed0be896054c234be7d05a8073b48cd23ad6f972194a444c9f98574f8.lean#L408).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c1b3437fd49137daa23c24d703fa3635f3360c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
