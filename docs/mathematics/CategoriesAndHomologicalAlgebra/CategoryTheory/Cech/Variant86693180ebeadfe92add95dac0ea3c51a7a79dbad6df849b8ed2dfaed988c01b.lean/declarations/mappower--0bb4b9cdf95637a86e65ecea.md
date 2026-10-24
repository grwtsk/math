# mapPower_π

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a149b87-8d5c-ffa5-34a7-b7f8af7ab453",
  "kind": "lemma",
  "lexical_name": "mapPower_π",
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
  "slug": "mappower--0bb4b9cdf95637a86e65ecea",
  "source": {
    "blob": "6729b88eb46199e8d4aa58c0c819d898ef24c22c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 175,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cech/Variant86693180ebeadfe92add95dac0ea3c51a7a79dbad6df849b8ed2dfaed988c01b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bb4b9cdf95637a86e65eceaa20d9bc7fb3c11f24becc655336adc52ce6a02d5",
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

Occurrence: `result:3a149b87-8d5c-ffa5-34a7-b7f8af7ab453`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mapPower_π (U : FormalCoproduct.{w} C) {α β : Type}
    [HasProductsOfShape α C] [HasProductsOfShape β C] (f : α → β) (a : α) :
    mapPower U f ≫ U.powerπ a = U.powerπ (f a) := by
  ext <;> simp

attribute [local simp] mapPower_comp mapPower_powerMap

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- The functor `(Type t)ᵒᵖ ⥤ FormalCoproduct.{w} C ⥤ FormalCoproduct.{max w t} C`
which sends a type `α` and `U : FormalCoproduct C` to `U.power α`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cech/Variant86693180ebeadfe92add95dac0ea3c51a7a79dbad6df849b8ed2dfaed988c01b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cech/Variant86693180ebeadfe92add95dac0ea3c51a7a79dbad6df849b8ed2dfaed988c01b.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6729b88eb46199e8d4aa58c0c819d898ef24c22c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
