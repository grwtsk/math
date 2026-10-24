# twoEmbeddingEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b64f2a4ce9c7152edfa9b444cf0215e82876724f2b6d6561324e9a5989de8478",
  "kind": "def",
  "lexical_name": "twoEmbeddingEquiv",
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
  "slug": "twoembeddingequiv--2251ff52c0828beec59128c2",
  "source": {
    "blob": "2a7ef4636d4047f9eab6ee55ca6460d178ef9260",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 100,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant3aede6f277b2119523704779cdd5ed4fa1714c42089cf243ba979b80441cf028.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2251ff52c0828beec59128c2ddf5ee519a0ec8e6f97c42f07c35363ed9fb0711",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant3aede6f277b2119523704779cdd5ed4fa1714c42089cf243ba979b80441cf028.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b64f2a4ce9c7152edfa9b444cf0215e82876724f2b6d6561324e9a5989de8478`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def twoEmbeddingEquiv : (Fin 2 ↪ α) ≃ {(a, b) : α × α | a ≠ b} where
  toFun e := ⟨(e 0, e 1), by
    simp only [ne_eq, Fin.isValue, mem_ofPred_eq, EmbeddingLike.apply_eq_iff_eq, zero_eq_one_iff,
      succ_ne_self, not_false_eq_true]⟩
  invFun := fun ⟨⟨a, b⟩, h⟩ ↦ {
    toFun i := if i = 0 then a else b
    inj' i j hij := by
      by_cases hi : i = 0
      · by_cases hj : j = 0
        · simp [hi, hj]
        · simp only [ite_eq_left hi, eq_one_of_ne_zero j hj,
          ite_eq_right (Ne.symm Fin.zero_ne_one)] at hij
          apply (h hij).elim
      · rw [eq_one_of_ne_zero i hi] at hij ⊢
        by_cases hj : j = 0
        · simp [hj] at hij; exact False.elim (h hij.symm)
        · rw [eq_one_of_ne_zero j hj] }
  left_inv e := by
    ext i
    by_cases hi : i = 0
    · simp [hi]
    · simp [Fin.eq_one_of_ne_zero i hi]

/-- Two distinct elements of `α` give an embedding `Fin 2 ↪ α`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant3aede6f277b2119523704779cdd5ed4fa1714c42089cf243ba979b80441cf028.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant3aede6f277b2119523704779cdd5ed4fa1714c42089cf243ba979b80441cf028.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a7ef4636d4047f9eab6ee55ca6460d178ef9260` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
