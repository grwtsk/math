# finite_power_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe7405ae-5e26-01a8-338f-e3f30a36193c",
  "kind": "theorem",
  "lexical_name": "finite_power_sum",
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
  "slug": "finite-power-sum--2eec4ff0cb88b99afa8b6f69",
  "source": {
    "blob": "44b23e69254182668c698ad7503be216735df592",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 103,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CubicPowerSummation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2eec4ff0cb88b99afa8b6f69e14d468caffff5d13de449aa7b88ee39186044d7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CubicPowerSummation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe7405ae-5e26-01a8-338f-e3f30a36193c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_power_sum (q : ℝ) (hq : 0 < q) (z : ℂ) (hz : z + 1 ≠ 0) (N : ℕ) :
    (∑ k ∈ Finset.range N, logPower (q + k) z) =
      (logPower (q + N) (z + 1) - logPower q (z + 1)) / (z + 1) +
      (logPower q z - logPower (q + N) z) / 2 +
      z * (logPower (q + N) (z - 1) - logPower q (z - 1)) / 12 +
      z * (z - 1) * (z - 2) * ∑ k ∈ Finset.range N, cellRemainder (q + k) z := by
  induction N with
  | zero => simp
  | succ N ih =>
      simp only [Finset.sum_range_succ, Nat.cast_add, Nat.cast_one]
      rw [ih]
      have hcell := one_cell_power (q + N) (by positivity) z hz
      simp only [add_assoc] at hcell
      linear_combination hcell

end
end GRWTSK.RiemannHypothesis.CubicPowerSummation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CubicPowerSummation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CubicPowerSummation.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44b23e69254182668c698ad7503be216735df592` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
