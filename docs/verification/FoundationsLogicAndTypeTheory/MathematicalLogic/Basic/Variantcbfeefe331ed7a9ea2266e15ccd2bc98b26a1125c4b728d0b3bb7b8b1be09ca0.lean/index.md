# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variantcbfeefe331ed7a9ea2266e15ccd2bc98b26a1125c4b728d0b3bb7b8b1be09ca0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "184c5550db9eeaf7b26053c62d07740bf7157c54",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcbfeefe331ed7a9ea2266e15ccd2bc98b26a1125c4b728d0b3bb7b8b1be09ca0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcbfeefe331ed7a9ea2266e15ccd2bc98b26a1125c4b728d0b3bb7b8b1be09ca0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcbfeefe331ed7a9ea2266e15ccd2bc98b26a1125c4b728d0b3bb7b8b1be09ca0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `184c5550db9eeaf7b26053c62d07740bf7157c54`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcbfeefe331ed7a9ea2266e15ccd2bc98b26a1125c4b728d0b3bb7b8b1be09ca0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcbfeefe331ed7a9ea2266e15ccd2bc98b26a1125c4b728d0b3bb7b8b1be09ca0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Semisimple.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.BooleanGenerators` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [LieModule.nontrivial_of_isIrreducible](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcbfeefe331ed7a9ea2266e15ccd2bc98b26a1125c4b728d0b3bb7b8b1be09ca0.lean/declarations/liemodule-nontrivial-of-isirreducible--70e966dd64d3353786e774fc.md) | 36 | `result-track:70e966dd64d3353786e774fcabe409e110945985abe10e1aed7a7d93db5d3016` |
| 2 | `theorem` | [HasTrivialRadical.eq_bot_of_isSolvable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcbfeefe331ed7a9ea2266e15ccd2bc98b26a1125c4b728d0b3bb7b8b1be09ca0.lean/declarations/hastrivialradical-eq-bot-of-issolvable--afa7b695ef7482904e5534ba.md) | 50 | `result-track:afa7b695ef7482904e5534bad4e1b9ef05b1d01812bf3c5a47a4984cc462b3ba` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcbfeefe331ed7a9ea2266e15ccd2bc98b26a1125c4b728d0b3bb7b8b1be09ca0.lean/declarations/instance--636ad796a2cb5f8783da54af.md) | 54 | `declaration-track:636ad796a2cb5f8783da54af622d0c1b4405ccdd605a4cc59abe7e8c651ef126` |
| 4 | `theorem` | [hasTrivialRadical_of_no_solvable_ideals](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcbfeefe331ed7a9ea2266e15ccd2bc98b26a1125c4b728d0b3bb7b8b1be09ca0.lean/declarations/hastrivialradical-of-no-solvable-ideals--3b0a3ec163fc5c3b57f0e8bd.md) | 59 | `result-track:3b0a3ec163fc5c3b57f0e8bda6b41dc9519389dff7c97d49cc5d81065bc9ea69` |
| 5 | `theorem` | [hasTrivialRadical_iff_no_solvable_ideals](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcbfeefe331ed7a9ea2266e15ccd2bc98b26a1125c4b728d0b3bb7b8b1be09ca0.lean/declarations/hastrivialradical-iff-no-solvable-ideals--a18b663f526fb983bd9f5ed5.md) | 63 | `result-track:a18b663f526fb983bd9f5ed5c8c6bbfebdaa994da18dd6dea52cebf07d43322c` |
| 6 | `theorem` | [hasTrivialRadical_iff_no_abelian_ideals](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcbfeefe331ed7a9ea2266e15ccd2bc98b26a1125c4b728d0b3bb7b8b1be09ca0.lean/declarations/hastrivialradical-iff-no-abelian-ideals--cf10c32393e1a119dab87e1d.md) | 67 | `result-track:cf10c32393e1a119dab87e1d95feb62389dbda3d4d371b774d15e599d5a2b7c4` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcbfeefe331ed7a9ea2266e15ccd2bc98b26a1125c4b728d0b3bb7b8b1be09ca0.lean/declarations/instance--ccabb83d151a702ed57e525d.md) | 79 | `declaration-track:ccabb83d151a702ed57e525d0857c5e65b7b899b16f54673be04d36ee37d43d9` |
| 8 | `lemma` | [isAtom_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcbfeefe331ed7a9ea2266e15ccd2bc98b26a1125c4b728d0b3bb7b8b1be09ca0.lean/declarations/isatom-top--b6d8a2bd080fac376c61cdda.md) | 86 | `result-track:b6d8a2bd080fac376c61cdda2dc1117851d2cd08f5931484397da5bfca7c6d26` |
| 9 | `lemma` | [isAtom_iff_eq_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcbfeefe331ed7a9ea2266e15ccd2bc98b26a1125c4b728d0b3bb7b8b1be09ca0.lean/declarations/isatom-iff-eq-top--689a3f22acd71592492e6f43.md) | 89 | `result-track:689a3f22acd71592492e6f4347461f46b6f3a2c539bc28cfc0564a0fd16de823` |
| 10 | `lemma` | [eq_top_of_isAtom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcbfeefe331ed7a9ea2266e15ccd2bc98b26a1125c4b728d0b3bb7b8b1be09ca0.lean/declarations/eq-top-of-isatom--3ad8acefae980e9d6a55804f.md) | 92 | `result-track:3ad8acefae980e9d6a55804fbac901b209151853f384708e241a81c240a84c03` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcbfeefe331ed7a9ea2266e15ccd2bc98b26a1125c4b728d0b3bb7b8b1be09ca0.lean/declarations/instance--65808f8ccaf503ae1cde3401.md) | 94 | `declaration-track:65808f8ccaf503ae1cde3401886b5ade687aa48e9db7e56b3d3d2588670f95b2` |
| 12 | `lemma` | [isSimple_of_isAtom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcbfeefe331ed7a9ea2266e15ccd2bc98b26a1125c4b728d0b3bb7b8b1be09ca0.lean/declarations/issimple-of-isatom--7f8dd1d748b87c07b7e2526d.md) | 111 | `result-track:7f8dd1d748b87c07b7e2526d1373c4ccbf4dd16e83ed3983af9e09a85a5d1281` |
| 13 | `lemma` | [finitelyAtomistic](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcbfeefe331ed7a9ea2266e15ccd2bc98b26a1125c4b728d0b3bb7b8b1be09ca0.lean/declarations/finitelyatomistic--bf339621a1f8e84eb345d597.md) | 190 | `result-track:bf339621a1f8e84eb345d5979eb19ed4620c2e183b38cddbc75d1191250a656a` |
| 14 | `lemma` | [booleanGenerators](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcbfeefe331ed7a9ea2266e15ccd2bc98b26a1125c4b728d0b3bb7b8b1be09ca0.lean/declarations/booleangenerators--7dcff77048b77e88afca5515.md) | 260 | `result-track:7dcff77048b77e88afca5515a1be6e0d673555afd9b0a0bcafe9fe7ac4a672a6` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcbfeefe331ed7a9ea2266e15ccd2bc98b26a1125c4b728d0b3bb7b8b1be09ca0.lean/declarations/instance--64371641dc87140d1c70b6f0.md) | 264 | `declaration-track:64371641dc87140d1c70b6f08bd797c440b8ac85ac27fec79f4ec6f0985be1a3` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcbfeefe331ed7a9ea2266e15ccd2bc98b26a1125c4b728d0b3bb7b8b1be09ca0.lean/declarations/instance--506c5b86b923b822fe454222.md) | 268 | `declaration-track:506c5b86b923b822fe45422275564e52c1483cc3a0f857ed15e9072cb56dfdf7` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcbfeefe331ed7a9ea2266e15ccd2bc98b26a1125c4b728d0b3bb7b8b1be09ca0.lean/declarations/instance--ed2bfacee641dd4c3df3a71d.md) | 272 | `declaration-track:ed2bfacee641dd4c3df3a71d2c98bea144438a01ba52224e85e84b75a2cf790b` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcbfeefe331ed7a9ea2266e15ccd2bc98b26a1125c4b728d0b3bb7b8b1be09ca0.lean/declarations/instance--6eb83c276d365983e423d699.md) | 289 | `declaration-track:6eb83c276d365983e423d699ba96fbe16738ecccc14bc388b6752456b4e89b7b` |
| 19 | `theorem` | [subsingleton_of_hasTrivialRadical_lie_abelian](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcbfeefe331ed7a9ea2266e15ccd2bc98b26a1125c4b728d0b3bb7b8b1be09ca0.lean/declarations/subsingleton-of-hastrivialradical-lie-abelian--2b9fb7aff67423466f179eec.md) | 300 | `result-track:2b9fb7aff67423466f179eec5da8dfacbc0eeb199430f5a5210844ce0d560995` |
| 20 | `theorem` | [abelian_radical_of_hasTrivialRadical](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcbfeefe331ed7a9ea2266e15ccd2bc98b26a1125c4b728d0b3bb7b8b1be09ca0.lean/declarations/abelian-radical-of-hastrivialradical--34086b145928a0ce67d06cb6.md) | 305 | `result-track:34086b145928a0ce67d06cb6f95d9850e4210c3c97841a2dc373d7089e457ee4` |
| 21 | `theorem` | [abelian_radical_iff_solvable_is_abelian](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcbfeefe331ed7a9ea2266e15ccd2bc98b26a1125c4b728d0b3bb7b8b1be09ca0.lean/declarations/abelian-radical-iff-solvable-is-abelian--8b3e46316f7f4a03ecef0dfd.md) | 309 | `result-track:8b3e46316f7f4a03ecef0dfdceed6ed3f7fd0bc2b7716da810d9c0e3b1ec87ee` |
| 22 | `theorem` | [ad_ker_eq_bot_of_hasTrivialRadical](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcbfeefe331ed7a9ea2266e15ccd2bc98b26a1125c4b728d0b3bb7b8b1be09ca0.lean/declarations/ad-ker-eq-bot-of-hastrivialradical--1785b8806294a6091d602f78.md) | 317 | `result-track:1785b8806294a6091d602f78304e8c4f6b0f731b0eeb6a800eceb73c442e727e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
