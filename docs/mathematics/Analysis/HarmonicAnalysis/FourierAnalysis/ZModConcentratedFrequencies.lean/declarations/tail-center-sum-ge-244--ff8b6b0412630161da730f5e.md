# tail_center_sum_ge_244

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd8c39da-aa6a-04a1-aac8-be66fe30bdda",
  "kind": "theorem",
  "lexical_name": "tail_center_sum_ge_244",
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
  "slug": "tail-center-sum-ge-244--ff8b6b0412630161da730f5e",
  "source": {
    "blob": "583fd11a240c53a599dae3f719b121d2544a8c04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 125,
    "path": "GRWTSK/Analysis/Fourier/ZModConcentratedFrequencies.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff8b6b0412630161da730f5ee8779d47e0effec540d93fac38d29c0f9d0e2a75",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModConcentratedFrequencies.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd8c39da-aa6a-04a1-aac8-be66fe30bdda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tail_center_sum_ge_244 (S : Finset (ZMod p)) (hS : S.Nonempty)
    (χ center : ZMod p) (m t : ℝ) (hm : 0 < m) (ht : 0 ≤ t)
    (hE : 2000 * t ≤ m * pairEnergy S χ) :
    (244 * t / m) * S.card ≤
      ∑ x ∈ S \ phaseInterval χ center (16 * Real.sqrt (t / m)),
        modularDistance (χ * x - center) ^ 2 := by
  have hcard : (0 : ℝ) < S.card := by exact_mod_cast hS.card_pos
  have htotal := card_mul_pairEnergy_le_center_sum S hS χ center
  have htotal' : (2000 * t / m) * S.card ≤
      4 * ∑ x ∈ S, modularDistance (χ * x - center) ^ 2 := by
    have hdiv : 2000 * t / m ≤ pairEnergy S χ :=
      (div_le_iff₀ hm).mpr (by simpa only [mul_comm] using hE)
    exact (mul_le_mul_of_nonneg_right hdiv hcard.le).trans (by simpa only [mul_comm] using htotal)
  have hinside := phaseInterval_center_sum_le S χ center m t (div_nonneg ht hm.le)
  have hsplit : (∑ x ∈ S, modularDistance (χ * x - center) ^ 2) =
      (∑ x ∈ S \ phaseInterval χ center (16 * Real.sqrt (t / m)),
        modularDistance (χ * x - center) ^ 2) +
      ∑ x ∈ S ∩ phaseInterval χ center (16 * Real.sqrt (t / m)),
        modularDistance (χ * x - center) ^ 2 := by
    rw [← Finset.sum_union (Finset.disjoint_sdiff_inter S _)]
    congr 1
    ext x
    simp only [Finset.mem_union, Finset.mem_sdiff, Finset.mem_inter]
    tauto
  rw [hsplit] at htotal'
  have h1 : 2000 * t / m = 2000 * (t / m) := by ring
  have h2 : 244 * t / m = 244 * (t / m) := by ring
  rw [h1] at htotal'
  rw [h2]
  nlinarith

/-- Source Lemma 3.2, with the stated constant 200 and any center. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModConcentratedFrequencies.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModConcentratedFrequencies.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `583fd11a240c53a599dae3f719b121d2544a8c04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
