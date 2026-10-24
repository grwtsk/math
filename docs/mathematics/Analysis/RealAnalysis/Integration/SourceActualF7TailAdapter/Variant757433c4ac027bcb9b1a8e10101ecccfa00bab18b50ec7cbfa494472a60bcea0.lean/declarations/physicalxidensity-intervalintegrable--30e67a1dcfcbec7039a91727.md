# physicalXiDensity_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28e68902-9495-5185-fff3-60bed626a640",
  "kind": "theorem",
  "lexical_name": "physicalXiDensity_intervalIntegrable",
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
  "slug": "physicalxidensity-intervalintegrable--30e67a1dcfcbec7039a91727",
  "source": {
    "blob": "c5ebf086e7f112f111d48f52289ab5509c81df9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 71,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualF7TailAdapter/Variant757433c4ac027bcb9b1a8e10101ecccfa00bab18b50ec7cbfa494472a60bcea0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30e67a1dcfcbec7039a9172793fb61b4df0b0c7af69d82c8afd076481e31685d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualF7TailAdapter/Variant757433c4ac027bcb9b1a8e10101ecccfa00bab18b50ec7cbfa494472a60bcea0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28e68902-9495-5185-fff3-60bed626a640`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem physicalXiDensity_intervalIntegrable (T : ℝ) (hT : Real.log 7 ≤ T) :
    IntervalIntegrable physicalXiDensity volume 7 (Real.exp T) := by
  have hX7 : 7 ≤ Real.exp T := by
    simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 7)] using
      Real.exp_le_exp.mpr hT
  have hf : ContinuousOn (fun y : ℝ => 1 / y ^ (3 / 2 : ℝ))
      (Icc 2 (Real.exp T)) := by
    intro y hy
    have hyp : 0 < y := by linarith [hy.1]
    exact (continuousAt_const.div
      (continuousAt_id.rpow_const (Or.inl hyp.ne'))
      (Real.rpow_pos_of_pos hyp _).ne').continuousWithinAt
  have hi := SourceActualPsiInverseSquare.shiftedActualChebyshev_mul_intervalIntegrable
    (Real.exp T) (by linarith) _ hf
  have hs : uIcc 7 (Real.exp T) ⊆ uIcc 2 (Real.exp T) := by
    rw [uIcc_of_le hX7, uIcc_of_le (by linarith : (2 : ℝ) ≤ Real.exp T)]
    exact Icc_subset_Icc (by norm_num) le_rfl
  simpa only [physicalXiDensity, mul_one_div] using hi.mono_set hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualF7TailAdapter/Variant757433c4ac027bcb9b1a8e10101ecccfa00bab18b50ec7cbfa494472a60bcea0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualF7TailAdapter/Variant757433c4ac027bcb9b1a8e10101ecccfa00bab18b50ec7cbfa494472a60bcea0.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5ebf086e7f112f111d48f52289ab5509c81df9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
