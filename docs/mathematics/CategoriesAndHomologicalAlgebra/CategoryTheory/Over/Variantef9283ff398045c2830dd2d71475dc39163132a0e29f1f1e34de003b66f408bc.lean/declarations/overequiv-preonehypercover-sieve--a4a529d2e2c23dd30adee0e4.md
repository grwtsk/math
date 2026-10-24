# overEquiv_preOneHypercover_sieve₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d73b9ef-c685-2904-ba38-a7f102582b14",
  "kind": "lemma",
  "lexical_name": "overEquiv_preOneHypercover_sieve₁",
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
  "slug": "overequiv-preonehypercover-sieve--a4a529d2e2c23dd30adee0e4",
  "source": {
    "blob": "35617770c1b1a47be2946a309843262691cbf79e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 150,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantef9283ff398045c2830dd2d71475dc39163132a0e29f1f1e34de003b66f408bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4a529d2e2c23dd30adee0e48469a1389a8a58f620a1099890f94d27a88d9104",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantef9283ff398045c2830dd2d71475dc39163132a0e29f1f1e34de003b66f408bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d73b9ef-c685-2904-ba38-a7f102582b14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma overEquiv_preOneHypercover_sieve₁ {X : C} {Y : Over X} (E : PreOneHypercover.{w} Y)
    {i₁ i₂ : E.I₀} {W : Over X} (p₁ : W ⟶ E.X i₁) (p₂ : W ⟶ E.X i₂) :
    overEquiv W (E.sieve₁ p₁ p₂) =
      (E.map (Over.forget X)).sieve₁ p₁.left p₂.left := by
  ext
  rw [overEquiv_iff]
  refine ⟨fun ⟨k, b, hb₁, hb₂⟩ ↦ ⟨k, b.left, congr($(hb₁).left), congr($(hb₂).left)⟩, ?_⟩
  intro ⟨k, b, hb₁, hb₂⟩
  exact ⟨k, Over.homMk b (by simpa using (hb₁ =≫ (E.X i₁).hom).symm), by cat_disch, by cat_disch⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantef9283ff398045c2830dd2d71475dc39163132a0e29f1f1e34de003b66f408bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantef9283ff398045c2830dd2d71475dc39163132a0e29f1f1e34de003b66f408bc.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35617770c1b1a47be2946a309843262691cbf79e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
