# finset_inf_factors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:debe192d-b6c6-e69d-3a1c-cac5b674c89a",
  "kind": "theorem",
  "lexical_name": "finset_inf_factors",
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
  "slug": "finset-inf-factors--970b3cfa50b3056b8abf5e0d",
  "source": {
    "blob": "7b1f59382e19a7eabaa7d0e29d3b798899adc7e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 426,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variantb55704a600e670c0f40033dba9e550584ee7f8f5abcd4d6ad9fdd9ed4cf2c3b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:970b3cfa50b3056b8abf5e0db455e333200d199254afdc666d8ab5b6cf1291b3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variantb55704a600e670c0f40033dba9e550584ee7f8f5abcd4d6ad9fdd9ed4cf2c3b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:debe192d-b6c6-e69d-3a1c-cac5b674c89a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 426–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finset_inf_factors {I : Type*} {A B : C} {s : Finset I} {P : I → Subobject B} (f : A ⟶ B) :
    (s.inf P).Factors f ↔ ∀ i ∈ s, (P i).Factors f := by
  classical
  induction s using Finset.induction_on with
  | empty => simp [top_factors]
  | insert _ _ _ ih => simp [ih]

-- `i` is explicit here because often we'd like to defer a proof of `m`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variantb55704a600e670c0f40033dba9e550584ee7f8f5abcd4d6ad9fdd9ed4cf2c3b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variantb55704a600e670c0f40033dba9e550584ee7f8f5abcd4d6ad9fdd9ed4cf2c3b9.lean#L426).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b1f59382e19a7eabaa7d0e29d3b798899adc7e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
