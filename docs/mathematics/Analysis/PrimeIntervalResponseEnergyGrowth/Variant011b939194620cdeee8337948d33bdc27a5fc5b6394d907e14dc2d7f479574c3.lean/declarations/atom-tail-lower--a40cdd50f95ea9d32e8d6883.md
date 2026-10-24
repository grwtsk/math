# atom_tail_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6464933fdffa2345c3dc312bed5156ee63fdbe65",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 310,
      "path": "GRWTSK/NumberTheory/PrimeCounting/PrimeIntervalResponseEnergyGrowth.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:262c070b-784b-0c44-cf3b-4395a5b1b701",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "6464933fdffa2345c3dc312bed5156ee63fdbe65",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 310,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/GRWTSK/NumberTheory/PrimeCounting/PrimeIntervalResponseEnergyGrowth.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:495e5f46-59d6-c7ce-a5dd-56d1be07c9c9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3106a0c5-0afe-1430-da56-40dd9be19def",
  "kind": "theorem",
  "lexical_name": "atom_tail_lower",
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
  "slug": "atom-tail-lower--a40cdd50f95ea9d32e8d6883",
  "source": {
    "blob": "6464933fdffa2345c3dc312bed5156ee63fdbe65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 310,
    "path": "GRWTSK/Analysis/PrimeIntervalResponseEnergyGrowth/Variant011b939194620cdeee8337948d33bdc27a5fc5b6394d907e14dc2d7f479574c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a40cdd50f95ea9d32e8d6883cb71b08ad1d1a7b5e25b21d07f11a06040be309c",
  "verification": {
    "reference": "docs/verification/Analysis/PrimeIntervalResponseEnergyGrowth/Variant011b939194620cdeee8337948d33bdc27a5fc5b6394d907e14dc2d7f479574c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3106a0c5-0afe-1430-da56-40dd9be19def`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem atom_tail_lower {p : ℕ} {T u : ℝ}
    (hp : 0 < p) (hupper : (p : ℝ) ≤ Real.exp T / 2)
    (hu : T - tailWidth ≤ u) :
    atomGain * Real.exp (-T/2) ≤ atom p u := by
  have hpp : 0 < (p : ℝ) := by exact_mod_cast hp
  have hl : Real.log (p : ℝ) ≤ T - Real.log 2 := by
    have h := Real.log_le_log hpp hupper
    rw [Real.log_div (Real.exp_ne_zero T) (by norm_num), Real.log_exp] at h
    exact h
  have he : Real.log (p : ℝ) ≤ u := by
    have hlog : 0 ≤ Real.log (2 : ℝ) := (Real.log_pos (by norm_num)).le
    unfold tailWidth at hu
    linarith
  have hinv : Real.exp (-(T - Real.log 2)/2) ≤ (Real.sqrt (p : ℝ))⁻¹ := by
    rw [← ASBNP04.FiniteProduct.exp_negative_half_log hpp]
    apply Real.exp_le_exp.mpr
    linarith
  have hsub : Real.exp (-u/2) ≤ Real.exp (-T/2 + Real.log 2/4) := by
    apply Real.exp_le_exp.mpr
    unfold tailWidth at hu
    linarith
  have hfirst : Real.exp (-(T - Real.log 2)/2) =
      Real.exp (-T/2) * Real.exp (Real.log 2/2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  have hsecond : Real.exp (-T/2 + Real.log 2/4) =
      Real.exp (-T/2) * Real.exp (Real.log 2/4) := Real.exp_add _ _
  rw [hfirst] at hinv
  rw [hsecond] at hsub
  rw [atom, if_pos he]
  unfold atomGain
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/PrimeIntervalResponseEnergyGrowth/Variant011b939194620cdeee8337948d33bdc27a5fc5b6394d907e14dc2d7f479574c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/PrimeIntervalResponseEnergyGrowth/Variant011b939194620cdeee8337948d33bdc27a5fc5b6394d907e14dc2d7f479574c3.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6464933fdffa2345c3dc312bed5156ee63fdbe65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
