# prime_resolving_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b62e4fd-fba8-3a7c-1162-2839642c4500",
  "kind": "theorem",
  "lexical_name": "prime_resolving_error",
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
  "slug": "prime-resolving-error--4aa06a14e6668f73c981b133",
  "source": {
    "blob": "621734c1cc6aff5d269440da66968aa1d03acdf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 135,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variant387c99faad63b6fb9f2a6c60f02d69d1ff4c6b4c4ae52ac2429388b643193c30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4aa06a14e6668f73c981b133e138b6c942aab0bc4f377cd905a6be7d8066a714",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt02/Variant387c99faad63b6fb9f2a6c60f02d69d1ff4c6b4c4ae52ac2429388b643193c30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b62e4fd-fba8-3a7c-1162-2839642c4500`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_resolving_error {η A : ℝ} (hη : 0 < η) (hA : 1 ≤ A) :
    |densityReadout A (primeCorrected A
      (decodedTest A (mesh A (primeResolutionCount η A)) (primeResolutionCount η A)))-
      criticalRemovedPairedWork A| ≤ η := by
  let n := primeResolutionCount η A
  let h := mesh A n
  have hn : 1 ≤ n := primeResolutionCount_pos η A
  have hh : 0 < h := mesh_pos hA hn
  have hgrid : (n : ℝ)*h=2*A := mesh_grid A hn
  have hL : 0 ≤ Real.exp A*((1/2 : ℝ)+5/A) := by positivity
  have herr : ∀ u∈Icc 0 (2*A),
      |decodedTest A h n u-pairedTailTest A u|≤
        Real.exp A*((1/2 : ℝ)+5/A)*h := by
    intro u hu
    have hu' : u∈Icc 0 ((n:ℝ)*h) := by rwa [hgrid]
    obtain ⟨_,_,hlo,hhi⟩ := rightSelector_bounds hh n hu'
    have hmem : rightSelector h n u∈Icc 0 (2*A) := by
      rw [← hgrid]
      exact ⟨hlo,hhi⟩
    rw [decodedTest_eq_comp hA hh n]
    exact (paired_lipschitz hA hu hmem).trans
      (mul_le_mul_of_nonneg_left (rightSelector_dist hh n hu') hL)
  have he := primeCorrected_readout_error hA (mul_nonneg hL hh.le)
    (decodedTest A h n) (decodedTest_integrable A h n).intervalIntegrable herr
  have hd : criticalDecay (2*A) ≤ 1 := by
    unfold criticalDecay
    rw [Real.exp_le_one_iff]
    linarith
  have hm : 2*A-1+criticalDecay (2*A) ≤ 2*A := by linarith
  exact (he.trans (mul_le_mul_of_nonneg_left hm (mul_nonneg hL hh.le))).trans
    (prime_resolution_budget hη hA)

/-- Apply the existing tail consumer as soon as the new retained signed budget is supplied. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt02/Variant387c99faad63b6fb9f2a6c60f02d69d1ff4c6b4c4ae52ac2429388b643193c30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variant387c99faad63b6fb9f2a6c60f02d69d1ff4c6b4c4ae52ac2429388b643193c30.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `621734c1cc6aff5d269440da66968aa1d03acdf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
