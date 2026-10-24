# shell_sum_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fb9777f9b9c0886256778bccbe93443c65a3754b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6c16b4ef977ebda04c06d69b4b8249f35ddaa8f3a697252351b672956d9f58e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:408e76b1-e352-5a99-dde0-8185b26a4da4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dcca77b5-04e7-22d5-2e6a-c4a2a7603bab",
  "kind": "theorem",
  "lexical_name": "shell_sum_bound",
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
  "slug": "shell-sum-bound--eb51e0ace2a8b59b0bc03ada",
  "source": {
    "blob": "fb9777f9b9c0886256778bccbe93443c65a3754b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 63,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variant6c16b4ef977ebda04c06d69b4b8249f35ddaa8f3a697252351b672956d9f58e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb51e0ace2a8b59b0bc03ada718a816636cb82335d0e963b018c4cee5a7a0e86",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variant6c16b4ef977ebda04c06d69b4b8249f35ddaa8f3a697252351b672956d9f58e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dcca77b5-04e7-22d5-2e6a-c4a2a7603bab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shell_sum_bound {C : ℝ}
    (hc : ∀ n : ℕ, (Nat.card (ZeroShell n):ℝ) ≤ C*(n+1:ℝ)^4) (n : ℕ) :
    (∑' o : ZeroShell n, weight o.val) ≤ C*(n+1:ℝ)^(-2:ℝ) := by
  have := zeroShell_finite n
  let := Fintype.ofFinite (ZeroShell n)
  calc
    (∑' o : ZeroShell n, weight o.val) ≤ ∑' _o : ZeroShell n, (n+1:ℝ)^(-6:ℝ) :=
      Summable.tsum_le_tsum (shell_weight_le n) (Summable.of_finite) (Summable.of_finite)
    _ = (Nat.card (ZeroShell n):ℝ) * (n+1:ℝ)^(-6:ℝ) := by
      simp [tsum_fintype, Nat.card_eq_fintype_card]
    _ ≤ (C*(n+1:ℝ)^4) * (n+1:ℝ)^(-6:ℝ) :=
      mul_le_mul_of_nonneg_right (hc n) (Real.rpow_nonneg (by positivity) _)
    _ = C*(n+1:ℝ)^(-2:ℝ) := by
      rw [mul_assoc, ← Real.rpow_natCast (n+1:ℝ) 4, ← Real.rpow_add (by positivity)]
      norm_num

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variant6c16b4ef977ebda04c06d69b4b8249f35ddaa8f3a697252351b672956d9f58e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variant6c16b4ef977ebda04c06d69b4b8249f35ddaa8f3a697252351b672956d9f58e6.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb9777f9b9c0886256778bccbe93443c65a3754b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
