# Verification target: GRWTSK.Analysis.MeasureTheory.CompleteLattice.Variantfe1fb99d269b91d919cba30594e81975d121092a423711e1c7eecc383e92cca9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae4f400a1b4635498efb3d8f9f08b3933676d03e",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/CompleteLattice/Variantfe1fb99d269b91d919cba30594e81975d121092a423711e1c7eecc383e92cca9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/CompleteLattice/Variantfe1fb99d269b91d919cba30594e81975d121092a423711e1c7eecc383e92cca9.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/CompleteLattice/Variantfe1fb99d269b91d919cba30594e81975d121092a423711e1c7eecc383e92cca9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae4f400a1b4635498efb3d8f9f08b3933676d03e`.

Source path: `GRWTSK/Analysis/MeasureTheory/CompleteLattice/Variantfe1fb99d269b91d919cba30594e81975d121092a423711e1c7eecc383e92cca9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/CompleteLattice/Variantfe1fb99d269b91d919cba30594e81975d121092a423711e1c7eecc383e92cca9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/CompleteLattice/Variantfe1fb99d269b91d919cba30594e81975d121092a423711e1c7eecc383e92cca9.lean/declarations/instance--0b3f52016900c84114b4dbaa.md) | 41 | `declaration-track:0b3f52016900c84114b4dbaa5604fb3a07d774c523265e38c00c0ae6c66fba67` |
| 2 | `theorem` | [toOuterMeasure_le](../../../../../mathematics/Analysis/MeasureTheory/CompleteLattice/Variantfe1fb99d269b91d919cba30594e81975d121092a423711e1c7eecc383e92cca9.lean/declarations/tooutermeasure-le--2c5612ee0c650bcc99b381a1.md) | 47 | `result-track:2c5612ee0c650bcc99b381a12d0390f44d445a9a2fa54795fc4cf1215c84d1c9` |
| 3 | `theorem` | [le_iff](../../../../../mathematics/Analysis/MeasureTheory/CompleteLattice/Variantfe1fb99d269b91d919cba30594e81975d121092a423711e1c7eecc383e92cca9.lean/declarations/le-iff--76a882f1356d056f49b35ce4.md) | 49 | `result-track:76a882f1356d056f49b35ce44bfef2fe099ccec48c3d83fd061db3bf1220ef1e` |
| 4 | `theorem` | [le_intro](../../../../../mathematics/Analysis/MeasureTheory/CompleteLattice/Variantfe1fb99d269b91d919cba30594e81975d121092a423711e1c7eecc383e92cca9.lean/declarations/le-intro--a8dcf5d595eb8ea62be7345c.md) | 51 | `result-track:a8dcf5d595eb8ea62be7345c212a57f9d7ac0f5a925a2349320430187ca785b2` |
| 5 | `theorem` | [le_iff'](../../../../../mathematics/Analysis/MeasureTheory/CompleteLattice/Variantfe1fb99d269b91d919cba30594e81975d121092a423711e1c7eecc383e92cca9.lean/declarations/le-iff--adf06f4b46aa4bd76f14f68a.md) | 54 | `result-track:adf06f4b46aa4bd76f14f68a23c95dcf6045012432711c14319cdcb1d8861788` |
| 6 | `theorem` | [measure_mono_left](../../../../../mathematics/Analysis/MeasureTheory/CompleteLattice/Variantfe1fb99d269b91d919cba30594e81975d121092a423711e1c7eecc383e92cca9.lean/declarations/measure-mono-left--18f22186eec84363a39fcdd6.md) | 56 | `result-track:18f22186eec84363a39fcdd686ae5832a5953399eb15aab850f84738da8e1f63` |
| 7 | `theorem` | [measure_mono_both](../../../../../mathematics/Analysis/MeasureTheory/CompleteLattice/Variantfe1fb99d269b91d919cba30594e81975d121092a423711e1c7eecc383e92cca9.lean/declarations/measure-mono-both--f26622216bdf3b15e8afdbb3.md) | 59 | `result-track:f26622216bdf3b15e8afdbb37d812bc0c0ceb0e826ce783638a8254c17f08e25` |
| 8 | `theorem` | [lt_iff](../../../../../mathematics/Analysis/MeasureTheory/CompleteLattice/Variantfe1fb99d269b91d919cba30594e81975d121092a423711e1c7eecc383e92cca9.lean/declarations/lt-iff--fd15a328f64b0d9f7bb3b9bd.md) | 62 | `result-track:fd15a328f64b0d9f7bb3b9bda05855335f7246c17bc7b3173e010fd29ca2dddc` |
| 9 | `theorem` | [lt_iff'](../../../../../mathematics/Analysis/MeasureTheory/CompleteLattice/Variantfe1fb99d269b91d919cba30594e81975d121092a423711e1c7eecc383e92cca9.lean/declarations/lt-iff--853456d243931d2d9e76b979.md) | 66 | `result-track:853456d243931d2d9e76b979137099573410a13603a0936ffffe8809c407185e` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/CompleteLattice/Variantfe1fb99d269b91d919cba30594e81975d121092a423711e1c7eecc383e92cca9.lean/declarations/instance--47994c29a7df3ec5b9b4ebc9.md) | 69 | `declaration-track:47994c29a7df3ec5b9b4ebc90e50bb6cd3aa4c67d94c441f103950e24fc892a1` |
| 11 | `theorem` | [le_add_left](../../../../../mathematics/Analysis/MeasureTheory/CompleteLattice/Variantfe1fb99d269b91d919cba30594e81975d121092a423711e1c7eecc383e92cca9.lean/declarations/le-add-left--32d76d6d9a2187beace7549e.md) | 72 | `result-track:32d76d6d9a2187beace7549e092abb71acb90b3cf933ae2cf898548c0ae4df9e` |
| 12 | `theorem` | [le_add_right](../../../../../mathematics/Analysis/MeasureTheory/CompleteLattice/Variantfe1fb99d269b91d919cba30594e81975d121092a423711e1c7eecc383e92cca9.lean/declarations/le-add-right--eed7787fb39a9e25033d6b4d.md) | 74 | `result-track:eed7787fb39a9e25033d6b4d68b2f56699b1086ba7295998d0a0d60bbc12dca7` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/CompleteLattice/Variantfe1fb99d269b91d919cba30594e81975d121092a423711e1c7eecc383e92cca9.lean/declarations/instance--c68ffca16f9ae9085b50b549.md) | 76 | `declaration-track:c68ffca16f9ae9085b50b54968e094a8eca0e11ae2a054e2fcd09d0866948969` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/CompleteLattice/Variantfe1fb99d269b91d919cba30594e81975d121092a423711e1c7eecc383e92cca9.lean/declarations/instance--a0eddd96b2f9b3e103cbedc7.md) | 82 | `declaration-track:a0eddd96b2f9b3e103cbedc759df4119046f4fc8daee6267e8d83a5219a80edf` |
| 15 | `theorem` | [sInf_caratheodory](../../../../../mathematics/Analysis/MeasureTheory/CompleteLattice/Variantfe1fb99d269b91d919cba30594e81975d121092a423711e1c7eecc383e92cca9.lean/declarations/sinf-caratheodory--904c0a95672c225a2a7d34c5.md) | 93 | `result-track:904c0a95672c225a2a7d34c50fc97ea18231376304af6f3ff4e4c3b84c45aa8e` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/CompleteLattice/Variantfe1fb99d269b91d919cba30594e81975d121092a423711e1c7eecc383e92cca9.lean/declarations/instance--5d4f72590917908ff290a9f5.md) | 107 | `declaration-track:5d4f72590917908ff290a9f5ed1b99854f49ef2112e32c2beb84a9fff3b99ff4` |
| 17 | `theorem` | [sInf_apply](../../../../../mathematics/Analysis/MeasureTheory/CompleteLattice/Variantfe1fb99d269b91d919cba30594e81975d121092a423711e1c7eecc383e92cca9.lean/declarations/sinf-apply--16d89ea82eab937760a0da46.md) | 110 | `result-track:16d89ea82eab937760a0da4634971c4aae6c0c1b45ed6676f31d4de2108dbb25` |
| 18 | `theorem` | [measure_sInf_le](../../../../../mathematics/Analysis/MeasureTheory/CompleteLattice/Variantfe1fb99d269b91d919cba30594e81975d121092a423711e1c7eecc383e92cca9.lean/declarations/measure-sinf-le--17e26adadd35cd04e31e00f9.md) | 113 | `result-track:17e26adadd35cd04e31e00f957d9987c3e3a36481c229ba8d4344252cd773d4a` |
| 19 | `theorem` | [measure_le_sInf](../../../../../mathematics/Analysis/MeasureTheory/CompleteLattice/Variantfe1fb99d269b91d919cba30594e81975d121092a423711e1c7eecc383e92cca9.lean/declarations/measure-le-sinf--3ee114c92453711be8d83f6a.md) | 117 | `result-track:3ee114c92453711be8d83f6ad11fd1a4f84879f69bbbaabc9b5e18703d837198` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/CompleteLattice/Variantfe1fb99d269b91d919cba30594e81975d121092a423711e1c7eecc383e92cca9.lean/declarations/instance--aa7a0f45b2c85051b8ba6529.md) | 122 | `declaration-track:aa7a0f45b2c85051b8ba6529f479f5396784359c2b1dbc9c6316cc2514bef729` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/CompleteLattice/Variantfe1fb99d269b91d919cba30594e81975d121092a423711e1c7eecc383e92cca9.lean/declarations/instance--d338b8fc3f0964eb0819f3a0.md) | 125 | `declaration-track:d338b8fc3f0964eb0819f3a0c7ca1d589902dce81026bf4befb9f5301020c875` |
| 22 | `lemma` | [inf_apply](../../../../../mathematics/Analysis/MeasureTheory/CompleteLattice/Variantfe1fb99d269b91d919cba30594e81975d121092a423711e1c7eecc383e92cca9.lean/declarations/inf-apply--f70e13737d14a6f9aac50de7.md) | 144 | `result-track:f70e13737d14a6f9aac50de702b2a40661645e25192d552582bcd09cab433616` |
| 23 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.ToOuterMeasureLe.Variantdb16c1d4da1a847e39b56aa74f86af27dad28419c94a34e9905e1d4ba8459251.MeasureTheory.OuterMeasure.toMeasure_top](../../../../../mathematics/Analysis/MeasureTheory/CompleteLattice/Variantfe1fb99d269b91d919cba30594e81975d121092a423711e1c7eecc383e92cca9.lean/declarations/root-grwtsk-analysis-measuretheory-tooutermeasurele-variantdb16c1d4da1a8--d81d226961096f51645b339e.md) | 209 | `result-track:d81d226961096f51645b339e9785bfa345d3641ca2303a40830f0cf9c480542f` |
| 24 | `theorem` | [toOuterMeasure_top](../../../../../mathematics/Analysis/MeasureTheory/CompleteLattice/Variantfe1fb99d269b91d919cba30594e81975d121092a423711e1c7eecc383e92cca9.lean/declarations/tooutermeasure-top--d92722cb1a463f957abed734.md) | 215 | `result-track:d92722cb1a463f957abed734ba5ff24861be317425b21c301a5c12ba3c8381b5` |
| 25 | `theorem` | [top_add](../../../../../mathematics/Analysis/MeasureTheory/CompleteLattice/Variantfe1fb99d269b91d919cba30594e81975d121092a423711e1c7eecc383e92cca9.lean/declarations/top-add--406c0ee492c01c3052f9c365.md) | 220 | `result-track:406c0ee492c01c3052f9c365188df95e373bb67251aa957db6419b2644d75bec` |
| 26 | `theorem` | [add_top](../../../../../mathematics/Analysis/MeasureTheory/CompleteLattice/Variantfe1fb99d269b91d919cba30594e81975d121092a423711e1c7eecc383e92cca9.lean/declarations/add-top--90efa0d9455e8d97abd7ca9c.md) | 224 | `result-track:90efa0d9455e8d97abd7ca9c416da791e857c872e50595e65cc627e88fdd6e05` |
| 27 | `theorem` | [zero_le](../../../../../mathematics/Analysis/MeasureTheory/CompleteLattice/Variantfe1fb99d269b91d919cba30594e81975d121092a423711e1c7eecc383e92cca9.lean/declarations/zero-le--3f7ff4f53544e6d4c9069640.md) | 227 | `result-track:3f7ff4f53544e6d4c906964014c3bd11ac6f2693d0ae9629b5941e82e2f24095` |
| 28 | `theorem` | [nonpos_iff_eq_zero'](../../../../../mathematics/Analysis/MeasureTheory/CompleteLattice/Variantfe1fb99d269b91d919cba30594e81975d121092a423711e1c7eecc383e92cca9.lean/declarations/nonpos-iff-eq-zero--ee8eb804d65c536a1aa7e91a.md) | 230 | `result-track:ee8eb804d65c536a1aa7e91a642af21e7da5b1ef239782522beb1560101039a1` |
| 29 | `theorem` | [measure_univ_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/CompleteLattice/Variantfe1fb99d269b91d919cba30594e81975d121092a423711e1c7eecc383e92cca9.lean/declarations/measure-univ-eq-zero--29ce9278ea02c9978dfeb68b.md) | 234 | `result-track:29ce9278ea02c9978dfeb68bea1b5fd56447fcdd62c0bfc181ba14358145535c` |
| 30 | `theorem` | [measure_univ_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/CompleteLattice/Variantfe1fb99d269b91d919cba30594e81975d121092a423711e1c7eecc383e92cca9.lean/declarations/measure-univ-ne-zero--95a3ec29a09f43ad3c9629bc.md) | 238 | `result-track:95a3ec29a09f43ad3c9629bc8b21d3df51a7e0b2fd818bb274f7fe9af0ab065c` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/CompleteLattice/Variantfe1fb99d269b91d919cba30594e81975d121092a423711e1c7eecc383e92cca9.lean/declarations/instance--529c6e6be82ed5714c6b7b56.md) | 241 | `declaration-track:529c6e6be82ed5714c6b7b56a8158a5dafa0b3df0dae08b556deaf7211e0e8c9` |
| 32 | `theorem` | [measure_univ_pos](../../../../../mathematics/Analysis/MeasureTheory/CompleteLattice/Variantfe1fb99d269b91d919cba30594e81975d121092a423711e1c7eecc383e92cca9.lean/declarations/measure-univ-pos--bb34b9a2c77d9be8cfb13170.md) | 244 | `result-track:bb34b9a2c77d9be8cfb131705a8a185ca622e72b1922b9d010bcb0c6713112a2` |
| 33 | `lemma` | [nonempty_of_neZero](../../../../../mathematics/Analysis/MeasureTheory/CompleteLattice/Variantfe1fb99d269b91d919cba30594e81975d121092a423711e1c7eecc383e92cca9.lean/declarations/nonempty-of-nezero--6c8b5c3f448fa45edcac37d3.md) | 247 | `result-track:6c8b5c3f448fa45edcac37d351350e66375493ee6ebf450ded4f9b825a57112c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
