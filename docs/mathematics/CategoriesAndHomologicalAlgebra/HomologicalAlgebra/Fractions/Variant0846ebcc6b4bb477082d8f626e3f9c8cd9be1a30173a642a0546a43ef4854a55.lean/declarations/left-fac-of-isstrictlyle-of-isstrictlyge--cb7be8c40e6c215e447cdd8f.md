# left_fac_of_isStrictlyLE_of_isStrictlyGE

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
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/0846ebcc6b4bb477082d8f626e3f9c8cd9be1a30173a642a0546a43ef4854a55.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:afd2ae06-2f18-7b76-cc6f-405c0b5f2fcc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e94b36ac-59dd-29fd-83e1-0d98984c0d8f",
  "kind": "lemma",
  "lexical_name": "left_fac_of_isStrictlyLE_of_isStrictlyGE",
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
  "slug": "left-fac-of-isstrictlyle-of-isstrictlyge--cb7be8c40e6c215e447cdd8f",
  "source": {
    "blob": "1c62f1a390d971f6e97c9b50d265a9e9ebd7bf89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 139,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant0846ebcc6b4bb477082d8f626e3f9c8cd9be1a30173a642a0546a43ef4854a55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb7be8c40e6c215e447cdd8ff9cb42242723e272bc2fb7e927d30cc1b1668242",
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

Occurrence: `result:e94b36ac-59dd-29fd-83e1-0d98984c0d8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma left_fac_of_isStrictlyLE_of_isStrictlyGE
    {X Y : CochainComplex C ℤ} (a b : ℤ)
    [X.IsStrictlyLE b] [Y.IsStrictlyGE a] [Y.IsStrictlyLE b] (f : Q.obj X ⟶ Q.obj Y) :
    ∃ (Y' : CochainComplex C ℤ) ( _ : Y'.IsStrictlyGE a) (_ : Y'.IsStrictlyLE b)
    (g : X ⟶ Y') (s : Y ⟶ Y') (_ : IsIso (Q.map s)) , f = Q.map g ≫ inv (Q.map s) := by
  obtain ⟨Y', hY', g, s, hs, fac⟩ := left_fac_of_isStrictlyGE f a
  have : IsIso (Q.map (CochainComplex.truncLEMap s b)) := by
    rw [isIso_Q_map_iff_quasiIso] at hs
    rw [isIso_Q_map_iff_quasiIso, CochainComplex.quasiIso_truncLEMap_iff]
    infer_instance
  refine ⟨Y'.truncLE b, inferInstance, inferInstance,
    inv (X.ιTruncLE b) ≫ CochainComplex.truncLEMap g b,
    inv (Y.ιTruncLE b) ≫ CochainComplex.truncLEMap s b, ?_, ?_⟩
  · rw [Q.map_comp]
    infer_instance
  · simp only [Functor.map_comp, Functor.map_inv, IsIso.inv_comp, IsIso.inv_inv, assoc, fac,
      ← cancel_mono (Q.map s), IsIso.inv_hom_id, comp_id]
    rw [← Functor.map_comp, ← CochainComplex.ιTruncLE_naturality s b,
      Functor.map_comp, IsIso.inv_hom_id_assoc,
      ← Functor.map_comp, CochainComplex.ιTruncLE_naturality g b,
      Functor.map_comp, IsIso.inv_hom_id_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant0846ebcc6b4bb477082d8f626e3f9c8cd9be1a30173a642a0546a43ef4854a55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant0846ebcc6b4bb477082d8f626e3f9c8cd9be1a30173a642a0546a43ef4854a55.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c62f1a390d971f6e97c9b50d265a9e9ebd7bf89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
