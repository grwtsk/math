# coreLengthCoefficientMass_le_full

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee230421-b3c8-ab1c-8cc9-7e39e662b504",
  "kind": "theorem",
  "lexical_name": "coreLengthCoefficientMass_le_full",
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
  "slug": "corelengthcoefficientmass-le-full--2f5573b7d0d3ecc908922c03",
  "source": {
    "blob": "2ec29fb62160ffffbad322d48730172b68726c84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 92,
    "path": "GRWTSK/NumberTheory/Moebius/CoreLengthCoefficientMass.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f5573b7d0d3ecc908922c0358cefaf55ea3bd098da3eda238094bdc2159e5c1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreLengthCoefficientMass.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee230421-b3c8-ab1c-8cc9-7e39e662b504`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreLengthCoefficientMass_le_full
    (j n : ℕ) :
    coreLengthCoefficientMass j n ≤
      fullLengthCoefficientMass j n := by
  unfold coreLengthCoefficientMass fullLengthCoefficientMass
  apply Finset.sum_le_sum_of_subset_of_nonneg
  · intro t ht
    simp only [coreLongDeepDepths, Finset.mem_filter, Finset.mem_Ico] at ht
    simp only [Finset.mem_range]
    exact ht.1.2
  · intro t _ht _hnot
    exact add_nonneg
      (coreTerminalLengthCoefficient_nonneg j t n)
      (coreInteriorLengthCoefficient_nonneg j t n)

/-- Left-regime full coefficient mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreLengthCoefficientMass.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreLengthCoefficientMass.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ec29fb62160ffffbad322d48730172b68726c84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
