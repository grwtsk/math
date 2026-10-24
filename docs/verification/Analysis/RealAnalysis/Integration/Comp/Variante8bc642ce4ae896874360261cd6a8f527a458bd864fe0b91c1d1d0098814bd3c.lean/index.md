# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Comp.Variante8bc642ce4ae896874360261cd6a8f527a458bd864fe0b91c1d1d0098814bd3c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "025864081208b5c41e5f5475ce9127b2e728ecfe",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Comp/Variante8bc642ce4ae896874360261cd6a8f527a458bd864fe0b91c1d1d0098814bd3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variante8bc642ce4ae896874360261cd6a8f527a458bd864fe0b91c1d1d0098814bd3c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variante8bc642ce4ae896874360261cd6a8f527a458bd864fe0b91c1d1d0098814bd3c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `025864081208b5c41e5f5475ce9127b2e728ecfe`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Comp/Variante8bc642ce4ae896874360261cd6a8f527a458bd864fe0b91c1d1d0098814bd3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Comp/Variante8bc642ce4ae896874360261cd6a8f527a458bd864fe0b91c1d1d0098814bd3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.MeasurableLIntegral` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variante8bc642ce4ae896874360261cd6a8f527a458bd864fe0b91c1d1d0098814bd3c.lean/declarations/comp--2859c2caf9329d89a3db56d1.md) | 52 | `declaration-track:2859c2caf9329d89a3db56d166d49d4f6b0976ead8e27e2445a0f7a5b589d3a5` |
| 2 | `theorem` | [comp_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variante8bc642ce4ae896874360261cd6a8f527a458bd864fe0b91c1d1d0098814bd3c.lean/declarations/comp-apply--e87dc49d1199e5daae5f6b19.md) | 59 | `result-track:e87dc49d1199e5daae5f6b1908cf473437a1eb7c981eac180c3dbec7ed884354` |
| 3 | `theorem` | [comp_apply'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variante8bc642ce4ae896874360261cd6a8f527a458bd864fe0b91c1d1d0098814bd3c.lean/declarations/comp-apply--72d565885911d8791feee1c7.md) | 62 | `result-track:72d565885911d8791feee1c78ea64d3a3e392c0aebefd796bedf522dc849a011` |
| 4 | `theorem` | [comp_apply_univ_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variante8bc642ce4ae896874360261cd6a8f527a458bd864fe0b91c1d1d0098814bd3c.lean/declarations/comp-apply-univ-le--097584160c5b7b5cbd468cc5.md) | 66 | `result-track:097584160c5b7b5cbd468cc513054ff0e24155d4912d6ffb7f07c93012cec252` |
| 5 | `lemma` | [zero_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variante8bc642ce4ae896874360261cd6a8f527a458bd864fe0b91c1d1d0098814bd3c.lean/declarations/zero-comp--77a974ab44e6ac8f34269bdf.md) | 76 | `result-track:77a974ab44e6ac8f34269bdfa3d4a7bdbab6e701b671e804733a9b7a86bfb09d` |
| 6 | `lemma` | [comp_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variante8bc642ce4ae896874360261cd6a8f527a458bd864fe0b91c1d1d0098814bd3c.lean/declarations/comp-zero--fc8240fae0f1338bdef132ed.md) | 78 | `result-track:fc8240fae0f1338bdef132edea49876e0a8996bec4fa0b16c3df63c6c2a3b7ea` |
| 7 | `theorem` | [ae_lt_top_of_comp_ne_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variante8bc642ce4ae896874360261cd6a8f527a458bd864fe0b91c1d1d0098814bd3c.lean/declarations/ae-lt-top-of-comp-ne-top--488733d713d95d0dce7623c3.md) | 86 | `result-track:488733d713d95d0dce7623c355d24aae771abdc951fd05665d000d91475a1604` |
| 8 | `theorem` | [comp_null](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variante8bc642ce4ae896874360261cd6a8f527a458bd864fe0b91c1d1d0098814bd3c.lean/declarations/comp-null--57aea0b9bd9321ddcb5d2fd0.md) | 92 | `result-track:57aea0b9bd9321ddcb5d2fd0a5e8325e088f5ecb0c2e37a1cd25f05ad7792337` |
| 9 | `theorem` | [ae_null_of_comp_null](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variante8bc642ce4ae896874360261cd6a8f527a458bd864fe0b91c1d1d0098814bd3c.lean/declarations/ae-null-of-comp-null--3af61e6071d9369f556d9817.md) | 96 | `result-track:3af61e6071d9369f556d981755e354753a91c9021eeceddac91823f4b41466d6` |
| 10 | `theorem` | [ae_ae_of_ae_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variante8bc642ce4ae896874360261cd6a8f527a458bd864fe0b91c1d1d0098814bd3c.lean/declarations/ae-ae-of-ae-comp--fbf7dad295c52a0656902c05.md) | 105 | `result-track:fbf7dad295c52a0656902c0526804a53abe7d5d8b9e5a31cc4e0d9c0448ec6a5` |
| 11 | `lemma` | [ae_comp_of_ae_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variante8bc642ce4ae896874360261cd6a8f527a458bd864fe0b91c1d1d0098814bd3c.lean/declarations/ae-comp-of-ae-ae--c538af35da5d74a3e94aa615.md) | 108 | `result-track:c538af35da5d74a3e94aa6159eca9845ee549449521c58c581b5ad0a31cc5dd1` |
| 12 | `lemma` | [ae_comp_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variante8bc642ce4ae896874360261cd6a8f527a458bd864fe0b91c1d1d0098814bd3c.lean/declarations/ae-comp-iff--eb0cbdb290579d5e4970f8f4.md) | 113 | `result-track:eb0cbdb290579d5e4970f8f459dc7543cc4ee91a61dbe678265c85218c5adb3d` |
| 13 | `theorem` | [comp_restrict](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variante8bc642ce4ae896874360261cd6a8f527a458bd864fe0b91c1d1d0098814bd3c.lean/declarations/comp-restrict--d1c21716456c47e071c14fac.md) | 123 | `result-track:d1c21716456c47e071c14fac1f0252c56b61abf6ef79e22202e9e5fb850a4b98` |
| 14 | `theorem` | [lintegral_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variante8bc642ce4ae896874360261cd6a8f527a458bd864fe0b91c1d1d0098814bd3c.lean/declarations/lintegral-comp--389c7e0518fe534f1ff81ced.md) | 130 | `result-track:389c7e0518fe534f1ff81ced4fa7cf4db156716a8312a1627f6c19daa5cd3ac9` |
| 15 | `theorem` | [comp_assoc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variante8bc642ce4ae896874360261cd6a8f527a458bd864fe0b91c1d1d0098814bd3c.lean/declarations/comp-assoc--66184b083ba62a3679599f40.md) | 135 | `result-track:66184b083ba62a3679599f40ca5901a5f7dce9aa4a455af99b50bf4c2c4f0670` |
| 16 | `lemma` | [comp_discard](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variante8bc642ce4ae896874360261cd6a8f527a458bd864fe0b91c1d1d0098814bd3c.lean/declarations/comp-discard--bbbf6a6b17f7d719da736257.md) | 141 | `result-track:bbbf6a6b17f7d719da73625774b83102c51c5dc9c4ad4078123f8f4fb0cadec9` |
| 17 | `lemma` | [swap_copy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variante8bc642ce4ae896874360261cd6a8f527a458bd864fe0b91c1d1d0098814bd3c.lean/declarations/swap-copy--9563c0f134ab3005fe4048f4.md) | 145 | `result-track:9563c0f134ab3005fe4048f439bed26476012146de0c70a62b7f1ea955c60402` |
| 18 | `lemma` | [const_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variante8bc642ce4ae896874360261cd6a8f527a458bd864fe0b91c1d1d0098814bd3c.lean/declarations/const-comp--41e5738ecc26af0c86ac2ce2.md) | 151 | `result-track:41e5738ecc26af0c86ac2ce2ad554e592d7b68b2f2cb08dd8989e8103b60409a` |
| 19 | `lemma` | [const_comp'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variante8bc642ce4ae896874360261cd6a8f527a458bd864fe0b91c1d1d0098814bd3c.lean/declarations/const-comp--5de09480002d28d4ddc27163.md) | 158 | `result-track:5de09480002d28d4ddc271637adbd350cc711974d78e528636d9dfb6fb7b7ea3` |
| 20 | `lemma` | [comp_add_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variante8bc642ce4ae896874360261cd6a8f527a458bd864fe0b91c1d1d0098814bd3c.lean/declarations/comp-add-right--52395c61fa3f5068794b5b9f.md) | 162 | `result-track:52395c61fa3f5068794b5b9f68ebb8859c85ee86a84b009afcb1e8a4daa330e0` |
| 21 | `lemma` | [comp_add_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variante8bc642ce4ae896874360261cd6a8f527a458bd864fe0b91c1d1d0098814bd3c.lean/declarations/comp-add-left--5f5ad3ed669316793c0e9f4d.md) | 165 | `result-track:5f5ad3ed669316793c0e9f4d13a1dd37fdfd5a7d18ece37ee20f43059f9c2981` |
| 22 | `lemma` | [comp_sum_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variante8bc642ce4ae896874360261cd6a8f527a458bd864fe0b91c1d1d0098814bd3c.lean/declarations/comp-sum-right--3e0c1b25449074630aabf34d.md) | 171 | `result-track:3e0c1b25449074630aabf34d3931966f933f1e2a05f2822842a4dbab3f061b97` |
| 23 | `lemma` | [comp_sum_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variante8bc642ce4ae896874360261cd6a8f527a458bd864fe0b91c1d1d0098814bd3c.lean/declarations/comp-sum-left--eaa09ff5c44a3ca3089fc548.md) | 177 | `result-track:eaa09ff5c44a3ca3089fc548bf9798ad1b3054896ae3979233f2448b9d6c5e80` |
| 24 | `instance` | [IsMarkovKernel.comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variante8bc642ce4ae896874360261cd6a8f527a458bd864fe0b91c1d1d0098814bd3c.lean/declarations/ismarkovkernel-comp--1de53292593806c4d619f5c4.md) | 185 | `declaration-track:1de53292593806c4d619f5c440b581ab6f1570851eb3d17014d079ac30fe7d8e` |
| 25 | `instance` | [IsZeroOrMarkovKernel.comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variante8bc642ce4ae896874360261cd6a8f527a458bd864fe0b91c1d1d0098814bd3c.lean/declarations/iszeroormarkovkernel-comp--e96c8d3b98a641a6a97beb47.md) | 193 | `declaration-track:e96c8d3b98a641a6a97beb47be7abd2dd119a6192d8ede827849502b9ffc3892` |
| 26 | `instance` | [IsFiniteKernel.comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variante8bc642ce4ae896874360261cd6a8f527a458bd864fe0b91c1d1d0098814bd3c.lean/declarations/isfinitekernel-comp--ac1e18f2bb420a1fbf040b00.md) | 198 | `declaration-track:ac1e18f2bb420a1fbf040b007231a4e31922b500ef944a90ab91a2fabdaeb514` |
| 27 | `instance` | [IsSFiniteKernel.comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variante8bc642ce4ae896874360261cd6a8f527a458bd864fe0b91c1d1d0098814bd3c.lean/declarations/issfinitekernel-comp--012d893a04a779211e1a57a1.md) | 208 | `declaration-track:012d893a04a779211e1a57a1384da97a2fb07cfe72726bb0497a6849754b32d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
