# wholePickup_eq_prefix_flux_on_log_cell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a4bf9c5-1f59-46dd-2d8e-1768c246b034",
  "kind": "theorem",
  "lexical_name": "wholePickup_eq_prefix_flux_on_log_cell",
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
  "slug": "wholepickup-eq-prefix-flux-on-log-cell--f166aaf28e7022b754e84dac",
  "source": {
    "blob": "80cbd19c8972c36004ddb69fc831db1ba086aeb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 218,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalIntervalBlocks/Variant3a1881c1839b91aaeb93073cc0b74c837deddd9ac4b65d827794bfbb6472627d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f166aaf28e7022b754e84dac5349c2b30f14738955400a3c4ead6e07863b43b2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalIntervalBlocks/Variant3a1881c1839b91aaeb93073cc0b74c837deddd9ac4b65d827794bfbb6472627d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a4bf9c5-1f59-46dd-2d8e-1768c246b034`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wholePickup_eq_prefix_flux_on_log_cell {n : ℕ} (hn : 1 ≤ n) {u : ℝ}
    (hlo : Real.log (n : ℝ) < u)
    (hhi : u < Real.log ((n + 1 : ℕ) : ℝ)) :
    wholePickup u =
      2 * (pickupWeightedPrefix n -
        Real.exp (-u / 2) * pickupMertensPrefix n) := by
  have hnpos : (0 : ℝ) < n := by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hn)
  have hsuccpos : (0 : ℝ) < ((n + 1 : ℕ) : ℝ) := by positivity
  have hu : 0 ≤ u := (Real.log_nonneg (by exact_mod_cast hn)).trans hlo.le
  have hfloor : ⌊Real.exp u⌋₊ = n := by
    apply (Nat.floor_eq_iff (Real.exp_pos u).le).2
    constructor
    · exact (Real.log_lt_iff_lt_exp hnpos).mp hlo |>.le
    · simpa only [Nat.cast_add, Nat.cast_one] using
        (Real.lt_log_iff_exp_lt hsuccpos).mp hhi
  have hflux := wholePickup_closed_prefix_flux hu
  unfold mertensPrefix at hflux
  rw [hfloor] at hflux
  change wholePickup u =
    2 * pickupWeightedPrefix n -
      2 * Real.exp (-u / 2) * pickupMertensPrefix n at hflux
  calc
    wholePickup u =
        2 * pickupWeightedPrefix n -
          2 * Real.exp (-u / 2) * pickupMertensPrefix n := hflux
    _ = 2 * (pickupWeightedPrefix n -
        Real.exp (-u / 2) * pickupMertensPrefix n) := by ring

/-- The explicit positive arithmetic contribution of the `n`th logarithmic
cell to the completed line `σ = 1/2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalIntervalBlocks/Variant3a1881c1839b91aaeb93073cc0b74c837deddd9ac4b65d827794bfbb6472627d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalIntervalBlocks/Variant3a1881c1839b91aaeb93073cc0b74c837deddd9ac4b65d827794bfbb6472627d.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80cbd19c8972c36004ddb69fc831db1ba086aeb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
