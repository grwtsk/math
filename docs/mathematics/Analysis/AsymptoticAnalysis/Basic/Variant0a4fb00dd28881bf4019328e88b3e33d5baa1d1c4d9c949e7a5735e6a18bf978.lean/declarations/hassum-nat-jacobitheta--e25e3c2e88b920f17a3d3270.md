# hasSum_nat_jacobiTheta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f03b7547-bac8-73d3-1cdf-52003533a2af",
  "kind": "theorem",
  "lexical_name": "hasSum_nat_jacobiTheta",
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
  "slug": "hassum-nat-jacobitheta--e25e3c2e88b920f17a3d3270",
  "source": {
    "blob": "6fde4002d242155609497fc30e009e920b66a329",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 124,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant0a4fb00dd28881bf4019328e88b3e33d5baa1d1c4d9c949e7a5735e6a18bf978.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e25e3c2e88b920f17a3d3270283932dbc67f2c7d61e0b55fdeef9eff93b45aa6",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variant0a4fb00dd28881bf4019328e88b3e33d5baa1d1c4d9c949e7a5735e6a18bf978.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f03b7547-bac8-73d3-1cdf-52003533a2af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_nat_jacobiTheta {z : ℂ} (hz : 0 < im z) :
    HasSum (fun n : ℕ => cexp (π * I * ((n : ℂ) + 1) ^ 2 * z)) ((jacobiTheta z - 1) / 2) := by
  have := (summable_exp_mul_sq hz).hasSum.sum_nat_of_sum_int
  rw [← @hasSum_nat_add_iff' ℂ _ _ _ _ 1] at this
  simp_rw [Finset.sum_range_one, Int.cast_neg, Int.cast_ofNat, Nat.cast_zero, neg_zero,
    Int.cast_zero, sq (0 : ℂ), mul_zero, zero_mul, neg_sq, ← mul_two,
    Complex.exp_zero, add_sub_assoc, (by norm_num : (1 : ℂ) - 1 * 2 = -1), ← sub_eq_add_neg,
    Nat.cast_add, Nat.cast_one] at this
  convert this.div_const 2 using 1
  simp_rw [mul_div_cancel (G₀ := ℂ) _ two_ne_zero]
#align has_sum_nat_jacobi_theta hasSum_nat_jacobiTheta

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variant0a4fb00dd28881bf4019328e88b3e33d5baa1d1c4d9c949e7a5735e6a18bf978.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant0a4fb00dd28881bf4019328e88b3e33d5baa1d1c4d9c949e7a5735e6a18bf978.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fde4002d242155609497fc30e009e920b66a329` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
