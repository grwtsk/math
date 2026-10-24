# Verification target: GRWTSK.Algebra.LinearAlgebra.ULift.Variant5aa397d66e8b2098f20cb82a8c78687fdbcbc5cae3427ca5ce6fa64252e6c7fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5f3ef8854ebb9f7c40255243e0833f27f95cead",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ULift/Variant5aa397d66e8b2098f20cb82a8c78687fdbcbc5cae3427ca5ce6fa64252e6c7fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variant5aa397d66e8b2098f20cb82a8c78687fdbcbc5cae3427ca5ce6fa64252e6c7fd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variant5aa397d66e8b2098f20cb82a8c78687fdbcbc5cae3427ca5ce6fa64252e6c7fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5f3ef8854ebb9f7c40255243e0833f27f95cead`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ULift/Variant5aa397d66e8b2098f20cb82a8c78687fdbcbc5cae3427ca5ce6fa64252e6c7fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ULift/Variant5aa397d66e8b2098f20cb82a8c78687fdbcbc5cae3427ca5ce6fa64252e6c7fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.ULift` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.ULift` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Equiv.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ULift` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [smulLeft](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variant5aa397d66e8b2098f20cb82a8c78687fdbcbc5cae3427ca5ce6fa64252e6c7fd.lean/declarations/smulleft--74a731bb3ce4469d431a5f39.md) | 37 | `declaration-track:74a731bb3ce4469d431a5f39eb25926322e74cdf3d50ba0a9ca8e75a5c1868b9` |
| 2 | `theorem` | [smul_def](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variant5aa397d66e8b2098f20cb82a8c78687fdbcbc5cae3427ca5ce6fa64252e6c7fd.lean/declarations/smul-def--bec473dcc49cdd10923302ab.md) | 41 | `result-track:bec473dcc49cdd10923302ab05336fc048de0f1d2950c875a485ad956d3dfa02` |
| 3 | `instance` | [isScalarTower](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variant5aa397d66e8b2098f20cb82a8c78687fdbcbc5cae3427ca5ce6fa64252e6c7fd.lean/declarations/isscalartower--20d1a990133b9e1816af823c.md) | 44 | `declaration-track:20d1a990133b9e1816af823c9f60d4c71cea999fc70970dfbeaafcf66be782a7` |
| 4 | `instance` | [isScalarTower'](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variant5aa397d66e8b2098f20cb82a8c78687fdbcbc5cae3427ca5ce6fa64252e6c7fd.lean/declarations/isscalartower--08b60faad574d82cee509d55.md) | 48 | `declaration-track:08b60faad574d82cee509d557211fa003dd75145571173bb70b42b22d90fbb52` |
| 5 | `instance` | [isScalarTower''](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variant5aa397d66e8b2098f20cb82a8c78687fdbcbc5cae3427ca5ce6fa64252e6c7fd.lean/declarations/isscalartower--d2a216217a74fd58e36cd56f.md) | 52 | `declaration-track:d2a216217a74fd58e36cd56fa12f9c593dcd9b7041359604aa9be17de4de4c3f` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variant5aa397d66e8b2098f20cb82a8c78687fdbcbc5cae3427ca5ce6fa64252e6c7fd.lean/declarations/instance--68e4908b4c37b1bf3de554ed.md) | 56 | `declaration-track:68e4908b4c37b1bf3de554edda7eb9540ff06709c68d51319d203fcce5f50489` |
| 7 | `instance` | [mulAction](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variant5aa397d66e8b2098f20cb82a8c78687fdbcbc5cae3427ca5ce6fa64252e6c7fd.lean/declarations/mulaction--660381dd3995084b0071029a.md) | 60 | `declaration-track:660381dd3995084b0071029a76e7cd975e01480001b95fefe6d21cb621dfe9f2` |
| 8 | `instance` | [mulAction'](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variant5aa397d66e8b2098f20cb82a8c78687fdbcbc5cae3427ca5ce6fa64252e6c7fd.lean/declarations/mulaction--1c0b015a31a40754b553b93b.md) | 66 | `declaration-track:1c0b015a31a40754b553b93b759df714c2a11e05bceff77862d9773cbe2fbc79` |
| 9 | `instance` | [smulZeroClass](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variant5aa397d66e8b2098f20cb82a8c78687fdbcbc5cae3427ca5ce6fa64252e6c7fd.lean/declarations/smulzeroclass--e8576690faeeedd94bf2c484.md) | 71 | `declaration-track:e8576690faeeedd94bf2c4841f61653ebbdd625f5866c824680c3c115f842c53` |
| 10 | `instance` | [smulZeroClass'](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variant5aa397d66e8b2098f20cb82a8c78687fdbcbc5cae3427ca5ce6fa64252e6c7fd.lean/declarations/smulzeroclass--319180ced18de7559dffce09.md) | 74 | `declaration-track:319180ced18de7559dffce0939c4641572299a02b3ea0a7e2f64292f2a37c1e8` |
| 11 | `instance` | [distribSMul](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variant5aa397d66e8b2098f20cb82a8c78687fdbcbc5cae3427ca5ce6fa64252e6c7fd.lean/declarations/distribsmul--711a015bddf1674c813a9c39.md) | 77 | `declaration-track:711a015bddf1674c813a9c3905c146ea00bfaccaf6c03f914bc995823928dcf8` |
| 12 | `instance` | [distribSMul'](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variant5aa397d66e8b2098f20cb82a8c78687fdbcbc5cae3427ca5ce6fa64252e6c7fd.lean/declarations/distribsmul--f25963d40b55a0083c22a950.md) | 80 | `declaration-track:f25963d40b55a0083c22a950e0472c08f9d81ef03bcea635eb3ac48c75cc2900` |
| 13 | `instance` | [distribMulAction](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variant5aa397d66e8b2098f20cb82a8c78687fdbcbc5cae3427ca5ce6fa64252e6c7fd.lean/declarations/distribmulaction--98f51fd98f8476386a5ae605.md) | 85 | `declaration-track:98f51fd98f8476386a5ae6059d19daab86a5028af31fc0d92229c04e7876510a` |
| 14 | `instance` | [distribMulAction'](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variant5aa397d66e8b2098f20cb82a8c78687fdbcbc5cae3427ca5ce6fa64252e6c7fd.lean/declarations/distribmulaction--834a76a3b305e5c765483af3.md) | 89 | `declaration-track:834a76a3b305e5c765483af3a23dfe8e85512d17f3b2eef6917cd8dcadb4eb33` |
| 15 | `instance` | [mulDistribMulAction](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variant5aa397d66e8b2098f20cb82a8c78687fdbcbc5cae3427ca5ce6fa64252e6c7fd.lean/declarations/muldistribmulaction--2539bb3d84dd0955f5e74a8b.md) | 93 | `declaration-track:2539bb3d84dd0955f5e74a8b609e5e8f9feca798ae81f0008f72b17ded11167c` |
| 16 | `instance` | [mulDistribMulAction'](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variant5aa397d66e8b2098f20cb82a8c78687fdbcbc5cae3427ca5ce6fa64252e6c7fd.lean/declarations/muldistribmulaction--06018357fd9e7c9114d35210.md) | 98 | `declaration-track:06018357fd9e7c9114d35210eb01d7bc4c9a0f5aa464de38d3b3237fd3d7b799` |
| 17 | `instance` | [smulWithZero](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variant5aa397d66e8b2098f20cb82a8c78687fdbcbc5cae3427ca5ce6fa64252e6c7fd.lean/declarations/smulwithzero--404830fa222b4156649807ae.md) | 108 | `declaration-track:404830fa222b4156649807ae5fc4d648742affef706d5057ea65f6d1a6e2a1e5` |
| 18 | `instance` | [smulWithZero'](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variant5aa397d66e8b2098f20cb82a8c78687fdbcbc5cae3427ca5ce6fa64252e6c7fd.lean/declarations/smulwithzero--83e0d28d9d6b579a79154dfa.md) | 113 | `declaration-track:83e0d28d9d6b579a79154dfa023d2f5326f0bd2e00c0591d5f01151612b1c2f3` |
| 19 | `instance` | [mulActionWithZero](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variant5aa397d66e8b2098f20cb82a8c78687fdbcbc5cae3427ca5ce6fa64252e6c7fd.lean/declarations/mulactionwithzero--d05660c0576c48567fbb3e3e.md) | 117 | `declaration-track:d05660c0576c48567fbb3e3e7c694cdc58a773aeff95b5da290f3eed8bd65a83` |
| 20 | `instance` | [mulActionWithZero'](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variant5aa397d66e8b2098f20cb82a8c78687fdbcbc5cae3427ca5ce6fa64252e6c7fd.lean/declarations/mulactionwithzero--df70588f43f74b977a574e14.md) | 123 | `declaration-track:df70588f43f74b977a574e149be6a051775611829745090534f2f57bc74a7663` |
| 21 | `instance` | [module](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variant5aa397d66e8b2098f20cb82a8c78687fdbcbc5cae3427ca5ce6fa64252e6c7fd.lean/declarations/module--be0155c5ca946a0920782928.md) | 129 | `declaration-track:be0155c5ca946a09207829281aeac7af08f5292ebcc5352f177659334f7b8c98` |
| 22 | `instance` | [module'](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variant5aa397d66e8b2098f20cb82a8c78687fdbcbc5cae3427ca5ce6fa64252e6c7fd.lean/declarations/module--7efc80bd40909da4f501276b.md) | 136 | `declaration-track:7efc80bd40909da4f501276b3c92a697eba0a4d2a7e9814c62a8bd3d3b80d85a` |
| 23 | `def` | [moduleEquiv](../../../../../mathematics/Algebra/LinearAlgebra/ULift/Variant5aa397d66e8b2098f20cb82a8c78687fdbcbc5cae3427ca5ce6fa64252e6c7fd.lean/declarations/moduleequiv--20dda612cd052296efc1e8ac.md) | 147 | `declaration-track:20dda612cd052296efc1e8ac07692178a5574bd9c737f66a67695d747b895aca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
