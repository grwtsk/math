# Verification target: GRWTSK.Analysis.FunctionalAnalysis.ImmersionDiff.Variantfeff829ba098c64cbc4a480794f19393b22d2556a4fe269a38d4b567cc8967cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7ea07a146cefbc700d2c5398691fc2aa9c6a7d4",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/ImmersionDiff/Variantfeff829ba098c64cbc4a480794f19393b22d2556a4fe269a38d4b567cc8967cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variantfeff829ba098c64cbc4a480794f19393b22d2556a4fe269a38d4b567cc8967cf.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variantfeff829ba098c64cbc4a480794f19393b22d2556a4fe269a38d4b567cc8967cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7ea07a146cefbc700d2c5398691fc2aa9c6a7d4`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/ImmersionDiff/Variantfeff829ba098c64cbc4a480794f19393b22d2556a4fe269a38d4b567cc8967cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/ImmersionDiff/Variantfeff829ba098c64cbc4a480794f19393b22d2556a4fe269a38d4b567cc8967cf.lean.json)

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
| 1 | `def` | [IsDiffImmersionAt](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variantfeff829ba098c64cbc4a480794f19393b22d2556a4fe269a38d4b567cc8967cf.lean/declarations/isdiffimmersionat--28bd5f6f2ac5d695be56457a.md) | 74 | `declaration-track:28bd5f6f2ac5d695be56457aff3753b6410694dcce870b1d96acf2fa5b256421` |
| 2 | `lemma` | [isDiffImmersionAt_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variantfeff829ba098c64cbc4a480794f19393b22d2556a4fe269a38d4b567cc8967cf.lean/declarations/isdiffimmersionat-iff--841c54a86b7bebd9f1a87b0d.md) | 78 | `result-track:841c54a86b7bebd9f1a87b0d4e69e80b17439a78d14ff8e9dc6814ff76fc5c24` |
| 3 | `lemma` | [mfderiv_injective](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variantfeff829ba098c64cbc4a480794f19393b22d2556a4fe269a38d4b567cc8967cf.lean/declarations/mfderiv-injective--4ba8274cce8f0bbb58b00b66.md) | 82 | `result-track:4ba8274cce8f0bbb58b00b66135358ffaddc02c5c71d6e7a4b07f5e697b6065a` |
| 4 | `lemma` | [mdifferentiableAt](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variantfeff829ba098c64cbc4a480794f19393b22d2556a4fe269a38d4b567cc8967cf.lean/declarations/mdifferentiableat--e7a48132fc8c4415b4260c68.md) | 85 | `result-track:e7a48132fc8c4415b4260c68496b7cddd0856f479321005b3428b17e6feff157` |
| 5 | `lemma` | [continuousAt](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variantfeff829ba098c64cbc4a480794f19393b22d2556a4fe269a38d4b567cc8967cf.lean/declarations/continuousat--bfbea8bf527c3671d336f837.md) | 88 | `result-track:bfbea8bf527c3671d336f8379f2306084d60a63f55637aaac2e6956de46ed5f8` |
| 6 | `lemma` | [congr](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variantfeff829ba098c64cbc4a480794f19393b22d2556a4fe269a38d4b567cc8967cf.lean/declarations/congr--28ab500aafb0a49820e40e78.md) | 91 | `result-track:28ab500aafb0a49820e40e787df0bc9d95dc6a09c064ef5d5442b1cd543a98ae` |
| 7 | `lemma` | [prodMap](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variantfeff829ba098c64cbc4a480794f19393b22d2556a4fe269a38d4b567cc8967cf.lean/declarations/prodmap--5ba7bfb77dc7c8d46fdd8a70.md) | 96 | `result-track:5ba7bfb77dc7c8d46fdd8a7012dbbaecc65de67270a53a8cdeb92ae76756e88c` |
| 8 | `lemma` | [of_mfderiv_isInvertible](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variantfeff829ba098c64cbc4a480794f19393b22d2556a4fe269a38d4b567cc8967cf.lean/declarations/of-mfderiv-isinvertible--ab178d2610b8ce3038d0b3cc.md) | 103 | `result-track:ab178d2610b8ce3038d0b3cc85dc03ffaa435df24128e1ef0e923b7d94f45eb2` |
| 9 | `lemma` | [_root_.GRWTSK.Analysis.FunctionalAnalysis.IsDiffImmersionAt.Variant121a21026e6693fac3432322bd4b81e6e22ec5a0334b39aec5c99de677f2eef0.IsLocalDiffeomorphAt.isDiffImmersionAt](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variantfeff829ba098c64cbc4a480794f19393b22d2556a4fe269a38d4b567cc8967cf.lean/declarations/root-grwtsk-analysis-functionalanalysis-isdiffimmersionat-variant121a210--403c14ea3e21609cab39fb1d.md) | 109 | `result-track:403c14ea3e21609cab39fb1df9174db128e0f3f195fb8d12ab7dcdcbde549c41` |
| 10 | `lemma` | [_root_.GRWTSK.Analysis.FunctionalAnalysis.IsDiffImmersionAt.Variant121a21026e6693fac3432322bd4b81e6e22ec5a0334b39aec5c99de677f2eef0.ContinuousLinearEquiv.isDiffImmersionAt](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variantfeff829ba098c64cbc4a480794f19393b22d2556a4fe269a38d4b567cc8967cf.lean/declarations/root-grwtsk-analysis-functionalanalysis-isdiffimmersionat-variant121a210--cc7e59bd9475d41bc16ca86a.md) | 115 | `result-track:cc7e59bd9475d41bc16ca86a3b4b53d7a4074ee4840acdf4ce395b2f34dec614` |
| 11 | `lemma` | [comp](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variantfeff829ba098c64cbc4a480794f19393b22d2556a4fe269a38d4b567cc8967cf.lean/declarations/comp--1b510c1620be7687581f5b74.md) | 121 | `result-track:1b510c1620be7687581f5b740de16436d9bff3f3823a65120880b88178284f30` |
| 12 | `lemma` | [of_comp](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variantfeff829ba098c64cbc4a480794f19393b22d2556a4fe269a38d4b567cc8967cf.lean/declarations/of-comp--f31b06e50d89e707267300e6.md) | 129 | `result-track:f31b06e50d89e707267300e6513e48a90209b1e93974d3d1da1f496c40c02f7a` |
| 13 | `lemma` | [comp_isInvertible_mfderiv_left](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variantfeff829ba098c64cbc4a480794f19393b22d2556a4fe269a38d4b567cc8967cf.lean/declarations/comp-isinvertible-mfderiv-left--f0e7065f216f0315156bd02b.md) | 134 | `result-track:f0e7065f216f0315156bd02bd3d1f32e9d2e93c5c3b5a5f4e0b9efe63c18abe8` |
| 14 | `lemma` | [comp_isLocalDiffeomorphAt_left](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variantfeff829ba098c64cbc4a480794f19393b22d2556a4fe269a38d4b567cc8967cf.lean/declarations/comp-islocaldiffeomorphat-left--6aded03dc96504f8d834486f.md) | 139 | `result-track:6aded03dc96504f8d834486f79a46a28530679c650498508909dfa15bb0f02cf` |
| 15 | `lemma` | [comp_isLocalDiffeomorphAt_left_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variantfeff829ba098c64cbc4a480794f19393b22d2556a4fe269a38d4b567cc8967cf.lean/declarations/comp-islocaldiffeomorphat-left-iff--a18e8de188f218590294763a.md) | 144 | `result-track:a18e8de188f218590294763a002f44bd009f670e389f05a4497d39df6de35419` |
| 16 | `lemma` | [comp_isInvertible_mfderiv_right](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variantfeff829ba098c64cbc4a480794f19393b22d2556a4fe269a38d4b567cc8967cf.lean/declarations/comp-isinvertible-mfderiv-right--5921e4198f635d740230a6bd.md) | 154 | `result-track:5921e4198f635d740230a6bd2a5b8796feb86afbb66bcea659f2ffc48873efc6` |
| 17 | `lemma` | [comp_isLocalDiffeomorphAt_right](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variantfeff829ba098c64cbc4a480794f19393b22d2556a4fe269a38d4b567cc8967cf.lean/declarations/comp-islocaldiffeomorphat-right--e123232c1f24f0cb8e8d1502.md) | 159 | `result-track:e123232c1f24f0cb8e8d150270cfbcfacc261f6f971cea135ea474c050d8c1f7` |
| 18 | `lemma` | [comp_isLocalDiffeomorphAt_right_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variantfeff829ba098c64cbc4a480794f19393b22d2556a4fe269a38d4b567cc8967cf.lean/declarations/comp-islocaldiffeomorphat-right-iff--2c1aa029b006a474b01ae4a8.md) | 164 | `result-track:2c1aa029b006a474b01ae4a83e48fdd3a65372fb2739cdcd9097f0b9298b6c6d` |
| 19 | `lemma` | [of_injective_of_finiteDimensional](../../../../../mathematics/Analysis/FunctionalAnalysis/ImmersionDiff/Variantfeff829ba098c64cbc4a480794f19393b22d2556a4fe269a38d4b567cc8967cf.lean/declarations/of-injective-of-finitedimensional--c34d9d93b0c500ef186634ab.md) | 174 | `result-track:c34d9d93b0c500ef186634ab045c519979971ba135037d82c870469a3ddb5812` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
