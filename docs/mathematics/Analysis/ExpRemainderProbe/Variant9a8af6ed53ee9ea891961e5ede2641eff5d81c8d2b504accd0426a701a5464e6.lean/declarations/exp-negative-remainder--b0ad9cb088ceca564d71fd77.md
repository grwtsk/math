# exp_negative_remainder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "20e7f984a9b07b2bb9cd555feebc277672834c46",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 4,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9a8af6ed53ee9ea891961e5ede2641eff5d81c8d2b504accd0426a701a5464e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a5a2bfba-d003-a012-d634-5be5d611b7d7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2198f1c4-2cec-7d65-65fb-3356143e304b",
  "kind": "theorem",
  "lexical_name": "exp_negative_remainder",
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
  "slug": "exp-negative-remainder--b0ad9cb088ceca564d71fd77",
  "source": {
    "blob": "20e7f984a9b07b2bb9cd555feebc277672834c46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 16,
    "line": 4,
    "path": "GRWTSK/Analysis/ExpRemainderProbe/Variant9a8af6ed53ee9ea891961e5ede2641eff5d81c8d2b504accd0426a701a5464e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0ad9cb088ceca564d71fd77f7a1213efcde6c00c9abd8ee56aecedf4e515e7f",
  "verification": {
    "reference": "docs/verification/Analysis/ExpRemainderProbe/Variant9a8af6ed53ee9ea891961e5ede2641eff5d81c8d2b504accd0426a701a5464e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2198f1c4-2cec-7d65-65fb-3356143e304b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4–16.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem exp_negative_remainder (u : ℝ) (hu : 0 ≤ u) :
    |Real.exp (-u) - 1 + u| ≤ u ^ 2 := by
  have hnon : 0 ≤ Real.exp (-u) - 1 + u := by
    linarith [Real.add_one_le_exp (-u)]
  rw [abs_of_nonneg hnon]
  have hpos : 0 < 1 + u := by positivity
  have he : Real.exp (-u) ≤ 1 / (1 + u) := by
    rw [Real.exp_neg, ← one_div]
    exact one_div_le_one_div_of_le hpos (by linarith [Real.add_one_le_exp u])
  have hr : 1 / (1 + u) ≤ 1 - u + u ^ 2 := by
    apply (div_le_iff₀ hpos).mpr
    nlinarith [pow_nonneg hu 3]
  linarith
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ExpRemainderProbe/Variant9a8af6ed53ee9ea891961e5ede2641eff5d81c8d2b504accd0426a701a5464e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ExpRemainderProbe/Variant9a8af6ed53ee9ea891961e5ede2641eff5d81c8d2b504accd0426a701a5464e6.lean#L4).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20e7f984a9b07b2bb9cd555feebc277672834c46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
