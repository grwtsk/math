# sum_mem_smallEnergyPoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17c2f8a6-140f-6490-cb3c-5a20c801f41e",
  "kind": "theorem",
  "lexical_name": "sum_mem_smallEnergyPoints",
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
  "slug": "sum-mem-smallenergypoints--c0dfbbbfc3df09ea38461e6f",
  "source": {
    "blob": "991e5cd3b742f2c3f3235e1d34715f5f8db95e20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 59,
    "path": "GRWTSK/Analysis/Fourier/ZModSmallEnergySets.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0dfbbbfc3df09ea38461e6f090a2422ebd8386b5be7aaea64536b3bc54d7e9a",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySets.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17c2f8a6-140f-6490-cb3c-5a20c801f41e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_mem_smallEnergyPoints {ι : Type*} (I : Finset ι) (hI : I.Nonempty)
    (B : Finset (ZMod p)) (δ : ℝ) (x : ι → ZMod p)
    (hx : ∀ i ∈ I, x i ∈ smallEnergyPoints B δ) :
    (∑ i ∈ I, x i) ∈ smallEnergyPoints B ((I.card : ℝ) ^ 2 * δ) := by
  rw [mem_smallEnergyPoints]
  have hsum : (∑ χ ∈ B, modularDistance (χ * ∑ i ∈ I, x i) ^ 2) ≤
      I.card * ∑ i ∈ I, ∑ χ ∈ B, modularDistance (χ * x i) ^ 2 := by
    calc
      _ ≤ ∑ χ ∈ B, I.card * ∑ i ∈ I, modularDistance (χ * x i) ^ 2 := by
        apply Finset.sum_le_sum
        intro χ _
        simpa only [Finset.mul_sum] using modularDistance_sum_sq_le I (fun i => χ * x i)
      _ = _ := by rw [← Finset.mul_sum, Finset.sum_comm]
  have hlt : (∑ i ∈ I, ∑ χ ∈ B, modularDistance (χ * x i) ^ 2) <
      ∑ _i ∈ I, δ * B.card := by
    exact Finset.sum_lt_sum_of_nonempty hI (fun i hi => (mem_smallEnergyPoints _ _ _).mp (hx i hi))
  have hc : (0 : ℝ) < I.card := by exact_mod_cast hI.card_pos
  have hm := mul_lt_mul_of_pos_left hlt hc
  simp only [Finset.sum_const, nsmul_eq_mul] at hm
  have heq : (I.card : ℝ) * ((I.card : ℝ) * (δ * B.card)) =
      (I.card : ℝ) ^ 2 * δ * B.card := by ring
  exact hsum.trans_lt (hm.trans_eq heq)

/-- Orthogonality of the standard additive characters, for every nonzero modulus. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySets.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModSmallEnergySets.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `991e5cd3b742f2c3f3235e1d34715f5f8db95e20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
