# nonaffineWork_complete_balance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e23ad0bf-a9ba-1338-54bd-c7b7f9aad759",
  "kind": "theorem",
  "lexical_name": "nonaffineWork_complete_balance",
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
  "slug": "nonaffinework-complete-balance--abb60e9de8c69e10e9e91732",
  "source": {
    "blob": "151a550c9ed547876ca611b2976cac9a8b0ddc4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 300,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaEventBalance/Variant5344e84571ef51aaeffce8d2c41983a233825fe081d3b889ef5f376b559cedd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abb60e9de8c69e10e9e91732e41f6b3f17443e1332c46dd93a2f5a67132e0bc4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaEventBalance/Variant5344e84571ef51aaeffce8d2c41983a233825fe081d3b889ef5f376b559cedd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e23ad0bf-a9ba-1338-54bd-c7b7f9aad759`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonaffineWork_complete_balance (A : ℝ) (hA : 1 ≤ A) :
    nonaffineWork A = sourceStorage A 0 + totalSmoothWork A +
      totalEventWork A + totalQuadraticWork A := by
  have hN : 1 ≤ cutoff A :=
    (Nat.one_le_floor_iff _).mpr (Real.one_le_exp (by linarith))
  have hNm : cutoff A - 1 + 1 = cutoff A := by omega
  have ht := staggered_energy_telescope
    (fun j => frozenEnergy A (j + 1) (node A j))
    (fun j => frozenEnergy A (j + 1) (node A (j + 1))) (cutoff A - 1)
  rw [hNm, node_zero A (by linarith), frozenEnergy_initial A,
    node_cutoff A (by linarith), frozenEnergy_terminal A, sub_zero] at ht
  have hj : (∑ j ∈ Finset.range (cutoff A - 1),
      (frozenEnergy A (j + 1 + 1) (node A (j + 1)) -
        frozenEnergy A (j + 1) (node A (j + 1)))) =
      totalEventWork A + totalQuadraticWork A := by
    unfold totalEventWork totalQuadraticWork
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro j hj
    have hjN : j + 1 < cutoff A := by have := Finset.mem_range.mp hj; omega
    rw [node_eq_log A (by linarith) (j + 1) hjN,
      frozenEnergy_event A (j + 1) (by omega)]
    simp only [eventLinearWork, Nat.add_assoc, Nat.reduceAdd]
    rw [show j + 2 - 1 = j + 1 by omega]
  rw [hj] at ht
  rw [nonaffineWork_cell_balance A hA, Finset.sum_add_distrib, ht]
  unfold totalSmoothWork
  ring

/-- This inventory is exactly the closed inventory 2,...,floor(exp(2A)). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaEventBalance/Variant5344e84571ef51aaeffce8d2c41983a233825fe081d3b889ef5f376b559cedd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaEventBalance/Variant5344e84571ef51aaeffce8d2c41983a233825fe081d3b889ef5f376b559cedd7.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `151a550c9ed547876ca611b2976cac9a8b0ddc4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
