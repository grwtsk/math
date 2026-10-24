# isRightDerivabilityStructure_of_isLocalizedEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f4d9fe8-8ea0-90bc-0b16-13b41c7d3a18",
  "kind": "lemma",
  "lexical_name": "isRightDerivabilityStructure_of_isLocalizedEquivalence",
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
  "slug": "isrightderivabilitystructure-of-islocalizedequivalence--9dce8cd5188adc32b562b26d",
  "source": {
    "blob": "3b1101deea54428a0be2aa5150ea87b729f917c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 128,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfLocalizedEquivalences/Varianta07538c1c3f1895f65392ace13069c83c59c5064d91769db58587db1f76bf029.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9dce8cd5188adc32b562b26d3a7878b59c2b392edbcfb670c618b7c4956505cd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfLocalizedEquivalences/Varianta07538c1c3f1895f65392ace13069c83c59c5064d91769db58587db1f76bf029.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f4d9fe8-8ea0-90bc-0b16-13b41c7d3a18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isRightDerivabilityStructure_of_isLocalizedEquivalence
    [T.IsRightDerivabilityStructure]
    (iso : T.functor ⋙ R.functor ≅ L.functor ⋙ B.functor)
    [TwoSquare.GuitartExact iso.hom] :
    B.IsRightDerivabilityStructure := by
  rw [isRightDerivabilityStructure_iff_op]
  let iso' : T.op.functor ⋙ R.op.functor ≅ L.op.functor ⋙ B.op.functor := NatIso.op iso.symm
  have : TwoSquare.GuitartExact iso'.inv :=
    inferInstanceAs (TwoSquare.op iso.hom).GuitartExact
  exact isLeftDerivabilityStructure_of_isLocalizedEquivalence iso'

set_option backward.isDefEq.respectTransparency.types false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfLocalizedEquivalences/Varianta07538c1c3f1895f65392ace13069c83c59c5064d91769db58587db1f76bf029.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfLocalizedEquivalences/Varianta07538c1c3f1895f65392ace13069c83c59c5064d91769db58587db1f76bf029.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b1101deea54428a0be2aa5150ea87b729f917c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
