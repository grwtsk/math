# bank_adjacent_height_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c64c1a20-06a7-1b6f-56dd-163f006908af",
  "kind": "theorem",
  "lexical_name": "bank_adjacent_height_bounds",
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
  "slug": "bank-adjacent-height-bounds--1baf249db37b4322095e71e6",
  "source": {
    "blob": "ce49393a91867637cf14d99ff14bb3c9943aefdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 50,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TriangularDisjointBank/Variant43b9df386f567a421d320bc7f309b4655f5500c33f95df67579ee8b2c70a2a24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1baf249db37b4322095e71e60a4acd9e5b4c0472e4bcdc42c056481d37a57222",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TriangularDisjointBank/Variant43b9df386f567a421d320bc7f309b4655f5500c33f95df67579ee8b2c70a2a24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c64c1a20-06a7-1b6f-56dd-163f006908af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bank_adjacent_height_bounds (M : ℕ → ℕ) (hM : ∀ j, j + 2 ≤ M j) (n : ℕ) :
    height M n ≤ height M (n - 1) + 1 ∧ height M (n - 1) ≤ height M n + 1 := by
  by_cases hn : n = 0
  · subst n; simp
  have hn1 : 1 ≤ n := by omega
  constructor
  · apply Finset.sup_le
    intro j hj
    have hjn := Finset.mem_range.mp hj
    by_cases hjlt : j < n
    · have hjprev : j ∈ Finset.range (n - 1 + 1) := Finset.mem_range.mpr (by omega)
      exact (nat_adjacent_bounds (M j) n).1.trans
        (Nat.add_le_add_right (Finset.le_sup (f := fun k ↦ triangle (M k) (n - 1)) hjprev) 1)
    · have hjeq : j = n := by omega
      subst j
      have hzero : triangle (M n) n = 0 := by
        apply triangle_zero (Or.inl ?_)
        have := hM n
        nlinarith
      rw [hzero]
      omega
  · apply Finset.sup_le
    intro j hj
    have hjnow : j ∈ Finset.range (n + 1) := Finset.mem_range.mpr
      (by have := Finset.mem_range.mp hj; omega)
    exact (nat_adjacent_bounds (M j) n).2.trans
      (Nat.add_le_add_right (Finset.le_sup (f := fun k ↦ triangle (M k) n) hjnow) 1)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TriangularDisjointBank/Variant43b9df386f567a421d320bc7f309b4655f5500c33f95df67579ee8b2c70a2a24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TriangularDisjointBank/Variant43b9df386f567a421d320bc7f309b4655f5500c33f95df67579ee8b2c70a2a24.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce49393a91867637cf14d99ff14bb3c9943aefdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
