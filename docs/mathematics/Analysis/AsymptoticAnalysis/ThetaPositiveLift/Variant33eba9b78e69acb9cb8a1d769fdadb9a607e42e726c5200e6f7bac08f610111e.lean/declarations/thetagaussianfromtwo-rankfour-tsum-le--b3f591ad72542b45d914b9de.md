# thetaGaussianFromTwo_rankFour_tsum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58bb8427-90d5-ea4e-1197-7a79c346b9f8",
  "kind": "theorem",
  "lexical_name": "thetaGaussianFromTwo_rankFour_tsum_le",
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
  "slug": "thetagaussianfromtwo-rankfour-tsum-le--b3f591ad72542b45d914b9de",
  "source": {
    "blob": "1819768154537430ac8c6ec7fdb289a022fd654b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 192,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant33eba9b78e69acb9cb8a1d769fdadb9a607e42e726c5200e6f7bac08f610111e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3f591ad72542b45d914b9de09c17f6dc627ea685c3a18046c89dafd02b8509c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant33eba9b78e69acb9cb8a1d769fdadb9a607e42e726c5200e6f7bac08f610111e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58bb8427-90d5-ea4e-1197-7a79c346b9f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaGaussianFromTwo_rankFour_tsum_le
    {A : ℝ} (hA : 3 ≤ A) (p : ℕ) (hp : p ≤ 16) :
    (∑' m : ℕ, ((m : ℝ) + 2) ^ p *
      Real.exp (-A * (((m : ℝ) + 2) ^ 2 - 1))) ≤
        2 * 2 ^ p * Real.exp (-3 * A) := by
  have h := (thetaGaussianFromTwo_rankFour_summable hA p hp).tsum_le_tsum
    (rankFourGaussianFromTwo_geometric hA p hp)
    ((summable_geometric_of_norm_lt_one
      (by norm_num : ‖(1 / 2 : ℝ)‖ < 1)).mul_left
        (rankFourGaussianFromTwo A p 0))
  rw [tsum_mul_left, tsum_geometric_of_norm_lt_one
    (by norm_num : ‖(1 / 2 : ℝ)‖ < 1)] at h
  change (∑' m, rankFourGaussianFromTwo A p m) ≤ _
  apply h.trans_eq
  simp only [rankFourGaussianFromTwo, Nat.cast_zero, zero_add]
  norm_num
  ring_nf

/-- Exact coefficient in the seven-coordinate n >= 2 remainder box. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant33eba9b78e69acb9cb8a1d769fdadb9a607e42e726c5200e6f7bac08f610111e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant33eba9b78e69acb9cb8a1d769fdadb9a607e42e726c5200e6f7bac08f610111e.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1819768154537430ac8c6ec7fdb289a022fd654b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
