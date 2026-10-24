# isCauSeq_norm_exp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "38ca3f981ac5e3119d4028b7ee6bbddc536e4c74",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c08794afe77a077081e8e680eee32cbd7faf1040fee883e1fc8f8f9e6a970dce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:06a9b055-779c-5b6f-015d-6394c5d724ef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a952a9ce-4194-ffdc-9659-380eb46a3b91",
  "kind": "theorem",
  "lexical_name": "isCauSeq_norm_exp",
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
  "slug": "iscauseq-norm-exp--14b46bb4696c707d6f7abd25",
  "source": {
    "blob": "38ca3f981ac5e3119d4028b7ee6bbddc536e4c74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 31,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Exponential/Variantc08794afe77a077081e8e680eee32cbd7faf1040fee883e1fc8f8f9e6a970dce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14b46bb4696c707d6f7abd25567e94dc95912d3469e21d033cfc5f2e59294c3d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Exponential/Variantc08794afe77a077081e8e680eee32cbd7faf1040fee883e1fc8f8f9e6a970dce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a952a9ce-4194-ffdc-9659-380eb46a3b91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCauSeq_norm_exp (z : ℂ) :
    IsCauSeq abs fun n => ∑ m ∈ range n, ‖z ^ m / m.factorial‖ :=
  let ⟨n, hn⟩ := exists_nat_gt ‖z‖
  have hn0 : (0 : ℝ) < n := lt_of_le_of_lt (norm_nonneg _) hn
  IsCauSeq.series_ratio_test n (‖z‖ / n) (div_nonneg (norm_nonneg _) (le_of_lt hn0))
    (by rwa [div_lt_iff₀ hn0, one_mul]) fun m hm => by
      rw [abs_norm, abs_norm, Nat.factorial_succ, pow_succ', mul_comm m.succ, Nat.cast_mul,
        ← div_div, mul_div_assoc, mul_div_right_comm, Complex.norm_mul, Complex.norm_div,
        norm_natCast]
      gcongr
      exact le_trans hm (Nat.le_succ _)

@[deprecated (since := "2025-02-16")] alias isCauSeq_abs_exp := isCauSeq_norm_exp

noncomputable section

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Exponential/Variantc08794afe77a077081e8e680eee32cbd7faf1040fee883e1fc8f8f9e6a970dce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Exponential/Variantc08794afe77a077081e8e680eee32cbd7faf1040fee883e1fc8f8f9e6a970dce.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38ca3f981ac5e3119d4028b7ee6bbddc536e4c74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
