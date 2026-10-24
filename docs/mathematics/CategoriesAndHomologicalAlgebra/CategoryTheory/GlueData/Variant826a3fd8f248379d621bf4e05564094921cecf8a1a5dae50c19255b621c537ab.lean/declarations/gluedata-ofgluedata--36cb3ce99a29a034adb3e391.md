# GlueData.ofGlueData'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca4d8fe9b919ca9007a4f0c512f9be01dabe63ad69295f9ea888513d408135a8",
  "kind": "def",
  "lexical_name": "GlueData.ofGlueData'",
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
  "slug": "gluedata-ofgluedata--36cb3ce99a29a034adb3e391",
  "source": {
    "blob": "8822cfa8d52539ee4d88d6342d1e83f9b063307e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 488,
    "line": 448,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variant826a3fd8f248379d621bf4e05564094921cecf8a1a5dae50c19255b621c537ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:36cb3ce99a29a034adb3e39112b6ef9773edf13717441d540e3a7eafd8938c10",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variant826a3fd8f248379d621bf4e05564094921cecf8a1a5dae50c19255b621c537ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca4d8fe9b919ca9007a4f0c512f9be01dabe63ad69295f9ea888513d408135a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 448–488.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def GlueData.ofGlueData' (D : GlueData' C) : GlueData C where
  J := D.J
  U := D.U
  V ij := if h : ij.1 = ij.2 then D.U ij.1 else D.V ij.1 ij.2 h
  f i j := D.f' i j
  f_id i := by simp only [↓reduceDIte, GlueData'.f']; infer_instance
  t i j := if h : i = j then eqToHom (by simp [h]) else
    eqToHom (dite_eq_right h) ≫ D.t i j h ≫ eqToHom (dite_eq_right (Ne.symm h)).symm
  t_id i := by simp
  t' := D.t''
  t_fac i j k := by
    delta GlueData'.t''
    obtain rfl | _ := eq_or_ne i j
    · simp
    obtain rfl | _ := eq_or_ne i k
    · simp [*]
    obtain rfl | _ := eq_or_ne j k
    · simp [*]
    · simp [*, reassoc_of% D.t_fac]
  cocycle i j k := by
    delta GlueData'.t''
    if hij : i = j then
      subst hij
      if hik : i = k then
        subst hik
        ext <;> simp
      else
        simp [hik, Ne.symm hik, fst_eq_snd_of_mono_eq]
    else if hik : i = k then
      subst hik
      ext <;> simp [hij, Ne.symm hij, fst_eq_snd_of_mono_eq, pullback.condition_assoc]
    else if hjk : j = k then
      subst hjk
      ext <;> simp [hij, Ne.symm hij, fst_eq_snd_of_mono_eq]
    else
      ext <;> simp [hij, Ne.symm hij, hik, Ne.symm hik, hjk, Ne.symm hjk,
        pullback.map_comp_assoc]

end GlueData'

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variant826a3fd8f248379d621bf4e05564094921cecf8a1a5dae50c19255b621c537ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variant826a3fd8f248379d621bf4e05564094921cecf8a1a5dae50c19255b621c537ab.lean#L448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8822cfa8d52539ee4d88d6342d1e83f9b063307e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
