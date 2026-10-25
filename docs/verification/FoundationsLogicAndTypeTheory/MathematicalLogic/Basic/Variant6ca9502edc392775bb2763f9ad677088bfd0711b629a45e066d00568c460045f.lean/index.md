# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0fe99b28d103aec8a5365cce38f6441adbcc71f8",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0fe99b28d103aec8a5365cce38f6441adbcc71f8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean.json)

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
| 1 | `structure` | [BundledIterM](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean/declarations/bundlediterm--2a1ee6db51e5914563c2ff1a.md) | 28 | `declaration-track:2a1ee6db51e5914563c2ff1ab88ff866172572a1b85369c67168ad83eecf3f22` |
| 2 | `abbrev` | [BundledIterM.ofIterM](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean/declarations/bundlediterm-ofiterm--8b6cd2753104c63e1cd41f00.md) | 33 | `declaration-track:8b6cd2753104c63e1cd41f00148cc7bcdbddaacf75ab70905f2acbff368fc157` |
| 3 | `theorem` | [BundledIterM.iterator_ofIterM](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean/declarations/bundlediterm-iterator-ofiterm--a510010c0360c164b6684fe2.md) | 38 | `result-track:a510010c0360c164b6684fe2aa1d92f00dd16169bab3950a75d0c8b00af070ab` |
| 4 | `theorem` | [BundledIterM.α_ofIterM](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean/declarations/bundlediterm-ofiterm--a2fc881eb9b62b69982c8fc0.md) | 43 | `result-track:a2fc881eb9b62b69982c8fc01b9973bd162021802a11f12a5f2f96f30078e951` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean/declarations/instance--d307d7cf504e785f6e348404.md) | 47 | `declaration-track:d307d7cf504e785f6e34840400a6648286cfacc13c8d553e37b3417cf6053594` |
| 6 | `def` | [quotOfQuot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean/declarations/quotofquot--8eee1cad1398465ad0e91819.md) | 50 | `declaration-track:8eee1cad1398465ad0e91819ef401e1a5a74799b786c9f41834c399025841649` |
| 7 | `theorem` | [quotMk_eq_quotOfQuot_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean/declarations/quotmk-eq-quotofquot-comp--38c5fe1d058d515379612b29.md) | 53 | `result-track:38c5fe1d058d515379612b29cd3474b35adde3525962f6c0d12843f50c4cf68f` |
| 8 | `theorem` | [quotMk_quot_eq_quot_eq_quotOfQuot_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean/declarations/quotmk-quot-eq-quot-eq-quotofquot-comp--c480c816e128a01a5a815d0d.md) | 57 | `result-track:c480c816e128a01a5a815d0d1715c64038b535713eff810ca175001bfebec7b0` |
| 9 | `def` | [IterM.stepAsHetT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean/declarations/iterm-stepashett--3ead8eba4915cd027f002a1e.md) | 68 | `declaration-track:3ead8eba4915cd027f002a1e80211cd8b356187797ee7d43bf9f9bc13c882cc9` |
| 10 | `def` | [BundledIterM.step](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean/declarations/bundlediterm-step--06f186875d4bec0adb4d8968.md) | 75 | `declaration-track:06f186875d4bec0adb4d8968db14c0209b13bcc4ca982ff5a111d87db3503872` |
| 11 | `def` | [BundledIterM.Equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean/declarations/bundlediterm-equiv--e91ec620c96f741babbd8e2e.md) | 89 | `declaration-track:e91ec620c96f741babbd8e2e104b365a477dbb50da12d83f8e5b3f91c99b43d5` |
| 12 | `theorem` | [Equivalence.prun_liftInner_step](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean/declarations/equivalence-prun-liftinner-step--a55647400ec6200a65b44525.md) | 101 | `result-track:a55647400ec6200a65b44525b181218f8a44c29dfd5e3a2a12adfaa5166e5966` |
| 13 | `theorem` | [Equivalence.property_step](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean/declarations/equivalence-property-step--ac2e42a4bf879aa01e0948e2.md) | 109 | `result-track:ac2e42a4bf879aa01e0948e21eed14ba7a7c0de9ade842bf33ca70a62a9b544a` |
| 14 | `theorem` | [Equivalence.prun_step](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean/declarations/equivalence-prun-step--9d5cf2c846ddf9bb77c71c5c.md) | 114 | `result-track:9d5cf2c846ddf9bb77c71c5c86260048002011f53d0dea5ef32b6ae4238b924f` |
| 15 | `def` | [BundledIterM.stepOnQuotient](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean/declarations/bundlediterm-steponquotient--4ed0da4b7c6bbf2e402b48b0.md) | 122 | `declaration-track:4ed0da4b7c6bbf2e402b48b0e941c4b06d5ddf140c647a8d9d9796fa011ce941` |
| 16 | `theorem` | [BundledIterM.stepOnQuotient_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean/declarations/bundlediterm-steponquotient-mk--08638f5b52a145afa6b2b16a.md) | 131 | `result-track:08638f5b52a145afa6b2b16a90dda1c18ff64e3ca3714f1a35ce401905dbdd96` |
| 17 | `theorem` | [BundledIterM.Equiv.exact](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean/declarations/bundlediterm-equiv-exact--7b83ccc77cc6d0d8001a1315.md) | 136 | `result-track:7b83ccc77cc6d0d8001a1315aec73eef9d71a9d067777f4e85f5ca988d2b4718` |
| 18 | `theorem` | [BundledIterM.Equiv.quotMk_eq_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean/declarations/bundlediterm-equiv-quotmk-eq-iff--70a786f198fdf3ea50abcf28.md) | 150 | `result-track:70a786f198fdf3ea50abcf284662b1c2ec6fcb203f8870c61efa15ae5eeddd0a` |
| 19 | `theorem` | [BundledIterM.Equiv.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean/declarations/bundlediterm-equiv-refl--25750c922c254774067ceb82.md) | 158 | `result-track:25750c922c254774067ceb823cb441928997d20894fdd4a80799f2b3223d4ccf` |
| 20 | `theorem` | [BundledIterM.Equiv.symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean/declarations/bundlediterm-equiv-symm--560fed9add87ced21cd49942.md) | 162 | `result-track:560fed9add87ced21cd499429d173185b560b992fe06356e6cccb4df28ae489e` |
| 21 | `theorem` | [BundledIterM.Equiv.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean/declarations/bundlediterm-equiv-trans--da1ccf29c06b18dd205c89df.md) | 166 | `result-track:da1ccf29c06b18dd205c89df5d80d9a7b1834233aee9508f650f792f68b4f3fb` |
| 22 | `def` | [IterM.Equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean/declarations/iterm-equiv--b8f94fde27af56e4d195a5bc.md) | 182 | `declaration-track:b8f94fde27af56e4d195a5bc7834440e046f076c0f52fc915859a2f3f0cfe16b` |
| 23 | `def` | [Iter.Equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean/declarations/iter-equiv--ec7e6c3e9d89c882f13d9e7b.md) | 198 | `declaration-track:ec7e6c3e9d89c882f13d9e7bfe8afe9b051ed17bba8736a39c33589c0e476caa` |
| 24 | `theorem` | [Iter.Equiv.toIterM](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean/declarations/iter-equiv-toiterm--7ae1ffd97d848b19f6bc7894.md) | 202 | `result-track:7ae1ffd97d848b19f6bc789471298bce7cb28629f8098c14ebcbcf47adc465b3` |
| 25 | `theorem` | [IterM.Equiv.toIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean/declarations/iterm-equiv-toiter--2a8eb892a0db0df4863de0a6.md) | 207 | `result-track:2a8eb892a0db0df4863de0a635c682adf38e669d044355ce7c9f6f6193d4f702` |
| 26 | `theorem` | [IterM.Equiv.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean/declarations/iterm-equiv-refl--dea47eaabdcd82c76c32a0d5.md) | 212 | `result-track:dea47eaabdcd82c76c32a0d55aeb7d57ad7b17662132c1d8d85d6f180f87d87b` |
| 27 | `theorem` | [IterM.Equiv.symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean/declarations/iterm-equiv-symm--c216057d654ac2e744db34cd.md) | 216 | `result-track:c216057d654ac2e744db34cd46fc2afc1d471b09682ddcd03b99f0808f3cba17` |
| 28 | `theorem` | [IterM.Equiv.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean/declarations/iterm-equiv-trans--4c80fa5b84582712f3bcdcf4.md) | 222 | `result-track:4c80fa5b84582712f3bcdcf4b06da185b0b4586e66d4565924897df2368f5098` |
| 29 | `theorem` | [Iter.Equiv.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean/declarations/iter-equiv-refl--9fd9b16ee97821e1f97e3e67.md) | 228 | `result-track:9fd9b16ee97821e1f97e3e67ce4b32b28a814d9083ad918197ed6cb38b536dde` |
| 30 | `theorem` | [Iter.Equiv.symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean/declarations/iter-equiv-symm--ed5417002143b73ca93059ac.md) | 232 | `result-track:ed5417002143b73ca93059ace3b7411ccc8c00347f700de37f3fa36ab47dfb2b` |
| 31 | `theorem` | [Iter.Equiv.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean/declarations/iter-equiv-trans--50e6ae422c41cbcfba7e0919.md) | 238 | `result-track:50e6ae422c41cbcfba7e0919fda44e99009c56dba599472ab1daebd0e6929020` |
| 32 | `theorem` | [IterM.Equiv.of_morphism](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean/declarations/iterm-equiv-of-morphism--f58fb6e52c5a4390138dcd1d.md) | 244 | `result-track:f58fb6e52c5a4390138dcd1ddc74130fdbe9c063ebf1d36cb667146d80b4f9af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
