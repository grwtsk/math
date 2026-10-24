# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.HermitianPosPart.Varianta87b42ca639b85d139a88c8b1ff03960f4f06cb49ede23c022ebcf76c0fa85b7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c65235d89c2ccbe3f820f4d35962db0ede2065a0",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Varianta87b42ca639b85d139a88c8b1ff03960f4f06cb49ede23c022ebcf76c0fa85b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Varianta87b42ca639b85d139a88c8b1ff03960f4f06cb49ede23c022ebcf76c0fa85b7.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Varianta87b42ca639b85d139a88c8b1ff03960f4f06cb49ede23c022ebcf76c0fa85b7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c65235d89c2ccbe3f820f4d35962db0ede2065a0`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Varianta87b42ca639b85d139a88c8b1ff03960f4f06cb49ede23c022ebcf76c0fa85b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Varianta87b42ca639b85d139a88c8b1ff03960f4f06cb49ede23c022ebcf76c0fa85b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.LinAlg.PosIndex` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [specMap](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Varianta87b42ca639b85d139a88c8b1ff03960f4f06cb49ede23c022ebcf76c0fa85b7.lean/declarations/specmap--6e00b4e6d779cba5fc52ac1a.md) | 50 | `declaration-track:6e00b4e6d779cba5fc52ac1a5eb85ce09e21ce4098c3fa97aa3d0dd4b5976814` |
| 2 | `lemma` | [specMap_isHermitian](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Varianta87b42ca639b85d139a88c8b1ff03960f4f06cb49ede23c022ebcf76c0fa85b7.lean/declarations/specmap-ishermitian--ff346ebaa49f5c7b4cdae1c5.md) | 54 | `result-track:ff346ebaa49f5c7b4cdae1c529ce43c0c6ae1f0c912ac685df1bec2a69b6f99f` |
| 3 | `lemma` | [specMap_id](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Varianta87b42ca639b85d139a88c8b1ff03960f4f06cb49ede23c022ebcf76c0fa85b7.lean/declarations/specmap-id--e87701ecff692bdb632dc6a9.md) | 61 | `result-track:e87701ecff692bdb632dc6a9a7e52e2a748d8a2e46d9007b32bb0c0e725ee054` |
| 4 | `lemma` | [specMap_sub](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Varianta87b42ca639b85d139a88c8b1ff03960f4f06cb49ede23c022ebcf76c0fa85b7.lean/declarations/specmap-sub--bdfb7c63f8d6c4f757f0faa0.md) | 66 | `result-track:bdfb7c63f8d6c4f757f0faa04385b4a4f85165643c79b393333932590e03b1f2` |
| 5 | `lemma` | [specMap_mul](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Varianta87b42ca639b85d139a88c8b1ff03960f4f06cb49ede23c022ebcf76c0fa85b7.lean/declarations/specmap-mul--0221d4ed3bba4eb515ca873f.md) | 73 | `result-track:0221d4ed3bba4eb515ca873fc70a403c91bdb6bc78c83067a75ddfaba59b9467` |
| 6 | `lemma` | [specMap_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Varianta87b42ca639b85d139a88c8b1ff03960f4f06cb49ede23c022ebcf76c0fa85b7.lean/declarations/specmap-zero--9ab1518998bbdc2c3b04ecf4.md) | 79 | `result-track:9ab1518998bbdc2c3b04ecf4f4318a708a96332007d1843f44a370ec5e7deec4` |
| 7 | `lemma` | [hermForm_specMap](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Varianta87b42ca639b85d139a88c8b1ff03960f4f06cb49ede23c022ebcf76c0fa85b7.lean/declarations/hermform-specmap--1b4f0fa15aece7d0cd1a022a.md) | 85 | `result-track:1b4f0fa15aece7d0cd1a022ac75a08bb10eabf1af081099dcc695cee081c6256` |
| 8 | `lemma` | [rtrace_specMap](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Varianta87b42ca639b85d139a88c8b1ff03960f4f06cb49ede23c022ebcf76c0fa85b7.lean/declarations/rtrace-specmap--02c679e719a33967fb62d664.md) | 109 | `result-track:02c679e719a33967fb62d66406e957702e2c680c08539c1b18f35445fe937488` |
| 9 | `lemma` | [frobSq_specMap](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Varianta87b42ca639b85d139a88c8b1ff03960f4f06cb49ede23c022ebcf76c0fa85b7.lean/declarations/frobsq-specmap--2ea7acec6ac4dcde2beae957.md) | 117 | `result-track:2ea7acec6ac4dcde2beae9572443d1a61eba9074aa39393457c016cf288d5cd3` |
| 10 | `lemma` | [rank_specMap](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Varianta87b42ca639b85d139a88c8b1ff03960f4f06cb49ede23c022ebcf76c0fa85b7.lean/declarations/rank-specmap--83158d01f85e2089eb5af7ca.md) | 126 | `result-track:83158d01f85e2089eb5af7ca047158bb08acc972da1ca8677f7823cf824a7756` |
| 11 | `lemma` | [specMap_posSemidef](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Varianta87b42ca639b85d139a88c8b1ff03960f4f06cb49ede23c022ebcf76c0fa85b7.lean/declarations/specmap-possemidef--6c458cd42a93dfcacb9ef1da.md) | 142 | `result-track:6c458cd42a93dfcacb9ef1da5c6f34979c49da41fa1997c43fbef9e695c0bbcc` |
| 12 | `def` | [hermPosPart](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Varianta87b42ca639b85d139a88c8b1ff03960f4f06cb49ede23c022ebcf76c0fa85b7.lean/declarations/hermpospart--7594206626c692f9c64dc57d.md) | 156 | `declaration-track:7594206626c692f9c64dc57d5f9c394f43dc5d88da796a4a647f3e3f0e1cbc54` |
| 13 | `def` | [hermNegPart](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Varianta87b42ca639b85d139a88c8b1ff03960f4f06cb49ede23c022ebcf76c0fa85b7.lean/declarations/hermnegpart--2a1a4151c39b460ce30a4c64.md) | 159 | `declaration-track:2a1a4151c39b460ce30a4c64fbabb2cc00f80fc4f54854d9cc2fa07994f393bc` |
| 14 | `lemma` | [hermPosPart_sub_hermNegPart](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Varianta87b42ca639b85d139a88c8b1ff03960f4f06cb49ede23c022ebcf76c0fa85b7.lean/declarations/hermpospart-sub-hermnegpart--6c5c20179bfcddc2530c83a2.md) | 161 | `result-track:6c5c20179bfcddc2530c83a21bcc9f7009d45438d4d9e86039272b9b2e003bcb` |
| 15 | `lemma` | [hermPosPart_posSemidef](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Varianta87b42ca639b85d139a88c8b1ff03960f4f06cb49ede23c022ebcf76c0fa85b7.lean/declarations/hermpospart-possemidef--8e3bc01fa9ddab20b861c3c2.md) | 166 | `result-track:8e3bc01fa9ddab20b861c3c2ece01149a710514bcf3fa004ce9cbaf69b04abc3` |
| 16 | `lemma` | [hermNegPart_posSemidef](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Varianta87b42ca639b85d139a88c8b1ff03960f4f06cb49ede23c022ebcf76c0fa85b7.lean/declarations/hermnegpart-possemidef--7d67554b05a24bf8f8296632.md) | 169 | `result-track:7d67554b05a24bf8f8296632ddfc905baa0fee1259dff22edb56d5204386674e` |
| 17 | `lemma` | [real_posPart_mul_negPart](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Varianta87b42ca639b85d139a88c8b1ff03960f4f06cb49ede23c022ebcf76c0fa85b7.lean/declarations/real-pospart-mul-negpart--1475e29456e258089b04246f.md) | 172 | `result-track:1475e29456e258089b04246f4eba2b63d5d71af95bbb25056848ba2eb9f78a55` |
| 18 | `lemma` | [hermPosPart_mul_hermNegPart](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Varianta87b42ca639b85d139a88c8b1ff03960f4f06cb49ede23c022ebcf76c0fa85b7.lean/declarations/hermpospart-mul-hermnegpart--d3f34a7431d1cf8125a0bd38.md) | 177 | `result-track:d3f34a7431d1cf8125a0bd38c462ca15ed4b7a7a9dab9b7b4a08339f70d7d48a` |
| 19 | `lemma` | [hermNegPart_mul_hermPosPart](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Varianta87b42ca639b85d139a88c8b1ff03960f4f06cb49ede23c022ebcf76c0fa85b7.lean/declarations/hermnegpart-mul-hermpospart--0b71ed4296c090fe233dbe10.md) | 182 | `result-track:0b71ed4296c090fe233dbe109d3974d37ac6d265950d2a7c44b4917ddc2cacf9` |
| 20 | `lemma` | [rank_hermPosPart](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Varianta87b42ca639b85d139a88c8b1ff03960f4f06cb49ede23c022ebcf76c0fa85b7.lean/declarations/rank-hermpospart--d26bc8e822d3338693e547fb.md) | 188 | `result-track:d26bc8e822d3338693e547fb228eb94c0d4591cd76474306fa11b06675eba897` |
| 21 | `lemma` | [rtrace_hermPosPart](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Varianta87b42ca639b85d139a88c8b1ff03960f4f06cb49ede23c022ebcf76c0fa85b7.lean/declarations/rtrace-hermpospart--a87d4ad8a2bd75748f17730d.md) | 194 | `result-track:a87d4ad8a2bd75748f17730d0a0cba8dc18a45f867cbbbf8b924ce55b6b8396d` |
| 22 | `lemma` | [rtrace_hermNegPart](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Varianta87b42ca639b85d139a88c8b1ff03960f4f06cb49ede23c022ebcf76c0fa85b7.lean/declarations/rtrace-hermnegpart--86754a5db049a9598c059301.md) | 197 | `result-track:86754a5db049a9598c05930115c7f93cebf1cdfb57f9b6f5d0d8571e281bd119` |
| 23 | `lemma` | [rtrace_sub_decomp](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Varianta87b42ca639b85d139a88c8b1ff03960f4f06cb49ede23c022ebcf76c0fa85b7.lean/declarations/rtrace-sub-decomp--0f2e593d58a16d7c5dcccc98.md) | 200 | `result-track:0f2e593d58a16d7c5dcccc98befde389373f920249f4f7192855a178dfb2f98a` |
| 24 | `lemma` | [frobSq_hermPosPart](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Varianta87b42ca639b85d139a88c8b1ff03960f4f06cb49ede23c022ebcf76c0fa85b7.lean/declarations/frobsq-hermpospart--46584d5c1765f079f8279004.md) | 204 | `result-track:46584d5c1765f079f8279004495dad973c317c639be3dd9935095ee669a32820` |
| 25 | `lemma` | [frobSq_hermNegPart](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Varianta87b42ca639b85d139a88c8b1ff03960f4f06cb49ede23c022ebcf76c0fa85b7.lean/declarations/frobsq-hermnegpart--1c622e889d2fb66954fd0fbc.md) | 207 | `result-track:1c622e889d2fb66954fd0fbcc4fa87416bf24d624e07d032691410bd5b5ce4f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
