# Verification target: GRWTSK.Analysis.NonlinearAnalysis.FixedPointTheory.ContractionBoundaries.CertificateObligations

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18fa96a66e3396de1de1281fa723060c7e467d55",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/NonlinearAnalysis/FixedPointTheory/ContractionBoundaries/CertificateObligations.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/NonlinearAnalysis/FixedPointTheory/ContractionBoundaries/CertificateObligations.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/NonlinearAnalysis/FixedPointTheory/ContractionBoundaries/CertificateObligations.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18fa96a66e3396de1de1281fa723060c7e467d55`.

Source path: `GRWTSK/Analysis/NonlinearAnalysis/FixedPointTheory/ContractionBoundaries/CertificateObligations.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/NonlinearAnalysis/FixedPointTheory/ContractionBoundaries/CertificateObligations.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Stability.FixedPoint` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContractionCertificate](../../../../../../mathematics/Analysis/NonlinearAnalysis/FixedPointTheory/ContractionBoundaries/CertificateObligations.lean/declarations/contractioncertificate--fb5e263da99be8c2f3d37b83.md) | 30 | `declaration-track:fb5e263da99be8c2f3d37b833ee47a7f2eb259370aea522ef16429e68e1a7bc8` |
| 2 | `structure` | [BanachFixedPointObligation](../../../../../../mathematics/Analysis/NonlinearAnalysis/FixedPointTheory/ContractionBoundaries/CertificateObligations.lean/declarations/banachfixedpointobligation--ff56befa1b7f3d9643fbfa94.md) | 40 | `declaration-track:ff56befa1b7f3d9643fbfa94ef41fe18e0df6d0f952e5dd36f2a9cf2fc5313dc` |
| 3 | `structure` | [ResidualFloorObligation](../../../../../../mathematics/Analysis/NonlinearAnalysis/FixedPointTheory/ContractionBoundaries/CertificateObligations.lean/declarations/residualfloorobligation--60fff6135d8dba46bb75791d.md) | 52 | `declaration-track:60fff6135d8dba46bb75791db92f6556dd65ffe74e956eed15d3991f00effc65` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
