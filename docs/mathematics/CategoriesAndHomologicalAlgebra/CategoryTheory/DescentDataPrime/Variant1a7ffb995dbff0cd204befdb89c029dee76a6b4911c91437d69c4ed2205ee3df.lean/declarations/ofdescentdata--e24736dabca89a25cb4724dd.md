# ofDescentData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a97f11e40ce40e5424a32d67a0b817874800edd78bb2691c6d11ea75933730f0",
  "kind": "def",
  "lexical_name": "ofDescentData",
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
  "slug": "ofdescentdata--e24736dabca89a25cb4724dd",
  "source": {
    "blob": "25de25d2b0be944ed6398873bc65a1d9b0a74867",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 278,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentDataPrime/Variant1a7ffb995dbff0cd204befdb89c029dee76a6b4911c91437d69c4ed2205ee3df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e24736dabca89a25cb4724dd733d8103b3eb6106b1c3ba7614ba409b28e41a5b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentDataPrime/Variant1a7ffb995dbff0cd204befdb89c029dee76a6b4911c91437d69c4ed2205ee3df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a97f11e40ce40e5424a32d67a0b817874800edd78bb2691c6d11ea75933730f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofDescentData (D : F.DescentData f) : F.DescentData' sq sq₃ where
  obj := D.obj
  hom i₁ i₂ := D.hom (sq i₁ i₂).p (sq i₁ i₂).p₁ (sq i₁ i₂).p₂
  pullHom'_hom_self i := by
    obtain ⟨p, h₁, h₂⟩ := (sq i i).isPullback.exists_lift (𝟙 _) (𝟙 _) (by simp)
    have : p ≫ (sq i i).p = f i := by rw [← (sq i i).hp₁, reassoc_of% h₁]
    rw [pullHom'_eq_pullHom _ _ _ _ p, D.pullHom_hom _ _ (f i), D.hom_self (f i) (𝟙 _)]
    all_goals cat_disch
  pullHom'_hom_comp i₁ i₂ i₃ := by
    rw [pullHom'_eq_pullHom _ _ _ _ (sq₃ i₁ i₂ i₃).p₁₂,
      pullHom'_eq_pullHom _ _ _ _ (sq₃ i₁ i₂ i₃).p₂₃,
      pullHom'_eq_pullHom _ _ _ _ (sq₃ i₁ i₂ i₃).p₁₃,
      D.pullHom_hom _ _ (sq₃ i₁ i₂ i₃).p, D.pullHom_hom _ _ (sq₃ i₁ i₂ i₃).p,
      D.pullHom_hom _ _ (sq₃ i₁ i₂ i₃).p, D.hom_comp]
    all_goals cat_disch

set_option backward.defeqAttrib.useBackward true in
variable (sq sq₃) in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentDataPrime/Variant1a7ffb995dbff0cd204befdb89c029dee76a6b4911c91437d69c4ed2205ee3df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentDataPrime/Variant1a7ffb995dbff0cd204befdb89c029dee76a6b4911c91437d69c4ed2205ee3df.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25de25d2b0be944ed6398873bc65a1d9b0a74867` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
