# actual_infinite_crossing_tail_envelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1989c27-9ed9-f9b1-9038-5a4e6a1e2c93",
  "kind": "theorem",
  "lexical_name": "actual_infinite_crossing_tail_envelope",
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
  "slug": "actual-infinite-crossing-tail-envelope--b51d95c9db665674b83f3722",
  "source": {
    "blob": "db1d08a370178ec60941ea544312b6cbd927236c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 76,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCrossingTail/Variant22a8d9775f3b3e7cd515c48983fd3d434cc02c1594d3245be9552a27737c66ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b51d95c9db665674b83f3722792c3d3466e0d3f2a8c6152730f6062dc731c8b4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCrossingTail/Variant22a8d9775f3b3e7cd515c48983fd3d434cc02c1594d3245be9552a27737c66ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1989c27-9ed9-f9b1-9038-5a4e6a1e2c93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_infinite_crossing_tail_envelope {N : ℕ} (hN : 3 ≤ N) :
    tailPrice N ≤ envelope N := by
  classical
  let gated : ℕ → ℝ := fun n ↦ if N ≤ n then density n else 0
  have hgate : Summable gated := gated_density_summable N
  have hprice := actual_selected_crossing_price_summable hN
  have hpoint : ∀ n, priceTerm N n ≤ gated n := priceTerm_le_gated_density hN
  have hhead : ∑ n ∈ Finset.range N, gated n = 0 := by
    apply Finset.sum_eq_zero
    intro n hn
    simp only [gated, if_neg (Nat.not_le.mpr (Finset.mem_range.mp hn))]
  have hsplit := hgate.sum_add_tsum_nat_add N
  rw [hhead, zero_add] at hsplit
  have htail : (∑' n : ℕ, gated (n + N)) = ∑' n : ℕ, density (n + N : ℕ) := by
    apply tsum_congr
    intro n
    simp [gated]
  rw [htail] at hsplit
  have hbase : (2 : ℝ) ≤ (N - 1 : ℕ) := by exact_mod_cast (show 2 ≤ N - 1 by omega)
  have hanti : AntitoneOn density (Set.Ici (N - 1 : ℕ)) :=
    density_antitone_on_tail.mono (Set.Ici_subset_Ici.mpr hbase)
  have hint := density_integrable_tail hbase
  have hnonneg : ∀ x ∈ Set.Ioi ((N - 1 : ℕ) : ℝ), 0 ≤ density x := by
    intro x hx
    exact density_nonnegative (by have := Set.mem_Ioi.mp hx; linarith)
  have hsum := hanti.tsum_comp_add_le_integral (N - 1) hint hnonneg
  have heidx (n : ℕ) : n + (N - 1) + 1 = n + N := by omega
  simp only [heidx] at hsum
  calc
    tailPrice N = ∑' n : ℕ, priceTerm N n := rfl
    _ ≤ ∑' n : ℕ, gated n := hprice.tsum_le_tsum hpoint hgate
    _ = ∑' n : ℕ, density (n + N : ℕ) := hsplit.symm
    _ ≤ ∫ x in Set.Ioi ((N - 1 : ℕ) : ℝ), density x := hsum
    _ = envelope N := by
      rw [exact_tail_integral hbase]
      simp only [envelope, Nat.cast_sub (by omega : 1 ≤ N), Nat.cast_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCrossingTail/Variant22a8d9775f3b3e7cd515c48983fd3d434cc02c1594d3245be9552a27737c66ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCrossingTail/Variant22a8d9775f3b3e7cd515c48983fd3d434cc02c1594d3245be9552a27737c66ec.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db1d08a370178ec60941ea544312b6cbd927236c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
