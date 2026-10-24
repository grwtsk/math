# energy_ge_two_of_far_counts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6c09fe3-657e-2f41-99e5-89eb034daa3d",
  "kind": "theorem",
  "lexical_name": "energy_ge_two_of_far_counts",
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
  "slug": "energy-ge-two-of-far-counts--de1147f471047c6311005dca",
  "source": {
    "blob": "b789d9a7afccd1f449a4acf909017b7471b9a465",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 136,
    "path": "GRWTSK/Analysis/Fourier/ZModPartitionConcentration.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de1147f471047c6311005dca9db0d8464b1ee21de326f62315a35ed17efab61d",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionConcentration.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6c09fe3-657e-2f41-99e5-89eb034daa3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem energy_ge_two_of_far_counts (S : Finset (ZMod p)) (hm : 0 < m)
    (hfour : 4 * m ≤ S.card) (P : BalancedPartitions S m) (χ : ZMod p)
    (t : ℝ) (ht : 0 ≤ t)
    (hcounts : ∀ a : S, (S.card : ℝ) / (16 * m) ≤
      ((part P (P.val a)).filter (fun b =>
        8 * Real.sqrt (t / m) < modularDistance (χ * (a.val - b.val)))).card) :
    2 * t ≤ partitionEnergy (partValues (residueEmbedding S) P) χ := by
  have hmR : (0 : ℝ) < m := by exact_mod_cast hm
  have hnR : (0 : ℝ) < S.card := by exact_mod_cast (show 0 < S.card by omega)
  have hrows (a : S) : (S.card : ℝ) / (16 * m) * (64 * (t / m)) ≤
      ∑ b ∈ part P (P.val a), modularDistance (χ * (a.val - b.val)) ^ 2 := by
    apply row_sum_lower (residueEmbedding S) P χ a
      ((part P (P.val a)).filter (fun b =>
        8 * Real.sqrt (t / m) < modularDistance (χ * (a.val - b.val))))
      (Finset.filter_subset _ _) _ _ (by positivity) (hcounts a)
    intro b hb
    have hb' := (Finset.mem_filter.mp hb).2
    have hsq := pow_le_pow_left₀ (by positivity : 0 ≤ 8 * Real.sqrt (t / m)) hb'.le 2
    change 64 * (t / m) ≤ modularDistance (χ * (a.val - b.val)) ^ 2
    nlinarith [Real.sq_sqrt (div_nonneg ht hmR.le)]
  have he := balanced_energy_ge_rows S hm hfour P χ _ hrows
  have hn : (S.card : ℝ) ≠ 0 := ne_of_gt hnR
  have hmn : (m : ℝ) ≠ 0 := ne_of_gt hmR
  convert he using 1; field_simp; ring

/-- Deterministic success implication for source Lemma 3.3, with its exact
far/near separation and the already proved tail energy lemma. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionConcentration.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModPartitionConcentration.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b789d9a7afccd1f449a4acf909017b7471b9a465` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
