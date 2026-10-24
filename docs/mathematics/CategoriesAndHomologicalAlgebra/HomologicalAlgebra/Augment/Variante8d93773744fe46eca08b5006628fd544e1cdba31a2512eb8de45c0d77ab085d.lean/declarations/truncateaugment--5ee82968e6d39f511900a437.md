# truncateAugment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:932c61ba173bcf3c2b958e2849007b7b7453782fd116640bc256d6639b967f92",
  "kind": "def",
  "lexical_name": "truncateAugment",
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
  "slug": "truncateaugment--5ee82968e6d39f511900a437",
  "source": {
    "blob": "fe2d9689017c8f461f669e04758e45f7137f4203",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 99,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variante8d93773744fe46eca08b5006628fd544e1cdba31a2512eb8de45c0d77ab085d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ee82968e6d39f511900a4370c091a8c8dd42dc44155d240e11da53e2d66e71a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variante8d93773744fe46eca08b5006628fd544e1cdba31a2512eb8de45c0d77ab085d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:932c61ba173bcf3c2b958e2849007b7b7453782fd116640bc256d6639b967f92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def truncateAugment (C : ChainComplex V ℕ) {X : V} (f : C.X 0 ⟶ X) (w : C.d 1 0 ≫ f = 0) :
    truncate.obj (augment C f w) ≅ C where
  hom := { f := fun i => 𝟙 _ }
  inv :=
    { f := fun i => 𝟙 _
      comm' := fun i j => by
        cases j <;>
          · dsimp
            simp }
  hom_inv_id := by
    ext (_ | i) <;>
      · dsimp
        simp
  inv_hom_id := by
    ext (_ | i) <;>
      · dsimp
        simp
#align chain_complex.truncate_augment ChainComplex.truncateAugment

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variante8d93773744fe46eca08b5006628fd544e1cdba31a2512eb8de45c0d77ab085d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variante8d93773744fe46eca08b5006628fd544e1cdba31a2512eb8de45c0d77ab085d.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe2d9689017c8f461f669e04758e45f7137f4203` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
