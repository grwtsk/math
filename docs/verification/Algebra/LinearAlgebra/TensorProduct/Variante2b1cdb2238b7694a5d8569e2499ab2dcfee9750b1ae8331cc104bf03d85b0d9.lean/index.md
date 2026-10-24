# Verification target: GRWTSK.Algebra.LinearAlgebra.TensorProduct.Variante2b1cdb2238b7694a5d8569e2499ab2dcfee9750b1ae8331cc104bf03d85b0d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66d2de330460e97cbfc82b3e7dccdb36e0597172",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variante2b1cdb2238b7694a5d8569e2499ab2dcfee9750b1ae8331cc104bf03d85b0d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante2b1cdb2238b7694a5d8569e2499ab2dcfee9750b1ae8331cc104bf03d85b0d9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante2b1cdb2238b7694a5d8569e2499ab2dcfee9750b1ae8331cc104bf03d85b0d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66d2de330460e97cbfc82b3e7dccdb36e0597172`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variante2b1cdb2238b7694a5d8569e2499ab2dcfee9750b1ae8331cc104bf03d85b0d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorProduct/Variante2b1cdb2238b7694a5d8569e2499ab2dcfee9750b1ae8331cc104bf03d85b0d9.lean.json)

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
| 1 | `def` | [tensorDistrib](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante2b1cdb2238b7694a5d8569e2499ab2dcfee9750b1ae8331cc104bf03d85b0d9.lean/declarations/tensordistrib--e6088863c7e058f59948b28a.md) | 62 | `declaration-track:e6088863c7e058f59948b28ada8457b44d49d1203871e4a26bae7b3bdaee67eb` |
| 2 | `theorem` | [tensorDistrib_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante2b1cdb2238b7694a5d8569e2499ab2dcfee9750b1ae8331cc104bf03d85b0d9.lean/declarations/tensordistrib-tmul--560a03c2df0c7b847a082459.md) | 73 | `result-track:560a03c2df0c7b847a082459f03416464e505df944f8af4ed1e8306e1b214547` |
| 3 | `abbrev` | [tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante2b1cdb2238b7694a5d8569e2499ab2dcfee9750b1ae8331cc104bf03d85b0d9.lean/declarations/tmul--4583666f673927c9debb1627.md) | 80 | `declaration-track:4583666f673927c9debb162748fc9cbe47e4120a4b3747f5d69f7d13ffe06716` |
| 4 | `lemma` | [tmul_isSymm](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante2b1cdb2238b7694a5d8569e2499ab2dcfee9750b1ae8331cc104bf03d85b0d9.lean/declarations/tmul-issymm--946859c847423d31af2c89e7.md) | 86 | `result-track:946859c847423d31af2c89e7b2365534de51102c5c1756b28b0b68e13f870f33` |
| 5 | `def` | [baseChange](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante2b1cdb2238b7694a5d8569e2499ab2dcfee9750b1ae8331cc104bf03d85b0d9.lean/declarations/basechange--ef413268e17ba10c83ac0cc7.md) | 96 | `declaration-track:ef413268e17ba10c83ac0cc78b3704db4db2c83e8d798f28898b669a28676f2e` |
| 6 | `theorem` | [baseChange_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante2b1cdb2238b7694a5d8569e2499ab2dcfee9750b1ae8331cc104bf03d85b0d9.lean/declarations/basechange-tmul--9c198a4392a610afcb64df30.md) | 100 | `result-track:9c198a4392a610afcb64df30267443952961ab78af37fab3d78e7a8387e33762` |
| 7 | `lemma` | [baseChange_isSymm](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante2b1cdb2238b7694a5d8569e2499ab2dcfee9750b1ae8331cc104bf03d85b0d9.lean/declarations/basechange-issymm--5fccb95f9c5531e9a4908532.md) | 105 | `result-track:5fccb95f9c5531e9a4908532066bc494b47b1d527aecdce6e592b6f6b435a290` |
| 8 | `def` | [tensorDistrib](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante2b1cdb2238b7694a5d8569e2499ab2dcfee9750b1ae8331cc104bf03d85b0d9.lean/declarations/tensordistrib--3fe50ef11a138e4877a5a057.md) | 118 | `declaration-track:3fe50ef11a138e4877a5a057b60ba792fe57a891b5c58c74e101c85d50a6e464` |
| 9 | `theorem` | [tensorDistrib_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante2b1cdb2238b7694a5d8569e2499ab2dcfee9750b1ae8331cc104bf03d85b0d9.lean/declarations/tensordistrib-tmul--387ba7324a08a77ce5b6a679.md) | 125 | `result-track:387ba7324a08a77ce5b6a67905adc6d40adb1a229c63f83e0aab35d3064cd13d` |
| 10 | `abbrev` | [tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante2b1cdb2238b7694a5d8569e2499ab2dcfee9750b1ae8331cc104bf03d85b0d9.lean/declarations/tmul--e14aa1fae6bb957956e2faed.md) | 132 | `declaration-track:e14aa1fae6bb957956e2faed67fe954dde259fbd995f9aaca589f75ebebed739` |
| 11 | `lemma` | [_root_.GRWTSK.Algebra.LinearAlgebra.TensorDistrib.Variantc28e659a66e3f672b0bdac8de1f41bb9d0f587f3452ff2a494b72c8b51638776.LinearMap.IsSymm.tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante2b1cdb2238b7694a5d8569e2499ab2dcfee9750b1ae8331cc104bf03d85b0d9.lean/declarations/root-grwtsk-algebra-linearalgebra-tensordistrib-variantc28e659a66e3f672b--ae838ec431183be2d3f8943f.md) | 137 | `result-track:ae838ec431183be2d3f8943f0e6e787dd5c51741339a0defbcb65bee9002408b` |
| 12 | `def` | [baseChange](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante2b1cdb2238b7694a5d8569e2499ab2dcfee9750b1ae8331cc104bf03d85b0d9.lean/declarations/basechange--e9a2464226487355d30ba588.md) | 145 | `declaration-track:e9a2464226487355d30ba5889e1a5b390a6fcd0b4080341acf1db74c48848067` |
| 13 | `theorem` | [baseChange_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante2b1cdb2238b7694a5d8569e2499ab2dcfee9750b1ae8331cc104bf03d85b0d9.lean/declarations/basechange-tmul--d44d592282a98559587df225.md) | 149 | `result-track:d44d592282a98559587df2251beacbbe903200260eccacb42c9cd3d44994fda7` |
| 14 | `lemma` | [baseChange_zero](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante2b1cdb2238b7694a5d8569e2499ab2dcfee9750b1ae8331cc104bf03d85b0d9.lean/declarations/basechange-zero--389e2d033a804dae72f033b8.md) | 154 | `result-track:389e2d033a804dae72f033b8043a2e91e572bab0a88b7925991506938c3a38cb` |
| 15 | `lemma` | [baseChange_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante2b1cdb2238b7694a5d8569e2499ab2dcfee9750b1ae8331cc104bf03d85b0d9.lean/declarations/basechange-eq-zero-iff--45a26fb7d87241849f3d75a4.md) | 156 | `result-track:45a26fb7d87241849f3d75a460c73cc91f5169019b5881761918dcec71374dee` |
| 16 | `lemma` | [IsSymm.baseChange](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante2b1cdb2238b7694a5d8569e2499ab2dcfee9750b1ae8331cc104bf03d85b0d9.lean/declarations/issymm-basechange--a7b999dbd41460cba771c408.md) | 164 | `result-track:a7b999dbd41460cba771c4088f225a6a8a63124c91ade151cd6b431bc2e67b8f` |
| 17 | `def` | [tensorDistribEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante2b1cdb2238b7694a5d8569e2499ab2dcfee9750b1ae8331cc104bf03d85b0d9.lean/declarations/tensordistribequiv--0c68b094e77945837dfcef58.md) | 183 | `declaration-track:0c68b094e77945837dfcef585f4be40af867bdb1173a9e9a1da0940e3d5fee89` |
| 18 | `theorem` | [tensorDistribEquiv_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante2b1cdb2238b7694a5d8569e2499ab2dcfee9750b1ae8331cc104bf03d85b0d9.lean/declarations/tensordistribequiv-tmul--8af712000c5f9436f40f589d.md) | 194 | `result-track:8af712000c5f9436f40f589d9de3773c675036201e07039352c8091965dfb20c` |
| 19 | `theorem` | [tensorDistribEquiv_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante2b1cdb2238b7694a5d8569e2499ab2dcfee9750b1ae8331cc104bf03d85b0d9.lean/declarations/tensordistribequiv-tolinearmap--b95183d6042859dd818b4a0e.md) | 202 | `result-track:b95183d6042859dd818b4a0e97ac97ffecef5eaed34be2401bb904d1c04704fc` |
| 20 | `theorem` | [tensorDistribEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante2b1cdb2238b7694a5d8569e2499ab2dcfee9750b1ae8331cc104bf03d85b0d9.lean/declarations/tensordistribequiv-apply--c19f62354f7396877ff50dc1.md) | 206 | `result-track:c19f62354f7396877ff50dc1c66023e839317c58e517c2fead86c16537ff1054` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
