# tsum_pow_div_one_sub_eq_tsum_sigma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f466e418-d3c8-2e79-5eae-281aea1a44a8",
  "kind": "lemma",
  "lexical_name": "tsum_pow_div_one_sub_eq_tsum_sigma",
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
  "slug": "tsum-pow-div-one-sub-eq-tsum-sigma--32145241f89af72bf39c25f7",
  "source": {
    "blob": "38dcfb77aa2df8d81adb0acde8c598b384ce8435",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 130,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantec6d1e8a79d10a4ef038ea06b69c297596e00a28d391e66b40e219ded807f17a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32145241f89af72bf39c25f7f85a127a38f5839684b9e30246cd71cfdd2df0b3",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantec6d1e8a79d10a4ef038ea06b69c297596e00a28d391e66b40e219ded807f17a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f466e418-d3c8-2e79-5eae-281aea1a44a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tsum_pow_div_one_sub_eq_tsum_sigma {r : 𝕜} (hr : ‖r‖ < 1) (k : ℕ) :
    ∑' n : ℕ+, n ^ k * r ^ (n : ℕ) / (1 - r ^ (n : ℕ)) = ∑' n : ℕ+, σ k n * r ^ (n : ℕ) := by
  have (m : ℕ) [NeZero m] := tsum_geometric_of_norm_lt_one (ξ := r ^ m)
    (by simpa using pow_lt_one₀ (by simp) hr (NeZero.ne _))
  simp only [div_eq_mul_inv, ← this, ← tsum_mul_left, mul_assoc, ← _root_.pow_succ',
    ← fun (n : ℕ) ↦ tsum_pnat_eq_tsum_succ (f := fun m ↦ n ^ k * (r ^ n) ^ m)]
  have h00 := tsum_prod_pow_eq_tsum_sigma k hr
  rw [Summable.tsum_comm (by apply (summable_prod_mul_pow k hr).prod_symm)] at h00
  rw [← h00]
  exact tsum_congr₂ <| fun b c ↦ by simp [mul_comm c.val b.val, pow_mul]

omit [CompleteSpace 𝕜] [NormSMulClass ℤ 𝕜] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantec6d1e8a79d10a4ef038ea06b69c297596e00a28d391e66b40e219ded807f17a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantec6d1e8a79d10a4ef038ea06b69c297596e00a28d391e66b40e219ded807f17a.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38dcfb77aa2df8d81adb0acde8c598b384ce8435` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
