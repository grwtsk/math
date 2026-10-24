# abs_add_eq_add_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1470c95185adc648256f085b887a0f3721b2dc44",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 467,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b3628fe8613db19bdedfe8f8fa276e672c01539ee1a1e5bd7a018be506c1727b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:76f96f4a-b347-dca0-73fa-eb505822683f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e25e8a2c-45c8-7f7a-0242-3b768cbd1acd",
  "kind": "theorem",
  "lexical_name": "abs_add_eq_add_abs_le",
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
  "slug": "abs-add-eq-add-abs-le--d56636eca838909b9fbc1a77",
  "source": {
    "blob": "1470c95185adc648256f085b887a0f3721b2dc44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 483,
    "line": 467,
    "path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variantb3628fe8613db19bdedfe8f8fa276e672c01539ee1a1e5bd7a018be506c1727b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d56636eca838909b9fbc1a77fbcea0997de683b37cf8fc3b3aeba21696412d32",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Lemmas/Variantb3628fe8613db19bdedfe8f8fa276e672c01539ee1a1e5bd7a018be506c1727b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e25e8a2c-45c8-7f7a-0242-3b768cbd1acd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 467–483.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_add_eq_add_abs_le (hle : a ≤ b) :
    |a + b| = |a| + |b| ↔ 0 ≤ a ∧ 0 ≤ b ∨ a ≤ 0 ∧ b ≤ 0 := by
  obtain a0 | a0 := le_or_lt 0 a <;> obtain b0 | b0 := le_or_lt 0 b
  · simp [a0, b0, abs_of_nonneg, add_nonneg a0 b0]
  · exact (lt_irrefl (0 : α) <| a0.trans_lt <| hle.trans_lt b0).elim
  any_goals simp [a0.le, b0.le, abs_of_nonpos, add_nonpos, add_comm]
  have : (|a + b| = -a + b ↔ b ≤ 0) ↔ (|a + b| = |a| + |b| ↔ 0 ≤ a ∧ 0 ≤ b ∨ a ≤ 0 ∧ b ≤ 0) := by
    simp [a0, a0.le, a0.not_le, b0, abs_of_neg, abs_of_nonneg]
  refine' this.mp ⟨fun h => _, fun h => by simp only [le_antisymm h b0, abs_of_neg a0, add_zero]⟩
  obtain ab | ab := le_or_lt (a + b) 0
  · refine' le_of_eq (eq_zero_of_neg_eq _)
    rwa [abs_of_nonpos ab, neg_add_rev, add_comm, add_right_inj] at h
  · refine' (lt_irrefl (0 : α) _).elim
    rw [abs_of_pos ab, add_left_inj] at h
    rwa [eq_zero_of_neg_eq h.symm] at a0
#align abs_add_eq_add_abs_le abs_add_eq_add_abs_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Lemmas/Variantb3628fe8613db19bdedfe8f8fa276e672c01539ee1a1e5bd7a018be506c1727b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lemmas/Variantb3628fe8613db19bdedfe8f8fa276e672c01539ee1a1e5bd7a018be506c1727b.lean#L467).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1470c95185adc648256f085b887a0f3721b2dc44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
