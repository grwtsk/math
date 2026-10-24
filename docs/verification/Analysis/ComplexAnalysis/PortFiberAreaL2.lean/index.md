# Verification target: GRWTSK.Interfaces.PortFiberAreaL2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2efbb4e4121500784ea0ec9106e8a725d3bf3b5",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Interfaces/PortFiberAreaL2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberAreaL2.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberAreaL2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2efbb4e4121500784ea0ec9106e8a725d3bf3b5`.

Source path: `GRWTSK/Interfaces/PortFiberAreaL2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Interfaces/PortFiberAreaL2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Interfaces.PortFiberAreaReproducing`](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberAreaReproducing.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.Complex.HolomorphicAreaL2`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaL2.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [schemaVersion](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberAreaL2.lean/declarations/schemaversion--46689d9909d33d656ab0d0d9.md) | 31 | `declaration-track:46689d9909d33d656ab0d0d9fdd008b3b1d59fde7e95c2655a672bedac1a14d2` |
| 2 | `inductive` | [AddedIndex](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberAreaL2.lean/declarations/addedindex--291e7e4daece172ce4633cf4.md) | 33 | `declaration-track:291e7e4daece172ce4633cf47124f41cc1313d7b78df30569640239a4292e635` |
| 3 | `def` | [AddedClaim](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberAreaL2.lean/declarations/addedclaim--939c07b2cdc713c3e23adcb5.md) | 44 | `declaration-track:939c07b2cdc713c3e23adcb5a06a968813ec32ceee9da2656a971cccc73d217b` |
| 4 | `theorem` | [addedClaim_proof](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberAreaL2.lean/declarations/addedclaim-proof--f7a9dd39fdbd301db39fca28.md) | 83 | `result-track:f7a9dd39fdbd301db39fca28e7da9fff330720c3cf9783501c3a1965bd9b21bd` |
| 5 | `def` | [portfolio](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberAreaL2.lean/declarations/portfolio--6dff5b7588dfe941a67fb60e.md) | 102 | `declaration-track:6dff5b7588dfe941a67fb60e498ecc5053f4f0c71409bcd8819176b5605197f3` |
| 6 | `def` | [architecture](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberAreaL2.lean/declarations/architecture--0a0c21ae0cc10586be7c9e49.md) | 105 | `declaration-track:0a0c21ae0cc10586be7c9e49a32ba4d6eb1e769b34144e29890fc24b38be9f56` |
| 7 | `abbrev` | [PreviousIndex](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberAreaL2.lean/declarations/previousindex--2721d15b00a1e4b8a82cf249.md) | 109 | `declaration-track:2721d15b00a1e4b8a82cf249dc83db637bde585b8c047288c47dccbea0dd44b5` |
| 8 | `theorem` | [original_branch_unchanged](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberAreaL2.lean/declarations/original-branch-unchanged--0ecd054a03dce1ce190346e2.md) | 113 | `result-track:0ecd054a03dce1ce190346e2f9fee658b0de3a36ebf66f6f374d848072917f8f` |
| 9 | `theorem` | [new_branch_proved](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberAreaL2.lean/declarations/new-branch-proved--dfcfae7583343fad4d7684a6.md) | 119 | `result-track:dfcfae7583343fad4d7684a6c206663db05e0ea7f4fee144d0c2ad3c209377a5` |
| 10 | `theorem` | [target_unchanged](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberAreaL2.lean/declarations/target-unchanged--8bba6427452e8362b1c65c4f.md) | 124 | `result-track:8bba6427452e8362b1c65c4f90ef8f3ce8d81289211d739364ffe69701149493` |
| 11 | `theorem` | [retarget_preserves_new](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberAreaL2.lean/declarations/retarget-preserves-new--1b9c47a5f3eb184a052fc662.md) | 129 | `result-track:1b9c47a5f3eb184a052fc662f77d258baa352c023c5cb47321a0b78386ccaade` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
