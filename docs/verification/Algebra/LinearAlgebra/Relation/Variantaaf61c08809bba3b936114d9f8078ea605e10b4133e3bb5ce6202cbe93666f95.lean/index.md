# Verification target: GRWTSK.Algebra.LinearAlgebra.Relation.Variantaaf61c08809bba3b936114d9f8078ea605e10b4133e3bb5ce6202cbe93666f95

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b55ccc510b95f5950ff032281d4204c3a0bb07ee",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Relation/Variantaaf61c08809bba3b936114d9f8078ea605e10b4133e3bb5ce6202cbe93666f95.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Relation/Variantaaf61c08809bba3b936114d9f8078ea605e10b4133e3bb5ce6202cbe93666f95.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Relation/Variantaaf61c08809bba3b936114d9f8078ea605e10b4133e3bb5ce6202cbe93666f95.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b55ccc510b95f5950ff032281d4204c3a0bb07ee`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Relation/Variantaaf61c08809bba3b936114d9f8078ea605e10b4133e3bb5ce6202cbe93666f95.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Relation/Variantaaf61c08809bba3b936114d9f8078ea605e10b4133e3bb5ce6202cbe93666f95.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Matrix.Ext` — import line 6; external provider; requires a separately pinned dependency.
- `Boolean.Matrix.Operations` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [identity](../../../../../mathematics/Algebra/LinearAlgebra/Relation/Variantaaf61c08809bba3b936114d9f8078ea605e10b4133e3bb5ce6202cbe93666f95.lean/declarations/identity--8b31f65c1b66599eea521d8e.md) | 17 | `declaration-track:8b31f65c1b66599eea521d8e7b1bfb1ded680698d21ee64295644f2e0a7b4210` |
| 2 | `def` | [xor](../../../../../mathematics/Algebra/LinearAlgebra/Relation/Variantaaf61c08809bba3b936114d9f8078ea605e10b4133e3bb5ce6202cbe93666f95.lean/declarations/xor--ab45a2eff6d71f3a51452a51.md) | 21 | `declaration-track:ab45a2eff6d71f3a51452a510cf9862bf9397e55e7c069d7929208cce2c64953` |
| 3 | `def` | [pointwiseDifference](../../../../../mathematics/Algebra/LinearAlgebra/Relation/Variantaaf61c08809bba3b936114d9f8078ea605e10b4133e3bb5ce6202cbe93666f95.lean/declarations/pointwisedifference--bdeb5c49fa793b393e01b4b6.md) | 27 | `declaration-track:bdeb5c49fa793b393e01b4b6f7b30aac77e288c765b836204c56bad12129f44a` |
| 4 | `def` | [relComp](../../../../../mathematics/Algebra/LinearAlgebra/Relation/Variantaaf61c08809bba3b936114d9f8078ea605e10b4133e3bb5ce6202cbe93666f95.lean/declarations/relcomp--50d99a51c9b1cf71786a9a3b.md) | 33 | `declaration-track:50d99a51c9b1cf71786a9a3b374171f2e8f14ecbb3ac3047853077e8fee9d9e9` |
| 5 | `def` | [relMul](../../../../../mathematics/Algebra/LinearAlgebra/Relation/Variantaaf61c08809bba3b936114d9f8078ea605e10b4133e3bb5ce6202cbe93666f95.lean/declarations/relmul--0515c06abf9c294dfe9f49ed.md) | 41 | `declaration-track:0515c06abf9c294dfe9f49ed4f4300b8e3f18f2e1869595965d92dfcd2cd412d` |
| 6 | `theorem` | [entry_identity_same](../../../../../mathematics/Algebra/LinearAlgebra/Relation/Variantaaf61c08809bba3b936114d9f8078ea605e10b4133e3bb5ce6202cbe93666f95.lean/declarations/entry-identity-same--52e705533608f62a7f030a4c.md) | 48 | `result-track:52e705533608f62a7f030a4c53a761033d2dfc5b0e1e2f7acc15105f6f02e442` |
| 7 | `theorem` | [entry_xor](../../../../../mathematics/Algebra/LinearAlgebra/Relation/Variantaaf61c08809bba3b936114d9f8078ea605e10b4133e3bb5ce6202cbe93666f95.lean/declarations/entry-xor--e279db24b894d13426679b24.md) | 54 | `result-track:e279db24b894d13426679b242e3d37e6e2ebdb56721fa914c93d7f1335f8cc56` |
| 8 | `theorem` | [entry_pointwiseDifference](../../../../../mathematics/Algebra/LinearAlgebra/Relation/Variantaaf61c08809bba3b936114d9f8078ea605e10b4133e3bb5ce6202cbe93666f95.lean/declarations/entry-pointwisedifference--f358965ed544e62e94417d0d.md) | 63 | `result-track:f358965ed544e62e94417d0d87d5ac76d1de037c046e847e1422295b44bae2ef` |
| 9 | `theorem` | [transpose_transpose_checked](../../../../../mathematics/Algebra/LinearAlgebra/Relation/Variantaaf61c08809bba3b936114d9f8078ea605e10b4133e3bb5ce6202cbe93666f95.lean/declarations/transpose-transpose-checked--2e4d1e320bd4f1d5323f1435.md) | 71 | `result-track:2e4d1e320bd4f1d5323f1435ad7710a5dc01c4ff4ebdd66d27c53b0dddd2648c` |
| 10 | `theorem` | [join_comm](../../../../../mathematics/Algebra/LinearAlgebra/Relation/Variantaaf61c08809bba3b936114d9f8078ea605e10b4133e3bb5ce6202cbe93666f95.lean/declarations/join-comm--d7729732e41661c446cc0b05.md) | 76 | `result-track:d7729732e41661c446cc0b05e867f486365d60e836e2451ba2d8a292e314b613` |
| 11 | `theorem` | [meet_comm](../../../../../mathematics/Algebra/LinearAlgebra/Relation/Variantaaf61c08809bba3b936114d9f8078ea605e10b4133e3bb5ce6202cbe93666f95.lean/declarations/meet-comm--abe545367bb9b856d7f00fe1.md) | 84 | `result-track:abe545367bb9b856d7f00fe142cc0f45ba3aca91e34e10134fa9f8256399f6a3` |
| 12 | `theorem` | [xor_comm](../../../../../mathematics/Algebra/LinearAlgebra/Relation/Variantaaf61c08809bba3b936114d9f8078ea605e10b4133e3bb5ce6202cbe93666f95.lean/declarations/xor-comm--bb76956d0ba2f06360f90032.md) | 92 | `result-track:bb76956d0ba2f06360f90032ac99e714450d04bd31f2588220099fadcd53ed36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
