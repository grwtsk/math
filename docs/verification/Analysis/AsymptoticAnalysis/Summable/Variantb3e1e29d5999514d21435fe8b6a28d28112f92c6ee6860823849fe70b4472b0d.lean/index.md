# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Summable.Variantb3e1e29d5999514d21435fe8b6a28d28112f92c6ee6860823849fe70b4472b0d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c2c3fe0d760c2292a5285bdb3d131e35c789669",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Summable/Variantb3e1e29d5999514d21435fe8b6a28d28112f92c6ee6860823849fe70b4472b0d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variantb3e1e29d5999514d21435fe8b6a28d28112f92c6ee6860823849fe70b4472b0d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variantb3e1e29d5999514d21435fe8b6a28d28112f92c6ee6860823849fe70b4472b0d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c2c3fe0d760c2292a5285bdb3d131e35c789669`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Summable/Variantb3e1e29d5999514d21435fe8b6a28d28112f92c6ee6860823849fe70b4472b0d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Summable/Variantb3e1e29d5999514d21435fe8b6a28d28112f92c6ee6860823849fe70b4472b0d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Complex.LogBounds` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.FunctionSeries` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [hasProd_of_hasSum_log](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variantb3e1e29d5999514d21435fe8b6a28d28112f92c6ee6860823849fe70b4472b0d.lean/declarations/hasprod-of-hassum-log--fc4554acfecf38d0a0ae66b4.md) | 25 | `result-track:fc4554acfecf38d0a0ae66b442c8562ff957649235611d15c1b117c1b05bf847` |
| 2 | `lemma` | [multipliable_of_summable_log](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variantb3e1e29d5999514d21435fe8b6a28d28112f92c6ee6860823849fe70b4472b0d.lean/declarations/multipliable-of-summable-log--cac28173001401f46358cff4.md) | 29 | `result-track:cac28173001401f46358cff4673b5e879835218c92cfbc1371135adf15d791ac` |
| 3 | `lemma` | [cexp_tsum_eq_tprod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variantb3e1e29d5999514d21435fe8b6a28d28112f92c6ee6860823849fe70b4472b0d.lean/declarations/cexp-tsum-eq-tprod--70980993326677be481df3ff.md) | 36 | `result-track:70980993326677be481df3ff3607aae8b1c9ca2b82b65c429ec6fbc9531e2cd1` |
| 4 | `lemma` | [summable_log_one_add_of_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variantb3e1e29d5999514d21435fe8b6a28d28112f92c6ee6860823849fe70b4472b0d.lean/declarations/summable-log-one-add-of-summable--c6c1d23050df434eddb79387.md) | 40 | `result-track:c6c1d23050df434eddb79387aaa1691440d7a26309e89922d8905642b2a309e6` |
| 5 | `lemma` | [multipliable_one_add_of_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variantb3e1e29d5999514d21435fe8b6a28d28112f92c6ee6860823849fe70b4472b0d.lean/declarations/multipliable-one-add-of-summable--abc932e6ee5a13d3077e9b40.md) | 46 | `result-track:abc932e6ee5a13d3077e9b40c9ff6d43922c93fb75d9d4c3ffe4d40d14b3ecb9` |
| 6 | `lemma` | [hasProd_of_hasSum_log](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variantb3e1e29d5999514d21435fe8b6a28d28112f92c6ee6860823849fe70b4472b0d.lean/declarations/hasprod-of-hassum-log--28dca33e21fe90a0bb8771f6.md) | 54 | `result-track:28dca33e21fe90a0bb8771f6bc1140418fb5601a60eb6afd9f7e329cffa2fb23` |
| 7 | `lemma` | [multipliable_of_summable_log](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variantb3e1e29d5999514d21435fe8b6a28d28112f92c6ee6860823849fe70b4472b0d.lean/declarations/multipliable-of-summable-log--c595b2dd2aa5f9ed2dfde85f.md) | 58 | `result-track:c595b2dd2aa5f9ed2dfde85f1abc858414af251d1192b30425b7c76b7526cdea` |
| 8 | `lemma` | [multipliable_of_summable_log'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variantb3e1e29d5999514d21435fe8b6a28d28112f92c6ee6860823849fe70b4472b0d.lean/declarations/multipliable-of-summable-log--b1fdcf96d6be1c919c70314f.md) | 64 | `result-track:b1fdcf96d6be1c919c70314f3f56b70e42ed583d660fdd24c042fe59438f7779` |
| 9 | `lemma` | [rexp_tsum_eq_tprod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variantb3e1e29d5999514d21435fe8b6a28d28112f92c6ee6860823849fe70b4472b0d.lean/declarations/rexp-tsum-eq-tprod--fcfe636d75d181b95bab8039.md) | 77 | `result-track:fcfe636d75d181b95bab80391a9ae1b816e9ccdd69a36abaf5c172191d9d484f` |
| 10 | `lemma` | [summable_log_one_add_of_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variantb3e1e29d5999514d21435fe8b6a28d28112f92c6ee6860823849fe70b4472b0d.lean/declarations/summable-log-one-add-of-summable--140faed3ee1152dae6b52ff4.md) | 82 | `result-track:140faed3ee1152dae6b52ff4f8cc15376a6af8f6d79cc3a6b3696cc3731899f5` |
| 11 | `lemma` | [multipliable_one_add_of_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variantb3e1e29d5999514d21435fe8b6a28d28112f92c6ee6860823849fe70b4472b0d.lean/declarations/multipliable-one-add-of-summable--90a3c7a8b0980a305b7ca205.md) | 90 | `result-track:90a3c7a8b0980a305b7ca2052420b95377279c46eef3871bb48c23e3a0621f54` |
| 12 | `lemma` | [Complex.tendstoUniformlyOn_tsum_nat_log_one_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variantb3e1e29d5999514d21435fe8b6a28d28112f92c6ee6860823849fe70b4472b0d.lean/declarations/complex-tendstouniformlyon-tsum-nat-log-one-add--5edcec7e1b3dfb7e35594277.md) | 97 | `result-track:5edcec7e1b3dfb7e355942776d78bb643c984c287fd30325cb76c2d91a4bb943` |
| 13 | `lemma` | [Multipliable.eventually_bounded_finset_prod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variantb3e1e29d5999514d21435fe8b6a28d28112f92c6ee6860823849fe70b4472b0d.lean/declarations/multipliable-eventually-bounded-finset-prod--8dd2831ab7a49ab21595d2d5.md) | 114 | `result-track:8dd2831ab7a49ab21595d2d532ded21e8c64c17957173b21d98a6b542e762e03` |
| 14 | `lemma` | [multipliable_norm_one_add_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variantb3e1e29d5999514d21435fe8b6a28d28112f92c6ee6860823849fe70b4472b0d.lean/declarations/multipliable-norm-one-add-of-summable-norm--c3e479b0f081af2bda468eb4.md) | 124 | `result-track:c3e479b0f081af2bda468eb40268b815478bb877271292123086db04d95c5e2d` |
| 15 | `lemma` | [Finset.norm_prod_one_add_sub_one_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variantb3e1e29d5999514d21435fe8b6a28d28112f92c6ee6860823849fe70b4472b0d.lean/declarations/finset-norm-prod-one-add-sub-one-le--35266ac42a035abf1eaa5a5a.md) | 130 | `result-track:35266ac42a035abf1eaa5a5a6aff43d802ef3b80f14b4045f92b420ef52e7b90` |
| 16 | `lemma` | [prod_vanishing_of_summable_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variantb3e1e29d5999514d21435fe8b6a28d28112f92c6ee6860823849fe70b4472b0d.lean/declarations/prod-vanishing-of-summable-norm--192c1675866cdfa5c616e92f.md) | 150 | `result-track:192c1675866cdfa5c616e92f4b0b3c8af3940409afc9a908a7180caa9e12b9ca` |
| 17 | `lemma` | [multipliable_one_add_of_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variantb3e1e29d5999514d21435fe8b6a28d28112f92c6ee6860823849fe70b4472b0d.lean/declarations/multipliable-one-add-of-summable--a8e16197fc2d6fcbe20d5774.md) | 162 | `result-track:a8e16197fc2d6fcbe20d5774a71f5b58b42c0ce02376d6bec584498252e29556` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
