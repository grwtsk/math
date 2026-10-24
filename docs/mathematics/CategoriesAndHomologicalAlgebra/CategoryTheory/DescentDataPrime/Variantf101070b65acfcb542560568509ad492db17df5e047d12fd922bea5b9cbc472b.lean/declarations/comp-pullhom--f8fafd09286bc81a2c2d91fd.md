# comp_pullHom''

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dd36d5ca3d3b966c3aeadefd09d7ef1a0de3c3b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 127,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f101070b65acfcb542560568509ad492db17df5e047d12fd922bea5b9cbc472b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be1d23c7-99e7-dcd6-a663-d3afe89e476d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:09e59ac0-ab42-5f09-abd3-d20ee3d7f6bf",
  "kind": "lemma",
  "lexical_name": "comp_pullHom''",
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
  "slug": "comp-pullhom--f8fafd09286bc81a2c2d91fd",
  "source": {
    "blob": "dd36d5ca3d3b966c3aeadefd09d7ef1a0de3c3b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 127,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentDataPrime/Variantf101070b65acfcb542560568509ad492db17df5e047d12fd922bea5b9cbc472b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8fafd09286bc81a2c2d91fd89e60d33aaf4a4924bd25dce9046692567c7b149",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentDataPrime/Variantf101070b65acfcb542560568509ad492db17df5e047d12fd922bea5b9cbc472b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09e59ac0-ab42-5f09-abd3-d20ee3d7f6bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comp_pullHom'' (hom_comp : ∀ (i₁ i₂ i₃ : ι),
    pullHom' hom (sq₃ i₁ i₂ i₃).p (sq₃ i₁ i₂ i₃).p₁ (sq₃ i₁ i₂ i₃).p₂ ≫
    pullHom' hom (sq₃ i₁ i₂ i₃).p (sq₃ i₁ i₂ i₃).p₂ (sq₃ i₁ i₂ i₃).p₃ =
    pullHom' hom (sq₃ i₁ i₂ i₃).p (sq₃ i₁ i₂ i₃).p₁ (sq₃ i₁ i₂ i₃).p₃)
    ⦃Y : C⦄ (q : Y ⟶ S) ⦃i₁ i₂ i₃ : ι⦄ (f₁ : Y ⟶ X i₁)
    (f₂ : Y ⟶ X i₂) (f₃ : Y ⟶ X i₃) (hf₁ : f₁ ≫ f i₁ = q)
    (hf₂ : f₂ ≫ f i₂ = q) (hf₃ : f₃ ≫ f i₃ = q) :
    pullHom' hom q f₁ f₂ ≫ pullHom' hom q f₂ f₃ = pullHom' hom q f₁ f₃ := by
  obtain ⟨φ, _, _, _⟩ := (sq₃ i₁ i₂ i₃).exists_lift f₁ f₂ f₃ q hf₁ hf₂ hf₃
  rw [← pullHom_pullHom'_assoc hom φ (sq₃ i₁ i₂ i₃).p _ (sq₃ i₁ i₂ i₃).p₁ (sq₃ i₁ i₂ i₃).p₂ _ _,
    ← pullHom_pullHom' hom φ (sq₃ i₁ i₂ i₃).p _ (sq₃ i₁ i₂ i₃).p₂ (sq₃ i₁ i₂ i₃).p₃ _ _,
    ← pullHom_pullHom' hom φ (sq₃ i₁ i₂ i₃).p _ (sq₃ i₁ i₂ i₃).p₁ (sq₃ i₁ i₂ i₃).p₃ _ _]
  dsimp [pullHom]
  simp [← Functor.map_comp_assoc, hom_comp]

end

end DescentData'

open DescentData' in
/-- Given a pseudofunctor `F` from `LocallyDiscrete Cᵒᵖ` to `Cat`, a family of
morphisms `f i : X i ⟶ S`, chosen pullbacks `sq i j` of `f i` and `f j` for all `i` and `j`,
and chosen threefold wide pullbacks `sq₃`, this structure contains a description
of objects over the `X i` equipped with a descent data relative to the morphisms `f i`,
where the (iso)morphisms are compatibilities are considered over the chosen pullbacks. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentDataPrime/Variantf101070b65acfcb542560568509ad492db17df5e047d12fd922bea5b9cbc472b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentDataPrime/Variantf101070b65acfcb542560568509ad492db17df5e047d12fd922bea5b9cbc472b.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd36d5ca3d3b966c3aeadefd09d7ef1a0de3c3b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
