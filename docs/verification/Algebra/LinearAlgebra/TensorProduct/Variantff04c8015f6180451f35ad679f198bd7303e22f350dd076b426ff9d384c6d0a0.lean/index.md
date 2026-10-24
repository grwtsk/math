# Verification target: GRWTSK.Algebra.LinearAlgebra.TensorProduct.Variantff04c8015f6180451f35ad679f198bd7303e22f350dd076b426ff9d384c6d0a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "711aa46e29855f20d8682bc875f0db74d0e5d122",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variantff04c8015f6180451f35ad679f198bd7303e22f350dd076b426ff9d384c6d0a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variantff04c8015f6180451f35ad679f198bd7303e22f350dd076b426ff9d384c6d0a0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variantff04c8015f6180451f35ad679f198bd7303e22f350dd076b426ff9d384c6d0a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `711aa46e29855f20d8682bc875f0db74d0e5d122`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variantff04c8015f6180451f35ad679f198bd7303e22f350dd076b426ff9d384c6d0a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorProduct/Variantff04c8015f6180451f35ad679f198bd7303e22f350dd076b426ff9d384c6d0a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tensorDistrib](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variantff04c8015f6180451f35ad679f198bd7303e22f350dd076b426ff9d384c6d0a0.lean/declarations/tensordistrib--b8de2773eadd7e3ef6623f4a.md) | 56 | `declaration-track:b8de2773eadd7e3ef6623f4a5e9b5dbde0b441bb8f45188eb270bf56b2c4bbe8` |
| 2 | `theorem` | [tensorDistrib_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variantff04c8015f6180451f35ad679f198bd7303e22f350dd076b426ff9d384c6d0a0.lean/declarations/tensordistrib-tmul--0390c698e60ce00fcb554842.md) | 69 | `result-track:0390c698e60ce00fcb554842f0ad3b5f4e2b71ca0ffbd2d36a194f429cb36f62` |
| 3 | `abbrev` | [tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variantff04c8015f6180451f35ad679f198bd7303e22f350dd076b426ff9d384c6d0a0.lean/declarations/tmul--c87070a3be57e018b577512e.md) | 76 | `declaration-track:c87070a3be57e018b577512ea70c5fef82221e688d717659236bdb3da2cec9dc` |
| 4 | `theorem` | [associated_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variantff04c8015f6180451f35ad679f198bd7303e22f350dd076b426ff9d384c6d0a0.lean/declarations/associated-tmul--21d9175a5251310dfe49da36.md) | 80 | `result-track:21d9175a5251310dfe49da360c02b40d180b4c980d075bb2b0e6ab1c186b1e1d` |
| 5 | `def` | [tensorDistrib](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variantff04c8015f6180451f35ad679f198bd7303e22f350dd076b426ff9d384c6d0a0.lean/declarations/tensordistrib--20c8738dcd1d20582445fa61.md) | 100 | `declaration-track:20c8738dcd1d20582445fa619809ae589122ffed01f488d2267a170a7605ea79` |
| 6 | `theorem` | [tensorDistrib_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variantff04c8015f6180451f35ad679f198bd7303e22f350dd076b426ff9d384c6d0a0.lean/declarations/tensordistrib-tmul--a67b8b91402c04d1cd5b055d.md) | 107 | `result-track:a67b8b91402c04d1cd5b055dd734a30c2a26a0ba23a95bbedd73521d9f94bf41` |
| 7 | `abbrev` | [tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variantff04c8015f6180451f35ad679f198bd7303e22f350dd076b426ff9d384c6d0a0.lean/declarations/tmul--ad12fda2a702c6fbf80fe0ce.md) | 114 | `declaration-track:ad12fda2a702c6fbf80fe0ce24d9b58e8fc7e8d5d00d828d367631e500e083d9` |
| 8 | `theorem` | [associated_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variantff04c8015f6180451f35ad679f198bd7303e22f350dd076b426ff9d384c6d0a0.lean/declarations/associated-tmul--6806d8e406ce66d540f0b24c.md) | 118 | `result-track:6806d8e406ce66d540f0b24c0af432070c279cd0e13fa08bd392906f7a315d2b` |
| 9 | `theorem` | [polarBilin_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variantff04c8015f6180451f35ad679f198bd7303e22f350dd076b426ff9d384c6d0a0.lean/declarations/polarbilin-tmul--bb518bf0ffb61d625ac15809.md) | 126 | `result-track:bb518bf0ffb61d625ac158099e722cdaeb7076411c74b02f6daded2e6351917d` |
| 10 | `def` | [baseChange](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variantff04c8015f6180451f35ad679f198bd7303e22f350dd076b426ff9d384c6d0a0.lean/declarations/basechange--58071e83ae6a8d20f253bffd.md) | 135 | `declaration-track:58071e83ae6a8d20f253bffdde59043ec1c010f474f1ff6b44147da76dfc4ddf` |
| 11 | `theorem` | [baseChange_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variantff04c8015f6180451f35ad679f198bd7303e22f350dd076b426ff9d384c6d0a0.lean/declarations/basechange-tmul--9bc3fc83f82dc36a8285be77.md) | 139 | `result-track:9bc3fc83f82dc36a8285be775e03b50832cea60ce4b92811ad688c527d359b8e` |
| 12 | `theorem` | [associated_baseChange](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variantff04c8015f6180451f35ad679f198bd7303e22f350dd076b426ff9d384c6d0a0.lean/declarations/associated-basechange--a3703f61f95fe76a13b03746.md) | 143 | `result-track:a3703f61f95fe76a13b037462f41b1d9105292039f99905e0fbf6089a6eefa2b` |
| 13 | `theorem` | [polarBilin_baseChange](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variantff04c8015f6180451f35ad679f198bd7303e22f350dd076b426ff9d384c6d0a0.lean/declarations/polarbilin-basechange--ac406b4e592ce0b3c5b90ed1.md) | 149 | `result-track:ac406b4e592ce0b3c5b90ed137732917708b7cf12c8f55bf6b755f33da9a6485` |
| 14 | `theorem` | [baseChange_ext](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variantff04c8015f6180451f35ad679f198bd7303e22f350dd076b426ff9d384c6d0a0.lean/declarations/basechange-ext--b965b66d38ee691a205cf301.md) | 166 | `result-track:b965b66d38ee691a205cf30108de398a15f6d31898070a1e0590bebd2b9b5931` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
