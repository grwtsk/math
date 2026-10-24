# GlueData.ofGlueData'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6a93128aaa2cd37b94b9175bb6795fcc42d3d8e6f7051c835bbe36b67d135495",
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
  "slug": "gluedata-ofgluedata--2af5852835da440a0a13cbbb",
  "source": {
    "blob": "e52f68debef701c2d4dae25ea3bff431aa0425d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 489,
    "line": 449,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variant320472f2f5f52442e2efa4fae13343cab9109de6f333ec206dfaee7f89f47e6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2af5852835da440a0a13cbbbae49adc89a0353a679dea8ddf95d27ce3b041075",
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

Occurrence: `declaration:6a93128aaa2cd37b94b9175bb6795fcc42d3d8e6f7051c835bbe36b67d135495`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 449–489.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def GlueData.ofGlueData' (D : GlueData' C) : GlueData C where
  J := D.J
  U := D.U
  V ij := if h : ij.1 = ij.2 then D.U ij.1 else D.V ij.1 ij.2 h
  f i j := D.f' i j
  f_id i := by simp only [↓reduceDIte, GlueData'.f']; infer_instance
  t i j := if h : i = j then eqToHom (by simp [h]) else
    eqToHom (dif_neg h) ≫ D.t i j h ≫ eqToHom (dif_neg (Ne.symm h)).symm
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
      ext <;> simp [hij, Ne.symm hij, fst_eq_snd_of_mono_eq, pullback.condition_assoc]
    else
      ext <;> simp [hij, Ne.symm hij, hik, Ne.symm hik, hjk, Ne.symm hjk,
        pullback.map_comp_assoc]

end GlueData'

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variant320472f2f5f52442e2efa4fae13343cab9109de6f333ec206dfaee7f89f47e6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variant320472f2f5f52442e2efa4fae13343cab9109de6f333ec206dfaee7f89f47e6f.lean#L449).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e52f68debef701c2d4dae25ea3bff431aa0425d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
