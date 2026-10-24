# δ₀Iter_σ'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec9ed01d-f9d4-74e3-07f5-6f40ca3230b8",
  "kind": "lemma",
  "lexical_name": "δ₀Iter_σ'",
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
  "slug": "iter--e5a370acef5bb26a9753c93f",
  "source": {
    "blob": "a3f101a75ae89bcb73402c06c2ea5bcacfcead07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 107,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DeltaZeroIter/Variant0f6be2b4677c9bca1e7a04cda82583168dcb8852f4f811691dce3fce1d0904db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5a370acef5bb26a9753c93feff12bf45b70ede6e41bc8e985f3aea20f15542c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DeltaZeroIter/Variant0f6be2b4677c9bca1e7a04cda82583168dcb8852f4f811691dce3fce1d0904db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec9ed01d-f9d4-74e3-07f5-6f40ca3230b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma δ₀Iter_σ' (i : ℕ) {n m : ℕ} (j : Fin (m + 1))
    (j' : Fin (n + 1))
    (hi' : n + i = m := by lia)
    (hj' : j.val = j'.val + i := by grind) :
    δ₀Iter i ≫ σ j = σ j' ≫ δ₀Iter i hi' := by
  induction i generalizing n m with
  | zero =>
    obtain rfl : n = m := by lia
    obtain rfl : j = j' := by lia
    simp
  | succ i hi =>
    obtain _ | m := m
    · grind
    · obtain ⟨j, rfl⟩ := j.eq_succ_of_ne_zero
        (by rintro rfl; dsimp at hj'; lia)
      rw [δ₀Iter_succ_assoc .., δ₀Iter_succ ..,
        dsimp% δ_comp_σ_of_le (i := 0) (j := j) (by simp),
        reassoc_of% hi j j' (by lia) (by grind)]

/-- If `n + i = m`, this is the morphism `⦋m⦌ ⟶ ⦋n⦌` in the simplex category
which is obtained as the `i`th iteration of `σ 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DeltaZeroIter/Variant0f6be2b4677c9bca1e7a04cda82583168dcb8852f4f811691dce3fce1d0904db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DeltaZeroIter/Variant0f6be2b4677c9bca1e7a04cda82583168dcb8852f4f811691dce3fce1d0904db.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3f101a75ae89bcb73402c06c2ea5bcacfcead07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
