# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Admissibility.Variant6dbce0fcd4fcad68768a3195112a82d2cce252a668bea089e095e43448a15e20

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "653643e2906217baafde93667e1024b99aed81c3",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Admissibility/Variant6dbce0fcd4fcad68768a3195112a82d2cce252a668bea089e095e43448a15e20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Admissibility/Variant6dbce0fcd4fcad68768a3195112a82d2cce252a668bea089e095e43448a15e20.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Admissibility/Variant6dbce0fcd4fcad68768a3195112a82d2cce252a668bea089e095e43448a15e20.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `653643e2906217baafde93667e1024b99aed81c3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Admissibility/Variant6dbce0fcd4fcad68768a3195112a82d2cce252a668bea089e095e43448a15e20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Admissibility/Variant6dbce0fcd4fcad68768a3195112a82d2cce252a668bea089e095e43448a15e20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.GraphAccess.RelationScope` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AdmissibilityProfile](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Admissibility/Variant6dbce0fcd4fcad68768a3195112a82d2cce252a668bea089e095e43448a15e20.lean/declarations/admissibilityprofile--d033e45001b0ec55cda957f0.md) | 21 | `declaration-track:d033e45001b0ec55cda957f008914e158c6932510a462bf298fabb43c5a08491` |
| 2 | `def` | [NodeAdmissible](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Admissibility/Variant6dbce0fcd4fcad68768a3195112a82d2cce252a668bea089e095e43448a15e20.lean/declarations/nodeadmissible--a43b9dcbffc6ee01b6a2fd96.md) | 31 | `declaration-track:a43b9dcbffc6ee01b6a2fd96c394b5a64783027413a34cd2cb4b92159ad69fd5` |
| 3 | `def` | [EdgeAdmissible](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Admissibility/Variant6dbce0fcd4fcad68768a3195112a82d2cce252a668bea089e095e43448a15e20.lean/declarations/edgeadmissible--97450f2ad156e55db4c554ab.md) | 37 | `declaration-track:97450f2ad156e55db4c554ab8648144dcc66153fb1835f517c956ea9fd64d8b1` |
| 4 | `def` | [ArcAdmissible](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Admissibility/Variant6dbce0fcd4fcad68768a3195112a82d2cce252a668bea089e095e43448a15e20.lean/declarations/arcadmissible--400ddc06f264564a7bc36b12.md) | 43 | `declaration-track:400ddc06f264564a7bc36b12584ccfd7e83312470fb754aba1c0b90de20a5ae9` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Admissibility/Variant6dbce0fcd4fcad68768a3195112a82d2cce252a668bea089e095e43448a15e20.lean/declarations/instance--0a5ec8b8304302eb96d8f85d.md) | 49 | `declaration-track:0a5ec8b8304302eb96d8f85d3d08261a105f5196c39207385c0e7f6b9466b213` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Admissibility/Variant6dbce0fcd4fcad68768a3195112a82d2cce252a668bea089e095e43448a15e20.lean/declarations/instance--fd696a040b1f5a8b225eb8b8.md) | 58 | `declaration-track:fd696a040b1f5a8b225eb8b892794705888cf1c82dde8124ef8a20f15d388eba` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Admissibility/Variant6dbce0fcd4fcad68768a3195112a82d2cce252a668bea089e095e43448a15e20.lean/declarations/instance--160e2807651ead6c9a7b282b.md) | 67 | `declaration-track:160e2807651ead6c9a7b282b7b5884f233345e8f88014607cfba5353ef3cb0f3` |
| 8 | `theorem` | [ArcAdmissible.endpoints](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Admissibility/Variant6dbce0fcd4fcad68768a3195112a82d2cce252a668bea089e095e43448a15e20.lean/declarations/arcadmissible-endpoints--eb576881602f3c57f7b5e852.md) | 76 | `result-track:eb576881602f3c57f7b5e8527e279f03dd136faabf8a7c863d23bc7313328bd8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
