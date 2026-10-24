# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Final.Variantb23c1704ff423577ae1e19badcca8f242af55d0f89c92d76c11dea0fc22693d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c18086f00d8fe080e16210ef4ef9a48f0662cf9",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variantb23c1704ff423577ae1e19badcca8f242af55d0f89c92d76c11dea0fc22693d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variantb23c1704ff423577ae1e19badcca8f242af55d0f89c92d76c11dea0fc22693d5.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variantb23c1704ff423577ae1e19badcca8f242af55d0f89c92d76c11dea0fc22693d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c18086f00d8fe080e16210ef4ef9a48f0662cf9`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variantb23c1704ff423577ae1e19badcca8f242af55d0f89c92d76c11dea0fc22693d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variantb23c1704ff423577ae1e19badcca8f242af55d0f89c92d76c11dea0fc22693d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ZeroSide` — import line 16; external provider; requires a separately pinned dependency.
- `Zeta23.Hypotheses.GzGp` — import line 17; external provider; requires a separately pinned dependency.
- `Zeta23.Taper` — import line 18; external provider; requires a separately pinned dependency.
- `Zeta23.Poisson` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [L_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variantb23c1704ff423577ae1e19badcca8f242af55d0f89c92d76c11dea0fc22693d5.lean/declarations/l-pos--2fa721adb8afb0362f4360b5.md) | 31 | `result-track:2fa721adb8afb0362f4360b582bc3ba38af3204e0fa31e847abc1af8639eabcc` |
| 2 | `lemma` | [aLsq_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variantb23c1704ff423577ae1e19badcca8f242af55d0f89c92d76c11dea0fc22693d5.lean/declarations/alsq-pos--1ee0bf4e77951055ca7f37e7.md) | 33 | `result-track:1ee0bf4e77951055ca7f37e71049d765335a3d136e23ecba9417a1e294a0fae5` |
| 3 | `lemma` | [phiHatConj](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variantb23c1704ff423577ae1e19badcca8f242af55d0f89c92d76c11dea0fc22693d5.lean/declarations/phihatconj--c4c2137da1c654e361e0c1d8.md) | 37 | `result-track:c4c2137da1c654e361e0c1d82a57f25c83cb153dfdd3af1be3b3e0986a2f2e43` |
| 4 | `lemma` | [phiHatReal](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variantb23c1704ff423577ae1e19badcca8f242af55d0f89c92d76c11dea0fc22693d5.lean/declarations/phihatreal--d6a77ab7c368d823f3d8a4f2.md) | 40 | `result-track:d6a77ab7c368d823f3d8a4f2f6045815a473a796bbbc3e34618e26d6e0526746` |
| 5 | `lemma` | [poissonSq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variantb23c1704ff423577ae1e19badcca8f242af55d0f89c92d76c11dea0fc22693d5.lean/declarations/poissonsq--1828a93af49b4499e03717c4.md) | 42 | `result-track:1828a93af49b4499e03717c4913d94fb5eacaaee6d4edfbe2ba7ff0c09e5e317` |
| 6 | `theorem` | [blockInputs_of_hwL](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variantb23c1704ff423577ae1e19badcca8f242af55d0f89c92d76c11dea0fc22693d5.lean/declarations/blockinputs-of-hwl--058032c751b98babb992e11f.md) | 46 | `result-track:058032c751b98babb992e11fb53aed9b21465e36b7ca0c1b66c5029559762ead` |
| 7 | `lemma` | [tendsto_L_atTop](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variantb23c1704ff423577ae1e19badcca8f242af55d0f89c92d76c11dea0fc22693d5.lean/declarations/tendsto-l-attop--99e46bae43d3dfabf45211dd.md) | 51 | `result-track:99e46bae43d3dfabf45211dd6e08e2343c0c64cfd1602cef399631c53d006499` |
| 8 | `theorem` | [blockInputs](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variantb23c1704ff423577ae1e19badcca8f242af55d0f89c92d76c11dea0fc22693d5.lean/declarations/blockinputs--f926dc6653255c2594071c7b.md) | 57 | `result-track:f926dc6653255c2594071c7be164bec007669d31ca2f828ec1710a0fa51db893` |
| 9 | `theorem` | [eventually_blockInputs](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variantb23c1704ff423577ae1e19badcca8f242af55d0f89c92d76c11dea0fc22693d5.lean/declarations/eventually-blockinputs--4eaaccc7353a0b2e52948db8.md) | 63 | `result-track:4eaaccc7353a0b2e52948db851d6bd86ff46024d557866338ace351df1eb66f5` |
| 10 | `theorem` | [prop_block_i_posIndex](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variantb23c1704ff423577ae1e19badcca8f242af55d0f89c92d76c11dea0fc22693d5.lean/declarations/prop-block-i-posindex--27c8a0ffb1470dae17655bc2.md) | 73 | `result-track:27c8a0ffb1470dae17655bc2d1baae274e39c73e34e77eb9130064bb54a33a5d` |
| 11 | `theorem` | [prop_block_i_rank](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variantb23c1704ff423577ae1e19badcca8f242af55d0f89c92d76c11dea0fc22693d5.lean/declarations/prop-block-i-rank--556147f519167b817758363c.md) | 78 | `result-track:556147f519167b817758363c1316486dde14664f8c1b5c3065bacc55dccd7b26` |
| 12 | `theorem` | [prop_block_ii_decomp](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variantb23c1704ff423577ae1e19badcca8f242af55d0f89c92d76c11dea0fc22693d5.lean/declarations/prop-block-ii-decomp--979852a901e63c172e87b25a.md) | 83 | `result-track:979852a901e63c172e87b25a51958e4a162bfbfd8f34f887f9852f0b9fdb3447` |
| 13 | `theorem` | [prop_block_ii_P_posSemidef](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variantb23c1704ff423577ae1e19badcca8f242af55d0f89c92d76c11dea0fc22693d5.lean/declarations/prop-block-ii-p-possemidef--9878b5ecb94e9ab7f19a1adc.md) | 88 | `result-track:9878b5ecb94e9ab7f19a1adc2e6a65313055acb7ec8efb1942c23e5bbd659280` |
| 14 | `theorem` | [prop_block_ii_rank_P](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variantb23c1704ff423577ae1e19badcca8f242af55d0f89c92d76c11dea0fc22693d5.lean/declarations/prop-block-ii-rank-p--85d20b530ec6aa7bb703b128.md) | 92 | `result-track:85d20b530ec6aa7bb703b1286a64545a7fead7439102c38b4786d9ee66656bcf` |
| 15 | `theorem` | [prop_block_ii_trace_P](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variantb23c1704ff423577ae1e19badcca8f242af55d0f89c92d76c11dea0fc22693d5.lean/declarations/prop-block-ii-trace-p--da62ca0ca314bdab022b2916.md) | 96 | `result-track:da62ca0ca314bdab022b2916fa66a3a4521c162eac35f9c5246d28b89d8e1902` |
| 16 | `theorem` | [prop_block_ii_posIndex_Q](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variantb23c1704ff423577ae1e19badcca8f242af55d0f89c92d76c11dea0fc22693d5.lean/declarations/prop-block-ii-posindex-q--69b3d7dbed86b5555e5fb82e.md) | 100 | `result-track:69b3d7dbed86b5555e5fb82e9d6933dadde6493705549723a85e8da181065ec4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
