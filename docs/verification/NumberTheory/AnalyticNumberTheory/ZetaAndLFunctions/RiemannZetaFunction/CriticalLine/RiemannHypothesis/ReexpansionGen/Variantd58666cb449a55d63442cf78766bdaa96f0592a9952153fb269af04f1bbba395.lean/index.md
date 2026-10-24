# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ReexpansionGen.Variantd58666cb449a55d63442cf78766bdaa96f0592a9952153fb269af04f1bbba395

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d233844ceff2b99cb3dff48e4a49b6c3e2b3fb3",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantd58666cb449a55d63442cf78766bdaa96f0592a9952153fb269af04f1bbba395.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantd58666cb449a55d63442cf78766bdaa96f0592a9952153fb269af04f1bbba395.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantd58666cb449a55d63442cf78766bdaa96f0592a9952153fb269af04f1bbba395.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d233844ceff2b99cb3dff48e4a49b6c3e2b3fb3`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantd58666cb449a55d63442cf78766bdaa96f0592a9952153fb269af04f1bbba395.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantd58666cb449a55d63442cf78766bdaa96f0592a9952153fb269af04f1bbba395.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Coeff.Upper` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [choose_le_two_pow](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantd58666cb449a55d63442cf78766bdaa96f0592a9952153fb269af04f1bbba395.lean/declarations/choose-le-two-pow--26ac347f925ec5965dee2829.md) | 30 | `result-track:26ac347f925ec5965dee2829570d90d740033c39fb8f131baaa209c050a56bff` |
| 2 | `def` | [T0re](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantd58666cb449a55d63442cf78766bdaa96f0592a9952153fb269af04f1bbba395.lean/declarations/t0re--71d2c8f9f089a4a1a3427420.md) | 38 | `declaration-track:71d2c8f9f089a4a1a342742033ed81bc0080e827de5211d6a0fb2254cdf9928f` |
| 3 | `lemma` | [l_ge_of_T0re_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantd58666cb449a55d63442cf78766bdaa96f0592a9952153fb269af04f1bbba395.lean/declarations/l-ge-of-t0re-le--09e403de9e8fd1d8779066d0.md) | 40 | `result-track:09e403de9e8fd1d8779066d0308346454047bfb02374a8a1bcb1e3a9488b7837` |
| 4 | `lemma` | [norm_base_ge](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantd58666cb449a55d63442cf78766bdaa96f0592a9952153fb269af04f1bbba395.lean/declarations/norm-base-ge--98d39e2cdf0f81d7b789afbe.md) | 54 | `result-track:98d39e2cdf0f81d7b789afbefbf682b2780cb7f824bc3cedd097bcfb08b2a1bb` |
| 5 | `lemma` | [base_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantd58666cb449a55d63442cf78766bdaa96f0592a9952153fb269af04f1bbba395.lean/declarations/base-ne-zero--1eefef3ae3d5e788aff06bd2.md) | 58 | `result-track:1eefef3ae3d5e788aff06bd201086898d00ff397479089c3f46faf139e60c7ae` |
| 6 | `lemma` | [base_add_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantd58666cb449a55d63442cf78766bdaa96f0592a9952153fb269af04f1bbba395.lean/declarations/base-add-ne-zero--cad0c82b1887a5c56d2c0d2e.md) | 64 | `result-track:cad0c82b1887a5c56d2c0d2e4b58495efca307f8e5709a54a98cd37a6ca6e4a6` |
| 7 | `def` | [eGen](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantd58666cb449a55d63442cf78766bdaa96f0592a9952153fb269af04f1bbba395.lean/declarations/egen--29c0892ba46bb8827657a4db.md) | 72 | `declaration-track:29c0892ba46bb8827657a4db7f372407b25817aae8ac96da8c476d17ec39670b` |
| 8 | `theorem` | [eGen_one](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantd58666cb449a55d63442cf78766bdaa96f0592a9952153fb269af04f1bbba395.lean/declarations/egen-one--597997cc2f82b0346fe04846.md) | 78 | `result-track:597997cc2f82b0346fe04846d3bf639ef8773d1a73bc45ba2058d751dd7d4ace` |
| 9 | `lemma` | [eGen_block_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantd58666cb449a55d63442cf78766bdaa96f0592a9952153fb269af04f1bbba395.lean/declarations/egen-block-eq--8be64979c9403c512d59981c.md) | 84 | `result-track:8be64979c9403c512d59981cae6cb73728e849c1082c99268d45605344b28537` |
| 10 | `theorem` | [eGen_expand](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantd58666cb449a55d63442cf78766bdaa96f0592a9952153fb269af04f1bbba395.lean/declarations/egen-expand--68af1cc68e2fe8a842bd0085.md) | 98 | `result-track:68af1cc68e2fe8a842bd008595fce6293edd357304c58f504d84f343e598e9ca` |
| 11 | `theorem` | [norm_eGen_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantd58666cb449a55d63442cf78766bdaa96f0592a9952153fb269af04f1bbba395.lean/declarations/norm-egen-le--b06ff24a71dd0b438d0875b2.md) | 153 | `result-track:b06ff24a71dd0b438d0875b2470d35dae534e3339690763626027775bdc66c35` |
| 12 | `theorem` | [sum_norm_eGen_sq_div_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantd58666cb449a55d63442cf78766bdaa96f0592a9952153fb269af04f1bbba395.lean/declarations/sum-norm-egen-sq-div-le--509f5113aafca5724c233113.md) | 178 | `result-track:509f5113aafca5724c233113eccbceb1c4573b1052423020e4114b23ef956230` |
| 13 | `theorem` | [eGen_H3](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantd58666cb449a55d63442cf78766bdaa96f0592a9952153fb269af04f1bbba395.lean/declarations/egen-h3--5b8c5c7868e8c99761e29bf3.md) | 232 | `result-track:5b8c5c7868e8c99761e29bf3bc1be214e72486a49f9d02b0fe712e596cee5e12` |
| 14 | `theorem` | [eGen_H2](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantd58666cb449a55d63442cf78766bdaa96f0592a9952153fb269af04f1bbba395.lean/declarations/egen-h2--9ac03b5e9f5f93e96759e3a9.md) | 253 | `result-track:9ac03b5e9f5f93e96759e3a98bcec72fa46fc2de6a6dc46d361c75e3102e6ea6` |
| 15 | `theorem` | [eGen_H1](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantd58666cb449a55d63442cf78766bdaa96f0592a9952153fb269af04f1bbba395.lean/declarations/egen-h1--8e8b13a48497079d1e79899a.md) | 278 | `result-track:8e8b13a48497079d1e79899ad7426b61f48f74884243aa889c899726035a382b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
