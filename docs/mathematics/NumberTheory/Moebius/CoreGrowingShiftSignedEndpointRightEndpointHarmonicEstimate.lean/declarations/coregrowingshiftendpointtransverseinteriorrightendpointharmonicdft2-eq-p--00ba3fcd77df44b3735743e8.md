# coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicDFT2_eq_pair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10da530a-de6c-70ec-6fcc-c61302ec472e",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicDFT2_eq_pair",
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
  "slug": "coregrowingshiftendpointtransverseinteriorrightendpointharmonicdft2-eq-p--00ba3fcd77df44b3735743e8",
  "source": {
    "blob": "64f490dc18a0e344c1cf99964cc3df081447714e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 192,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointRightEndpointHarmonicEstimate.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00ba3fcd77df44b3735743e8a06dda3e14dc6710f02d8a340e0ddb618e4d2f0a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointRightEndpointHarmonicEstimate.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10da530a-de6c-70ec-6fcc-c61302ec472e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicDFT2_eq_pair
    (j : ℕ)
    (u s : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicDFT2 j u s =
      coreGrowingShiftEndpointRightEndpointHarmonicPairDFT2 j u s := by
  classical
  let Q := coreGrowingShiftEndpointDoubledFourierModulus j
  unfold coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicDFT2
    coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicXFourier
    coreGrowingShiftEndpointRightEndpointHarmonicPairDFT2
  rw [rightEndpoint_sum_zmod_eq_sum_range]
  -- Flatten the parent nested sum onto its exact `(h,n)` support.
  have hparent :
      (∑ h ∈ Finset.range Q,
        ZMod.stdAddChar (-((h : CoreGrowingShiftEndpointDoubledFourierIndex j) * s)) *
          (let A := coreGrowingShiftEndpointTransverseInteriorTailLower j h
           let B := coreGrowingShiftEndpointTransverseInteriorPrefixUpper j h
           let H := logarithmicShiftThreshold j
           if H < h ∧ A < B then
             ∑ n ∈ Finset.Ico (A + 1) B,
               coreGrowingShiftEndpointTransverseNatCharacter j u n *
                 (((n + h : ℕ) : ℂ))⁻¹
           else 0)) =
        ∑ p ∈ coreGrowingShiftEndpointRightEndpointNHSupport j,
          coreGrowingShiftEndpointTransverseNatCharacter j s p.1 *
            coreGrowingShiftEndpointTransverseNatCharacter j u p.2 *
              (((p.2 + p.1 : ℕ) : ℂ))⁻¹ := by
    unfold coreGrowingShiftEndpointRightEndpointNHSupport
    rw [Finset.sum_filter, Finset.sum_product]
    apply Finset.sum_congr rfl
    intro h hhQ
    have hhQ' : h < Q := Finset.mem_range.mp hhQ
    rw [ZMod.val_cast_of_lt hhQ']
    by_cases hh : logarithmicShiftThreshold j < h
    · let A := coreGrowingShiftEndpointTransverseInteriorTailLower j h
      let B := coreGrowingShiftEndpointTransverseInteriorPrefixUpper j h
      by_cases hAB : A < B
      · rw [if_pos ⟨hh, hAB⟩, Finset.mul_sum]
        rw [show
          (∑ n ∈ Finset.range Q,
            if logarithmicShiftThreshold j < h ∧
                coreGrowingShiftEndpointTransverseInteriorTailLower j h + 1 ≤ n ∧
                n < coreGrowingShiftEndpointTransverseInteriorPrefixUpper j h then
              coreGrowingShiftEndpointTransverseNatCharacter j s h *
                coreGrowingShiftEndpointTransverseNatCharacter j u n *
                  (((n + h : ℕ) : ℂ))⁻¹
            else 0) =
          ∑ n ∈ Finset.Ico (A + 1) B,
            coreGrowingShiftEndpointTransverseNatCharacter j s h *
              coreGrowingShiftEndpointTransverseNatCharacter j u n *
                (((n + h : ℕ) : ℂ))⁻¹ by
          symm
          apply Finset.sum_subset
          · intro n hn
            have hn' := Finset.mem_Ico.mp hn
            exact Finset.mem_range.mpr (lt_of_lt_of_le hn'.2 (by
              unfold B coreGrowingShiftEndpointTransverseInteriorPrefixUpper
                coreGrowingShiftEndpointDoubledFourierModulus
              omega))
          · intro n hnQ hnnot
            have hnQ' := Finset.mem_range.mp hnQ
            by_cases hn : A + 1 ≤ n ∧ n < B
            · exact (hnnot (Finset.mem_Ico.mpr hn)).elim
            · simp [A, B, hh, hn]
        ]
        simp [coreGrowingShiftEndpointTransverseNatCharacter]
        ring
      · have hempty : Finset.Ico (A + 1) B = ∅ := by
          apply Finset.Ico_eq_empty_iff.mpr
          omega
        rw [if_neg (by simp [hAB]), hempty]
        simp [A, B, hh, hAB]
    · simp [hh]
  rw [hparent]
  -- Apply the support-preserving shear bijection.
  symm
  apply Finset.sum_bij
    (fun p _hp => (p.2 + p.1, p.1))
  · intro p hp
    exact
      (mem_coreGrowingShiftEndpointRightEndpointYHSupport_shear_iff
        j p.1 p.2).2 hp
  · intro p hp q hq hpq
    apply Prod.ext
    · have hsecond := congrArg Prod.snd hpq
      have hfirst := congrArg Prod.fst hpq
      omega
    · exact congrArg Prod.snd hpq
  · intro q hq
    have hqmem := hq
    unfold coreGrowingShiftEndpointRightEndpointYHSupport at hqmem
    simp only [Finset.mem_filter, Finset.mem_product, Finset.mem_range] at hqmem
    refine ⟨(q.2, q.1 - q.2), ?_, ?_⟩
    · have hs :=
        (mem_coreGrowingShiftEndpointRightEndpointYHSupport_shear_iff
          j q.2 (q.1 - q.2)).1
      have heq : q.1 - q.2 + q.2 = q.1 := by omega
      rw [heq] at hs
      exact hs hq
    · apply Prod.ext
      · omega
      · rfl
  · intro p hp
    have hphase :=
      coreGrowingShiftEndpointRightEndpoint_character_shear
        j p.1 p.2 u s
    rw [hphase]
    ring

/-- Regrouping the pair model by literal right endpoint gives the nested fiber
formula used in the estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointRightEndpointHarmonicEstimate.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointRightEndpointHarmonicEstimate.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64f490dc18a0e344c1cf99964cc3df081447714e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
