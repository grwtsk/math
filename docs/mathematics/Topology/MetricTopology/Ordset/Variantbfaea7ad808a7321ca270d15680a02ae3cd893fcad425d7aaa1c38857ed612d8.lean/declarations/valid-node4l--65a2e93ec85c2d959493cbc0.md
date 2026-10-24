# Valid'.node4L

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "964d057f8d557eddc11492e321ffde4227fe567d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 165,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bfaea7ad808a7321ca270d15680a02ae3cd893fcad425d7aaa1c38857ed612d8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4ab64c39-4baf-000b-44b7-bcd72a34e4bf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9d7a0d9a-05e7-9a05-34c3-74d4a91ceff5",
  "kind": "theorem",
  "lexical_name": "Valid'.node4L",
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
  "slug": "valid-node4l--65a2e93ec85c2d959493cbc0",
  "source": {
    "blob": "964d057f8d557eddc11492e321ffde4227fe567d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 165,
    "path": "GRWTSK/Topology/MetricTopology/Ordset/Variantbfaea7ad808a7321ca270d15680a02ae3cd893fcad425d7aaa1c38857ed612d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65a2e93ec85c2d959493cbc0c4271cb8d551cc2253c0e8836b9cd1b8a11ad400",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Ordset/Variantbfaea7ad808a7321ca270d15680a02ae3cd893fcad425d7aaa1c38857ed612d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d7a0d9a-05e7-9a05-34c3-74d4a91ceff5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Valid'.node4L {l} {x : α} {m} {y : α} {r o₁ o₂} (hl : Valid' o₁ l x) (hm : Valid' x m y)
    (hr : Valid' (↑y) r o₂) (Hm : 0 < size m)
    (H : size l = 0 ∧ size m = 1 ∧ size r ≤ 1 ∨
        0 < size l ∧
          ratio * size r ≤ size m ∧
            delta * size l ≤ size m + size r ∧
              3 * (size m + size r) ≤ 16 * size l + 9 ∧ size m ≤ delta * size r) :
    Valid' o₁ (@node4L α l x m y r) o₂ := by
  obtain - | ⟨s, ml, z, mr⟩ := m; · cases Hm
  suffices
    BalancedSz (size l) (size ml) ∧
      BalancedSz (size mr) (size r) ∧ BalancedSz (size l + size ml + 1) (size mr + size r + 1) from
    Valid'.node' (hl.node' hm.left this.1) (hm.right.node' hr this.2.1) this.2.2
  rcases H with (⟨l0, m1, r0⟩ | ⟨l0, mr₁, lr₁, lr₂, mr₂⟩)
  · rw [hm.2.size_eq, Nat.succ_inj, add_eq_zero] at m1
    rw [l0, m1.1, m1.2]; revert r0; rcases size r with (_ | _ | _) <;>
      [decide; decide; (intro r0; unfold BalancedSz delta; omega)]
  · rcases Nat.eq_zero_or_pos (size r) with r0 | r0
    · rw [r0] at mr₂; cases not_le_of_lt Hm mr₂
    rw [hm.2.size_eq] at lr₁ lr₂ mr₁ mr₂
    by_cases mm : size ml + size mr ≤ 1
    · have r1 :=
        le_antisymm
          ((mul_le_mul_left (by decide)).1 (le_trans mr₁ (Nat.succ_le_succ mm) : _ ≤ ratio * 1)) r0
      rw [r1, add_assoc] at lr₁
      have l1 :=
        le_antisymm
          ((mul_le_mul_left (by decide)).1 (le_trans lr₁ (add_le_add_right mm 2) : _ ≤ delta * 1))
          l0
      rw [l1, r1]
      revert mm; cases size ml <;> cases size mr <;> intro mm
      · decide
      · rw [zero_add] at mm; rcases mm with (_ | ⟨⟨⟩⟩)
        decide
      · rcases mm with (_ | ⟨⟨⟩⟩); decide
      · rw [Nat.succ_add] at mm; rcases mm with (_ | ⟨⟨⟩⟩)
    rcases hm.3.1.resolve_left mm with ⟨mm₁, mm₂⟩
    rcases Nat.eq_zero_or_pos (size ml) with ml0 | ml0
    · rw [ml0, mul_zero, Nat.le_zero] at mm₂
      rw [ml0, mm₂] at mm; cases mm (by decide)
    have : 2 * size l ≤ size ml + size mr + 1 := by
      have := Nat.mul_le_mul_left ratio lr₁
      rw [mul_left_comm, mul_add] at this
      have := le_trans this (add_le_add_left mr₁ _)
      rw [← Nat.succ_mul] at this
      exact (mul_le_mul_left (by decide)).1 this
    refine ⟨Or.inr ⟨?_, ?_⟩, Or.inr ⟨?_, ?_⟩, Or.inr ⟨?_, ?_⟩⟩
    · refine (mul_le_mul_left (by decide)).1 (le_trans this ?_)
      rw [two_mul, Nat.succ_le_iff]
      refine add_lt_add_of_lt_of_le ?_ mm₂
      simpa using (mul_lt_mul_right ml0).2 (by decide : 1 < 3)
    · exact Nat.le_of_lt_succ (Valid'.node4L_lemma₁ lr₂ mr₂ mm₁)
    · exact Valid'.node4L_lemma₂ mr₂
    · exact Valid'.node4L_lemma₃ mr₁ mm₁
    · exact Valid'.node4L_lemma₄ lr₁ mr₂ mm₁
    · exact Valid'.node4L_lemma₅ lr₂ mr₁ mm₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Ordset/Variantbfaea7ad808a7321ca270d15680a02ae3cd893fcad425d7aaa1c38857ed612d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Ordset/Variantbfaea7ad808a7321ca270d15680a02ae3cd893fcad425d7aaa1c38857ed612d8.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `964d057f8d557eddc11492e321ffde4227fe567d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
