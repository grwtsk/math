# actual_band_energy_exponential

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
      "line": 422,
      "path": "GRWTSK/NumberTheory/PrimeCounting/PrimeIntervalResponseEnergyGrowth.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f632d4a2-9451-490b-b999-4c54a132577d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "6464933fdffa2345c3dc312bed5156ee63fdbe65",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 422,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/GRWTSK/NumberTheory/PrimeCounting/PrimeIntervalResponseEnergyGrowth.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cee0686c-99b7-6c4f-f6a8-6fc2e3139ce2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d91f7c4f-2121-e435-59ed-026650b861ef",
  "kind": "theorem",
  "lexical_name": "actual_band_energy_exponential",
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
  "slug": "actual-band-energy-exponential--c860093d109b4ea23e743e8d",
  "source": {
    "blob": "6464933fdffa2345c3dc312bed5156ee63fdbe65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 458,
    "line": 422,
    "path": "GRWTSK/NumberTheory/PrimeCounting/PrimeIntervalResponseEnergyGrowth.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c860093d109b4ea23e743e8d404d183607444b3cf81f1bbad138c0a415ac6880",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeIntervalResponseEnergyGrowth.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d91f7c4f-2121-e435-59ed-026650b861ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 422–458.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_band_energy_exponential :
    Obstruction.ExponentialEnergyInput
      (fun T => sourceEnergy (Obstruction.primeBand (3/4) T) T) growthConstant := by
  filter_upwards [eventually_ge_atTop (1024 : ℝ), amplitude_eventually_large]
    with T hT hamp
  have ht : 0 < T := by linarith
  have hp : ∀ p ∈ Obstruction.primeBand (3/4) T, p.Prime :=
    fun p hp => Obstruction.primeBand_mem_prime hp
  have henergy := EulerP04RH.BandSource.sourceEnergy_lower_on_terminal_interval
    (Obstruction.primeBand (3/4) T) hp tailWidth_positive.le
    (show tailWidth ≤ T from tailWidth_le_one.trans (by linarith))
    (show 0 ≤ amplitude T by linarith)
    (fun u hu => (band_source_tail_upper hT hu).trans (by linarith))
  have hsq : Real.exp (T/2) ^ 2 = Real.exp T := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  have heq : amplitude T ^ 2 * tailWidth * T ^ 2 = growthConstant * Real.exp T := by
    unfold amplitude growthConstant
    field_simp [ht.ne']
    rw [hsq]
    ring
  have hnon := sourceEnergy_nonneg (Obstruction.primeBand (3/4) T) T
  calc
    growthConstant * Real.exp T = amplitude T ^ 2 * tailWidth * T ^ 2 := heq.symm
    _ ≤ sourceEnergy (Obstruction.primeBand (3/4) T) T * T ^ 2 :=
      mul_le_mul_of_nonneg_right henergy (sq_nonneg T)
    _ ≤ sourceEnergy (Obstruction.primeBand (3/4) T) T * (1+T)^2 :=
      mul_le_mul_of_nonneg_left (by nlinarith) hnon


end PPNCP04.BandGrowth

#print axioms PPNCP04.BandGrowth.wideBand_count
#print axioms PPNCP04.BandGrowth.atom_tail_lower
#print axioms PPNCP04.BandGrowth.growthConstant_positive
#print axioms PPNCP04.BandGrowth.actual_band_energy_exponential
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeIntervalResponseEnergyGrowth.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/PrimeCounting/PrimeIntervalResponseEnergyGrowth.lean#L422).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6464933fdffa2345c3dc312bed5156ee63fdbe65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
