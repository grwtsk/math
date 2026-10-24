# not_condition_of_mem_Ioo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c1fceb3-76a2-3e1a-9428-09b9c5e1b380",
  "kind": "lemma",
  "lexical_name": "not_condition_of_mem_Ioo",
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
  "slug": "not-condition-of-mem-ioo--cf6149f910526fc71a78cf3f",
  "source": {
    "blob": "7b46297a45bcf184127f07f2235ae05ae2f65aa2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 162,
    "path": "GRWTSK/Algebra/Imo2024Q1/Variant2f684df9d0053992d02effac23f56c15cbc0100510ca042b235185674d062232.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf6149f910526fc71a78cf3f28b67edda319236382e84d34c9a8835ef2b4bf53",
  "verification": {
    "reference": "docs/verification/Algebra/Imo2024Q1/Variant2f684df9d0053992d02effac23f56c15cbc0100510ca042b235185674d062232.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c1fceb3-76a2-3e1a-9428-09b9c5e1b380`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma not_condition_of_mem_Ioo {α : ℝ} (h : α ∈ Set.Ioo 0 2) : ¬Condition α := by
  intro hc
  let n : ℕ := ⌊(2 - α)⁻¹⌋₊ + 1
  have hn : 0 < n := by lia
  have hna := (hc.mem_Ico_n_of_mem_Ioo h hn).1
  rcases h with ⟨-, h2⟩
  have hna' : 2 - (n : ℝ)⁻¹ ≤ α := by
    convert! hna using 1
    field
  rw [sub_eq_add_neg, ← le_sub_iff_add_le', neg_le, neg_sub] at hna'
  rw [le_inv_comm₀ (by linarith) (mod_cast hn), ← not_lt] at hna'
  apply hna'
  exact_mod_cast Nat.lt_floor_add_one (_ : ℝ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Imo2024Q1/Variant2f684df9d0053992d02effac23f56c15cbc0100510ca042b235185674d062232.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Imo2024Q1/Variant2f684df9d0053992d02effac23f56c15cbc0100510ca042b235185674d062232.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b46297a45bcf184127f07f2235ae05ae2f65aa2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
