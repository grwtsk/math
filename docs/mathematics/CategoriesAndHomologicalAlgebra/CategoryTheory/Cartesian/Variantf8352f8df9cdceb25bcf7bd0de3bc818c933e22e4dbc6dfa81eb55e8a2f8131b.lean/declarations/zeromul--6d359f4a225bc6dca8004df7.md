# zeroMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b2abd76e7c97974baaea96edbf64c59d1854dbe4770ec22a92bebabc9c9e012",
  "kind": "def",
  "lexical_name": "zeroMul",
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
  "slug": "zeromul--6d359f4a225bc6dca8004df7",
  "source": {
    "blob": "bb588351b6514c8efa8a185282841df6d8002bf9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 78,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantf8352f8df9cdceb25bcf7bd0de3bc818c933e22e4dbc6dfa81eb55e8a2f8131b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d359f4a225bc6dca8004df7c403452a60bab86c99c7e3fc07f6ae656c4a659a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantf8352f8df9cdceb25bcf7bd0de3bc818c933e22e4dbc6dfa81eb55e8a2f8131b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5b2abd76e7c97974baaea96edbf64c59d1854dbe4770ec22a92bebabc9c9e012`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def zeroMul {I : C} (t : IsInitial I) : A ⊗ I ≅ I where
  hom := snd _ _
  inv := t.to _
  hom_inv_id := by
    have : snd A I = uncurry (t.to _) := by
      rw [← curry_eq_iff]
      apply t.hom_ext
    rw [this, ← uncurry_natural_right, ← eq_curry_iff]
    apply t.hom_ext
  inv_hom_id := t.hom_ext _ _

/-- If an initial object `0` exists in a CCC, then `0 ⨯ A ≅ 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantf8352f8df9cdceb25bcf7bd0de3bc818c933e22e4dbc6dfa81eb55e8a2f8131b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantf8352f8df9cdceb25bcf7bd0de3bc818c933e22e4dbc6dfa81eb55e8a2f8131b.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb588351b6514c8efa8a185282841df6d8002bf9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
