# Verification target: GRWTSK.Analysis.MeasureTheory.Measurable.Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97d862382122315b30b02a8eecb3d5131c94041c",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97d862382122315b30b02a8eecb3d5131c94041c`.

Source path: `GRWTSK/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.ContinuousLinearMap` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.StronglyMeasurable.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measurable_apply₂](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/measurable-apply--ccb8b7529628f1c21b5e3da9.md) | 97 | `result-track:ccb8b7529628f1c21b5e3da97d7d1ba2d287880d5f84abec10af7743eb4d24e2` |
| 2 | `def` | [A](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/a--86abc04d9a1f62e0bc47bf3c.md) | 120 | `declaration-track:86abc04d9a1f62e0bc47bf3cb288fa5e3016ef5821c9e3569368819acd573755` |
| 3 | `def` | [B](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/b--b07d2b880e8824949c81194d.md) | 129 | `declaration-track:b07d2b880e8824949c81194d406a54df600bbc78d27a849dfc647f48ac50023b` |
| 4 | `def` | [D](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/d--f5f8b7e283341749c8bffdc6.md) | 136 | `declaration-track:f5f8b7e283341749c8bffdc685fe05575da6a5617baa9fe439d6a2f0178747a4` |
| 5 | `theorem` | [isOpen_a](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/isopen-a--b9fea5276d81f53e6a8591ac.md) | 140 | `result-track:b9fea5276d81f53e6a8591ac2a51eafb8d6d340476387133699a90eb6ea02297` |
| 6 | `theorem` | [isOpen_b](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/isopen-b--e963905c70817afe3f6ff98d.md) | 151 | `result-track:e963905c70817afe3f6ff98df4e0cd86c3e1e29b5e0c0fea534fe0da5d538330` |
| 7 | `theorem` | [a_mono](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/a-mono--deab01c692a0083d8b6d0073.md) | 158 | `result-track:deab01c692a0083d8b6d0073871c0dad5f4e0ea1cc2d2f3553a5916e2eef76af` |
| 8 | `theorem` | [le_of_mem_a](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/le-of-mem-a--5323312106e313927e443a74.md) | 164 | `result-track:5323312106e313927e443a74183e49957fa99242e063b4d610c53ce829c0d14b` |
| 9 | `theorem` | [mem_a_of_differentiable](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/mem-a-of-differentiable--6966dde4d530ace768bb0be7.md) | 171 | `result-track:6966dde4d530ace768bb0be71ad2b4e22b4bbc1dbd9d9bda69c53cf6bc7b6cab` |
| 10 | `theorem` | [norm_sub_le_of_mem_a](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/norm-sub-le-of-mem-a--afc8bfd8861c65f5efbe8e84.md) | 191 | `result-track:afc8bfd8861c65f5efbe8e84e05a24e34b8b42f8691b6e2b05df2cf0f0ae7d36` |
| 11 | `theorem` | [differentiable_set_subset_d](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/differentiable-set-subset-d--ed750b7638e1eda9631b803e.md) | 216 | `result-track:ed750b7638e1eda9631b803e0104b7a83c89a4102a4dce6be5d1938daedd3333` |
| 12 | `theorem` | [d_subset_differentiable_set](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/d-subset-differentiable-set--63f09b833ed7b2191b657d47.md) | 232 | `result-track:63f09b833ed7b2191b657d47979d7541b904a825e9e2257a6c927da436272f36` |
| 13 | `theorem` | [differentiable_set_eq_d](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/differentiable-set-eq-d--1c0d1b27d95925350522b53f.md) | 374 | `result-track:1c0d1b27d95925350522b53f465a5a6372c9ea12aaffced32e7091e479f8278b` |
| 14 | `theorem` | [measurableSet_of_differentiableAt_of_isComplete](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/measurableset-of-differentiableat-of-iscomplete--9623168c81923aa36afa4a85.md) | 389 | `result-track:9623168c81923aa36afa4a85d2c112b72bf48fc5c576932183edb63e81f220c6` |
| 15 | `theorem` | [measurableSet_of_differentiableAt](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/measurableset-of-differentiableat--48728da0710203741c9490eb.md) | 408 | `result-track:48728da0710203741c9490eb39f5693bfef078929e6925df31060b65dfc58ca5` |
| 16 | `theorem` | [measurable_fderiv](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/measurable-fderiv--823cd5097ed8f8f10d32a277.md) | 415 | `result-track:823cd5097ed8f8f10d32a2778b6e46704eac8bac21db4d8fea3d210295104159` |
| 17 | `theorem` | [measurable_fderiv_apply_const](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/measurable-fderiv-apply-const--fffbd988cfc99763c3a6d4a3.md) | 429 | `result-track:fffbd988cfc99763c3a6d4a37a55bc7a98cbbbe4620d4f568531a286b16856d5` |
| 18 | `theorem` | [measurable_deriv](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/measurable-deriv--31593505a0648860017dc352.md) | 437 | `result-track:31593505a0648860017dc3529b630ee74db67b5c7c9ab16eac6fb525ac61eaaa` |
| 19 | `theorem` | [stronglyMeasurable_deriv](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/stronglymeasurable-deriv--1d2654c792aa554a403fd529.md) | 442 | `result-track:1d2654c792aa554a403fd529bad10b1f94928c6b57ad483988b66bd842161913` |
| 20 | `theorem` | [aemeasurable_deriv](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/aemeasurable-deriv--c5006b44db4d8cc408431701.md) | 448 | `result-track:c5006b44db4d8cc408431701867a74aa5b2cf0228711a5018ca5a354dcb535df` |
| 21 | `theorem` | [aestronglyMeasurable_deriv](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/aestronglymeasurable-deriv--b41e710f653d8bd2e5e1827d.md) | 453 | `result-track:b41e710f653d8bd2e5e1827d269534028ae9fa0ca5aad629d38087eef5c45ef6` |
| 22 | `def` | [A](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/a--30726d16b47fdb44a2083391.md) | 471 | `declaration-track:30726d16b47fdb44a20833910938a93d1d9aa91b4f9ed6b7a2641e4c5fe94d7d` |
| 23 | `def` | [B](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/b--3549553151089ebe33a6bd4d.md) | 481 | `declaration-track:3549553151089ebe33a6bd4deda4534dee214e521703ef6ed926c8914875bec5` |
| 24 | `def` | [D](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/d--9488db47e11337f717811d6c.md) | 488 | `declaration-track:9488db47e11337f717811d6c0e2f8ea30ec74a5bb539aa952ed7e2457740a1fd` |
| 25 | `theorem` | [a_mem_nhdsWithin_Ioi](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/a-mem-nhdswithin-ioi--ee5506dbb7e98f5c47c1286b.md) | 492 | `result-track:ee5506dbb7e98f5c47c1286bb983ecbddf2fc39c1febb6684e71b13c30d22d36` |
| 26 | `theorem` | [b_mem_nhdsWithin_Ioi](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/b-mem-nhdswithin-ioi--8841c9a30726dd9f9f64ef59.md) | 505 | `result-track:8841c9a30726dd9f9f64ef59dd23ed4434d5a54fc4823659475b20e034156d56` |
| 27 | `theorem` | [measurableSet_b](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/measurableset-b--50164daa918ac3a36ae4d195.md) | 514 | `result-track:50164daa918ac3a36ae4d195136f0396f366c82ec198dd354e5dc601a685e744` |
| 28 | `theorem` | [a_mono](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/a-mono--4d19d1eac42c10f5749818ad.md) | 518 | `result-track:4d19d1eac42c10f5749818ade5a90326e6654de0bd2b9e7fe07342924417ebbc` |
| 29 | `theorem` | [le_of_mem_a](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/le-of-mem-a--e03dc0d380aec201d6434075.md) | 524 | `result-track:e03dc0d380aec201d6434075e803abdf5cf4541ce089a37eaca91e6135e510d1` |
| 30 | `theorem` | [mem_a_of_differentiable](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/mem-a-of-differentiable--415557aac882ab0d322f5365.md) | 532 | `result-track:415557aac882ab0d322f53653e3600819e9f467e2d3f483a1013c14abc6cdc52` |
| 31 | `theorem` | [norm_sub_le_of_mem_a](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/norm-sub-le-of-mem-a--acaa3bcbd590040d05b6e631.md) | 560 | `result-track:acaa3bcbd590040d05b6e631e5d552b8d08d858cf35201565ae966092154a6d9` |
| 32 | `theorem` | [differentiable_set_subset_d](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/differentiable-set-subset-d--68ee4f172fcf3b1f2203f927.md) | 581 | `result-track:68ee4f172fcf3b1f2203f927f95c3f08278b32dc4e4b79116a610d9f26ef07ad` |
| 33 | `theorem` | [d_subset_differentiable_set](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/d-subset-differentiable-set--b97a80b3ceaf8b0688446f2b.md) | 597 | `result-track:b97a80b3ceaf8b0688446f2bb77683e94a46e518275836e84cb9635db6cc895a` |
| 34 | `theorem` | [differentiable_set_eq_d](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/differentiable-set-eq-d--4a5d0ef8482a73224104873d.md) | 740 | `result-track:4a5d0ef8482a73224104873df30ecb193e67096f47faa91bb3b8639661a9aa30` |
| 35 | `theorem` | [measurableSet_of_differentiableWithinAt_Ici_of_isComplete](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/measurableset-of-differentiablewithinat-ici-of-iscomplete--eab52b1bda2f1b28833fcf9d.md) | 753 | `result-track:eab52b1bda2f1b28833fcf9dfb56b1bfd06fb5154fab9e6aad319ebdf6855070` |
| 36 | `theorem` | [measurableSet_of_differentiableWithinAt_Ici](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/measurableset-of-differentiablewithinat-ici--6d2721dba63e1ab813a3862a.md) | 771 | `result-track:6d2721dba63e1ab813a3862a9846be438269ffe022b8474ce88b74accc0c48be` |
| 37 | `theorem` | [measurable_derivWithin_Ici](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/measurable-derivwithin-ici--bd3e4d2ba061798ced93bec7.md) | 779 | `result-track:bd3e4d2ba061798ced93bec7df1ca3af002c454b24d87728728e36a648af2d62` |
| 38 | `theorem` | [stronglyMeasurable_derivWithin_Ici](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/stronglymeasurable-derivwithin-ici--4e3181a4d713f19a617b0b1a.md) | 793 | `result-track:4e3181a4d713f19a617b0b1a8ab04e47fc825a2222594e4f156b341db4bda850` |
| 39 | `theorem` | [aemeasurable_derivWithin_Ici](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/aemeasurable-derivwithin-ici--889f2aa0906af073dc02d284.md) | 799 | `result-track:889f2aa0906af073dc02d284dcf5b1e499ac60fcfce1483642041ef91814617f` |
| 40 | `theorem` | [aestronglyMeasurable_derivWithin_Ici](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/aestronglymeasurable-derivwithin-ici--3e947c5bd0c078fc1871ae22.md) | 804 | `result-track:3e947c5bd0c078fc1871ae22d7490dd191455f86790766fb8972f0ea8c329a4a` |
| 41 | `theorem` | [measurableSet_of_differentiableWithinAt_Ioi](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/measurableset-of-differentiablewithinat-ioi--3805701b7aed77c4bc95a523.md) | 811 | `result-track:3805701b7aed77c4bc95a523f0a194b7a4189d3c8e9f3bb5165c07e91c7158be` |
| 42 | `theorem` | [measurable_derivWithin_Ioi](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/measurable-derivwithin-ioi--4328dcb154f075363f498656.md) | 817 | `result-track:4328dcb154f075363f4986567ad886eb143e983a5297022ffc3a85144d9b23b2` |
| 43 | `theorem` | [stronglyMeasurable_derivWithin_Ioi](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/stronglymeasurable-derivwithin-ioi--c1ee2eeb7e0b0c06771a8f59.md) | 822 | `result-track:c1ee2eeb7e0b0c06771a8f597928d19feb450ae588d19b706884a10796c9894a` |
| 44 | `theorem` | [aemeasurable_derivWithin_Ioi](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/aemeasurable-derivwithin-ioi--3ca3e0236f50ed52221cfaa6.md) | 828 | `result-track:3ca3e0236f50ed52221cfaa6694b66f7b5e7f9b06465bdbd017e240bde26830a` |
| 45 | `theorem` | [aestronglyMeasurable_derivWithin_Ioi](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variantf4a2f5b563c6a49f3dc8ace75e12167d6b9fe57a76f3b707a5f31f932ce4a68e.lean/declarations/aestronglymeasurable-derivwithin-ioi--68e40a3c0b081e262198200f.md) | 833 | `result-track:68e40a3c0b081e262198200f5ba9619fd72f86e3c51fb6bd3e28513d3da564d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
