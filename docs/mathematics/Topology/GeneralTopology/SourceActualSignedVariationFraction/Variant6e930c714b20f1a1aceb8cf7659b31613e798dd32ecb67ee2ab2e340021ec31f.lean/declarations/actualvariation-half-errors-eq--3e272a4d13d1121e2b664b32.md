# actualVariation_half_errors_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67962863-e55d-28eb-7f48-91a34cd380eb",
  "kind": "theorem",
  "lexical_name": "actualVariation_half_errors_eq",
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
  "slug": "actualvariation-half-errors-eq--3e272a4d13d1121e2b664b32",
  "source": {
    "blob": "df4e9334db5674f5cedc049e56eca3379a44b309",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 105,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualSignedVariationFraction/Variant6e930c714b20f1a1aceb8cf7659b31613e798dd32ecb67ee2ab2e340021ec31f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e272a4d13d1121e2b664b329148ba5178d2c5948ad3916017423956fae6d7aa",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualSignedVariationFraction/Variant6e930c714b20f1a1aceb8cf7659b31613e798dd32ecb67ee2ab2e340021ec31f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67962863-e55d-28eb-7f48-91a34cd380eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualVariation_half_errors_eq {A : ℝ} (hA : 1 ≤ A)
    (hV : 0 < actualClosedAbsolutePrimeMoment A) :
    |actualPositivePrimeVariation A / actualClosedAbsolutePrimeMoment A - 1 / 2| +
      |actualNegativePrimeVariation A / actualClosedAbsolutePrimeMoment A - 1 / 2| =
        |mertensResidual A| / actualClosedAbsolutePrimeMoment A := by
  have hs := actualClosedAbsolutePrimeMoment_eq_variation_sum A
  have hd := actualMertensResidual_eq_variation_difference hA
  have hpos : actualPositivePrimeVariation A / actualClosedAbsolutePrimeMoment A - 1 / 2 =
      mertensResidual A / (2 * actualClosedAbsolutePrimeMoment A) := by
    field_simp
    linarith
  have hneg : actualNegativePrimeVariation A / actualClosedAbsolutePrimeMoment A - 1 / 2 =
      -(mertensResidual A / (2 * actualClosedAbsolutePrimeMoment A)) := by
    field_simp
    linarith
  rw [hpos,hneg,abs_neg,abs_div,abs_of_pos (by positivity :
    0 < 2 * actualClosedAbsolutePrimeMoment A)]
  field_simp
  ring

/-- The whole positive and negative inventory has this simultaneous relative budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualSignedVariationFraction/Variant6e930c714b20f1a1aceb8cf7659b31613e798dd32ecb67ee2ab2e340021ec31f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualSignedVariationFraction/Variant6e930c714b20f1a1aceb8cf7659b31613e798dd32ecb67ee2ab2e340021ec31f.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df4e9334db5674f5cedc049e56eca3379a44b309` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
