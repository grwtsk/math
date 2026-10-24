# Nat.geom_sum_Ico_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2c84af0fb241314cb8934520af9a2beed3e18a5d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 180,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/cef4aa793aec8b91f9743f7dc518b98aee062df3772982db44e6c746a3b368e5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:788723a0-1492-df9b-8b12-2099f49ea0d4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:666cea5a-ab87-e13c-6ea1-92218ed94b8f",
  "kind": "lemma",
  "lexical_name": "Nat.geom_sum_Ico_le",
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
  "slug": "nat-geom-sum-ico-le--6b0d0a06877615dd487b396c",
  "source": {
    "blob": "2c84af0fb241314cb8934520af9a2beed3e18a5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 180,
    "path": "GRWTSK/Algebra/GeomSum/Variantcef4aa793aec8b91f9743f7dc518b98aee062df3772982db44e6c746a3b368e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b0d0a06877615dd487b396c78f1c1ac4dac99d4771c4e96d0c39f19cb15192d",
  "verification": {
    "reference": "docs/verification/Algebra/GeomSum/Variantcef4aa793aec8b91f9743f7dc518b98aee062df3772982db44e6c746a3b368e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:666cea5a-ab87-e13c-6ea1-92218ed94b8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Nat.geom_sum_Ico_le {b : ℕ} (hb : 2 ≤ b) (a n : ℕ) :
    ∑ i ∈ Ico 1 n, a / b ^ i ≤ a / (b - 1) := by
  rcases n with - | n
  · rw [Ico_eq_empty_of_le (by lia), sum_empty]
    exact Nat.zero_le _
  rw [← add_le_add_iff_left a]
  calc
    (a + ∑ i ∈ Ico 1 n.succ, a / b ^ i) = a / b ^ 0 + ∑ i ∈ Ico 1 n.succ, a / b ^ i := by
      rw [pow_zero, Nat.div_one]
    _ = ∑ i ∈ range n.succ, a / b ^ i := by
      rw [range_eq_Ico, ← Finset.insert_Ico_add_one_left_eq_Ico (Nat.succ_pos _), sum_insert] <;>
        simp
    _ ≤ a * b / (b - 1) := Nat.geom_sum_le hb a _
    _ = (a * 1 + a * (b - 1)) / (b - 1) := by rw [← mul_add, add_tsub_cancel_of_le (by lia)]
    _ = a + a / (b - 1) := by rw [mul_one, Nat.add_mul_div_right _ _ (tsub_pos_of_lt hb), add_comm]

variable {m n : ℕ} {s : Finset ℕ}

/-- If all the elements of a finset of naturals are less than `n`, then the sum of their powers of
`m ≥ 2` is less than `m ^ n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GeomSum/Variantcef4aa793aec8b91f9743f7dc518b98aee062df3772982db44e6c746a3b368e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GeomSum/Variantcef4aa793aec8b91f9743f7dc518b98aee062df3772982db44e6c746a3b368e5.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c84af0fb241314cb8934520af9a2beed3e18a5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
