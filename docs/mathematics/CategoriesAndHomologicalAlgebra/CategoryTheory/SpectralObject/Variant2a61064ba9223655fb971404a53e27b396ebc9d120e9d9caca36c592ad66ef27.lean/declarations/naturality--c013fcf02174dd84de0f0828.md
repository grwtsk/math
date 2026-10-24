# ω₁δ_naturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a838e2f4532fce6d296362a8c987f9aa031b2a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a61064ba9223655fb971404a53e27b396ebc9d120e9d9caca36c592ad66ef27.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:682d5b33-9c6b-3785-6fd6-c339511f35df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:82a556b7-e8f3-b4bc-97ab-591c9ed9f623",
  "kind": "lemma",
  "lexical_name": "ω₁δ_naturality",
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
  "slug": "naturality--c013fcf02174dd84de0f0828",
  "source": {
    "blob": "2a838e2f4532fce6d296362a8c987f9aa031b2a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 77,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant2a61064ba9223655fb971404a53e27b396ebc9d120e9d9caca36c592ad66ef27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c013fcf02174dd84de0f08288b1cad260ac2f761213af851947add19b7333827",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant2a61064ba9223655fb971404a53e27b396ebc9d120e9d9caca36c592ad66ef27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82a556b7-e8f3-b4bc-97ab-591c9ed9f623`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ω₁δ_naturality (a' b' c' : EInt) (hab' : a' ≤ b') (hbc' : b' ≤ c')
    (φ : mk₂ (homOfLE hab) (homOfLE hbc) ⟶ mk₂ (homOfLE hab') (homOfLE hbc')) :
    t.ω₁.map (homMk₁ (φ.app 1) (φ.app 2)) ≫ t.ω₁δ a' b' c' hab' hbc' =
      t.ω₁δ a b c hab hbc ≫ Functor.whiskerRight (t.ω₁.map (homMk₁ (φ.app 0) (φ.app 1))) _ := by
  ext
  dsimp
  simp only [NatTrans.hcomp_app, ω₁δ_app, ← Functor.map_comp, NatTrans.naturality_assoc,
    Functor.comp_map, Category.assoc, ← Functor.map_comp_assoc, NatTrans.naturality_app_assoc,
    Functor.whiskeringRight_obj_map, Functor.whiskerRight_app, NatTrans.naturality]
  congr 2
  simp only [Functor.map_comp, Category.assoc]
  have h₁ := t.eTruncLTGEIsoGELT_naturality_app a b hab a' b' hab' (homMk₁ (φ.app 0) (φ.app 1))
  rw [← reassoc_of% dsimp% h₁, ← eTruncLTGEIsoGELT_hom_naturality,
    ← eTruncLTGEIsoGELT_hom_naturality, ← t.eTruncLT_map_app_eTruncLTι_app (φ.app 2)]
  simp only [↓NatTrans.naturality_assoc, ↓← Functor.map_comp_assoc]
  simp

/-- The functorial (distinguished) triangles that are part of the spectral
object attached to objects in a triangulated category equipped with a t-structure. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant2a61064ba9223655fb971404a53e27b396ebc9d120e9d9caca36c592ad66ef27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant2a61064ba9223655fb971404a53e27b396ebc9d120e9d9caca36c592ad66ef27.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a838e2f4532fce6d296362a8c987f9aa031b2a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
