# summable_norm_sum_mul_antidiagonal_of_summable_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "106a1cf5dc24356764a3da68ec18660a236fef0e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f959f35a6e736841b23fc097248b84fe5ff645251a1fb65c94c6abe9b213a76d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ddbf9636-39c9-33ab-8806-9efe485bfb1c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:56b07059-d997-98de-503d-e5da55cf37ba",
  "kind": "theorem",
  "lexical_name": "summable_norm_sum_mul_antidiagonal_of_summable_norm",
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
  "slug": "summable-norm-sum-mul-antidiagonal-of-summable-norm--78ca9fc833c737fff898fc72",
  "source": {
    "blob": "106a1cf5dc24356764a3da68ec18660a236fef0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 74,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variantf959f35a6e736841b23fc097248b84fe5ff645251a1fb65c94c6abe9b213a76d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78ca9fc833c737fff898fc72b0fa9b692c56510d2ccdcb386427abc291470bbe",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/InfiniteSum/Variantf959f35a6e736841b23fc097248b84fe5ff645251a1fb65c94c6abe9b213a76d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56b07059-d997-98de-503d-e5da55cf37ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_norm_sum_mul_antidiagonal_of_summable_norm {f g : ℕ → R}
    (hf : Summable fun x => ‖f x‖) (hg : Summable fun x => ‖g x‖) :
    Summable fun n => ‖∑ kl in antidiagonal n, f kl.1 * g kl.2‖ := by
  have :=
    summable_sum_mul_antidiagonal_of_summable_mul
      (Summable.mul_of_nonneg hf hg (fun _ => norm_nonneg _) fun _ => norm_nonneg _)
  refine' summable_of_nonneg_of_le (fun _ => norm_nonneg _) _ this
  intro n
  calc
    ‖∑ kl in antidiagonal n, f kl.1 * g kl.2‖ ≤ ∑ kl in antidiagonal n, ‖f kl.1 * g kl.2‖ :=
      norm_sum_le _ _
    _ ≤ ∑ kl in antidiagonal n, ‖f kl.1‖ * ‖g kl.2‖ := by gcongr; apply norm_mul_le
#align summable_norm_sum_mul_antidiagonal_of_summable_norm summable_norm_sum_mul_antidiagonal_of_summable_norm

/-- The Cauchy product formula for the product of two infinite sums indexed by `ℕ`,
    expressed by summing on `Finset.Nat.antidiagonal`.
    See also `tsum_mul_tsum_eq_tsum_sum_antidiagonal` if `f` and `g` are
    *not* absolutely summable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/InfiniteSum/Variantf959f35a6e736841b23fc097248b84fe5ff645251a1fb65c94c6abe9b213a76d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variantf959f35a6e736841b23fc097248b84fe5ff645251a1fb65c94c6abe9b213a76d.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `106a1cf5dc24356764a3da68ec18660a236fef0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
