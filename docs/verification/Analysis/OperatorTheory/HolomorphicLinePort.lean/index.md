# Verification target: GRWTSK.Analysis.Operator.HolomorphicLinePort

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82ebbad5093612f7505b5f07c99668c7ae5b5db1",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Operator/HolomorphicLinePort.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLinePort.lean/index.md) · [Full source](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLinePort.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82ebbad5093612f7505b5f07c99668c7ae5b5db1`.

Source path: `GRWTSK/Analysis/Operator/HolomorphicLinePort.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Operator/HolomorphicLinePort.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.HolomorphicLineSections`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSections.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CompatibleOperators](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLinePort.lean/declarations/compatibleoperators--20344e982a0b5c5cd9459f56.md) | 26 | `declaration-track:20344e982a0b5c5cd9459f56788f326f3c22e994fcae72b968d3487b5610ced0` |
| 2 | `def` | [descend](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLinePort.lean/declarations/descend--f8617bc6bee1da7752e181d1.md) | 38 | `declaration-track:f8617bc6bee1da7752e181d19629ade3992ec3a192cb8aab5fa31b3a05a84682` |
| 3 | `theorem` | [coordinate_descend](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLinePort.lean/declarations/coordinate-descend--81270503b5d29b5159f7c570.md) | 43 | `result-track:81270503b5d29b5159f7c5707d9a7ea8f13f72a81219da67a992d7f2e6aa1ec5` |
| 4 | `theorem` | [descend_unique](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLinePort.lean/declarations/descend-unique--fa51ae1f6ebf3cbd68903c51.md) | 51 | `result-track:fa51ae1f6ebf3cbd68903c51528a35736d0b9781127ff8ec169bc8464e7418dc` |
| 5 | `def` | [identity](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLinePort.lean/declarations/identity--b1b031857dc4e5ca9a61d7e0.md) | 67 | `declaration-track:b1b031857dc4e5ca9a61d7e08c2db38fb6dca255a80508409b773b02d14d8f79` |
| 6 | `def` | [comp](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLinePort.lean/declarations/comp--5a32c59eab32caeb161476fe.md) | 72 | `declaration-track:5a32c59eab32caeb161476fe7f186e91794debaa44fe5dca450b1f51a6363e09` |
| 7 | `theorem` | [descend_identity](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLinePort.lean/declarations/descend-identity--89d3ad97c65a8f109867f20b.md) | 82 | `result-track:89d3ad97c65a8f109867f20b4c2bdad12fb3292debcfc5e751812620b996f397` |
| 8 | `theorem` | [descend_comp](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLinePort.lean/declarations/descend-comp--369030f64bef44a283e2daaf.md) | 86 | `result-track:369030f64bef44a283e2daafea53ef499c3a0fa24e6fdc250bfcf4e5546ddffb` |
| 9 | `def` | [PreservesHolomorphy](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLinePort.lean/declarations/preservesholomorphy--51b7a678edfac84a1a1a03a7.md) | 91 | `declaration-track:51b7a678edfac84a1a1a03a7fb54d160a5b94ab1dd17a6d159694b67f340652b` |
| 10 | `def` | [mapSection](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLinePort.lean/declarations/mapsection--cab89308e86f4de7b0110b96.md) | 96 | `declaration-track:cab89308e86f4de7b0110b967b2cbb826816a3be89712f03f83228a9097b713c` |
| 11 | `theorem` | [mapSection_continuous](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLinePort.lean/declarations/mapsection-continuous--7e73c44828706b82c8c6757e.md) | 110 | `result-track:7e73c44828706b82c8c6757ed468174ccc2d7538d6ec52d5dce5398c230447c4` |
| 12 | `def` | [multiplication](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLinePort.lean/declarations/multiplication--0229dee4a943d1d1634ed66b.md) | 117 | `declaration-track:0229dee4a943d1d1634ed66b3fe4aef654bf4defd10c9fea531dc8da622ca5ab` |
| 13 | `theorem` | [multiplication_preservesHolomorphy](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLinePort.lean/declarations/multiplication-preservesholomorphy--bd4b5519da9baa25efffc216.md) | 126 | `result-track:bd4b5519da9baa25efffc216aa59f38fb930e837aafa2fcd8b4bb4b35588ea5b` |
| 14 | `def` | [badLocalOp](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLinePort.lean/declarations/badlocalop--45e660741f06b89c7bafded9.md) | 139 | `declaration-track:45e660741f06b89c7bafded9b2efb135d25b8a81caa9f5b12d8cc0fd5ebc533a` |
| 15 | `theorem` | [badLocalOp_no_descent](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLinePort.lean/declarations/badlocalop-no-descent--07d7290f65d126f8d52e6542.md) | 143 | `result-track:07d7290f65d126f8d52e6542188bdefa4aaf0021b3f6c515433abb56180699ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
