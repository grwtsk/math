# sum_ne_add_mod_eq_sub_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59e35083-8686-f452-d698-9b3c0d431c60",
  "kind": "lemma",
  "lexical_name": "sum_ne_add_mod_eq_sub_one",
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
  "slug": "sum-ne-add-mod-eq-sub-one--dcb3edebb95a27d0017678df",
  "source": {
    "blob": "3f231edf97a6473d17beef716418cc486190271a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 340,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcb3edebb95a27d0017678df37c1ac21562e408aaf43c6c8fa8febe2ce78e2f2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59e35083-8686-f452-d698-9b3c0d431c60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma sum_ne_add_mod_eq_sub_one {c : ℕ} :
    ∑ w ∈ range r, (if c % r ≠ (n + w) % r then 1 else 0) = r - 1 := by
  rcases r.eq_zero_or_pos with rfl | hr; · simp
  suffices #{i ∈ range r | c % r = (n + i) % r} = 1 by
    rw [← card_filter, ← this]; apply Nat.eq_sub_of_add_eq'
    rw [card_filter_add_card_filter_not, card_range]
  apply le_antisymm
  · change #{i ∈ range r | _ ≡ _ [MOD r]} ≤ 1
    rw [card_le_one_iff]; intro w x mw mx
    simp only [mem_filter, mem_range] at mw mx
    have := mw.2.symm.trans mx.2
    rw [Nat.ModEq.add_iff_left rfl] at this
    change w % r = x % r at this
    rwa [Nat.mod_eq_of_lt mw.1, Nat.mod_eq_of_lt mx.1] at this
  · rw [one_le_card]; use ((r - 1) * n + c) % r
    simp only [mem_filter, mem_range]; refine ⟨Nat.mod_lt _ hr, ?_⟩
    rw [Nat.add_mod_mod, ← add_assoc, ← one_add_mul, show 1 + (r - 1) = r by lia,
      Nat.mul_add_mod_self_left]

set_option backward.isDefEq.respectTransparency.types false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f231edf97a6473d17beef716418cc486190271a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
