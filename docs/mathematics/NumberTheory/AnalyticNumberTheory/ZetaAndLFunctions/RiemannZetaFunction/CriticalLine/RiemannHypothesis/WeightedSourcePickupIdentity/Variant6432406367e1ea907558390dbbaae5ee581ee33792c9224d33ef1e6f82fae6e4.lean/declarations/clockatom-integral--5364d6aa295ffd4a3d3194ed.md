# clockAtom_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce90cf10-4000-3db0-61a0-aeed0d6bbac5",
  "kind": "theorem",
  "lexical_name": "clockAtom_integral",
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
  "slug": "clockatom-integral--5364d6aa295ffd4a3d3194ed",
  "source": {
    "blob": "30a8f805449456b94a8c67527c804d27727d29ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 41,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourcePickupIdentity/Variant6432406367e1ea907558390dbbaae5ee581ee33792c9224d33ef1e6f82fae6e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5364d6aa295ffd4a3d3194edd0e7ce1bba6834ba268f47fa7796d9b68aabab86",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourcePickupIdentity/Variant6432406367e1ea907558390dbbaae5ee581ee33792c9224d33ef1e6f82fae6e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce90cf10-4000-3db0-61a0-aeed0d6bbac5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem clockAtom_integral {n : ℕ} (hn : 1 ≤ n) {T : ℝ} (_hT : 0 ≤ T) :
    (∫ u in Icc 0 T, clockAtom n u) = atomPickup T n := by
  have hnp : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
  have hnlog : 0 ≤ Real.log n := Real.log_nonneg (by exact_mod_cast hn)
  have hset : Icc (0 : ℝ) T ∩ Ici (Real.log n) = Icc (Real.log n) T := by
    ext u
    simp only [mem_inter_iff, mem_Icc, mem_Ici]
    constructor
    · rintro ⟨⟨_, hhi⟩, hlo⟩
      exact ⟨hlo, hhi⟩
    · intro hu
      exact ⟨⟨hnlog.trans hu.1, hu.2⟩, hu.1⟩
  rw [clockAtom, setIntegral_indicator measurableSet_Ici, hset]
  by_cases hnt : (n : ℝ) ≤ Real.exp T
  · have hlogT := (Real.log_le_iff_le_exp hnp).mpr hnt
    rw [integral_Icc_eq_integral_Ioc, ← intervalIntegral.integral_of_le hlogT,
      exponential_clock_integral, atomPickup, if_pos hnt,
      exp_negative_half, Real.exp_log hnp]
  · have hlogT : T < Real.log n := lt_of_not_ge
      (fun h ↦ hnt ((Real.log_le_iff_le_exp hnp).mp h))
    simp [Icc_eq_empty_of_lt hlogT, atomPickup, hnt]

/-- Zero contributes nothing; all positive integer atoms remain closed-right. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourcePickupIdentity/Variant6432406367e1ea907558390dbbaae5ee581ee33792c9224d33ef1e6f82fae6e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourcePickupIdentity/Variant6432406367e1ea907558390dbbaae5ee581ee33792c9224d33ef1e6f82fae6e4.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30a8f805449456b94a8c67527c804d27727d29ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
