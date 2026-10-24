# greenResidual_any_finset_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86c0daca-6226-0b19-a37b-624a26037630",
  "kind": "theorem",
  "lexical_name": "greenResidual_any_finset_le",
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
  "slug": "greenresidual-any-finset-le--bcf3790a263720cac0ef1fe6",
  "source": {
    "blob": "1c043402ab561d5476797ab2096e34f99aa7bb35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 31,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFullResidualEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcf3790a263720cac0ef1fe69cc1df9543e99bf5b85a0d60960cc7f8d815a091",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFullResidualEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86c0daca-6226-0b19-a37b-624a26037630`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem greenResidual_any_finset_le
    {X : ℕ} (hX : 2 ≤ X) (s : Finset ℤ) :
    ∑ k ∈ s, (if k = 0 then 0 else ‖greenCenteringResidual X k‖^2) ≤
      greenFullResidualEnergyBound X := by
  let M : ℕ := ∑ k ∈ s, Int.natAbs k
  have hsub :
      s.filter (fun k => k ≠ 0) ⊆
        (Finset.Icc (-(M : ℤ)) (M : ℤ)).erase 0 := by
    intro k hk
    have hks := (Finset.mem_filter.mp hk).1
    have hk0 := (Finset.mem_filter.mp hk).2
    apply Finset.mem_erase.mpr
    refine ⟨hk0, Finset.mem_Icc.mpr ?_⟩
    have habs : Int.natAbs k ≤ M := by
      exact Finset.single_le_sum
        (fun j _ => Nat.zero_le (Int.natAbs j)) hks
    omega
  calc
    ∑ k ∈ s, (if k = 0 then 0 else ‖greenCenteringResidual X k‖^2) =
      ∑ k ∈ s.filter (fun k => k ≠ 0),
        ‖greenCenteringResidual X k‖^2 := by
      rw [Finset.sum_filter]
      apply Finset.sum_congr rfl
      intro k hk
      simp [hk]
    _ ≤ greenSymmetricFrequencyEnergy X M := by
      unfold greenSymmetricFrequencyEnergy
      exact Finset.sum_le_sum_of_subset_of_nonneg hsub
        (fun _ _ _ => sq_nonneg _)
    _ ≤ greenFiniteHybridResidualEnergy X
        (greenFrequencyQuotientCutoff X M) :=
      greenSymmetricFrequencyEnergy_le_hybrid hX
    _ ≤ greenFullResidualEnergyBound X := by
      exact greenFiniteHybridResidualEnergy_le_canonical hX

/-- Summability of the full deterministic residual energy follows from the
uniform bound on arbitrary finite sums. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFullResidualEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFullResidualEnergy.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c043402ab561d5476797ab2096e34f99aa7bb35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
