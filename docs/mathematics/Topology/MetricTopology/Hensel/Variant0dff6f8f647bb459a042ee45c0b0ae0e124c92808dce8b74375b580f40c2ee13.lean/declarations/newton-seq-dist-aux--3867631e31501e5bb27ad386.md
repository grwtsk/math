# newton_seq_dist_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "93100e44f9fba70e86180de79bca45d6e90b826b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 299,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cbb9a55a-a970-d91c-4de9-9ee3d05f94bc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:64ca65dc-5c96-83b0-71d3-aac15d0a8398",
  "kind": "theorem",
  "lexical_name": "newton_seq_dist_aux",
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
  "slug": "newton-seq-dist-aux--3867631e31501e5bb27ad386",
  "source": {
    "blob": "93100e44f9fba70e86180de79bca45d6e90b826b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 299,
    "path": "GRWTSK/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3867631e31501e5bb27ad386019c9fd61d602ee387a69420a5988b0dfc44287f",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64ca65dc-5c96-83b0-71d3-aac15d0a8398`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem newton_seq_dist_aux (n : ℕ) :
    ∀ k : ℕ, ‖newton_seq (n + k) - newton_seq n‖ ≤ ‖F.derivative.eval a‖ * T ^ 2 ^ n
  | 0 => by simp [T_pow_nonneg, mul_nonneg]
  | k + 1 =>
    have : 2 ^ n ≤ 2 ^ (n + k) := by
      apply pow_le_pow
      norm_num
      apply Nat.le_add_right
    calc
      ‖newton_seq (n + (k + 1)) - newton_seq n‖ = ‖newton_seq (n + k + 1) - newton_seq n‖ := by
        rw [add_assoc]
      _ = ‖newton_seq (n + k + 1) - newton_seq (n + k) + (newton_seq (n + k) - newton_seq n)‖ := by
        rw [← sub_add_sub_cancel]
      _ ≤ max ‖newton_seq (n + k + 1) - newton_seq (n + k)‖ ‖newton_seq (n + k) - newton_seq n‖ :=
        (PadicInt.nonarchimedean _ _)
      _ ≤ max (‖F.derivative.eval a‖ * T ^ 2 ^ (n + k)) (‖F.derivative.eval a‖ * T ^ 2 ^ n) :=
        (max_le_max (newton_seq_succ_dist _ _) (newton_seq_dist_aux _ _))
      _ = ‖F.derivative.eval a‖ * T ^ 2 ^ n :=
        max_eq_right <|
          mul_le_mul_of_nonneg_left (pow_le_pow_of_le_one (norm_nonneg _)
            (le_of_lt (T_lt_one hnorm)) this) (norm_nonneg _)


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93100e44f9fba70e86180de79bca45d6e90b826b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
