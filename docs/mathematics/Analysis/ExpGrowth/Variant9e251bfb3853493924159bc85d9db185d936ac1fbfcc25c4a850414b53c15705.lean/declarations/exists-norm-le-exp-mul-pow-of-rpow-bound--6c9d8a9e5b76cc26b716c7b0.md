# exists_norm_le_exp_mul_pow_of_rpow_bound

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
      "line": 119,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9e251bfb3853493924159bc85d9db185d936ac1fbfcc25c4a850414b53c15705.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a893e70d-4cac-c192-9fba-cdce4bc47a2d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c9a74b33-6914-91ff-e308-4efd1e5c6d7a",
  "kind": "theorem",
  "lexical_name": "exists_norm_le_exp_mul_pow_of_rpow_bound",
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
  "slug": "exists-norm-le-exp-mul-pow-of-rpow-bound--6c9d8a9e5b76cc26b716c7b0",
  "source": {
    "blob": "7b30c4138f04a8efbc557c0e3775d30b9ce7dab3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 119,
    "path": "GRWTSK/Analysis/ExpGrowth/Variant9e251bfb3853493924159bc85d9db185d936ac1fbfcc25c4a850414b53c15705.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c9d8a9e5b76cc26b716c7b00968268be717ef8009e9e774108cd9b781bec812",
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

Occurrence: `result:c9a74b33-6914-91ff-e308-4efd1e5c6d7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_norm_le_exp_mul_pow_of_rpow_bound
    {f : α → E} {r : α → ℝ} {τ : ℝ} {n : ℕ}
    (hr : ∀ x, 1 ≤ r x) (hτn : τ < (n : ℝ))
    (hbound : ∃ C > 0, ∀ x, ‖f x‖ ≤ Real.exp (C * (r x) ^ τ)) :
    ∃ C > 0, ∀ x, ‖f x‖ ≤ Real.exp (C * (r x) ^ n) := by
  rcases hbound with ⟨C, hCpos, hC⟩
  have hweak :
      ∀ x, ‖f x‖ ≤ Real.exp (C * (r x) ^ (n : ℝ)) :=
    norm_le_exp_mul_rpow_of_exponent_le
      (f := f) (r := r) hCpos.le hr (le_of_lt hτn) hC
  refine ⟨C, hCpos, ?_⟩
  intro x
  have hpow : (r x) ^ (n : ℝ) = (r x) ^ n := Real.rpow_natCast (r x) n
  simpa [hpow] using hweak x

/-- A quadratic polynomial factor is absorbed by any positive exponential `rpow` margin. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ExpGrowth/Variant9e251bfb3853493924159bc85d9db185d936ac1fbfcc25c4a850414b53c15705.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ExpGrowth/Variant9e251bfb3853493924159bc85d9db185d936ac1fbfcc25c4a850414b53c15705.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b30c4138f04a8efbc557c0e3775d30b9ce7dab3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
