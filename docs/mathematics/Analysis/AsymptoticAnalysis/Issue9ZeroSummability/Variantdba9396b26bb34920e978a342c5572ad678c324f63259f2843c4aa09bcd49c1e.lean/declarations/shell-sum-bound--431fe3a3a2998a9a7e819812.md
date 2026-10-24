# shell_sum_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4461bca1-209e-d48a-3c7a-5f131592dec4",
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
  "slug": "shell-sum-bound--431fe3a3a2998a9a7e819812",
  "source": {
    "blob": "84d895eda6742994f8f0e3902251e9d1cccb172a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 71,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variantdba9396b26bb34920e978a342c5572ad678c324f63259f2843c4aa09bcd49c1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:431fe3a3a2998a9a7e8198121299661355e71a823df36d804cbf8ea9e95d6a70",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variantdba9396b26bb34920e978a342c5572ad678c324f63259f2843c4aa09bcd49c1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4461bca1-209e-d48a-3c7a-5f131592dec4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–86.

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

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variantdba9396b26bb34920e978a342c5572ad678c324f63259f2843c4aa09bcd49c1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variantdba9396b26bb34920e978a342c5572ad678c324f63259f2843c4aa09bcd49c1e.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84d895eda6742994f8f0e3902251e9d1cccb172a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
