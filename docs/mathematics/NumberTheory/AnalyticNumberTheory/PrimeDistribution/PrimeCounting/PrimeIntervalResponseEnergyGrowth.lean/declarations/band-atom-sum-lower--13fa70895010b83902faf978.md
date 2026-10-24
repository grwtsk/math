# band_atom_sum_lower

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
      "line": 355,
      "path": "GRWTSK/NumberTheory/PrimeCounting/PrimeIntervalResponseEnergyGrowth.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ad410387-b123-35ef-c5e0-7183b48e97f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "6464933fdffa2345c3dc312bed5156ee63fdbe65",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 355,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/GRWTSK/NumberTheory/PrimeCounting/PrimeIntervalResponseEnergyGrowth.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:08039327-fdb7-75b0-179b-977083d74084",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:79463adb-c953-2232-a597-ae7510f5e6e2",
  "kind": "theorem",
  "lexical_name": "band_atom_sum_lower",
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
  "slug": "band-atom-sum-lower--13fa70895010b83902faf978",
  "source": {
    "blob": "6464933fdffa2345c3dc312bed5156ee63fdbe65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 355,
    "path": "GRWTSK/NumberTheory/PrimeCounting/PrimeIntervalResponseEnergyGrowth.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13fa70895010b83902faf97888c65dda674d537e30c622940128896ee70fa6a3",
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

Occurrence: `result:79463adb-c953-2232-a597-ae7510f5e6e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem band_atom_sum_lower {T u : ℝ} (hT : 1024 ≤ T) (hu : T-tailWidth ≤ u) :
    atomGain * Real.exp (T/2) / (16*T) ≤
      ∑ p ∈ Obstruction.primeBand (3/4) T, atom p u := by
  have hgain : 0 ≤ atomGain * Real.exp (-T/2) :=
    mul_nonneg atomGain_positive.le (Real.exp_pos _).le
  have hcount := mul_le_mul_of_nonneg_right (wideBand_count hT) hgain
  have hprod : Real.exp T * Real.exp (-T/2) = Real.exp (T/2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  calc
    atomGain * Real.exp (T/2) / (16*T) =
        (Real.exp T / (16*T)) * (atomGain * Real.exp (-T/2)) := by
      rw [show (Real.exp T / (16*T)) * (atomGain * Real.exp (-T/2)) =
        atomGain * (Real.exp T * Real.exp (-T/2)) / (16*T) by ring, hprod]
    _ ≤ ((wideBand T).card : ℝ) * (atomGain * Real.exp (-T/2)) := hcount
    _ = ∑ _p ∈ wideBand T, atomGain * Real.exp (-T/2) := by simp
    _ ≤ ∑ p ∈ wideBand T, atom p u := by
      apply Finset.sum_le_sum
      intro p hp
      exact atom_tail_lower (Nat.prime_of_mem_primesLE (Finset.mem_filter.mp hp).1).pos
        (wideBand_mem_upper hp) hu
    _ ≤ ∑ p ∈ Obstruction.primeBand (3/4) T, atom p u :=
      Finset.sum_le_sum_of_subset_of_nonneg (wideBand_subset_primeBand hT)
        (fun p hp _ => atom_nonneg (Obstruction.primeBand_mem_prime hp).pos u)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeIntervalResponseEnergyGrowth.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/PrimeCounting/PrimeIntervalResponseEnergyGrowth.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6464933fdffa2345c3dc312bed5156ee63fdbe65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
