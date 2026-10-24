# right_fac_of_isStrictlyLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1c62f1a390d971f6e97c9b50d265a9e9ebd7bf89",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/0846ebcc6b4bb477082d8f626e3f9c8cd9be1a30173a642a0546a43ef4854a55.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cfbfe218-5b97-cabe-8a29-623de0f020f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9378a186-317b-81ee-90af-d207ff10a4d1",
  "kind": "lemma",
  "lexical_name": "right_fac_of_isStrictlyLE",
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
  "slug": "right-fac-of-isstrictlyle--b97eb242c979d68d3873fb05",
  "source": {
    "blob": "1c62f1a390d971f6e97c9b50d265a9e9ebd7bf89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 67,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant0846ebcc6b4bb477082d8f626e3f9c8cd9be1a30173a642a0546a43ef4854a55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b97eb242c979d68d3873fb054ae2cc563dd6da548c046e2d9775d9fd1dc40bb3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant0846ebcc6b4bb477082d8f626e3f9c8cd9be1a30173a642a0546a43ef4854a55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9378a186-317b-81ee-90af-d207ff10a4d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma right_fac_of_isStrictlyLE {X Y : CochainComplex C ℤ} (f : Q.obj X ⟶ Q.obj Y) (n : ℤ)
    [X.IsStrictlyLE n] :
    ∃ (X' : CochainComplex C ℤ) (_ : X'.IsStrictlyLE n) (s : X' ⟶ X) (_ : IsIso (Q.map s))
      (g : X' ⟶ Y), f = inv (Q.map s) ≫ Q.map g := by
  obtain ⟨X', s, hs, g, rfl⟩ := right_fac f
  have : IsIso (Q.map (CochainComplex.truncLEMap s n)) := by
    rw [isIso_Q_map_iff_quasiIso, CochainComplex.quasiIso_truncLEMap_iff]
    rw [isIso_Q_map_iff_quasiIso] at hs
    infer_instance
  refine ⟨X'.truncLE n, inferInstance, CochainComplex.truncLEMap s n ≫ X.ιTruncLE n, ?_,
      CochainComplex.truncLEMap g n ≫ Y.ιTruncLE n, ?_⟩
  · rw [Q.map_comp]
    infer_instance
  · have eq := Q.congr_map (CochainComplex.ιTruncLE_naturality s n)
    have eq' := Q.congr_map (CochainComplex.ιTruncLE_naturality g n)
    simp only [Functor.map_comp] at eq eq'
    simp only [Functor.map_comp, ← cancel_epi (Q.map (CochainComplex.truncLEMap s n) ≫
      Q.map (CochainComplex.ιTruncLE X n)), IsIso.hom_inv_id_assoc, assoc, reassoc_of% eq, eq']

/-- Any morphism `f : Q.obj X ⟶ Q.obj Y` in the derived category with `Y` strictly `≥ n`
can be written as `f = Q.map g ≫ inv (Q.map s)` with `g : X ⟶ Y'` and `s : Y ⟶ Y'`
a quasi-isomorphism with `Y'` strictly `≥ n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant0846ebcc6b4bb477082d8f626e3f9c8cd9be1a30173a642a0546a43ef4854a55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant0846ebcc6b4bb477082d8f626e3f9c8cd9be1a30173a642a0546a43ef4854a55.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c62f1a390d971f6e97c9b50d265a9e9ebd7bf89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
