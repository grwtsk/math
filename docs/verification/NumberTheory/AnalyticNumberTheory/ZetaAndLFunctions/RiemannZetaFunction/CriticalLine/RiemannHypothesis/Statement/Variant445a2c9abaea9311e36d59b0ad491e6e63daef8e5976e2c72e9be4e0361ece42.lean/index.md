# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Statement.Variant445a2c9abaea9311e36d59b0ad491e6e63daef8e5976e2c72e9be4e0361ece42

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7951ad8f644059b594ef6e0e16f2a93edae462ea",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant445a2c9abaea9311e36d59b0ad491e6e63daef8e5976e2c72e9be4e0361ece42.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant445a2c9abaea9311e36d59b0ad491e6e63daef8e5976e2c72e9be4e0361ece42.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant445a2c9abaea9311e36d59b0ad491e6e63daef8e5976e2c72e9be4e0361ece42.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7951ad8f644059b594ef6e0e16f2a93edae462ea`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant445a2c9abaea9311e36d59b0ad491e6e63daef8e5976e2c72e9be4e0361ece42.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant445a2c9abaea9311e36d59b0ad491e6e63daef8e5976e2c72e9be4e0361ece42.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Hypotheses` — import line 23; external provider; requires a separately pinned dependency.
- `Zeta23.Defs.Counting` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Order` — import line 26; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsNontrivialZero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant445a2c9abaea9311e36d59b0ad491e6e63daef8e5976e2c72e9be4e0361ece42.lean/declarations/isnontrivialzero--3e1d900e192dd7b9d8635f3e.md) | 46 | `declaration-track:3e1d900e192dd7b9d8635f3e317afbaf45a33730ebf67c708df98a97263a9569` |
| 2 | `def` | [zeroMult](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant445a2c9abaea9311e36d59b0ad491e6e63daef8e5976e2c72e9be4e0361ece42.lean/declarations/zeromult--622a53647c92b1710edc4282.md) | 51 | `declaration-track:622a53647c92b1710edc4282e896288da4131457c58e48ecb00f48e6a463c92b` |
| 3 | `def` | [zerosIn](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant445a2c9abaea9311e36d59b0ad491e6e63daef8e5976e2c72e9be4e0361ece42.lean/declarations/zerosin--db1f2c6ff31bd327d7df77c6.md) | 54 | `declaration-track:db1f2c6ff31bd327d7df77c6be5e8b6c56d8779502846293e1c4c61bde65e641` |
| 4 | `def` | [Ncount](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant445a2c9abaea9311e36d59b0ad491e6e63daef8e5976e2c72e9be4e0361ece42.lean/declarations/ncount--93f850772ce25e319874c61c.md) | 57 | `declaration-track:93f850772ce25e319874c61c167ada40c09bfd4a6bce9575c0405dc0f4639b82` |
| 5 | `def` | [Ndist](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant445a2c9abaea9311e36d59b0ad491e6e63daef8e5976e2c72e9be4e0361ece42.lean/declarations/ndist--bb2dc6378094fa8355f3941f.md) | 60 | `declaration-track:bb2dc6378094fa8355f3941f0eeefe89cf71f0994b4c48e4e1cb8449155e207d` |
| 6 | `def` | [N0](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant445a2c9abaea9311e36d59b0ad491e6e63daef8e5976e2c72e9be4e0361ece42.lean/declarations/n0--f0e18e9b295070e36ca9dc23.md) | 64 | `declaration-track:f0e18e9b295070e36ca9dc2399af3ab2de8f0102b8642ca576c9678a2e43bd02` |
| 7 | `def` | [N0star](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant445a2c9abaea9311e36d59b0ad491e6e63daef8e5976e2c72e9be4e0361ece42.lean/declarations/n0star--b04931b63656e0926f4a7da0.md) | 67 | `declaration-track:b04931b63656e0926f4a7da073ca3951aa8201b627d22d1ddda6a4a5a1509c6b` |
| 8 | `def` | [N0simple](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant445a2c9abaea9311e36d59b0ad491e6e63daef8e5976e2c72e9be4e0361ece42.lean/declarations/n0simple--31594298c4bdbcd335a1228d.md) | 70 | `declaration-track:31594298c4bdbcd335a1228d576128ce74244eb7101d4fdd9f5344059acdaa4f` |
| 9 | `def` | [Nsimple](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant445a2c9abaea9311e36d59b0ad491e6e63daef8e5976e2c72e9be4e0361ece42.lean/declarations/nsimple--cd1002ccbf9596eae8abcec6.md) | 73 | `declaration-track:cd1002ccbf9596eae8abcec68af15d95b29172a8431ab594fec49009342c91f9` |
| 10 | `structure` | [ZetaSeam](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant445a2c9abaea9311e36d59b0ad491e6e63daef8e5976e2c72e9be4e0361ece42.lean/declarations/zetaseam--a40c0b126b38428667633e9e.md) | 83 | `declaration-track:a40c0b126b38428667633e9ee0a98a1b23c9e4d8c0f46866c5b536edd377181a` |
| 11 | `def` | [zetaZeros](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant445a2c9abaea9311e36d59b0ad491e6e63daef8e5976e2c72e9be4e0361ece42.lean/declarations/zetazeros--eb19dbd707a741ee1527936a.md) | 96 | `declaration-track:eb19dbd707a741ee1527936a79d1b8ce08b2274d1e4aa8f949136a59b9ffd596` |
| 12 | `lemma` | [zetaZeros_carrier](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant445a2c9abaea9311e36d59b0ad491e6e63daef8e5976e2c72e9be4e0361ece42.lean/declarations/zetazeros-carrier--5fb302314a21e48c2ba4ba2b.md) | 108 | `result-track:5fb302314a21e48c2ba4ba2b7e585dcf736678df16479b65127454bc75fc3e46` |
| 13 | `lemma` | [zetaZeros_mult](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant445a2c9abaea9311e36d59b0ad491e6e63daef8e5976e2c72e9be4e0361ece42.lean/declarations/zetazeros-mult--7ddd1ad6225c91e6d6165ac0.md) | 109 | `result-track:7ddd1ad6225c91e6d6165ac08644efe6177a2b1acb4bdc672c74904897b98704` |
| 14 | `lemma` | [zetaZeros_simple](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant445a2c9abaea9311e36d59b0ad491e6e63daef8e5976e2c72e9be4e0361ece42.lean/declarations/zetazeros-simple--84f03bd6d838009e4173abc9.md) | 110 | `result-track:84f03bd6d838009e4173abc9ef12d94f158e943e576c22a039fdfde100b8c035` |
| 15 | `lemma` | [zetaZeros_window](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant445a2c9abaea9311e36d59b0ad491e6e63daef8e5976e2c72e9be4e0361ece42.lean/declarations/zetazeros-window--e1b1b83e1e6561faba17d3e2.md) | 112 | `result-track:e1b1b83e1e6561faba17d3e2d1ff3acd6c19ce6f86095a6279a250fef311a185` |
| 16 | `lemma` | [zetaZeros_N](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant445a2c9abaea9311e36d59b0ad491e6e63daef8e5976e2c72e9be4e0361ece42.lean/declarations/zetazeros-n--43d774bf9aef2662017bc73b.md) | 115 | `result-track:43d774bf9aef2662017bc73b6314e89afb08fe5053933bc63e6781c7b059d4eb` |
| 17 | `lemma` | [zetaZeros_Nd](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant445a2c9abaea9311e36d59b0ad491e6e63daef8e5976e2c72e9be4e0361ece42.lean/declarations/zetazeros-nd--a8e2be1199a3ba428b7ad644.md) | 117 | `result-track:a8e2be1199a3ba428b7ad6449e75e34c25a841e028f640a1eff25d86b4c95acd` |
| 18 | `lemma` | [zetaZeros_N0](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant445a2c9abaea9311e36d59b0ad491e6e63daef8e5976e2c72e9be4e0361ece42.lean/declarations/zetazeros-n0--9f1ccc74603324c60f1c49bf.md) | 119 | `result-track:9f1ccc74603324c60f1c49bfa18bbc134d9377aa32b5ceec9d1145c7a36ce024` |
| 19 | `lemma` | [zetaZeros_N0star](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant445a2c9abaea9311e36d59b0ad491e6e63daef8e5976e2c72e9be4e0361ece42.lean/declarations/zetazeros-n0star--679fc5561c39de5d4372fe18.md) | 121 | `result-track:679fc5561c39de5d4372fe184834b1b3abdbe56df1e8d738be53dea0e3ba7849` |
| 20 | `lemma` | [zetaZeros_N0s](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant445a2c9abaea9311e36d59b0ad491e6e63daef8e5976e2c72e9be4e0361ece42.lean/declarations/zetazeros-n0s--fd0f404921f8fe162114ed21.md) | 123 | `result-track:fd0f404921f8fe162114ed2141dbce2e7a3704ac275baff5eeaa1d7a10bbabe1` |
| 21 | `lemma` | [zetaZeros_Ns](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant445a2c9abaea9311e36d59b0ad491e6e63daef8e5976e2c72e9be4e0361ece42.lean/declarations/zetazeros-ns--0c23ba8e25e512f1894aeadd.md) | 125 | `result-track:0c23ba8e25e512f1894aeaddcf3daa13f1a9f5eaba6e41604d3b8baeab13f395` |
| 22 | `lemma` | [IsNontrivialZero.not_trivial](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant445a2c9abaea9311e36d59b0ad491e6e63daef8e5976e2c72e9be4e0361ece42.lean/declarations/isnontrivialzero-not-trivial--73319b675a2a90f2dda28b0d.md) | 134 | `result-track:73319b675a2a90f2dda28b0dcb6d84d59787acccb36594b6daa722d5652d6d2a` |
| 23 | `theorem` | [RH_implies_on_line](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant445a2c9abaea9311e36d59b0ad491e6e63daef8e5976e2c72e9be4e0361ece42.lean/declarations/rh-implies-on-line--4e03a50c1c0cae1ce1be9c06.md) | 145 | `result-track:4e03a50c1c0cae1ce1be9c06d4ce8674799baf9c5144b1685462ad5be28b4e22` |
| 24 | `theorem` | [RH_implies_all_on_line](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant445a2c9abaea9311e36d59b0ad491e6e63daef8e5976e2c72e9be4e0361ece42.lean/declarations/rh-implies-all-on-line--76b0ce8db83c3ca0371442dd.md) | 152 | `result-track:76b0ce8db83c3ca0371442dd52fd6d54a6e4209173d5a83fa97c6cb0415eb90a` |
| 25 | `theorem` | [trivial_chain](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant445a2c9abaea9311e36d59b0ad491e6e63daef8e5976e2c72e9be4e0361ece42.lean/declarations/trivial-chain--118f73d6818deb5b47f13ffb.md) | 165 | `result-track:118f73d6818deb5b47f13ffb7e35930ddb92154ab0fcde9c219e2b4046566e36` |
| 26 | `def` | [ThmA_statement](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant445a2c9abaea9311e36d59b0ad491e6e63daef8e5976e2c72e9be4e0361ece42.lean/declarations/thma-statement--458277298ec89a697d56878f.md) | 187 | `declaration-track:458277298ec89a697d56878fc6f607c69a3993052962469008c6001b1d3ff835` |
| 27 | `def` | [ThmB_statement](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant445a2c9abaea9311e36d59b0ad491e6e63daef8e5976e2c72e9be4e0361ece42.lean/declarations/thmb-statement--88facd4ecc87ff93c23a1caf.md) | 191 | `declaration-track:88facd4ecc87ff93c23a1cafbe48e4c31bfdab6b1bc9b7cc87258894307cec96` |
| 28 | `def` | [ThmC_statement](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant445a2c9abaea9311e36d59b0ad491e6e63daef8e5976e2c72e9be4e0361ece42.lean/declarations/thmc-statement--b6994ee4998f0201601a4416.md) | 195 | `declaration-track:b6994ee4998f0201601a4416dcf977ec7677e1665d7a7fe5c96d65f84e961cde` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
