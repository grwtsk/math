# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.AddContent.Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0b19556dfa96013b0e4a458b01e54beefe0b8d3",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/AddContent/Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0b19556dfa96013b0e4a458b01e54beefe0b8d3`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/AddContent/Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/AddContent/Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.SetSemiring` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.OuterMeasure.Induced` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AddContent](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381.lean/declarations/addcontent--3ceef5758d7c2bdbc36af4be.md) | 72 | `declaration-track:3ceef5758d7c2bdbc36af4bed5b0c97542e4c4d625f8e0ba68362c56f17413f2` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381.lean/declarations/instance--82c3bf2571b15f4a12c2e24b.md) | 80 | `declaration-track:82c3bf2571b15f4a12c2e24bc9b3757f7e814b3f98769e975f03a7043324ccb6` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381.lean/declarations/instance--a39c976500b16e4be838a652.md) | 85 | `declaration-track:a39c976500b16e4be838a652a013d9f1225579b67e3f591af9c836d79429faf2` |
| 4 | `lemma` | [AddContent.ext](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381.lean/declarations/addcontent-ext--54a552f9e0f3b9a9912363f3.md) | 94 | `result-track:54a552f9e0f3b9a9912363f38e2d2e81d6eb242d308533f8412d325fd5a870fc` |
| 5 | `lemma` | [addContent_empty](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381.lean/declarations/addcontent-empty--a54ffd74b3f61c040b44d104.md) | 97 | `result-track:a54ffd74b3f61c040b44d104082f1357c9699ba621bbf2e872d3dbaec1fcc0a9` |
| 6 | `lemma` | [addContent_sUnion](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381.lean/declarations/addcontent-sunion--404e32d5e4adfb48e7ea3bde.md) | 99 | `result-track:404e32d5e4adfb48e7ea3bdef4e3844477b7c2ea88b45e72d682eb01131cb265` |
| 7 | `lemma` | [addContent_union'](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381.lean/declarations/addcontent-union--450a07b31ecc0de395038b06.md) | 104 | `result-track:450a07b31ecc0de395038b066cfbd20465cb561428e217dc8abd9b20997abe0e` |
| 8 | `def` | [AddContent.IsSigmaSubadditive](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381.lean/declarations/addcontent-issigmasubadditive--09b774649a0034ed8b68dd21.md) | 127 | `declaration-track:09b774649a0034ed8b68dd21dddf14eeba69b3303f18d6940da5b6b3f018e75d` |
| 9 | `lemma` | [addContent_eq_add_disjointOfDiffUnion_of_subset](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381.lean/declarations/addcontent-eq-add-disjointofdiffunion-of-subset--56b96f01f78bf8a8863afc31.md) | 132 | `result-track:56b96f01f78bf8a8863afc3115a70092ee29e6d28dd4a5d6dee2e16bfda289fb` |
| 10 | `lemma` | [sum_addContent_le_of_subset](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381.lean/declarations/sum-addcontent-le-of-subset--691f023e7537679d68cb4819.md) | 149 | `result-track:691f023e7537679d68cb4819b2ff6ef7059b24929d0409ab549071720bb14d4e` |
| 11 | `lemma` | [addContent_mono](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381.lean/declarations/addcontent-mono--371b96add08f8f952e10f448.md) | 158 | `result-track:371b96add08f8f952e10f448b7958dffbcd9bb05bf05f46d30d41fdce90ade65` |
| 12 | `theorem` | [eq_add_disjointOfDiff_of_subset](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381.lean/declarations/eq-add-disjointofdiff-of-subset--0622c374b049efdc7bc64882.md) | 169 | `result-track:0622c374b049efdc7bc64882c1d116682f50bf0312ecc55817542e6b50e75334` |
| 13 | `lemma` | [addContent_sUnion_le_sum](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381.lean/declarations/addcontent-sunion-le-sum--b6000fb633b72041f6a99332.md) | 185 | `result-track:b6000fb633b72041f6a99332c1fa33b43fd0f50d7de50b07c35f49f29b5ab4e3` |
| 14 | `lemma` | [addContent_le_sum_of_subset_sUnion](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381.lean/declarations/addcontent-le-sum-of-subset-sunion--e409028fffa5a05cbcf08701.md) | 210 | `result-track:e409028fffa5a05cbcf08701482a47ddd419982c0f7ef2b8c6f97788b633df9a` |
| 15 | `theorem` | [addContent_iUnion_eq_tsum_of_disjoint_of_addContent_iUnion_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381.lean/declarations/addcontent-iunion-eq-tsum-of-disjoint-of-addcontent-iunion-le--1c4a9f6e91ea9221151d53dd.md) | 231 | `result-track:1c4a9f6e91ea9221151d53ddde0ba39f499dd75820e58d1ce4c1f9248eb9eb18` |
| 16 | `theorem` | [addContent_iUnion_eq_tsum_of_disjoint_of_IsSigmaSubadditive](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381.lean/declarations/addcontent-iunion-eq-tsum-of-disjoint-of-issigmasubadditive--354b31c3d7238792eb64f6f2.md) | 259 | `result-track:354b31c3d7238792eb64f6f2ab7651cea0511a2d2f01a3177a230ef51df2185f` |
| 17 | `def` | [AddContent.extend](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381.lean/declarations/addcontent-extend--3300e177f4e8d27b5aac10f7.md) | 274 | `declaration-track:3300e177f4e8d27b5aac10f7b84b7181624d33ef5133f5524ef4d5a1bca059dd` |
| 18 | `theorem` | [AddContent.extend_eq_extend](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381.lean/declarations/addcontent-extend-eq-extend--0f7173636848a7a0bfb338f4.md) | 285 | `result-track:0f7173636848a7a0bfb338f41ac3d380cd52152200a610092fab7fd5e0f46618` |
| 19 | `theorem` | [AddContent.extend_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381.lean/declarations/addcontent-extend-eq--755df6ab45fa1b19c01f3c97.md) | 288 | `result-track:755df6ab45fa1b19c01f3c9722f69261b71665e08244ff6a65b619e848528aef` |
| 20 | `theorem` | [AddContent.extend_eq_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381.lean/declarations/addcontent-extend-eq-top--fbcadbc304759b4b3073895e.md) | 292 | `result-track:fbcadbc304759b4b3073895edceb5b2558cf8426b18d54eecf9401932759eaf1` |
| 21 | `lemma` | [addContent_union](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381.lean/declarations/addcontent-union--b150b600a2b69cd5f8d3ac25.md) | 300 | `result-track:b150b600a2b69cd5f8d3ac25fb2a116fc5f4fb9ab2230e2fb371f57ac32132ad` |
| 22 | `lemma` | [addContent_union_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381.lean/declarations/addcontent-union-le--0183cdfcdcf5fe6e7f4effbd.md) | 305 | `result-track:0183cdfcdcf5fe6e7f4effbd2383cf37047ebe1a0e07be4a59261e8c5fbd1cd1` |
| 23 | `lemma` | [addContent_biUnion_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381.lean/declarations/addcontent-biunion-le--c173e2d4fa10062dd526e288.md) | 312 | `result-track:c173e2d4fa10062dd526e288b666dcb67805fccba31d046b695fb2a3c68ee088` |
| 24 | `lemma` | [le_addContent_diff](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381.lean/declarations/le-addcontent-diff--b721a2afebb1aa13bb7c5bde.md) | 325 | `result-track:b721a2afebb1aa13bb7c5bde120dc492923977632c69a6ee1f85fcaba5051247` |
| 25 | `lemma` | [addContent_diff_of_ne_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381.lean/declarations/addcontent-diff-of-ne-top--c982ecdef1efd67cf4f0b1eb.md) | 333 | `result-track:c982ecdef1efd67cf4f0b1eb85ee463286c29caf4c04eb836713f4cfe9a9f676` |
| 26 | `lemma` | [addContent_accumulate](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381.lean/declarations/addcontent-accumulate--7d6ec6b85ce66afabad85822.md) | 342 | `result-track:7d6ec6b85ce66afabad858228818cd08ae663fc58e958cc491a80bf382a6d771` |
| 27 | `def` | [IsSetRing.addContent_of_union](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381.lean/declarations/issetring-addcontent-of-union--3077fd46156e65a2cb4d82de.md) | 354 | `declaration-track:3077fd46156e65a2cb4d82de612deaefad7545fe66ef6ced323077f056089e9f` |
| 28 | `theorem` | [addContent_iUnion_eq_sum_of_tendsto_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381.lean/declarations/addcontent-iunion-eq-sum-of-tendsto-zero--6e03d3b89f881df3a286a57b.md) | 380 | `result-track:6e03d3b89f881df3a286a57b20d426d8fac407ea1a0539e5aee1a3535959babf` |
| 29 | `theorem` | [tendsto_atTop_addContent_iUnion_of_addContent_iUnion_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381.lean/declarations/tendsto-attop-addcontent-iunion-of-addcontent-iunion-eq-tsum--7ed98617a84570bb41130899.md) | 411 | `result-track:7ed98617a84570bb41130899704c8bb8f20706e065cd0610a666b6477c924e62` |
| 30 | `theorem` | [isSigmaSubadditive_of_addContent_iUnion_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/AddContent/Variantb61170268966fc7ee8cabc1d645a16a233b299df38ee1ef17f25cc8be643f381.lean/declarations/issigmasubadditive-of-addcontent-iunion-eq-tsum--c51565533aa57bdc1d68471b.md) | 427 | `result-track:c51565533aa57bdc1d68471b36afb455f795a8d62fd3cc1a56e851ccd5920872` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
