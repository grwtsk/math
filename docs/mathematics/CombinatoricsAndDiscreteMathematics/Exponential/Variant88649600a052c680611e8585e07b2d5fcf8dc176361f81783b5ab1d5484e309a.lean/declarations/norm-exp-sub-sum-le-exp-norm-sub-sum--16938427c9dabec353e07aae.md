# norm_exp_sub_sum_le_exp_norm_sub_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:456e79f8-425c-7010-fa12-1efede3611af",
  "kind": "lemma",
  "lexical_name": "norm_exp_sub_sum_le_exp_norm_sub_sum",
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
  "slug": "norm-exp-sub-sum-le-exp-norm-sub-sum--16938427c9dabec353e07aae",
  "source": {
    "blob": "bd6a2d80c81e25a49593d60aae8f460f329d62fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 473,
    "line": 457,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Exponential/Variant88649600a052c680611e8585e07b2d5fcf8dc176361f81783b5ab1d5484e309a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16938427c9dabec353e07aae410a2bbd3b37a25b1e91bdf6bed9225917ada4bc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Exponential/Variant88649600a052c680611e8585e07b2d5fcf8dc176361f81783b5ab1d5484e309a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:456e79f8-425c-7010-fa12-1efede3611af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–473.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_exp_sub_sum_le_exp_norm_sub_sum (x : ℂ) (n : ℕ) :
    ‖exp x - ∑ m ∈ range n, x ^ m / m.factorial‖
      ≤ Real.exp ‖x‖ - ∑ m ∈ range n, ‖x‖ ^ m / m.factorial := by
  rw [← CauSeq.lim_const (abv := norm) (∑ m ∈ range n, _), Complex.exp, sub_eq_add_neg,
    ← CauSeq.lim_neg, CauSeq.lim_add, ← lim_norm]
  refine CauSeq.lim_le (CauSeq.le_of_exists ⟨n, fun j hj => ?_⟩)
  simp_rw [← sub_eq_add_neg]
  calc ‖(∑ m ∈ range j, x ^ m / m.factorial) - ∑ m ∈ range n, x ^ m / m.factorial‖
  _ ≤ (∑ m ∈ range j, ‖x‖ ^ m / m.factorial) - ∑ m ∈ range n, ‖x‖ ^ m / m.factorial := by
    rw [sum_range_sub_sum_range hj, sum_range_sub_sum_range hj]
    refine (IsAbsoluteValue.abv_sum norm ..).trans_eq ?_
    congr with i
    simp [Complex.norm_pow]
  _ ≤ Real.exp ‖x‖ - ∑ m ∈ range n, ‖x‖ ^ m / m.factorial := by
    gcongr
    exact Real.sum_le_exp_of_nonneg (norm_nonneg _) _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Exponential/Variant88649600a052c680611e8585e07b2d5fcf8dc176361f81783b5ab1d5484e309a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Exponential/Variant88649600a052c680611e8585e07b2d5fcf8dc176361f81783b5ab1d5484e309a.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd6a2d80c81e25a49593d60aae8f460f329d62fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
