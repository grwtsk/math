# growingShiftMaximalImpliesCardinalityEnergy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9824fb9eb8a6b14723866d0dd328a5ffad8e7118f2dea1c1a908b523a562b45e",
  "kind": "def",
  "lexical_name": "growingShiftMaximalImpliesCardinalityEnergy",
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
  "slug": "growingshiftmaximalimpliescardinalityenergy--2c93ccf50b3328641138af3c",
  "source": {
    "blob": "50dcb6cd73dded101f0623a42f16756ce5e7ccab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 259,
    "path": "GRWTSK/NumberTheory/Moebius/ChowlaScopeSeparation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c93ccf50b3328641138af3cff8ad6d80e62d396c152d9835076ede55a87a56f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ChowlaScopeSeparation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9824fb9eb8a6b14723866d0dd328a5ffad8e7118f2dea1c1a908b523a562b45e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def growingShiftMaximalImpliesCardinalityEnergy
    (range : ℕ → ℕ) (B : ℕ → ℝ)
    (hB : ∀ T, 0 ≤ B T) :
    TypedConnection
      (GrowingShiftTwoPointMaximalBound range B)
      (SummedShiftMaximalEnergyBound range
        (shiftCardinalitySquareBudget range B)) :=
  .implies (summedShiftMaximalEnergyBound_of_uniformMaximal hB)

end GRWTSK.RiemannHypothesis.CCC.ChowlaScope

#print axioms GRWTSK.RiemannHypothesis.CCC.ChowlaScope.familyPrefixMaxBound_iff_allPrefixBound
#print axioms GRWTSK.RiemannHypothesis.CCC.ChowlaScope.growingShiftTwoPointMaximalBound_iff_allPrefixBound
#print axioms GRWTSK.RiemannHypothesis.CCC.ChowlaScope.summedShiftMaximalEnergyBound_of_uniformMaximal
#print axioms GRWTSK.RiemannHypothesis.CCC.ChowlaScope.actualTerminalFamilyBound_doesNotImplyMaximal
#print axioms GRWTSK.RiemannHypothesis.CCC.ChowlaScope.parameterDependent_doesNotImply_uniform
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ChowlaScopeSeparation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ChowlaScopeSeparation.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50dcb6cd73dded101f0623a42f16756ce5e7ccab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
