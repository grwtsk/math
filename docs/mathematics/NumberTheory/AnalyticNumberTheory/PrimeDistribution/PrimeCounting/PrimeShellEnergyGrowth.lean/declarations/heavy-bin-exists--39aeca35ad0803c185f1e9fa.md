# heavy_bin_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "54eb6c8e72cf7de387ab346af6815393151e057f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/NumberTheory/PrimeCounting/PrimeShellEnergyGrowth.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:669ab58d-f1cd-8042-f011-bd31969e87e5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d5b4018-3e5e-945d-724b-3f11b42d8ca2",
  "kind": "theorem",
  "lexical_name": "heavy_bin_exists",
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
  "slug": "heavy-bin-exists--39aeca35ad0803c185f1e9fa",
  "source": {
    "blob": "54eb6c8e72cf7de387ab346af6815393151e057f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 79,
    "path": "GRWTSK/NumberTheory/PrimeCounting/PrimeShellEnergyGrowth.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39aeca35ad0803c185f1e9fa3a5292aa060753a336d91809584c70d372d9d82a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d5b4018-3e5e-945d-724b-3f11b42d8ca2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem heavy_bin_exists {T : ℝ} (hT : 1024 ≤ T) :
    ∃ k ∈ Finset.range 56, Real.exp T/(896*T) ≤ ((primeBin T k).card:ℝ) := by
  have hc := (Finset.card_le_card (wideBand_bin_cover T)).trans Finset.card_biUnion_le
  have hcR : ((BandGrowth.wideBand T).card:ℝ) ≤
      ∑ k ∈ Finset.range 56, ((primeBin T k).card:ℝ) := by exact_mod_cast hc
  by_contra h
  have heach : ∀ k ∈ Finset.range 56, ((primeBin T k).card:ℝ) < Real.exp T/(896*T) := by
    intro k hk
    apply lt_of_not_ge
    intro hl
    exact h ⟨k,hk,hl⟩
  have hs := Finset.sum_lt_sum_of_nonempty (show (Finset.range 56).Nonempty by simp) heach
  have hscale : (∑ _k ∈ Finset.range 56, Real.exp T/(896*T)) = Real.exp T/(16*T) := by
    simp only [Finset.sum_const,Finset.card_range,nsmul_eq_mul,Nat.cast_ofNat]
    ring
  rw [hscale] at hs
  linarith [BandGrowth.wideBand_count hT]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/PrimeCounting/PrimeShellEnergyGrowth.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54eb6c8e72cf7de387ab346af6815393151e057f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
