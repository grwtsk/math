# not_subpolynomialCoreGrowingShiftQuarticEndpointStaircaseSquareEnergy_of_cubicLower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b42ad5f3-be3a-3319-ac11-35bce070c30e",
  "kind": "theorem",
  "lexical_name": "not_subpolynomialCoreGrowingShiftQuarticEndpointStaircaseSquareEnergy_of_cubicLower",
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
  "slug": "not-subpolynomialcoregrowingshiftquarticendpointstaircasesquareenergy-of--70b9b771fa45c343b70c5d38",
  "source": {
    "blob": "79fead57e101fe67db21dad9bfd5e4150a1cc334",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 186,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircaseScaleWitness.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70b9b771fa45c343b70c5d385760cca5fdf72e317fcf53772a7dc3778331fb3f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircaseScaleWitness.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b42ad5f3-be3a-3319-ac11-35bce070c30e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_subpolynomialCoreGrowingShiftQuarticEndpointStaircaseSquareEnergy_of_cubicLower
    (hCubic : ActiveStaircaseCubicLowerBound) :
    ¬ SubpolynomialCoreGrowingShiftQuarticEndpointStaircaseSquareEnergy := by
  intro hSub
  obtain ⟨C, hC, hUpper⟩ :=
    hSub (1 / 4 : ℝ) (by norm_num)
  obtain ⟨j, hj, hEscape⟩ :=
    exists_dyadic_quarter_envelope_below_cubic
      hCubic.constant_pos hC hCubic.threshold
  have hLower := hCubic.lower j hj
  have hUpperj := hUpper j
  linarith

/-- Named conditional obstruction witness.  It does not assert either
arithmetic field unconditionally. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircaseScaleWitness.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircaseScaleWitness.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79fead57e101fe67db21dad9bfd5e4150a1cc334` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
