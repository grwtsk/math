# band_source_tail_upper

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
      "line": 404,
      "path": "GRWTSK/NumberTheory/PrimeCounting/PrimeIntervalResponseEnergyGrowth.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:12fd81d6-7d2b-bf94-19ac-d91869d4ca31",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "6464933fdffa2345c3dc312bed5156ee63fdbe65",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 404,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/GRWTSK/NumberTheory/PrimeCounting/PrimeIntervalResponseEnergyGrowth.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aa4a4eb0-0819-44cf-b980-e317b0e43e44",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:17a5dc89-acaa-cc99-e3a0-b56e2a5e0e63",
  "kind": "theorem",
  "lexical_name": "band_source_tail_upper",
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
  "slug": "band-source-tail-upper--086150a1fe00c4c1618690c2",
  "source": {
    "blob": "6464933fdffa2345c3dc312bed5156ee63fdbe65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 421,
    "line": 404,
    "path": "GRWTSK/NumberTheory/PrimeCounting/PrimeIntervalResponseEnergyGrowth.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:086150a1fe00c4c1618690c20f71df017e949852badc05c275f07f7c1fbbb49c",
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

Occurrence: `result:17a5dc89-acaa-cc99-e3a0-b56e2a5e0e63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 404–421.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem band_source_tail_upper {T u : ℝ} (hT : 1024 ≤ T)
    (hu : u ∈ Icc (T-tailWidth) T) :
    primeState (Obstruction.primeBand (3/4) T) u ≤ 2 - 2 * amplitude T := by
  have hp : ∀ p ∈ Obstruction.primeBand (3/4) T, p.Prime :=
    fun p hp => Obstruction.primeBand_mem_prime hp
  have hpair : ∀ p ∈ Obstruction.primeBand (3/4) T,
      ∀ q ∈ Obstruction.primeBand (3/4) T, p ≠ q → Real.exp T < (p : ℝ)*q := by
    intro p hp q hq _hpq
    exact Obstruction.primeBand_pair_beyond_horizon (by norm_num) (by linarith) hp hq
  rw [EulerP04RH.BandSource.primeState_first_order _ hp hpair hu.2]
  have hsum := band_atom_sum_lower hT hu.1
  have hbase := baseWave_le_two u
  have hdouble : atomGain * Real.exp (T/2) / (16*T) =
      2 * (atomGain * Real.exp (T/2) / (32*T)) := by ring
  rw [hdouble] at hsum
  unfold amplitude
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeIntervalResponseEnergyGrowth.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/PrimeCounting/PrimeIntervalResponseEnergyGrowth.lean#L404).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6464933fdffa2345c3dc312bed5156ee63fdbe65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
