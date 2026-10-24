# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Comp.Variantf49577151952b4fc20aac116c48361e7c7dc33586c67f2706de6b756178e3351

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba199336f0db0c1a41a6eb73bdef4dd385aa61e8",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Comp/Variantf49577151952b4fc20aac116c48361e7c7dc33586c67f2706de6b756178e3351.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variantf49577151952b4fc20aac116c48361e7c7dc33586c67f2706de6b756178e3351.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variantf49577151952b4fc20aac116c48361e7c7dc33586c67f2706de6b756178e3351.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba199336f0db0c1a41a6eb73bdef4dd385aa61e8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Comp/Variantf49577151952b4fc20aac116c48361e7c7dc33586c67f2706de6b756178e3351.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Comp/Variantf49577151952b4fc20aac116c48361e7c7dc33586c67f2706de6b756178e3351.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.MeasurableLIntegral` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variantf49577151952b4fc20aac116c48361e7c7dc33586c67f2706de6b756178e3351.lean/declarations/comp--fe171ee16fa9c9629a4b75af.md) | 44 | `declaration-track:fe171ee16fa9c9629a4b75af1aaab99fcbff5ad13c34df537ab9e1dbfd25ef9e` |
| 2 | `theorem` | [comp_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variantf49577151952b4fc20aac116c48361e7c7dc33586c67f2706de6b756178e3351.lean/declarations/comp-apply--b10a593cd8b6de6a1bc81b97.md) | 51 | `result-track:b10a593cd8b6de6a1bc81b977ffd8a31e90bfc737f2f175aae356dd35943538f` |
| 3 | `theorem` | [comp_apply'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variantf49577151952b4fc20aac116c48361e7c7dc33586c67f2706de6b756178e3351.lean/declarations/comp-apply--02bd1d75122014bbfa3ba69d.md) | 54 | `result-track:02bd1d75122014bbfa3ba69d13cae6acecb32a14e68cf7183c52893288420da5` |
| 4 | `theorem` | [comp_apply_univ_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variantf49577151952b4fc20aac116c48361e7c7dc33586c67f2706de6b756178e3351.lean/declarations/comp-apply-univ-le--df546b550e8fabb2804a9fca.md) | 58 | `result-track:df546b550e8fabb2804a9fca303cef98fa1cb93a9cb7c59c22d12282be455e46` |
| 5 | `lemma` | [zero_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variantf49577151952b4fc20aac116c48361e7c7dc33586c67f2706de6b756178e3351.lean/declarations/zero-comp--fe1d8dccfb9b2102e87b53c6.md) | 68 | `result-track:fe1d8dccfb9b2102e87b53c659046de4ff15337e5fbfa8073c41bfb5ace1fb0a` |
| 6 | `lemma` | [comp_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variantf49577151952b4fc20aac116c48361e7c7dc33586c67f2706de6b756178e3351.lean/declarations/comp-zero--8bff6c8d867b0820886d681c.md) | 70 | `result-track:8bff6c8d867b0820886d681c212e5ecdb641af2a6ffc39584d07daa549ff49b0` |
| 7 | `theorem` | [ae_lt_top_of_comp_ne_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variantf49577151952b4fc20aac116c48361e7c7dc33586c67f2706de6b756178e3351.lean/declarations/ae-lt-top-of-comp-ne-top--b90a587aa423e382660dbf3f.md) | 78 | `result-track:b90a587aa423e382660dbf3fb0ff3ecc0ed3a12c19bdd5245a281ba3cd2f41de` |
| 8 | `theorem` | [comp_null](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variantf49577151952b4fc20aac116c48361e7c7dc33586c67f2706de6b756178e3351.lean/declarations/comp-null--b5615ab81438cd9ff7ef4e0f.md) | 84 | `result-track:b5615ab81438cd9ff7ef4e0f1e5460cf97dcc4beaba9cc62a878400ab60b1b7e` |
| 9 | `theorem` | [ae_null_of_comp_null](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variantf49577151952b4fc20aac116c48361e7c7dc33586c67f2706de6b756178e3351.lean/declarations/ae-null-of-comp-null--1d3ddbe4379c4d5b3f740c1e.md) | 88 | `result-track:1d3ddbe4379c4d5b3f740c1eace4c002371a89679afc70db9277d8cb5d8fdc78` |
| 10 | `theorem` | [ae_ae_of_ae_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variantf49577151952b4fc20aac116c48361e7c7dc33586c67f2706de6b756178e3351.lean/declarations/ae-ae-of-ae-comp--7f64b9ced19d588c7306c742.md) | 97 | `result-track:7f64b9ced19d588c7306c74223b313d1808c16e86f4f939eed6d95654490fe9e` |
| 11 | `lemma` | [ae_comp_of_ae_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variantf49577151952b4fc20aac116c48361e7c7dc33586c67f2706de6b756178e3351.lean/declarations/ae-comp-of-ae-ae--111bd6dd0e13810152927842.md) | 100 | `result-track:111bd6dd0e13810152927842d6519c83dbb5ec4c683a597b25196b521c911c06` |
| 12 | `lemma` | [ae_comp_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variantf49577151952b4fc20aac116c48361e7c7dc33586c67f2706de6b756178e3351.lean/declarations/ae-comp-iff--fc67fc4d5fe364eeeb9e10dd.md) | 105 | `result-track:fc67fc4d5fe364eeeb9e10ddcd447376747e304db23f80403abe5cd95ddaa957` |
| 13 | `theorem` | [comp_restrict](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variantf49577151952b4fc20aac116c48361e7c7dc33586c67f2706de6b756178e3351.lean/declarations/comp-restrict--8d0afc8c1ab3729592dcdafc.md) | 115 | `result-track:8d0afc8c1ab3729592dcdafc648a03fa97a31a9b536ed301a819217ff1fc2399` |
| 14 | `theorem` | [lintegral_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variantf49577151952b4fc20aac116c48361e7c7dc33586c67f2706de6b756178e3351.lean/declarations/lintegral-comp--4509ab8fe04883ad63be96ab.md) | 122 | `result-track:4509ab8fe04883ad63be96ab8c170ed658b219fef5a9ec0095553e39f8d6b144` |
| 15 | `theorem` | [comp_assoc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variantf49577151952b4fc20aac116c48361e7c7dc33586c67f2706de6b756178e3351.lean/declarations/comp-assoc--b93911bd2f778bd55e3649e8.md) | 127 | `result-track:b93911bd2f778bd55e3649e838062b73dcc5ffa6652495e84d8842894193fd27` |
| 16 | `lemma` | [comp_discard](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variantf49577151952b4fc20aac116c48361e7c7dc33586c67f2706de6b756178e3351.lean/declarations/comp-discard--a7e3fb9edad8a51a1605c243.md) | 133 | `result-track:a7e3fb9edad8a51a1605c24317d442153cb9cae18c07752464acc4f34067dff3` |
| 17 | `lemma` | [swap_copy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variantf49577151952b4fc20aac116c48361e7c7dc33586c67f2706de6b756178e3351.lean/declarations/swap-copy--38d264101734d664c8df8a87.md) | 137 | `result-track:38d264101734d664c8df8a87a70d89a421e5481f03a9b656ff48094df23b62c1` |
| 18 | `lemma` | [const_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variantf49577151952b4fc20aac116c48361e7c7dc33586c67f2706de6b756178e3351.lean/declarations/const-comp--3e66e20311736d5d73b9f0ff.md) | 143 | `result-track:3e66e20311736d5d73b9f0ff00817f37779c4c3bb88e0bad7aa3e6de3b948621` |
| 19 | `lemma` | [const_comp'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variantf49577151952b4fc20aac116c48361e7c7dc33586c67f2706de6b756178e3351.lean/declarations/const-comp--06444c0a53fbbaa118a27e08.md) | 150 | `result-track:06444c0a53fbbaa118a27e08447017467c66b1f01dfbfc37fa7c0b417dc8d2fd` |
| 20 | `lemma` | [comp_add_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variantf49577151952b4fc20aac116c48361e7c7dc33586c67f2706de6b756178e3351.lean/declarations/comp-add-right--e09658ea6fb12e253a11c14f.md) | 154 | `result-track:e09658ea6fb12e253a11c14f99952f7a2ba41d99399b053fdbd6e07883c423cc` |
| 21 | `lemma` | [comp_add_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variantf49577151952b4fc20aac116c48361e7c7dc33586c67f2706de6b756178e3351.lean/declarations/comp-add-left--7965b80df65d5379056c9e93.md) | 157 | `result-track:7965b80df65d5379056c9e933704247c52f97c7e78de078fa52c6b817106d5af` |
| 22 | `lemma` | [comp_sum_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variantf49577151952b4fc20aac116c48361e7c7dc33586c67f2706de6b756178e3351.lean/declarations/comp-sum-right--4faa25d4754064a1dddb84b4.md) | 163 | `result-track:4faa25d4754064a1dddb84b4b7bedc7ac981d863eee176026730536ea610ac57` |
| 23 | `lemma` | [comp_sum_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variantf49577151952b4fc20aac116c48361e7c7dc33586c67f2706de6b756178e3351.lean/declarations/comp-sum-left--e6058c9a8a1e5ec99c5840c5.md) | 169 | `result-track:e6058c9a8a1e5ec99c5840c51d3cfc737d5c0cf1e1bd62afaf6a845424de030b` |
| 24 | `instance` | [IsMarkovKernel.comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variantf49577151952b4fc20aac116c48361e7c7dc33586c67f2706de6b756178e3351.lean/declarations/ismarkovkernel-comp--f1e8b094884277d7fa4296ed.md) | 177 | `declaration-track:f1e8b094884277d7fa4296ed1a7665f863d822b769b4d75dda9aaf6008f3d5cb` |
| 25 | `instance` | [IsZeroOrMarkovKernel.comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variantf49577151952b4fc20aac116c48361e7c7dc33586c67f2706de6b756178e3351.lean/declarations/iszeroormarkovkernel-comp--f80537a065eceb952878d5a5.md) | 185 | `declaration-track:f80537a065eceb952878d5a5ea0676cb41933b3245a2b61fdfa52fa63d36ac41` |
| 26 | `instance` | [IsFiniteKernel.comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variantf49577151952b4fc20aac116c48361e7c7dc33586c67f2706de6b756178e3351.lean/declarations/isfinitekernel-comp--a5933b8f42ce0cc970a6682a.md) | 190 | `declaration-track:a5933b8f42ce0cc970a6682a7de278d314fa3f8ea3edfb24eb4d59710145ade1` |
| 27 | `instance` | [IsSFiniteKernel.comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Comp/Variantf49577151952b4fc20aac116c48361e7c7dc33586c67f2706de6b756178e3351.lean/declarations/issfinitekernel-comp--7cfe03b11d73f94ccb08046c.md) | 200 | `declaration-track:7cfe03b11d73f94ccb08046c9dcdbcea294415cea89c5f122ba6c033bdc6d0b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
