# powerMap_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:582853b4-dcf5-ee7c-a5b1-081522fae01e",
  "kind": "lemma",
  "lexical_name": "powerMap_comp",
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
  "slug": "powermap-comp--d6365c501b3c644a19c4cad5",
  "source": {
    "blob": "6729b88eb46199e8d4aa58c0c819d898ef24c22c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 110,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cech/Variant86693180ebeadfe92add95dac0ea3c51a7a79dbad6df849b8ed2dfaed988c01b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6365c501b3c644a19c4cad580cb67df1c3841b5538dd672d6758aa590d9b88e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cech/Variant86693180ebeadfe92add95dac0ea3c51a7a79dbad6df849b8ed2dfaed988c01b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:582853b4-dcf5-ee7c-a5b1-081522fae01e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma powerMap_comp {U V W : FormalCoproduct.{w} C} (f : U ⟶ V) (g : V ⟶ W) (α : Type t)
    [HasProductsOfShape α C] :
    powerMap (f ≫ g) α = powerMap f α ≫ powerMap g α := by
  ext
  · cat_disch
  · dsimp
    ext
    simp only [Category.comp_id, Category.assoc, Pi.map_π, Function.comp_apply,
      Pi.map_π_assoc]
    apply Pi.map_π

attribute [local simp] powerMap_comp

/-- Given a type `α`, this is the functor `FormalCoproduct C ⥤ FormalCoproduct C`
which sends `U` to `U.power α`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cech/Variant86693180ebeadfe92add95dac0ea3c51a7a79dbad6df849b8ed2dfaed988c01b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cech/Variant86693180ebeadfe92add95dac0ea3c51a7a79dbad6df849b8ed2dfaed988c01b.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6729b88eb46199e8d4aa58c0c819d898ef24c22c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
