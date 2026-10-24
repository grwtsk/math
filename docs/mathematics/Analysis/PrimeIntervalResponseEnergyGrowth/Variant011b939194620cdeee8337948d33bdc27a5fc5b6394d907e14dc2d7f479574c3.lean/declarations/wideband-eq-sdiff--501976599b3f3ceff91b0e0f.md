# wideBand_eq_sdiff

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
      "line": 237,
      "path": "GRWTSK/NumberTheory/PrimeCounting/PrimeIntervalResponseEnergyGrowth.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:618e7803-3cbe-ee6e-73d8-89c37ecf5abb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "6464933fdffa2345c3dc312bed5156ee63fdbe65",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 237,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/GRWTSK/NumberTheory/PrimeCounting/PrimeIntervalResponseEnergyGrowth.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:26554f6f-b36d-2aae-c42a-c290a0cbdf0c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e175f1d7-1417-1c17-134d-85209d0e2d32",
  "kind": "theorem",
  "lexical_name": "wideBand_eq_sdiff",
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
  "slug": "wideband-eq-sdiff--501976599b3f3ceff91b0e0f",
  "source": {
    "blob": "6464933fdffa2345c3dc312bed5156ee63fdbe65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 237,
    "path": "GRWTSK/Analysis/PrimeIntervalResponseEnergyGrowth/Variant011b939194620cdeee8337948d33bdc27a5fc5b6394d907e14dc2d7f479574c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:501976599b3f3ceff91b0e0fad42d0de61d3c8a53d520e311cfcd0b3d72a42bd",
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

Occurrence: `result:e175f1d7-1417-1c17-134d-85209d0e2d32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wideBand_eq_sdiff (T : ℝ) :
    wideBand T = Nat.primesLE ⌊Real.exp T / 2⌋₊ \ Nat.primesLE ⌊Real.exp T / 256⌋₊ := by
  ext p
  simp only [wideBand, Finset.mem_filter, Finset.mem_sdiff]
  constructor
  · rintro ⟨hp, hgt⟩
    refine ⟨hp, ?_⟩
    intro hlow
    have hle : (p : ℝ) ≤ Real.exp T / 256 :=
      (Nat.le_floor_iff (by positivity)).mp (Nat.le_of_mem_primesLE hlow)
    linarith
  · rintro ⟨hp, hn⟩
    refine ⟨hp, ?_⟩
    by_contra h
    apply hn
    exact Nat.mem_primesLE.mpr
      ⟨(Nat.le_floor_iff (by positivity)).mpr (le_of_not_gt h), Nat.prime_of_mem_primesLE hp⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/PrimeIntervalResponseEnergyGrowth/Variant011b939194620cdeee8337948d33bdc27a5fc5b6394d907e14dc2d7f479574c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/PrimeIntervalResponseEnergyGrowth/Variant011b939194620cdeee8337948d33bdc27a5fc5b6394d907e14dc2d7f479574c3.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6464933fdffa2345c3dc312bed5156ee63fdbe65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
