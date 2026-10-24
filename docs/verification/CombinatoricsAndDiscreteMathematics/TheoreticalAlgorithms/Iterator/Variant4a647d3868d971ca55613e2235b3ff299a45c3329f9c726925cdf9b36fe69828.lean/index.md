# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Iterator.Variant4a647d3868d971ca55613e2235b3ff299a45c3329f9c726925cdf9b36fe69828

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e98904b4c2c70336d434309d532d89193b1a43ae",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant4a647d3868d971ca55613e2235b3ff299a45c3329f9c726925cdf9b36fe69828.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant4a647d3868d971ca55613e2235b3ff299a45c3329f9c726925cdf9b36fe69828.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant4a647d3868d971ca55613e2235b3ff299a45c3329f9c726925cdf9b36fe69828.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e98904b4c2c70336d434309d532d89193b1a43ae`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant4a647d3868d971ca55613e2235b3ff299a45c3329f9c726925cdf9b36fe69828.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant4a647d3868d971ca55613e2235b3ff299a45c3329f9c726925cdf9b36fe69828.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SubarrayIterator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant4a647d3868d971ca55613e2235b3ff299a45c3329f9c726925cdf9b36fe69828.lean/declarations/subarrayiterator--9ecec9512a4b383941e32098.md) | 34 | `declaration-track:9ecec9512a4b383941e32098d55322fb748ff1ad1dc0316b56b6f6ee0a042141` |
| 2 | `def` | [SubarrayIterator.step](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant4a647d3868d971ca55613e2235b3ff299a45c3329f9c726925cdf9b36fe69828.lean/declarations/subarrayiterator-step--2f529415cb7862be8c67b980.md) | 38 | `declaration-track:2f529415cb7862be8c67b9804d8136d8493a74f18820b0a052b0c8fb1c486281` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant4a647d3868d971ca55613e2235b3ff299a45c3329f9c726925cdf9b36fe69828.lean/declarations/instance--be81f4f33b8bf5c2b5d10e7c.md) | 47 | `declaration-track:be81f4f33b8bf5c2b5d10e7c507c858a7f5df4ac0bd3f69591b8ed1ac523506d` |
| 4 | `def` | [SubarrayIterator.instFinitelessRelation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant4a647d3868d971ca55613e2235b3ff299a45c3329f9c726925cdf9b36fe69828.lean/declarations/subarrayiterator-instfinitelessrelation--1c7fd23d4f2406799fe38101.md) | 51 | `declaration-track:1c7fd23d4f2406799fe381010d2db0291f4295560f9cdb3a9ee36d5b41a1d150` |
| 5 | `instance` | [SubarrayIterator.instFinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant4a647d3868d971ca55613e2235b3ff299a45c3329f9c726925cdf9b36fe69828.lean/declarations/subarrayiterator-instfinite--a12744620060844bad02d119.md) | 62 | `declaration-track:a12744620060844bad02d11995c69d880a12ad17243e45d11c83d12f915f2781` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant4a647d3868d971ca55613e2235b3ff299a45c3329f9c726925cdf9b36fe69828.lean/declarations/instance--f3a8845c6020daca5a8de1ee.md) | 65 | `declaration-track:f3a8845c6020daca5a8de1ee3898fd9260723bb1466897f396fe00907e01bc06` |
| 7 | `def` | [Subarray.instToIterator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant4a647d3868d971ca55613e2235b3ff299a45c3329f9c726925cdf9b36fe69828.lean/declarations/subarray-insttoiterator--b130c4488f1322cbff84af27.md) | 68 | `declaration-track:b130c4488f1322cbff84af27402487611bbcabe09838624ab0e08ac973e3b46f` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant4a647d3868d971ca55613e2235b3ff299a45c3329f9c726925cdf9b36fe69828.lean/declarations/instance--f5db805b614c402267a14f4a.md) | 74 | `declaration-track:f5db805b614c402267a14f4a39807c2986abdfa1eadc33dffcf467aea6654013` |
| 9 | `def` | [Subarray.forIn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant4a647d3868d971ca55613e2235b3ff299a45c3329f9c726925cdf9b36fe69828.lean/declarations/subarray-forin--5a672210cbe834d7b497f33b.md) | 90 | `declaration-track:5a672210cbe834d7b497f33bff73bf14557f1facf1c001920c46cef9fedab6b4` |
| 10 | `def` | [Subarray.copy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant4a647d3868d971ca55613e2235b3ff299a45c3329f9c726925cdf9b36fe69828.lean/declarations/subarray-copy--e31e8d521816c33b4f1813bc.md) | 97 | `declaration-track:e31e8d521816c33b4f1813bca46c76ca23b4a38212ebecac40e4379fd2dd81b6` |
| 11 | `instance` | [instCoeSubarrayArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant4a647d3868d971ca55613e2235b3ff299a45c3329f9c726925cdf9b36fe69828.lean/declarations/instcoesubarrayarray--b9589771d258cf78a3b91b43.md) | 100 | `declaration-track:b9589771d258cf78a3b91b43796c8c09a0332f8bd8678c50b04412595a4cdb51` |
| 12 | `theorem` | [Subarray.copy_eq_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant4a647d3868d971ca55613e2235b3ff299a45c3329f9c726925cdf9b36fe69828.lean/declarations/subarray-copy-eq-toarray--5d5728282e1a7149f5ba174a.md) | 104 | `result-track:5d5728282e1a7149f5ba174ab1239bcf24bb8933ee2cc8a03cfdd7f5ed126a29` |
| 13 | `theorem` | [Subarray.sliceToArray_eq_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant4a647d3868d971ca55613e2235b3ff299a45c3329f9c726925cdf9b36fe69828.lean/declarations/subarray-slicetoarray-eq-toarray--c69d0c67121e03d3585e6291.md) | 109 | `result-track:c69d0c67121e03d3585e6291654e274de55bc93747b717935db084ffe1b256e8` |
| 14 | `def` | [ofSubarray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant4a647d3868d971ca55613e2235b3ff299a45c3329f9c726925cdf9b36fe69828.lean/declarations/ofsubarray--e53b6c00834a46d4447a0af6.md) | 116 | `declaration-track:e53b6c00834a46d4447a0af6340f491319e357f404db9775a0702a630e5feeac` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant4a647d3868d971ca55613e2235b3ff299a45c3329f9c726925cdf9b36fe69828.lean/declarations/instance--2f30ba663c51196ee94548ed.md) | 119 | `declaration-track:2f30ba663c51196ee94548ed9b79c65ca1da793a653a986d2be9f4fd00ce52b0` |
| 16 | `def` | [Subarray.repr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant4a647d3868d971ca55613e2235b3ff299a45c3329f9c726925cdf9b36fe69828.lean/declarations/subarray-repr--102349ac954e016cf8f455e8.md) | 125 | `declaration-track:102349ac954e016cf8f455e82534d696481e0e1526d1f0e0833cb6cceac35c70` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant4a647d3868d971ca55613e2235b3ff299a45c3329f9c726925cdf9b36fe69828.lean/declarations/instance--6b84b4018f3b85d16f170cbe.md) | 128 | `declaration-track:6b84b4018f3b85d16f170cbe689f74072ccf4539b76d3262bf39b2d01a284b12` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant4a647d3868d971ca55613e2235b3ff299a45c3329f9c726925cdf9b36fe69828.lean/declarations/instance--6500118901adb54c04738197.md) | 131 | `declaration-track:6500118901adb54c04738197661e4f5fc1fdb4f04742ad7a779e9b2552cb9905` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
