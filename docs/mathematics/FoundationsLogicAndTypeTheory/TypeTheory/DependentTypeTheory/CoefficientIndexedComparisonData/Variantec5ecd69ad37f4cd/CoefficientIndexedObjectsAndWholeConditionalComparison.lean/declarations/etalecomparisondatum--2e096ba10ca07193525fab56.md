# EtaleComparisonDatum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4092ce378c88fd8a3c121bf2b10b9c55e02dd7a346c9131298d128d3c25477de",
  "kind": "structure",
  "lexical_name": "EtaleComparisonDatum",
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
  "slug": "etalecomparisondatum--2e096ba10ca07193525fab56",
  "source": {
    "blob": "68f915e732861853bfa7ce14b092ec1fb572c9da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/CoefficientIndexedComparisonData/Variantec5ecd69ad37f4cd/CoefficientIndexedObjectsAndWholeConditionalComparison.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e096ba10ca07193525fab56f33fe6c40a1d8e269717f0469142c3175fe4b136",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/CoefficientIndexedComparisonData/Variantec5ecd69ad37f4cd/CoefficientIndexedObjectsAndWholeConditionalComparison.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4092ce378c88fd8a3c121bf2b10b9c55e02dd7a346c9131298d128d3c25477de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure EtaleComparisonDatum
    (R : Comparison.CoefficientContext.{uR})
    (S : Comparison.CoefficientContext.{uP}) where
  prime : Nat
  degree : Int
  coefficientChange : Comparison.CoefficientChange R S
  KTheoryObject : CoefficientObject.{uR, uK} R
  EtaleObject : CoefficientObject.{uP, uE} S
  comparison : KTheoryObject.Carrier → EtaleObject.Carrier
  Hypothesis : Prop
  comparison_bijective :
    Hypothesis → Function.Bijective comparison

end DAF.Arithmetic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/CoefficientIndexedComparisonData/Variantec5ecd69ad37f4cd/CoefficientIndexedObjectsAndWholeConditionalComparison.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/CoefficientIndexedComparisonData/Variantec5ecd69ad37f4cd/CoefficientIndexedObjectsAndWholeConditionalComparison.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68f915e732861853bfa7ce14b092ec1fb572c9da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
