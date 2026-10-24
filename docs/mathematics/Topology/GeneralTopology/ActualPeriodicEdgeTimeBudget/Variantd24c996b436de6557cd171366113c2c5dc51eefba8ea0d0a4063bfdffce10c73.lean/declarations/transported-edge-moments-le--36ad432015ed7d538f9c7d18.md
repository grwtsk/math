# transported_edge_moments_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13ad0811-17e8-3c77-3994-a200df39787b",
  "kind": "theorem",
  "lexical_name": "transported_edge_moments_le",
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
  "slug": "transported-edge-moments-le--36ad432015ed7d538f9c7d18",
  "source": {
    "blob": "5149a9d18c65b6412a4d6139b41b7a742e83c510",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 270,
    "path": "GRWTSK/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudget/Variantd24c996b436de6557cd171366113c2c5dc51eefba8ea0d0a4063bfdffce10c73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36ad432015ed7d538f9c7d1850d19262f538823fab27ef734e4ff2bcd7f41a89",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudget/Variantd24c996b436de6557cd171366113c2c5dc51eefba8ea0d0a4063bfdffce10c73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13ad0811-17e8-3c77-3994-a200df39787b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem transported_edge_moments_le {L : ℝ} (hL : 0 ≤ L) :
    (∫ t in 0..L, (1 + (3 / 2 : ℝ) * (L - t) + (L - t) ^ 2 / 8 +
      (L - t) ^ 3 / 16) * Real.exp (t / 2)) ≤ 16 * Real.exp (L / 2) := by
  have h0 := exponential_truncated_moment_le 0 hL
  have h1 := exponential_truncated_moment_le 1 hL
  have h2 := exponential_truncated_moment_le 2 hL
  have h3 := exponential_truncated_moment_le 3 hL
  norm_num only [Nat.factorial, Nat.cast_ofNat, pow_zero, one_mul, pow_one] at h0 h1 h2 h3
  have he : (∫ t in 0..L, (1 + (3 / 2 : ℝ) * (L - t) + (L - t) ^ 2 / 8 +
      (L - t) ^ 3 / 16) * Real.exp (t / 2)) =
      (∫ t in 0..L, Real.exp (t / 2)) +
        (3 / 2 : ℝ) * (∫ t in 0..L, (L - t) * Real.exp (t / 2)) +
        (∫ t in 0..L, (L - t) ^ 2 * Real.exp (t / 2)) / 8 +
        (∫ t in 0..L, (L - t) ^ 3 * Real.exp (t / 2)) / 16 := by
    rw [← intervalIntegral.integral_const_mul, ← intervalIntegral.integral_div,
      ← intervalIntegral.integral_div]
    rw [← intervalIntegral.integral_add
      ((by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).intervalIntegrable 0 L)
      ((by fun_prop : Continuous (fun t : ℝ =>
        (3 / 2 : ℝ) * ((L - t) * Real.exp (t / 2)))).intervalIntegrable 0 L)]
    rw [← intervalIntegral.integral_add
      ((by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2) +
        (3 / 2 : ℝ) * ((L - t) * Real.exp (t / 2)))).intervalIntegrable 0 L)
      ((by fun_prop : Continuous (fun t : ℝ =>
        (L - t) ^ 2 * Real.exp (t / 2) / 8)).intervalIntegrable 0 L)]
    rw [← intervalIntegral.integral_add
      ((by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2) +
        (3 / 2 : ℝ) * ((L - t) * Real.exp (t / 2)) +
          (L - t) ^ 2 * Real.exp (t / 2) / 8)).intervalIntegrable 0 L)
      ((by fun_prop : Continuous (fun t : ℝ =>
        (L - t) ^ 3 * Real.exp (t / 2) / 16)).intervalIntegrable 0 L)]
    apply intervalIntegral.integral_congr
    intro t _
    dsimp only
    ring
  rw [he]
  linarith

/-- Every lower transported jet is retained in the actual derivative time norm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudget/Variantd24c996b436de6557cd171366113c2c5dc51eefba8ea0d0a4063bfdffce10c73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudget/Variantd24c996b436de6557cd171366113c2c5dc51eefba8ea0d0a4063bfdffce10c73.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5149a9d18c65b6412a4d6139b41b7a742e83c510` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
