# TargetAssumptionClassification

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c992bf17c74fe4872cc4aff667b650b9f89bba7ffc7003f9b4ae0e05784c630d",
  "kind": "inductive",
  "lexical_name": "TargetAssumptionClassification",
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
  "slug": "targetassumptionclassification--2f9d784afc59621ed4d64aae",
  "source": {
    "blob": "340423edfb15ab76a0417cbbaa6896ea350f5f7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 101,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant864c26db417779373f9311d21a848b804633ad50af310b9b390e84e1292c70cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f9d784afc59621ed4d64aaeb68cddc24aea029f50190cf5716a0dfbde7b7aff",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant864c26db417779373f9311d21a848b804633ad50af310b9b390e84e1292c70cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c992bf17c74fe4872cc4aff667b650b9f89bba7ffc7003f9b4ae0e05784c630d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive TargetAssumptionClassification
    {source : Theory} {target : Theory}
    (mapProposition : source.Proposition → target.Proposition)
    (sourceAssumptions : AssumptionSet source)
    (targetAssumptions : AssumptionSet target)
    (assumptionTranslation : AssumptionTranslation
      mapProposition sourceAssumptions targetAssumptions)
    (targetIndex : targetAssumptions.Index) where
  | mapped (evidence : MappedTargetAssumption mapProposition
      sourceAssumptions targetAssumptions assumptionTranslation targetIndex)
  | introduced (evidence : IntroducedTargetAssumption
      targetAssumptions targetIndex)
  | discharged (evidence : AssumptionDischarge targetAssumptions targetIndex)

/-- Every target assumption is classified; silent target strengthening is impossible. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant864c26db417779373f9311d21a848b804633ad50af310b9b390e84e1292c70cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant864c26db417779373f9311d21a848b804633ad50af310b9b390e84e1292c70cc.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `340423edfb15ab76a0417cbbaa6896ea350f5f7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
