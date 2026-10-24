# mul_antipode₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:242c8eba-773d-4fdd-077c-d7b1f939a3cb",
  "kind": "theorem",
  "lexical_name": "mul_antipode₁",
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
  "slug": "mul-antipode--793a8b3aa95d7c548f2d727e",
  "source": {
    "blob": "05e092319b760c3557eaa999efeb961c644b14af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 292,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Hopf/Variantfe547e70670b0a3db2dedc8c99e8541f690841b5e38fde74aba484f995934f5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:793a8b3aa95d7c548f2d727e1615be982d5ee585f161196ad0a9a2c4fc85dacf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Hopf/Variantfe547e70670b0a3db2dedc8c99e8541f690841b5e38fde74aba484f995934f5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:242c8eba-773d-4fdd-077c-d7b1f939a3cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem mul_antipode₁ (A : Hopf_ C) :
    (A.X.comul.hom ⊗ A.X.comul.hom) ≫
      (α_ A.X.X.X A.X.X.X (A.X.X.X ⊗ A.X.X.X)).hom ≫
      A.X.X.X ◁ (α_ A.X.X.X A.X.X.X A.X.X.X).inv ≫
      A.X.X.X ◁ (β_ A.X.X.X A.X.X.X).hom ▷ A.X.X.X ≫
      (α_ A.X.X.X (A.X.X.X ⊗ A.X.X.X) A.X.X.X).inv ≫
      (α_ A.X.X.X A.X.X.X A.X.X.X).inv ▷ A.X.X.X ≫
      A.X.X.mul ▷ A.X.X.X ▷ A.X.X.X ≫
      A.antipode ▷ A.X.X.X ▷ A.X.X.X ≫
      (α_ A.X.X.X A.X.X.X A.X.X.X).hom ≫
      A.X.X.X ◁ A.X.X.mul ≫
      A.X.X.mul =
    (A.X.counit.hom ⊗ A.X.counit.hom) ≫ (λ_ (𝟙_ C)).hom ≫ A.X.X.one := by
  slice_lhs 8 9 =>
    rw [associator_naturality_left]
  slice_lhs 9 10 =>
    rw [← whisker_exchange]
  slice_lhs 7 8 =>
    rw [associator_naturality_left]
  slice_lhs 8 9 =>
    rw [← tensorHom_def]
  simp only [Mon_.monMonoidalStruct_tensorObj_X, Category.assoc, pentagon_inv_inv_hom_hom_inv_assoc,
    Mon_.tensorUnit_X]
  slice_lhs 1 7 =>
    erw [Bimon_.compatibility]
  slice_lhs 2 4 =>
    rw [antipode_left]
  simp


/--
Auxiliary calculation for `mul_antipode`.

```
       |
       n
      /  \
     |   n
     |  / \
     |  S S
     |  \ /
     n   /
    / \ / \
    |  /  |
    \ / \ /
     v   v
     |   |
```

We move the leftmost multiplication up, so we can reassociate.
We then move the rightmost comultiplication under the strand,
and simplify using `antipode_right`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Hopf/Variantfe547e70670b0a3db2dedc8c99e8541f690841b5e38fde74aba484f995934f5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Hopf/Variantfe547e70670b0a3db2dedc8c99e8541f690841b5e38fde74aba484f995934f5d.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05e092319b760c3557eaa999efeb961c644b14af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
