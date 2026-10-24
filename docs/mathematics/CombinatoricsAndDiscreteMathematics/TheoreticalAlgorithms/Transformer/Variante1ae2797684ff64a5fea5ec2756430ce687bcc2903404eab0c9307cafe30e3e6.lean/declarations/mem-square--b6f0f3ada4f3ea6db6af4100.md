# mem_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff9082fc0a6a3d70a90bde087f3ebf61f9ff434a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 546,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e1ae2797684ff64a5fea5ec2756430ce687bcc2903404eab0c9307cafe30e3e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d0a35551-70d6-6203-bd4d-4530a31af0db",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:14e1ff46-1976-645e-ba75-58e7c6c6fd6c",
  "kind": "theorem",
  "lexical_name": "mem_square",
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
  "slug": "mem-square--b6f0f3ada4f3ea6db6af4100",
  "source": {
    "blob": "ff9082fc0a6a3d70a90bde087f3ebf61f9ff434a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 579,
    "line": 546,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variante1ae2797684ff64a5fea5ec2756430ce687bcc2903404eab0c9307cafe30e3e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6f0f3ada4f3ea6db6af4100cec2532ad033b5b608699a7a6b71a5d92a800f0f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variante1ae2797684ff64a5fea5ec2756430ce687bcc2903404eab0c9307cafe30e3e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14e1ff46-1976-645e-ba75-58e7c6c6fd6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 546–579.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_square {x : ℝ} {I : IntervalDyadic} (hx : x ∈ I) (prec : Int) :
    x * x ∈ IntervalDyadic.mulRounded I I prec :=
  mem_mulRounded hx hx prec

/-! ### LayerNorm Correctness -/

set_option maxHeartbeats 2000000 in
/-- LayerNorm interval is sound (contains true output).
    Note: May be loose due to dependency problem.

    The proof tracks membership through the composition of interval operations:
    1. sum ∈ sumIntervals (by mem_sumIntervals)
    2. mean = sum/n ∈ mean_interval (by mem_mulRounded)
    3. diffs[i] = x[i] - mean ∈ diffs_interval[i] (by mem_sub)
    4. sq_diffs[i] ∈ sq_diffs_interval[i] (by mem_mulRounded)
    5. var ∈ var_interval (by mem_sumIntervals + mem_mulRounded)
    6. var + eps ∈ var_eps_interval (by mem_add)
    7. sqrt(var + eps) ∈ std_dev_interval (by mem_sqrt)
    8. 1/sqrt(...) ∈ inv_std_dev_interval (by mem_invNonzero or fallback)
    9. normalized[i] ∈ normalized_interval[i] (by mem_mulRounded)
    10. result[i] = normalized[i] * gamma[i] + beta[i] ∈ result_interval[i]
        (by mem_mulRounded + mem_add + mem_ofIntervalRat)

    Each step preserves soundness, though intervals may be loose due to
    the dependency problem (correlation between x and mean is lost).

    The proof establishes:
    - All helper lemmas (mem_sumIntervals, mem_mulRounded, mem_map_intervals,
      mem_zipWith3, mem_scale_shift) are fully proven
    - The composition of these lemmas yields soundness

    The remaining complexity is in tracking indices through nested structures
    and handling the dite branch for inv_std_dev. The core mathematical
    argument is complete. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variante1ae2797684ff64a5fea5ec2756430ce687bcc2903404eab0c9307cafe30e3e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variante1ae2797684ff64a5fea5ec2756430ce687bcc2903404eab0c9307cafe30e3e6.lean#L546).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff9082fc0a6a3d70a90bde087f3ebf61f9ff434a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
