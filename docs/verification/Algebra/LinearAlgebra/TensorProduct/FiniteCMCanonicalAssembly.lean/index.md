# Verification target: GRWTSK.LinearAlgebra.TensorProduct.FiniteCMCanonicalAssembly

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edee2ce00089a3bb2b0959021be4d935256ed327",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/TensorProduct/FiniteCMCanonicalAssembly.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/FiniteCMCanonicalAssembly.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/FiniteCMCanonicalAssembly.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edee2ce00089a3bb2b0959021be4d935256ed327`.

Source path: `GRWTSK/LinearAlgebra/TensorProduct/FiniteCMCanonicalAssembly.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/TensorProduct/FiniteCMCanonicalAssembly.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.TensorProduct.FourPairedShuffle`](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/FourPairedShuffle.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.LinearAlgebra.TensorProduct.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Rat` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Paired](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/FiniteCMCanonicalAssembly.lean/declarations/paired--6312a0138001b9502c6c86d7.md) | 20 | `declaration-track:6312a0138001b9502c6c86d7717af22066e04205b5a2d55087ed78b08c9276a5` |
| 2 | `abbrev` | [Coefficients](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/FiniteCMCanonicalAssembly.lean/declarations/coefficients--53ebd2942680c8e4a31bac70.md) | 21 | `declaration-track:53ebd2942680c8e4a31bac70bc26e1565cf35a9a8971e7ce6fcc9396fbc1ed11` |
| 3 | `abbrev` | [Vectors](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/FiniteCMCanonicalAssembly.lean/declarations/vectors--94d808be26268b543d378b66.md) | 22 | `declaration-track:94d808be26268b543d378b6664a4eb6364adb83dead97e391f68871c763ef851` |
| 4 | `abbrev` | [Separated](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/FiniteCMCanonicalAssembly.lean/declarations/separated--5e863ce46c1ffcbd544f2581.md) | 23 | `declaration-track:5e863ce46c1ffcbd544f2581ccf55e4faac5b7f723c4ab864a98d0307f2515bd` |
| 5 | `abbrev` | [Output](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/FiniteCMCanonicalAssembly.lean/declarations/output--ed8fc3226126a6bb7c8a62f7.md) | 24 | `declaration-track:ed8fc3226126a6bb7c8a62f7851c4ba66c1dcb00873ebd0eb13af49cdc92a1c3` |
| 6 | `def` | [coefficientMul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/FiniteCMCanonicalAssembly.lean/declarations/coefficientmul--ab50e8f90c29fd730386f157.md) | 27 | `declaration-track:ab50e8f90c29fd730386f1572b69046cd562c9dbdf44cee4ff3d499c2ccfbc1e` |
| 7 | `theorem` | [coefficientMul_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/FiniteCMCanonicalAssembly.lean/declarations/coefficientmul-tmul--e6aead9cd23741e6e9eadd49.md) | 46 | `result-track:e6aead9cd23741e6e9eadd4956e97f878611e014667d3de6f90dcbeb764c71a1` |
| 8 | `def` | [coefficientMulFour](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/FiniteCMCanonicalAssembly.lean/declarations/coefficientmulfour--79315120e0fc3ae061db1de6.md) | 50 | `declaration-track:79315120e0fc3ae061db1de6d525e2138a05247a83290e81f60670961300edf4` |
| 9 | `theorem` | [coefficientMulFour_pure](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/FiniteCMCanonicalAssembly.lean/declarations/coefficientmulfour-pure--a55ca6ca441f38519de53ae1.md) | 55 | `result-track:a55ca6ca441f38519de53ae1847855ef7b21888eb0d4b23fc0ee76cd591a3294` |
| 10 | `def` | [separatedAssembly](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/FiniteCMCanonicalAssembly.lean/declarations/separatedassembly--98c2101f82bbc9aba8a5810e.md) | 61 | `declaration-track:98c2101f82bbc9aba8a5810ecfbce5d58010453113df8624cd816a20ae2e2437` |
| 11 | `def` | [pairedAssembly](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/FiniteCMCanonicalAssembly.lean/declarations/pairedassembly--5f829b44417fcf0155ea7310.md) | 66 | `declaration-track:5f829b44417fcf0155ea731008e5f6150fd4ea1fec8c2eaf16a0f9ca6bfe4455` |
| 12 | `theorem` | [pairedAssembly_pure](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/FiniteCMCanonicalAssembly.lean/declarations/pairedassembly-pure--0c6f684afca4cba1cd3aa13b.md) | 69 | `result-track:0c6f684afca4cba1cd3aa13b4e6d4aceb60c57e72a46ec00bdb09d337761038f` |
| 13 | `theorem` | [pairedAssembly_unique](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/FiniteCMCanonicalAssembly.lean/declarations/pairedassembly-unique--86284c328f1c528daa96d089.md) | 80 | `result-track:86284c328f1c528daa96d089f55c15ff4c7d5a4fd5df7cc1ef3388d063c21f07` |
| 14 | `def` | [originalNormalizedCoefficientMulFour](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/FiniteCMCanonicalAssembly.lean/declarations/originalnormalizedcoefficientmulfour--ae0822d6ce38be5d169efb9b.md) | 105 | `declaration-track:ae0822d6ce38be5d169efb9b39224f1ce13762509f6b28473b99e42e7131fe1c` |
| 15 | `theorem` | [originalNormalizedCoefficientMulFour_eq](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/FiniteCMCanonicalAssembly.lean/declarations/originalnormalizedcoefficientmulfour-eq--98f748df7c856e5fe89664bb.md) | 112 | `result-track:98f748df7c856e5fe89664bb836c9f2e5bdfc15b4d4781303da1d93be444a781` |
| 16 | `def` | [originalNormalizedSeparatedAssembly](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/FiniteCMCanonicalAssembly.lean/declarations/originalnormalizedseparatedassembly--beada9b338a22754aadc3a7f.md) | 116 | `declaration-track:beada9b338a22754aadc3a7fd2c7e1f69738a28a2dac220ed3a0c044443702dd` |
| 17 | `def` | [originalNormalizedPairedAssembly](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/FiniteCMCanonicalAssembly.lean/declarations/originalnormalizedpairedassembly--8d56dee7d59ead6c857c8657.md) | 121 | `declaration-track:8d56dee7d59ead6c857c8657dfb8910e0ba5c14200b232d2b20c74b45f21f3c2` |
| 18 | `theorem` | [originalNormalizedPairedAssembly_pure](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/FiniteCMCanonicalAssembly.lean/declarations/originalnormalizedpairedassembly-pure--9351d3145c5e4b19cd4a9f3a.md) | 126 | `result-track:9351d3145c5e4b19cd4a9f3ad06a2369e07e37be54123d3a48caf4be525fa963` |
| 19 | `theorem` | [originalNormalizedPairedAssembly_eq](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/FiniteCMCanonicalAssembly.lean/declarations/originalnormalizedpairedassembly-eq--f5cb8a1ca3fd3aa9bce877e7.md) | 136 | `result-track:f5cb8a1ca3fd3aa9bce877e7e632eae6b439824837230910ac46fbaa3eb875d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
