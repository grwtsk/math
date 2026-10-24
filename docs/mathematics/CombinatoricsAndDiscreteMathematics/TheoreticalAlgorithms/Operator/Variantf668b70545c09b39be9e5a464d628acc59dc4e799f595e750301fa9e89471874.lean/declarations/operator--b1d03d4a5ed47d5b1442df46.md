# Operator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2cf4127454bd65973ce78bceaeb662f7123919b26dca4083a2db6ea5a6d66034",
  "kind": "structure",
  "lexical_name": "Operator",
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
  "slug": "operator--b1d03d4a5ed47d5b1442df46",
  "source": {
    "blob": "01481f3e0ab811d6a7442923224f4c38037e86bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 20,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Operator/Variantf668b70545c09b39be9e5a464d628acc59dc4e799f595e750301fa9e89471874.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b1d03d4a5ed47d5b1442df464c5abd5eab61b51c7d6bd6016269b8d35eb08b66",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Operator/Variantf668b70545c09b39be9e5a464d628acc59dc4e799f595e750301fa9e89471874.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2cf4127454bd65973ce78bceaeb662f7123919b26dca4083a2db6ea5a6d66034`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Operator where
  operatorId : StableId
  constraints : List HardConstraint
  energy : Energy
  step : State → State
  source_preserved :
    ∀ state,
      (step state).ecosystemDigest = state.ecosystemDigest ∧
      (step state).workPackage = state.workPackage
  constraints_preserved :
    ∀ state,
      SatisfiesAll constraints state →
      SatisfiesAll constraints (step state)
  strict_descent :
    ∀ state,
      step state ≠ state →
      energy.measure (step state) < energy.measure state
  operatorDigest : Digest

namespace Operator

/-- One step cannot modify the source ecosystem or work-package boundary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Operator/Variantf668b70545c09b39be9e5a464d628acc59dc4e799f595e750301fa9e89471874.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Operator/Variantf668b70545c09b39be9e5a464d628acc59dc4e799f595e750301fa9e89471874.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01481f3e0ab811d6a7442923224f4c38037e86bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
