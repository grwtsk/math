# code_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f300df76-f133-fc1b-a248-53d819349d3e",
  "kind": "theorem",
  "lexical_name": "code_injective",
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
  "slug": "code-injective--6738405a6012cfd463c3bc69",
  "source": {
    "blob": "5212573db6d788af73b3bea81679376f2926425e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 70,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinals/CardinalArithmetic/SequentialPrimeAddressImages/Variante097301879a07848/IncreasingImageEnumeration.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6738405a6012cfd463c3bc691e640230d283406f89211ff9dd93ff721d2775a1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Cardinals/CardinalArithmetic/SequentialPrimeAddressImages/Variante097301879a07848/IncreasingImageEnumeration.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f300df76-f133-fc1b-a248-53d819349d3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem code_injective : Function.Injective code := by
  intro left right equality
  have outer := CantorCode.pair_injective₂ equality
  have inner := CantorCode.pair_injective₂ outer.2
  have specificationEquality : left.specification = right.specification :=
    specificationCode_injective inner.1
  cases left with
  | mk leftOccurrence leftSpecification leftCoordinate =>
      cases right with
      | mk rightOccurrence rightSpecification rightCoordinate =>
          dsimp only at outer inner specificationEquality
          cases outer.1
          cases specificationEquality
          have coordinateEquality : leftCoordinate = rightCoordinate :=
            CoordinateFiber.mixedRadix_injective
              leftSpecification.axisCardinalities
              (fun radix member =>
                leftSpecification.axisCardinalities_positive member)
              inner.2
          cases coordinateEquality
          rfl

/-- A concrete admissible one-axis specification used to witness infinitude. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Cardinals/CardinalArithmetic/SequentialPrimeAddressImages/Variante097301879a07848/IncreasingImageEnumeration.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinals/CardinalArithmetic/SequentialPrimeAddressImages/Variante097301879a07848/IncreasingImageEnumeration.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5212573db6d788af73b3bea81679376f2926425e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
