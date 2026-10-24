# sum_Ioc_pow_apply_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e06b2fac-d56f-c179-0a92-e3c92eb24d70",
  "kind": "theorem",
  "lexical_name": "sum_Ioc_pow_apply_le",
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
  "slug": "sum-ioc-pow-apply-le--b6d52dd48c20e1d57a15fbee",
  "source": {
    "blob": "98391cd54219a20fa3b9d5949141d7ecef5de3d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 134,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6d52dd48c20e1d57a15fbee5d8af20c2eb462bdba2a7e1e175f00755b5ed2f9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e06b2fac-d56f-c179-0a92-e3c92eb24d70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_Ioc_pow_apply_le {f : ArithmeticFunction ℝ} {w : ℕ → ℝ} (hw : SubmultWeight w)
    (hf : ∀ n, 0 ≤ f n) (X : ℕ) :
    ∀ m : ℕ, ∑ N ∈ Ioc 0 X, (f ^ (m + 1)) N * w N ≤ (∑ n ∈ Ioc 0 X, f n * w n) ^ (m + 1)
  | 0 => by simp
  | m + 1 => by
      have h0 : 0 ≤ ∑ n ∈ Ioc 0 X, f n * w n := sum_nonneg fun n _ => mul_nonneg (hf n) (hw.nonneg n)
      calc ∑ N ∈ Ioc 0 X, (f ^ (m + 1 + 1)) N * w N
          = ∑ N ∈ Ioc 0 X, (f ^ (m + 1) * f) N * w N := by rw [pow_succ]
        _ ≤ (∑ d ∈ Ioc 0 X, (f ^ (m + 1)) d * w d) * (∑ e ∈ Ioc 0 X, f e * w e) :=
            sum_Ioc_mul_apply_le hw (pow_apply_nonneg hf (m + 1)) hf X
        _ ≤ (∑ n ∈ Ioc 0 X, f n * w n) ^ (m + 1) * (∑ e ∈ Ioc 0 X, f e * w e) :=
            mul_le_mul_of_nonneg_right (sum_Ioc_pow_apply_le hw hf X m) h0
        _ = (∑ n ∈ Ioc 0 X, f n * w n) ^ (m + 1 + 1) := by ring


end Swap

/-! ### Λ, Λ·log and the Dirichlet powers Λ^{∗m} -/

/-- (Λ·log)(n) = Λ(n)·log n  (the first factor of lamLogConv). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98391cd54219a20fa3b9d5949141d7ecef5de3d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
