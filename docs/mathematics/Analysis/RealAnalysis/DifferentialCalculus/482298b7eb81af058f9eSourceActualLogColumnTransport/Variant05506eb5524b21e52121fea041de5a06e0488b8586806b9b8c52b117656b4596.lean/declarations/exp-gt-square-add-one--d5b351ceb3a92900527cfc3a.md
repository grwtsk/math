# exp_gt_square_add_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:314fdbf6-885d-aabf-64a7-b87d31a629dc",
  "kind": "theorem",
  "lexical_name": "exp_gt_square_add_one",
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
  "slug": "exp-gt-square-add-one--d5b351ceb3a92900527cfc3a",
  "source": {
    "blob": "468219a70e5a25ff0e592cc7a38a8aee05e21184",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 293,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/482298b7eb81af058f9eSourceActualLogColumnTransport/Variant05506eb5524b21e52121fea041de5a06e0488b8586806b9b8c52b117656b4596.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5b351ceb3a92900527cfc3ae91d5864f5646c9cc5eb10ab71991570d068fe15",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/482298b7eb81af058f9eSourceActualLogColumnTransport/Variant05506eb5524b21e52121fea041de5a06e0488b8586806b9b8c52b117656b4596.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:314fdbf6-885d-aabf-64a7-b87d31a629dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem exp_gt_square_add_one {A : ℝ} (hA : 1 ≤ A) :
    A ^ 2 + 1 < Real.exp A := by
  have hsum := Real.sum_le_exp_of_nonneg (by linarith : 0 ≤ A) 5
  norm_num [Finset.sum_range_succ, Nat.factorial] at hsum
  have ht : 0 ≤ A - 1 := sub_nonneg.mpr hA
  have hm : 0 < (A - 1) ^ 4 / 24 + (A - 1) ^ 3 / 3 +
      (A - 1) ^ 2 / 4 + 2 * (A - 1) / 3 + 17 / 24 := by positivity
  have he : 1 + A + A ^ 2 / 2 + A ^ 3 / 6 + A ^ 4 / 24 - (A ^ 2 + 1) =
      (A - 1) ^ 4 / 24 + (A - 1) ^ 3 / 3 +
        (A - 1) ^ 2 / 4 + 2 * (A - 1) / 3 + 17 / 24 := by ring
  linarith

/-- The genuine original log-column interval is ordered at every real A at least one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/482298b7eb81af058f9eSourceActualLogColumnTransport/Variant05506eb5524b21e52121fea041de5a06e0488b8586806b9b8c52b117656b4596.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/482298b7eb81af058f9eSourceActualLogColumnTransport/Variant05506eb5524b21e52121fea041de5a06e0488b8586806b9b8c52b117656b4596.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `468219a70e5a25ff0e592cc7a38a8aee05e21184` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
