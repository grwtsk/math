# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.HermitianPosPart.Variantf3d73476b80f31a8c2b680ef25b7471d20f2df86ed27b7f74045e56086a6a6b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c900970be167f7a4cc091518a508d02c0649ef7e",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variantf3d73476b80f31a8c2b680ef25b7471d20f2df86ed27b7f74045e56086a6a6b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variantf3d73476b80f31a8c2b680ef25b7471d20f2df86ed27b7f74045e56086a6a6b3.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variantf3d73476b80f31a8c2b680ef25b7471d20f2df86ed27b7f74045e56086a6a6b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c900970be167f7a4cc091518a508d02c0649ef7e`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variantf3d73476b80f31a8c2b680ef25b7471d20f2df86ed27b7f74045e56086a6a6b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variantf3d73476b80f31a8c2b680ef25b7471d20f2df86ed27b7f74045e56086a6a6b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.LinAlg.PosIndex` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [specMap](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variantf3d73476b80f31a8c2b680ef25b7471d20f2df86ed27b7f74045e56086a6a6b3.lean/declarations/specmap--2baaa9e8ca36cf3c17ac1363.md) | 42 | `declaration-track:2baaa9e8ca36cf3c17ac136309b7d21460334cef380c6ac92adb5f159950cb0a` |
| 2 | `lemma` | [specMap_isHermitian](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variantf3d73476b80f31a8c2b680ef25b7471d20f2df86ed27b7f74045e56086a6a6b3.lean/declarations/specmap-ishermitian--af593a8d6e8756fecbe7151e.md) | 46 | `result-track:af593a8d6e8756fecbe7151e0dd69e24d8f30fe8be8a5f234d8da7727e03cc3e` |
| 3 | `lemma` | [specMap_id](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variantf3d73476b80f31a8c2b680ef25b7471d20f2df86ed27b7f74045e56086a6a6b3.lean/declarations/specmap-id--334e466534ad6a448d5bd8a4.md) | 53 | `result-track:334e466534ad6a448d5bd8a4e5cec2270a8a583c036628cca16e2cb639174414` |
| 4 | `lemma` | [specMap_sub](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variantf3d73476b80f31a8c2b680ef25b7471d20f2df86ed27b7f74045e56086a6a6b3.lean/declarations/specmap-sub--5e2c91c84cb1eb8b9fe39677.md) | 58 | `result-track:5e2c91c84cb1eb8b9fe396773085b8aad04d2f41c0ccbf8e5db8509fbabfc2b4` |
| 5 | `lemma` | [specMap_mul](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variantf3d73476b80f31a8c2b680ef25b7471d20f2df86ed27b7f74045e56086a6a6b3.lean/declarations/specmap-mul--65aca06cccc1ec539a8e4844.md) | 65 | `result-track:65aca06cccc1ec539a8e48447ccc2a0445dba5b1d3f166f8777ffe32c9787b07` |
| 6 | `lemma` | [specMap_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variantf3d73476b80f31a8c2b680ef25b7471d20f2df86ed27b7f74045e56086a6a6b3.lean/declarations/specmap-zero--b59028ced9c8106481a63a6c.md) | 71 | `result-track:b59028ced9c8106481a63a6ccd1438d9b7974e83c641a2fe376265193fca6719` |
| 7 | `lemma` | [hermForm_specMap](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variantf3d73476b80f31a8c2b680ef25b7471d20f2df86ed27b7f74045e56086a6a6b3.lean/declarations/hermform-specmap--5caf705dbed4816de687cdfe.md) | 77 | `result-track:5caf705dbed4816de687cdfeecbf02437e35399f2753d05e7db62d13a26dcd70` |
| 8 | `lemma` | [rtrace_specMap](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variantf3d73476b80f31a8c2b680ef25b7471d20f2df86ed27b7f74045e56086a6a6b3.lean/declarations/rtrace-specmap--590b56a6f068fbda2024d95e.md) | 101 | `result-track:590b56a6f068fbda2024d95e02fa233e979cdf7a32b44f945c676ae726741c78` |
| 9 | `lemma` | [frobSq_specMap](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variantf3d73476b80f31a8c2b680ef25b7471d20f2df86ed27b7f74045e56086a6a6b3.lean/declarations/frobsq-specmap--6905e8fee80620092ed9a309.md) | 109 | `result-track:6905e8fee80620092ed9a309b2ce6398f2a27022c9ef2edab57cbfffadb5461e` |
| 10 | `lemma` | [rank_specMap](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variantf3d73476b80f31a8c2b680ef25b7471d20f2df86ed27b7f74045e56086a6a6b3.lean/declarations/rank-specmap--c6ed365f7614879cd20de5e4.md) | 118 | `result-track:c6ed365f7614879cd20de5e4c95ae0bf11ad7a4d17a7a11e1062b0da671402d2` |
| 11 | `lemma` | [specMap_posSemidef](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variantf3d73476b80f31a8c2b680ef25b7471d20f2df86ed27b7f74045e56086a6a6b3.lean/declarations/specmap-possemidef--046d9dfcb04317123c354d7f.md) | 134 | `result-track:046d9dfcb04317123c354d7f67c94031a810dc60de41b4ba0f520fae85b58703` |
| 12 | `def` | [hermPosPart](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variantf3d73476b80f31a8c2b680ef25b7471d20f2df86ed27b7f74045e56086a6a6b3.lean/declarations/hermpospart--f07179cce4fd001837895820.md) | 148 | `declaration-track:f07179cce4fd001837895820a6f49f1b29cb226bb2e7c0cc4b2c56aad255cf08` |
| 13 | `def` | [hermNegPart](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variantf3d73476b80f31a8c2b680ef25b7471d20f2df86ed27b7f74045e56086a6a6b3.lean/declarations/hermnegpart--5d8d2c7762f8bcede0d8d519.md) | 151 | `declaration-track:5d8d2c7762f8bcede0d8d5197b45c92c7830123c7eb7168e2e32945abd569282` |
| 14 | `lemma` | [hermPosPart_sub_hermNegPart](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variantf3d73476b80f31a8c2b680ef25b7471d20f2df86ed27b7f74045e56086a6a6b3.lean/declarations/hermpospart-sub-hermnegpart--8c6d74251bfe037267d8a01d.md) | 153 | `result-track:8c6d74251bfe037267d8a01d032c1257b783f9c49f19c28286e0140737debeb9` |
| 15 | `lemma` | [hermPosPart_posSemidef](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variantf3d73476b80f31a8c2b680ef25b7471d20f2df86ed27b7f74045e56086a6a6b3.lean/declarations/hermpospart-possemidef--4e2bf337217c3b736983188c.md) | 158 | `result-track:4e2bf337217c3b736983188c1e7797cd45866453a34d2f749f5f10c4c2afd9c6` |
| 16 | `lemma` | [hermNegPart_posSemidef](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variantf3d73476b80f31a8c2b680ef25b7471d20f2df86ed27b7f74045e56086a6a6b3.lean/declarations/hermnegpart-possemidef--5333b67ab189086f0dfe4e7d.md) | 161 | `result-track:5333b67ab189086f0dfe4e7d62bf235d8bbf32d50edecf519d0a887d69450edd` |
| 17 | `lemma` | [real_posPart_mul_negPart](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variantf3d73476b80f31a8c2b680ef25b7471d20f2df86ed27b7f74045e56086a6a6b3.lean/declarations/real-pospart-mul-negpart--532d5124f892528cabc022a4.md) | 164 | `result-track:532d5124f892528cabc022a426fc9b4b9fbfa2587a2095d3d4de7add79ed08f1` |
| 18 | `lemma` | [hermPosPart_mul_hermNegPart](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variantf3d73476b80f31a8c2b680ef25b7471d20f2df86ed27b7f74045e56086a6a6b3.lean/declarations/hermpospart-mul-hermnegpart--167813b29ab35ff72691a5d7.md) | 169 | `result-track:167813b29ab35ff72691a5d7f47c38e92fa036324d5a788f8e99030eabf87dc1` |
| 19 | `lemma` | [hermNegPart_mul_hermPosPart](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variantf3d73476b80f31a8c2b680ef25b7471d20f2df86ed27b7f74045e56086a6a6b3.lean/declarations/hermnegpart-mul-hermpospart--2f70905b981c83db7ac1fa28.md) | 174 | `result-track:2f70905b981c83db7ac1fa28c37d4da9aac0e4c68a8989547cc469e4c413483f` |
| 20 | `lemma` | [rank_hermPosPart](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variantf3d73476b80f31a8c2b680ef25b7471d20f2df86ed27b7f74045e56086a6a6b3.lean/declarations/rank-hermpospart--223d9ff2f8eff89badd39cf7.md) | 180 | `result-track:223d9ff2f8eff89badd39cf72f144c464b1027fa76a251c656b781a7aabd3056` |
| 21 | `lemma` | [rtrace_hermPosPart](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variantf3d73476b80f31a8c2b680ef25b7471d20f2df86ed27b7f74045e56086a6a6b3.lean/declarations/rtrace-hermpospart--ffd7c3a0cb73e01a9e8958a9.md) | 186 | `result-track:ffd7c3a0cb73e01a9e8958a9bb874332172717cda75a35f52ba2a035e6c89dbc` |
| 22 | `lemma` | [rtrace_hermNegPart](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variantf3d73476b80f31a8c2b680ef25b7471d20f2df86ed27b7f74045e56086a6a6b3.lean/declarations/rtrace-hermnegpart--8a6f34846d18f574f986ad22.md) | 189 | `result-track:8a6f34846d18f574f986ad225b080976660b7c15bd1a832de4e7a09e888a77d9` |
| 23 | `lemma` | [rtrace_sub_decomp](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variantf3d73476b80f31a8c2b680ef25b7471d20f2df86ed27b7f74045e56086a6a6b3.lean/declarations/rtrace-sub-decomp--3433f5b9bdf0b72899ebabf4.md) | 192 | `result-track:3433f5b9bdf0b72899ebabf43c1a12f43554cac55cfa986280bc72d9f12a7449` |
| 24 | `lemma` | [frobSq_hermPosPart](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variantf3d73476b80f31a8c2b680ef25b7471d20f2df86ed27b7f74045e56086a6a6b3.lean/declarations/frobsq-hermpospart--064eb09d4cba40f356758e06.md) | 196 | `result-track:064eb09d4cba40f356758e06d08b156a993bf7c4a74a253ea7f2e0bc129aa167` |
| 25 | `lemma` | [frobSq_hermNegPart](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variantf3d73476b80f31a8c2b680ef25b7471d20f2df86ed27b7f74045e56086a6a6b3.lean/declarations/frobsq-hermnegpart--a51d0ecacd86287aefdaadab.md) | 199 | `result-track:a51d0ecacd86287aefdaadabb7d7921148383c7d80c1ce6c60a480c14843bebc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
