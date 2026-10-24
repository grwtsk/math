# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Stability.Variant533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d3ece8d57d60fa3ab47657e589d10dc8d18d12e",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Stability/Variant533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d3ece8d57d60fa3ab47657e589d10dc8d18d12e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Stability/Variant533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Stability/Variant533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.PairCeiling.Defs` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DivergenceTheorem` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [cell_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88.lean/declarations/cell-le--ab8ba98679363bb9e21e55c6.md) | 35 | `result-track:ab8ba98679363bb9e21e55c68931a44790faa131054d6c64821543eb64b2031a` |
| 2 | `lemma` | [cell_subset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88.lean/declarations/cell-subset--94b28d29d55ff6c497b9e029.md) | 39 | `result-track:94b28d29d55ff6c497b9e0291fffc40d8eed546646eee28a62e06941cfc7ea92` |
| 3 | `lemma` | [Cstep_ae_cell](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88.lean/declarations/cstep-ae-cell--a2ea15d67b0525ecf9cfab08.md) | 46 | `result-track:a2ea15d67b0525ecf9cfab088441042eea61ed56c131f3e0e7b80de684f15b53` |
| 4 | `lemma` | [intervalIntegrable_gC_cell](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88.lean/declarations/intervalintegrable-gc-cell--3e8a397e3222cfdc558f8e16.md) | 55 | `result-track:3e8a397e3222cfdc558f8e16b2a232426e1886a401a2a83c1be43e8dcf985066` |
| 5 | `lemma` | [integral_cell](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88.lean/declarations/integral-cell--a1f563e7da8677d3531675ac.md) | 68 | `result-track:a1f563e7da8677d3531675acf9d5067cf72d63b868157726b7c09b1559827593` |
| 6 | `lemma` | [integral_gC_eq_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88.lean/declarations/integral-gc-eq-sum--e55baa5a1b3961dc91a87372.md) | 81 | `result-track:e55baa5a1b3961dc91a87372ddc0ef0b79a5cf8a80e72936ef2bfab17edcb586` |
| 7 | `lemma` | [abel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88.lean/declarations/abel--91f790d4acc9112b8e423184.md) | 98 | `result-track:91f790d4acc9112b8e423184086241dc139cd94435bff35bcdb566f814983df4` |
| 8 | `theorem` | [integral_gC](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88.lean/declarations/integral-gc--1aac0e8a5b68079d958b02b1.md) | 114 | `result-track:1aac0e8a5b68079d958b02b1f3508140cc9c8db438fb8ced81de44292fc15211` |
| 9 | `lemma` | [intervalIntegrable_gC](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88.lean/declarations/intervalintegrable-gc--883906d19147adad7e6669e0.md) | 120 | `result-track:883906d19147adad7e6669e0c5b057f23614ff08048fb735ce67f2e816ba504c` |
| 10 | `lemma` | [integral_r_mul_id](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88.lean/declarations/integral-r-mul-id--304e3462644f4b622bb3518f.md) | 131 | `result-track:304e3462644f4b622bb3518ff15f8dad2a8677e68ffa533ec222ff77e91f9412` |
| 11 | `theorem` | [abel_ibp_first](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88.lean/declarations/abel-ibp-first--15419bf9796c460c7f714bac.md) | 147 | `result-track:15419bf9796c460c7f714bacf04702e7c7c3b22b648e99610421f432b50e4c66` |
| 12 | `theorem` | [first_order_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88.lean/declarations/first-order-bound--1e2465323446283af9678d99.md) | 169 | `result-track:1e2465323446283af9678d99ef073cfd60bd59e05cd3233cef613e19087415d4` |
| 13 | `def` | [grid](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88.lean/declarations/grid--1ccd1f105fe30b1071f786ef.md) | 198 | `declaration-track:1ccd1f105fe30b1071f786ef322229efd2a8b5dbcee5769c76a39b09414502d1` |
| 14 | `lemma` | [grid_countable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88.lean/declarations/grid-countable--20db160070f48667cd61dfec.md) | 200 | `result-track:20db160070f48667cd61dfec8c413987c6cfc5d08799de4fc4626ff6640be41b` |
| 15 | `lemma` | [measurable_Cstep](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88.lean/declarations/measurable-cstep--ab5ce512fbfd5912644e2f07.md) | 203 | `result-track:ab5ce512fbfd5912644e2f07554e5285d35abe5e84a64d413361c6127052c7c6` |
| 16 | `lemma` | [measurable_Dfun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88.lean/declarations/measurable-dfun--a17fc15c85b8667e3d64f560.md) | 210 | `result-track:a17fc15c85b8667e3d64f56007357e04068b6c822b0bb7a2c736e90de78e0960` |
| 17 | `lemma` | [intervalIntegrable_Dfun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88.lean/declarations/intervalintegrable-dfun--33ce147fb72020500830775b.md) | 214 | `result-track:33ce147fb72020500830775b0d867aacbdde0b2d9bd98cb46358642f37143760` |
| 18 | `lemma` | [continuousOn_Efun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88.lean/declarations/continuouson-efun--fe96f3e32ca59cee38b819d6.md) | 220 | `result-track:fe96f3e32ca59cee38b819d6246c99e2759d6a0e69cd7c9f629b234ebd99c7d0` |
| 19 | `lemma` | [exists_cell](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88.lean/declarations/exists-cell--2ce8f595132f14b4c2fc2592.md) | 227 | `result-track:2ce8f595132f14b4c2fc2592a0cd90ea03d902fd24b6e94d7d6a8e357d40aeca` |
| 20 | `lemma` | [Dfun_eqOn_cell](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88.lean/declarations/dfun-eqon-cell--d4dfd0822b68d8b0cb8cc667.md) | 249 | `result-track:d4dfd0822b68d8b0cb8cc667972cc030e6ee90b0a4789b44675acde69b2cc6f8` |
| 21 | `lemma` | [continuousAt_Dfun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88.lean/declarations/continuousat-dfun--182f27699f86d0a18cb4cead.md) | 254 | `result-track:182f27699f86d0a18cb4cead3f946d70576f534a25af43af00f124d60ea09bd2` |
| 22 | `lemma` | [hasDerivAt_Efun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88.lean/declarations/hasderivat-efun--6f18039ebbffda1e34d76577.md) | 261 | `result-track:6f18039ebbffda1e34d76577a42806de81b591f5dd5e84b8d234d94211ec69c8` |
| 23 | `theorem` | [abel_ibp_second](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88.lean/declarations/abel-ibp-second--c8f4d5bc1ea1498d85fd29fd.md) | 275 | `result-track:c8f4d5bc1ea1498d85fd29fd2a396ea7b2f2e583b9b0f90e4cdbd8d826958317` |
| 24 | `theorem` | [ceiling_stability](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Stability/Variant533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88.lean/declarations/ceiling-stability--1c7056b976dfabb1fc652aa4.md) | 305 | `result-track:1c7056b976dfabb1fc652aa4417490fa7ef8febfa9ea82a55f0fcc5947a6a2e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
