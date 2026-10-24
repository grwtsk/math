# safeAxialQuarticCoefficient_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:844a6d8b-2a1d-481c-f905-b751710bd1be",
  "kind": "theorem",
  "lexical_name": "safeAxialQuarticCoefficient_tendsto_zero",
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
  "slug": "safeaxialquarticcoefficient-tendsto-zero--b2adf43ff8febc229a54f916",
  "source": {
    "blob": "6696bbe1a768b08f930ffda0044406a132977bc2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 214,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/SafeShiftCoefficientDecay.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2adf43ff8febc229a54f916ec7731b97be5ee4028fe60430baf5e0359d35a7a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/SafeShiftCoefficientDecay.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:844a6d8b-2a1d-481c-f905-b751710bd1be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem safeAxialQuarticCoefficient_tendsto_zero
    (z : ZeroPoint) :
    Tendsto (safeAxialQuarticCoefficient z) atTop (𝓝 0) := by
  have hx :
      Tendsto
        (fun n =>
          (safeEvenPrimePowerTerm z
            (canonicalPrimePowerEventSequence n)).re)
        atTop (𝓝 0) :=
    (safeEvenPrimePowerTerm_sequence_tendsto_zero z).re
  have hy := safeAxialNormalizedY_sequence_tendsto_zero z
  simpa [safeAxialQuarticCoefficient,
    safeAxialNormalizedPackingSequence, safeAxialNormalizedPoint,
    SequentialThreePointPrimePacking.valueAt,
    SequentialThreePointPrimePacking.packingAt] using
    threePointGram_tendsto_zero_of_coordinates
      (fun n =>
        safeAxialNormalizedPoint z
          (canonicalPrimePowerEventSequence n)) hx hy

/-- The normalized transverse Gram coefficient tends to zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/SafeShiftCoefficientDecay.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/SafeShiftCoefficientDecay.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6696bbe1a768b08f930ffda0044406a132977bc2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
