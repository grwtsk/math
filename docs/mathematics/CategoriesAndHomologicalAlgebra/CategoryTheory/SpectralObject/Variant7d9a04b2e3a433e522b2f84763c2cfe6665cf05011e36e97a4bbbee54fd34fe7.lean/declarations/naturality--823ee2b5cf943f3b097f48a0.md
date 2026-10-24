# ω₁δ_naturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99ddb4e5-49da-f178-20d9-7803745c6c0a",
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
  "slug": "naturality--823ee2b5cf943f3b097f48a0",
  "source": {
    "blob": "b513913c7d8f2853f1e63e26d86989204273082f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 85,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant7d9a04b2e3a433e522b2f84763c2cfe6665cf05011e36e97a4bbbee54fd34fe7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:823ee2b5cf943f3b097f48a01d66f9097f24b1a8a4d2bbe7647bc78d5801f0c3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant7d9a04b2e3a433e522b2f84763c2cfe6665cf05011e36e97a4bbbee54fd34fe7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99ddb4e5-49da-f178-20d9-7803745c6c0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–104.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant7d9a04b2e3a433e522b2f84763c2cfe6665cf05011e36e97a4bbbee54fd34fe7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant7d9a04b2e3a433e522b2f84763c2cfe6665cf05011e36e97a4bbbee54fd34fe7.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b513913c7d8f2853f1e63e26d86989204273082f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
