# GlueData'.t''

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:30e94a18b4b933bd02c99588e91593f80d5b6bc0c88e64caeaef98fd37bfc68b",
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
  "slug": "gluedata-t--53ff28de63b7d49a2ea8cd19",
  "source": {
    "blob": "e52f68debef701c2d4dae25ea3bff431aa0425d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 418,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variant320472f2f5f52442e2efa4fae13343cab9109de6f333ec206dfaee7f89f47e6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:53ff28de63b7d49a2ea8cd19d1a96591b1a91d6d496ddf79a95269d6a023d796",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variant320472f2f5f52442e2efa4fae13343cab9109de6f333ec206dfaee7f89f47e6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:30e94a18b4b933bd02c99588e91593f80d5b6bc0c88e64caeaef98fd37bfc68b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 418–448.

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
    pullback.fst _ _ ≫ eqToHom (dif_neg hij) ≫ D.t _ _ _ ≫
      eqToHom (dif_neg (Ne.symm hij)).symm ≫ inv (pullback.snd _ _)
  else if hjk : j = k then
    have : IsIso (pullback.snd (D.f' j k) (D.f' j i)) := by
      apply (config := { allowSynthFailures := true }) pullback_snd_iso_of_left_iso
      simp only [hjk, GlueData'.f', ↓reduceDIte]
      infer_instance
    pullback.fst _ _ ≫ eqToHom (dif_neg hij) ≫ D.t _ _ _ ≫
      eqToHom (dif_neg (Ne.symm hij)).symm ≫ inv (pullback.snd _ _)
  else
    haveI := Ne.symm hij
    pullback.map _ _ _ _ (eqToHom (by aesop)) (eqToHom (by rw [dif_neg hik]))
        (eqToHom (by simp)) (by delta f'; aesop) (by delta f'; aesop) ≫
      D.t' i j k hij hik hjk ≫
      pullback.map _ _ _ _ (eqToHom (by aesop)) (eqToHom (by aesop)) (eqToHom (by simp))
        (by delta f'; aesop) (by delta f'; aesop)

open scoped Classical in
/--
The constructed `GlueData` of a `GlueData'`, where `GlueData'` is a variant of `GlueData` that only
requires conditions on `V (i, j)` when `i ≠ j`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variant320472f2f5f52442e2efa4fae13343cab9109de6f333ec206dfaee7f89f47e6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variant320472f2f5f52442e2efa4fae13343cab9109de6f333ec206dfaee7f89f47e6f.lean#L418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e52f68debef701c2d4dae25ea3bff431aa0425d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
