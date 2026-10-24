# recording_clock_inventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7a28b3b-9080-ac1e-fd0c-1d224155c042",
  "kind": "theorem",
  "lexical_name": "recording_clock_inventory",
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
  "slug": "recording-clock-inventory--3bf0f9de2903bb3725e878a6",
  "source": {
    "blob": "30a8f805449456b94a8c67527c804d27727d29ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 77,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourcePickupIdentity/Variant6432406367e1ea907558390dbbaae5ee581ee33792c9224d33ef1e6f82fae6e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3bf0f9de2903bb3725e878a6620d569f3021fda07202cfca5a24bd0a8184f438",
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

Occurrence: `result:b7a28b3b-9080-ac1e-fd0c-1d224155c042`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem recording_clock_inventory {A T u : ℝ} (hT : T ≤ 2 * A)
    (hu : u ∈ Icc 0 T) :
    arithmeticRecording (Real.exp u) =
      ∑ n ∈ integerInventory A, if Real.log n ≤ u then realMoebius n else 0 := by
  rw [arithmeticRecording, mertens_positive_inventory]
  have hfloor : ⌊Real.exp u⌋₊ ≤ integerCutoff A :=
    Nat.floor_le_floor (Real.exp_le_exp.mpr (hu.2.trans hT))
  have hin : ∀ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, Real.log n ≤ u := by
    intro n hn
    have hn' := Finset.mem_Icc.mp hn
    apply (Real.log_le_iff_le_exp (by exact_mod_cast (by omega : 0 < n))).mpr
    exact (by exact_mod_cast hn'.2 : (n : ℝ) ≤ (⌊Real.exp u⌋₊ : ℝ)).trans
      (Nat.floor_le (Real.exp_pos u).le)
  calc
    _ = ∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊,
        if Real.log n ≤ u then realMoebius n else 0 := by
      apply Finset.sum_congr rfl
      intro n hn
      rw [if_pos (hin n hn)]
    _ = _ := by
      apply Finset.sum_subset
      · intro n hn
        exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hn).1,
          (Finset.mem_Icc.mp hn).2.trans hfloor⟩
      · intro n hn hnot
        have hnl := (Finset.mem_Icc.mp hn).1
        have hlog : ¬ Real.log n ≤ u := by
          intro h
          have hle := Nat.le_floor ((Real.log_le_iff_le_exp
            (by exact_mod_cast (by omega : 0 < n))).mp h)
          exact hnot (Finset.mem_Icc.mpr ⟨hnl, hle⟩)
        simp [hlog]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourcePickupIdentity/Variant6432406367e1ea907558390dbbaae5ee581ee33792c9224d33ef1e6f82fae6e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourcePickupIdentity/Variant6432406367e1ea907558390dbbaae5ee581ee33792c9224d33ef1e6f82fae6e4.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30a8f805449456b94a8c67527c804d27727d29ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
