# Verification target: GRWTSK.Algebra.LinearAlgebra.Bilinear.Variant44a53bfb68a2bc86b72a4fcc8d75496330f5fb25941ecf1bda82d58a1a5967bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "211f36d0c5236474858b1590ac1e8281c4ced41f",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Bilinear/Variant44a53bfb68a2bc86b72a4fcc8d75496330f5fb25941ecf1bda82d58a1a5967bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44a53bfb68a2bc86b72a4fcc8d75496330f5fb25941ecf1bda82d58a1a5967bc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44a53bfb68a2bc86b72a4fcc8d75496330f5fb25941ecf1bda82d58a1a5967bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `211f36d0c5236474858b1590ac1e8281c4ced41f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Bilinear/Variant44a53bfb68a2bc86b72a4fcc8d75496330f5fb25941ecf1bda82d58a1a5967bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Bilinear/Variant44a53bfb68a2bc86b72a4fcc8d75496330f5fb25941ecf1bda82d58a1a5967bc.lean.json)

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
| 1 | `def` | [mul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44a53bfb68a2bc86b72a4fcc8d75496330f5fb25941ecf1bda82d58a1a5967bc.lean/declarations/mul--1a459cc24715238424149a5d.md) | 44 | `declaration-track:1a459cc24715238424149a5d9ff817e495d064cfaca1555c8cd4fc4bfa416ba7` |
| 2 | `def` | [mul'](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44a53bfb68a2bc86b72a4fcc8d75496330f5fb25941ecf1bda82d58a1a5967bc.lean/declarations/mul--971faf16fd581c5cca0b97af.md) | 48 | `declaration-track:971faf16fd581c5cca0b97affa2c4e4c3232e55a9a3a7b56f415ecc373f097ef` |
| 3 | `theorem` | [mul_apply'](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44a53bfb68a2bc86b72a4fcc8d75496330f5fb25941ecf1bda82d58a1a5967bc.lean/declarations/mul-apply--dc982adfcf006c21e4288862.md) | 57 | `result-track:dc982adfcf006c21e42888628dcee538a8de768f5fa44e8e7b28b54b67520cff` |
| 4 | `theorem` | [mul'_apply](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44a53bfb68a2bc86b72a4fcc8d75496330f5fb25941ecf1bda82d58a1a5967bc.lean/declarations/mul-apply--92d6b1ebca1410a023e57d64.md) | 61 | `result-track:92d6b1ebca1410a023e57d647868ecfaffc5ce414cf588b314a42dcf889c4454` |
| 5 | `lemma` | [restrictScalars_mul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44a53bfb68a2bc86b72a4fcc8d75496330f5fb25941ecf1bda82d58a1a5967bc.lean/declarations/restrictscalars-mul--02ec49575980255069046642.md) | 64 | `result-track:02ec49575980255069046642e9fcbdd9a5c5812845b48c7a0048c5168867513e` |
| 6 | `theorem` | [lift_lsmul_mul_eq_lsmul_lift_lsmul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44a53bfb68a2bc86b72a4fcc8d75496330f5fb25941ecf1bda82d58a1a5967bc.lean/declarations/lift-lsmul-mul-eq-lsmul-lift-lsmul--41e1ebd5120a32c668f26980.md) | 72 | `result-track:41e1ebd5120a32c668f269805c7d39303fbe24138ae661c1afd46807a932fe66` |
| 7 | `def` | [_root_.GRWTSK.Algebra.LinearAlgebra.Mul.Variantae49445fb02038c77d8b1818472dcac20a17c1d8a959650f5057db9ee09301f4.NonUnitalAlgHom.lmul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44a53bfb68a2bc86b72a4fcc8d75496330f5fb25941ecf1bda82d58a1a5967bc.lean/declarations/root-grwtsk-algebra-linearalgebra-mul-variantae49445fb02038c77d8b1818472--8f9b53faaa390cd6e1fded19.md) | 90 | `declaration-track:8f9b53faaa390cd6e1fded194797dc78e48b6dffb1f8567ebce050a859a308fd` |
| 8 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.Mul.Variantae49445fb02038c77d8b1818472dcac20a17c1d8a959650f5057db9ee09301f4.NonUnitalAlgHom.coe_lmul_eq_mul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44a53bfb68a2bc86b72a4fcc8d75496330f5fb25941ecf1bda82d58a1a5967bc.lean/declarations/root-grwtsk-algebra-linearalgebra-mul-variantae49445fb02038c77d8b1818472--8f558153e3745f026fa99e39.md) | 96 | `result-track:8f558153e3745f026fa99e39e7f0d769df4509208f0b84dfd08519caa110126f` |
| 9 | `theorem` | [commute_mulLeft_right](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44a53bfb68a2bc86b72a4fcc8d75496330f5fb25941ecf1bda82d58a1a5967bc.lean/declarations/commute-mulleft-right--bb46ebe64435f0e947383ac5.md) | 99 | `result-track:bb46ebe64435f0e947383ac54ddc10e90afe2ced776f01684ee22abd60fcc46e` |
| 10 | `theorem` | [map_mul_iff](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44a53bfb68a2bc86b72a4fcc8d75496330f5fb25941ecf1bda82d58a1a5967bc.lean/declarations/map-mul-iff--e92339f03599e4d0f984f1f5.md) | 108 | `result-track:e92339f03599e4d0f984f1f5ba338821600bb85c23c7e10d3e1d8c928b333c4a` |
| 11 | `theorem` | [pow_mulLeft](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44a53bfb68a2bc86b72a4fcc8d75496330f5fb25941ecf1bda82d58a1a5967bc.lean/declarations/pow-mulleft--3b06de2b76df1e8d418a6cf6.md) | 125 | `result-track:3b06de2b76df1e8d418a6cf6e355ec640886c44854106022b4b904f40a945b09` |
| 12 | `theorem` | [pow_mulRight](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44a53bfb68a2bc86b72a4fcc8d75496330f5fb25941ecf1bda82d58a1a5967bc.lean/declarations/pow-mulright--35d732ab15b6ff0dc5a64a9f.md) | 136 | `result-track:35d732ab15b6ff0dc5a64a9f0b7fc3d8857405607e923eebc2299927c8b2c401` |
| 13 | `def` | [_root_.GRWTSK.Algebra.LinearAlgebra.Mul.Variantae49445fb02038c77d8b1818472dcac20a17c1d8a959650f5057db9ee09301f4.Algebra.lmul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44a53bfb68a2bc86b72a4fcc8d75496330f5fb25941ecf1bda82d58a1a5967bc.lean/declarations/root-grwtsk-algebra-linearalgebra-mul-variantae49445fb02038c77d8b1818472--92d34c22a86a5224bdaf21fe.md) | 151 | `declaration-track:92d34c22a86a5224bdaf21fed16cdd79779068f10731b0333690c54fddfb9705` |
| 14 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.Mul.Variantae49445fb02038c77d8b1818472dcac20a17c1d8a959650f5057db9ee09301f4.Algebra.coe_lmul_eq_mul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44a53bfb68a2bc86b72a4fcc8d75496330f5fb25941ecf1bda82d58a1a5967bc.lean/declarations/root-grwtsk-algebra-linearalgebra-mul-variantae49445fb02038c77d8b1818472--4047087fb00ae18437d99246.md) | 159 | `result-track:4047087fb00ae18437d9924683175efcf87515860cc1cb9235ce5fb989a18579` |
| 15 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.Mul.Variantae49445fb02038c77d8b1818472dcac20a17c1d8a959650f5057db9ee09301f4.Algebra.lmul_injective](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44a53bfb68a2bc86b72a4fcc8d75496330f5fb25941ecf1bda82d58a1a5967bc.lean/declarations/root-grwtsk-algebra-linearalgebra-mul-variantae49445fb02038c77d8b1818472--00696785f51c22ec5fb6e817.md) | 162 | `result-track:00696785f51c22ec5fb6e8177d10bd3559409cd3a9dbe7fd6b128d66eb974df4` |
| 16 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.Mul.Variantae49445fb02038c77d8b1818472dcac20a17c1d8a959650f5057db9ee09301f4.Algebra.lmul_isUnit_iff](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44a53bfb68a2bc86b72a4fcc8d75496330f5fb25941ecf1bda82d58a1a5967bc.lean/declarations/root-grwtsk-algebra-linearalgebra-mul-variantae49445fb02038c77d8b1818472--1731ec93276eb24031930dba.md) | 165 | `result-track:1731ec93276eb24031930dba356ad595e09ceea22ceba85c93c8e37732fc267b` |
| 17 | `theorem` | [toSpanSingleton_one_eq_algebraLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44a53bfb68a2bc86b72a4fcc8d75496330f5fb25941ecf1bda82d58a1a5967bc.lean/declarations/tospansingleton-one-eq-algebralinearmap--5ac54073259f548ee2372526.md) | 170 | `result-track:5ac54073259f548ee23725268c54bc9b2633703b1d20ac1b4019be2b2fba5bad` |
| 18 | `def` | [mul''](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44a53bfb68a2bc86b72a4fcc8d75496330f5fb25941ecf1bda82d58a1a5967bc.lean/declarations/mul--e1f671c7c208bc1a41d7223e.md) | 175 | `declaration-track:e1f671c7c208bc1a41d7223e985844a5b9c86a8d2552ce9c69f330462ee604fa` |
| 19 | `lemma` | [flip_mul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44a53bfb68a2bc86b72a4fcc8d75496330f5fb25941ecf1bda82d58a1a5967bc.lean/declarations/flip-mul--938da906c37a47bd6bec017f.md) | 186 | `result-track:938da906c37a47bd6bec017f468241f1fca2f3f25fef7113b9a6dfb8f2bfc277` |
| 20 | `lemma` | [mul'_comp_comm](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44a53bfb68a2bc86b72a4fcc8d75496330f5fb25941ecf1bda82d58a1a5967bc.lean/declarations/mul-comp-comm--98615a32a5e5ed8236c28a0c.md) | 188 | `result-track:98615a32a5e5ed8236c28a0ced215f86d04230bbce0f6319a86800c21889aac7` |
| 21 | `lemma` | [mul'_comm](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44a53bfb68a2bc86b72a4fcc8d75496330f5fb25941ecf1bda82d58a1a5967bc.lean/declarations/mul-comm--1dbe518c3ff90915480537da.md) | 191 | `result-track:1dbe518c3ff90915480537da51f5deced8e22bf03b2c1d60422571f9f85c20fd` |
| 22 | `lemma` | [comp_mul'](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44a53bfb68a2bc86b72a4fcc8d75496330f5fb25941ecf1bda82d58a1a5967bc.lean/declarations/comp-mul--6d52adbb2c096e97a6922619.md) | 204 | `result-track:6d52adbb2c096e97a692261994d73239a416287bf201f0fdfdc7e61c020ed22f` |
| 23 | `lemma` | [comp_mul'](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44a53bfb68a2bc86b72a4fcc8d75496330f5fb25941ecf1bda82d58a1a5967bc.lean/declarations/comp-mul--7237a918648647e4192931ac.md) | 212 | `result-track:7237a918648647e4192931acfbeb60cb206db6134d1fa1e81820d1ce5a49e879` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
