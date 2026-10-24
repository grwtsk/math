# upperCrossingTime_bound_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb5cf073-ab4c-a866-ee6f-792817fe063b",
  "kind": "theorem",
  "lexical_name": "upperCrossingTime_bound_eq",
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
  "slug": "uppercrossingtime-bound-eq--c35d61b50ee0d61363cdada2",
  "source": {
    "blob": "c741b9622b69b07d8b5d36b3fcbbbe7576e4786a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 323,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variante55ac50e48b53ccf50b38ad6e2750ddc66b29b3c1c6a1ee87437b8ba37271540.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c35d61b50ee0d61363cdada213731dfcebd5524cdf71ca81ec6be8113b838096",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variante55ac50e48b53ccf50b38ad6e2750ddc66b29b3c1c6a1ee87437b8ba37271540.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb5cf073-ab4c-a866-ee6f-792817fe063b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upperCrossingTime_bound_eq (f : ℕ → Ω → ℝ) (N : ℕ) (ω : Ω) (hab : a < b) :
    upperCrossingTime a b f N N ω = N := by
  by_cases hN' : N < Nat.find (exists_upperCrossingTime_eq f N ω hab)
  · refine' le_antisymm upperCrossingTime_le _
    have hmono : StrictMonoOn (fun n => upperCrossingTime a b f N n ω)
        (Set.Iic (Nat.find (exists_upperCrossingTime_eq f N ω hab)).pred) := by
      refine' strictMonoOn_Iic_of_lt_succ fun m hm => upperCrossingTime_lt_succ hab _
      rw [Nat.lt_pred_iff] at hm
      convert Nat.find_min _ hm
    convert StrictMonoOn.Iic_id_le hmono N (Nat.le_pred_of_lt hN')
  · rw [not_lt] at hN'
    exact upperCrossingTime_stabilize hN' (Nat.find_spec (exists_upperCrossingTime_eq f N ω hab))
#align measure_theory.upper_crossing_time_bound_eq MeasureTheory.upperCrossingTime_bound_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variante55ac50e48b53ccf50b38ad6e2750ddc66b29b3c1c6a1ee87437b8ba37271540.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variante55ac50e48b53ccf50b38ad6e2750ddc66b29b3c1c6a1ee87437b8ba37271540.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c741b9622b69b07d8b5d36b3fcbbbe7576e4786a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
