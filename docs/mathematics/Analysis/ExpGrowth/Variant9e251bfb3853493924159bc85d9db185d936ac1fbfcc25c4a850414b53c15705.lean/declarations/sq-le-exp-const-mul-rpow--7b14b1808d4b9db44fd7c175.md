# sq_le_exp_const_mul_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b30c4138f04a8efbc557c0e3775d30b9ce7dab3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 135,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9e251bfb3853493924159bc85d9db185d936ac1fbfcc25c4a850414b53c15705.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a6acc04e-f6d8-77eb-dbba-334de6704ec6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:901e2091-c575-76a9-e18f-304d55c66ca4",
  "kind": "theorem",
  "lexical_name": "sq_le_exp_const_mul_rpow",
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
  "slug": "sq-le-exp-const-mul-rpow--7b14b1808d4b9db44fd7c175",
  "source": {
    "blob": "7b30c4138f04a8efbc557c0e3775d30b9ce7dab3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 135,
    "path": "GRWTSK/Analysis/ExpGrowth/Variant9e251bfb3853493924159bc85d9db185d936ac1fbfcc25c4a850414b53c15705.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b14b1808d4b9db44fd7c1757e565648eb6775222e0ef3817810820a51d21ec6",
  "verification": {
    "reference": "docs/verification/Analysis/ExpGrowth/Variant9e251bfb3853493924159bc85d9db185d936ac1fbfcc25c4a850414b53c15705.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:901e2091-c575-76a9-e18f-304d55c66ca4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sq_le_exp_const_mul_rpow {b r : ℝ} (hb : 0 < b) (hr : 1 ≤ r) :
    r ^ 2 ≤ exp ((4 / b) * r ^ b) := by
  have hrpos : 0 < r := zero_lt_one.trans_le hr
  have hcoeff2 : 0 ≤ (2 / b : ℝ) := by positivity
  have hcoeff4 : 0 ≤ (4 / b : ℝ) := by positivity
  have hlog_le : log r ≤ (2 / b) * r ^ (b / 2) := by
    have hle_exp : (b / 2) * log r ≤ exp ((b / 2) * log r) := le_exp_self _
    calc
      log r = (2 / b) * ((b / 2) * log r) := by
        field_simp [ne_of_gt hb]
      _ ≤ (2 / b) * exp ((b / 2) * log r) :=
        mul_le_mul_of_nonneg_left hle_exp hcoeff2
      _ = (2 / b) * r ^ (b / 2) := by
        simp [rpow_def_of_pos hrpos, mul_comm]
  have hpow_le : r ^ (b / 2) ≤ r ^ b :=
    rpow_le_rpow_of_exponent_le hr (by linarith)
  have hlog_sq : log (r ^ 2) ≤ (4 / b) * r ^ b := by
    calc
      log (r ^ 2) = 2 * log r := by
        simp [log_pow]
      _ ≤ 2 * ((2 / b) * r ^ (b / 2)) :=
        mul_le_mul_of_nonneg_left hlog_le (by norm_num)
      _ = (4 / b) * r ^ (b / 2) := by ring
      _ ≤ (4 / b) * r ^ b :=
        mul_le_mul_of_nonneg_left hpow_le hcoeff4
  have hsq_pos : 0 < r ^ 2 := by positivity
  rw [← exp_log hsq_pos]
  exact exp_le_exp.2 hlog_sq

/-- If `r ≤ 2 * max x 1`, then `1 + r ≤ 3 * (1 + x)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ExpGrowth/Variant9e251bfb3853493924159bc85d9db185d936ac1fbfcc25c4a850414b53c15705.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ExpGrowth/Variant9e251bfb3853493924159bc85d9db185d936ac1fbfcc25c4a850414b53c15705.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b30c4138f04a8efbc557c0e3775d30b9ce7dab3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
