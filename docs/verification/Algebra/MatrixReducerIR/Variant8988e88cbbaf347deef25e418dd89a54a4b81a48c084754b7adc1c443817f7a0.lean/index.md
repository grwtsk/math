# Verification target: GRWTSK.Algebra.MatrixReducerIR.Variant8988e88cbbaf347deef25e418dd89a54a4b81a48c084754b7adc1c443817f7a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6ffdcdb1e90e534aa05f2aef9a00c139383234b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/MatrixReducerIR/Variant8988e88cbbaf347deef25e418dd89a54a4b81a48c084754b7adc1c443817f7a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/MatrixReducerIR/Variant8988e88cbbaf347deef25e418dd89a54a4b81a48c084754b7adc1c443817f7a0.lean/index.md) · [Full source](../../../../mathematics/Algebra/MatrixReducerIR/Variant8988e88cbbaf347deef25e418dd89a54a4b81a48c084754b7adc1c443817f7a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6ffdcdb1e90e534aa05f2aef9a00c139383234b`.

Source path: `GRWTSK/Algebra/MatrixReducerIR/Variant8988e88cbbaf347deef25e418dd89a54a4b81a48c084754b7adc1c443817f7a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/MatrixReducerIR/Variant8988e88cbbaf347deef25e418dd89a54a4b81a48c084754b7adc1c443817f7a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Runtime.ReducerIR` — import line 6; external provider; requires a separately pinned dependency.
- `FilesystemCodec.FieldRows` — import line 7; external provider; requires a separately pinned dependency.
- `DAF.Causal.ObserverFactor` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Rep](../../../../mathematics/Algebra/MatrixReducerIR/Variant8988e88cbbaf347deef25e418dd89a54a4b81a48c084754b7adc1c443817f7a0.lean/declarations/rep--4adeef1db09ee489f7e2a722.md) | 37 | `declaration-track:4adeef1db09ee489f7e2a722ec4caa59d7cdeab8f6a0f8db70aa6d1e8dda3e41` |
| 2 | `def` | [Rep.ofRuntime](../../../../mathematics/Algebra/MatrixReducerIR/Variant8988e88cbbaf347deef25e418dd89a54a4b81a48c084754b7adc1c443817f7a0.lean/declarations/rep-ofruntime--ee5b4ae6f2e85ecae70983bd.md) | 49 | `declaration-track:ee5b4ae6f2e85ecae70983bd2832480a6327aad2710ac91bfeb7d0e0525e4f4f` |
| 3 | `def` | [Rep.Denote](../../../../mathematics/Algebra/MatrixReducerIR/Variant8988e88cbbaf347deef25e418dd89a54a4b81a48c084754b7adc1c443817f7a0.lean/declarations/rep-denote--5303823986261f41f09a549f.md) | 55 | `declaration-track:5303823986261f41f09a549f445c109d116d2ca97ef0524ba05a71613b202f79` |
| 4 | `inductive` | [ReducerIR](../../../../mathematics/Algebra/MatrixReducerIR/Variant8988e88cbbaf347deef25e418dd89a54a4b81a48c084754b7adc1c443817f7a0.lean/declarations/reducerir--aec6534220586f198ace3af8.md) | 67 | `declaration-track:aec6534220586f198ace3af89daa2c30b75a54370289c8bfaa2c7ff220f512af` |
| 5 | `def` | [xorFamily](../../../../mathematics/Algebra/MatrixReducerIR/Variant8988e88cbbaf347deef25e418dd89a54a4b81a48c084754b7adc1c443817f7a0.lean/declarations/xorfamily--bb0fea51e5a18bd307564810.md) | 101 | `declaration-track:bb0fea51e5a18bd307564810328a5a0bbd5c846afa538112fcd90946dbcdcc5a` |
| 6 | `def` | [eval](../../../../mathematics/Algebra/MatrixReducerIR/Variant8988e88cbbaf347deef25e418dd89a54a4b81a48c084754b7adc1c443817f7a0.lean/declarations/eval--17a6e76bc0a3e6ee281998ef.md) | 105 | `declaration-track:17a6e76bc0a3e6ee281998eff8b0ceddf264387eabd65d6ff5785c62459437bc` |
| 7 | `theorem` | [eval_identity](../../../../mathematics/Algebra/MatrixReducerIR/Variant8988e88cbbaf347deef25e418dd89a54a4b81a48c084754b7adc1c443817f7a0.lean/declarations/eval-identity--e9cda19b194ff2e53df4c216.md) | 136 | `result-track:e9cda19b194ff2e53df4c2163a636e1d351320829997f16374707344e44a05af` |
| 8 | `theorem` | [eval_compose](../../../../mathematics/Algebra/MatrixReducerIR/Variant8988e88cbbaf347deef25e418dd89a54a4b81a48c084754b7adc1c443817f7a0.lean/declarations/eval-compose--fcef7962c8f9124e3ada98fe.md) | 141 | `result-track:fcef7962c8f9124e3ada98fe1b4cfc83cb15caa2012b0cfe58a6977547872cf0` |
| 9 | `def` | [describe](../../../../mathematics/Algebra/MatrixReducerIR/Variant8988e88cbbaf347deef25e418dd89a54a4b81a48c084754b7adc1c443817f7a0.lean/declarations/describe--466e5b34af638f7625933b66.md) | 149 | `declaration-track:466e5b34af638f7625933b667fed368facaf9ba38fc6cb58b87c8bbc2a849c9a` |
| 10 | `def` | [ofRuntime](../../../../mathematics/Algebra/MatrixReducerIR/Variant8988e88cbbaf347deef25e418dd89a54a4b81a48c084754b7adc1c443817f7a0.lean/declarations/ofruntime--5fa1f90d7dc3a9891bd462f1.md) | 176 | `declaration-track:5fa1f90d7dc3a9891bd462f1144ac106bf73bcdc63523334fb6568612e2f97b7` |
| 11 | `structure` | [CertifiedReducerIR](../../../../mathematics/Algebra/MatrixReducerIR/Variant8988e88cbbaf347deef25e418dd89a54a4b81a48c084754b7adc1c443817f7a0.lean/declarations/certifiedreducerir--2cfd8330d0f01857cd97f8d5.md) | 202 | `declaration-track:2cfd8330d0f01857cd97f8d5b2db7579ec48081c02f52556ad84aa4fe2a1355c` |
| 12 | `def` | [toObserverReducer](../../../../mathematics/Algebra/MatrixReducerIR/Variant8988e88cbbaf347deef25e418dd89a54a4b81a48c084754b7adc1c443817f7a0.lean/declarations/toobserverreducer--5a1768194dec144bcdf9a5cb.md) | 221 | `declaration-track:5a1768194dec144bcdf9a5cb45a668bf628d8fde88fb90dadb46644a5d71ca68` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
