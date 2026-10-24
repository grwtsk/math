# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.TrivSqZeroExt.Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a24cfce1adf1748be12b5121bb63ee29e7560d3d",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a24cfce1adf1748be12b5121bb63ee29e7560d3d`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.TrivSqZeroExt` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.LinearMapPiProd` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instTopologicalSpace](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155.lean/declarations/insttopologicalspace--17311a3d916801cecb6338b9.md) | 47 | `declaration-track:17311a3d916801cecb6338b9073f566c511d5fb021cafccb859e49459cc25f63` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155.lean/declarations/instance--5ab1777dc13328afd9956970.md) | 50 | `declaration-track:5ab1777dc13328afd995697099b9eb5c3556d2c909d595023cd803b549d7da7c` |
| 3 | `theorem` | [nhds_def](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155.lean/declarations/nhds-def--8ddfca60950c0b99f43e42f3.md) | 53 | `result-track:8ddfca60950c0b99f43e42f3945fe03ecee126111518fc1f58f34ee088bd2458` |
| 4 | `theorem` | [nhds_inl](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155.lean/declarations/nhds-inl--ed5503a3e8bca3be91b0634a.md) | 55 | `result-track:ed5503a3e8bca3be91b0634a26e701a07d43d8f17a4ba5718ee94fcd35a0d284` |
| 5 | `theorem` | [nhds_inr](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155.lean/declarations/nhds-inr--2bf435b7558d35552d918945.md) | 58 | `result-track:2bf435b7558d35552d918945d11ce5184ffa5e23d09296abaf43cc842833ab1c` |
| 6 | `theorem` | [continuous_fst](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155.lean/declarations/continuous-fst--5ecb748b3e5ccf4968b96c1f.md) | 61 | `result-track:5ecb748b3e5ccf4968b96c1f2e71317744399be3b0f5975a782d52598448e9c3` |
| 7 | `theorem` | [continuous_snd](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155.lean/declarations/continuous-snd--a9ea0b7c590abd374903014c.md) | 64 | `result-track:a9ea0b7c590abd374903014ce79803bee0cc8ce4c4bf6ee09a10fbb466ab6cc9` |
| 8 | `theorem` | [continuous_inl](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155.lean/declarations/continuous-inl--3685dbd553f224b2e39459d3.md) | 67 | `result-track:3685dbd553f224b2e39459d39e3be53be2e49babd8be5025ea8501aa9f918f96` |
| 9 | `theorem` | [continuous_inr](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155.lean/declarations/continuous-inr--0c6fb05f3fb06230d3b1351f.md) | 70 | `result-track:0c6fb05f3fb06230d3b1351f050e7d4a840bdd89210a2b2c606f449b2af29b83` |
| 10 | `theorem` | [IsEmbedding.inl](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155.lean/declarations/isembedding-inl--cfe8b1f65603aa48a1ad7c94.md) | 73 | `result-track:cfe8b1f65603aa48a1ad7c94ab4a8e5e7e5e0c7a68d811f53583cf56b8055dd3` |
| 11 | `theorem` | [IsEmbedding.inr](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155.lean/declarations/isembedding-inr--0270054d58862a4cd23a6c28.md) | 79 | `result-track:0270054d58862a4cd23a6c285a2350c7c1f3c5c4e7d904edac90a32b8313f380` |
| 12 | `def` | [fstCLM](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155.lean/declarations/fstclm--ad557f31b30dd64939146257.md) | 89 | `declaration-track:ad557f31b30dd64939146257708d1a5390d9652022314ba1b7d62eceb9dbeeaf` |
| 13 | `def` | [sndCLM](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155.lean/declarations/sndclm--a73ca59722bec987edd7348d.md) | 94 | `declaration-track:a73ca59722bec987edd7348d0fcb4d0af46ad458a0b713b9ef620df86b871dc6` |
| 14 | `def` | [inlCLM](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155.lean/declarations/inlclm--de7e178909a613667e2ca672.md) | 101 | `declaration-track:de7e178909a613667e2ca672f9cb3cc3911781d3b1b596e5225714b1b37b3bd7` |
| 15 | `def` | [inrCLM](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155.lean/declarations/inrclm--48b4861c89cef15d233b1632.md) | 106 | `declaration-track:48b4861c89cef15d233b163221f5980bbf711e847d3ef7317174ea5cba7770cc` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155.lean/declarations/instance--2389095fdea3a71e31f55c1c.md) | 111 | `declaration-track:2389095fdea3a71e31f55c1cec834d68aee7dcb9ce25ec7f6b93294c17024922` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155.lean/declarations/instance--26af82686723f2059d85651a.md) | 114 | `declaration-track:26af82686723f2059d85651a8250fad3e87e367f236b2cd5e9915335e9ae601a` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155.lean/declarations/instance--2e61c6e37f27d17fda2a66dc.md) | 121 | `declaration-track:2e61c6e37f27d17fda2a66dc72207d33b91b9db1271652fd9e621b2f265b1520` |
| 19 | `theorem` | [topologicalSemiring](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155.lean/declarations/topologicalsemiring--4a15343dd2ebbe8ace33de54.md) | 126 | `result-track:4a15343dd2ebbe8ace33de54b89105f54714d153bb255a9cacd9f3ac79349e7f` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155.lean/declarations/instance--5ce65293c682c713637b8537.md) | 130 | `declaration-track:5ce65293c682c713637b85372709e7a4c86f3f98c6bdcdb7d3eb215e8ba767a2` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155.lean/declarations/instance--80f3878decaf74a76261ea97.md) | 134 | `declaration-track:80f3878decaf74a76261ea977d3f568eac491e54ac3089c39e822bb6ce65c262` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155.lean/declarations/instance--b9ef7813d123f2397281d06a.md) | 138 | `declaration-track:b9ef7813d123f2397281d06aa41832f1ba9e44d4a6108702dfdfeedfc0b4c046` |
| 23 | `theorem` | [hasSum_inl](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155.lean/declarations/hassum-inl--ee537c92afc7c3b991944986.md) | 144 | `result-track:ee537c92afc7c3b991944986641eefd2dbb115f1f5ca3185031714e2c16c1752` |
| 24 | `theorem` | [hasSum_inr](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155.lean/declarations/hassum-inr--3e4b4a9f39e5fc6ad930f69f.md) | 148 | `result-track:3e4b4a9f39e5fc6ad930f69feef3454bdef7adec51f8d5e60c43f502f456dbd3` |
| 25 | `theorem` | [hasSum_fst](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155.lean/declarations/hassum-fst--3ba854482ab731162143135a.md) | 152 | `result-track:3ba854482ab731162143135a69230d73d176acc6e84f9f98fedd20f7a04151ca` |
| 26 | `theorem` | [hasSum_snd](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155.lean/declarations/hassum-snd--d9992c87bafd38b9c808348b.md) | 156 | `result-track:d9992c87bafd38b9c808348b56c044a0f1121e26807e7d673afdd8bd05abc730` |
| 27 | `instance` | [instUniformSpace](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155.lean/declarations/instuniformspace--2e1025f3ebbb83bd1e5093fa.md) | 165 | `declaration-track:2e1025f3ebbb83bd1e5093fa6c61c1f4d586a32e098f2ce1223bd514cce3f2dc` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155.lean/declarations/instance--6e7e2b883abe9e3ad1d23a22.md) | 169 | `declaration-track:6e7e2b883abe9e3ad1d23a220fe93542c73d0e381c66aaeb87a826fc505a0c4e` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155.lean/declarations/instance--07935d5db36cdcb3ac5d3c9d.md) | 172 | `declaration-track:07935d5db36cdcb3ac5d3c9dcf353cfa36d0120d28ff26a636a63f05ca551bdb` |
| 30 | `theorem` | [uniformity_def](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155.lean/declarations/uniformity-def--aa03b7a42b3151bfb3124136.md) | 178 | `result-track:aa03b7a42b3151bfb3124136434c2a00027ca01d79fd49d6af2ade4592812e03` |
| 31 | `theorem` | [uniformContinuous_fst](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155.lean/declarations/uniformcontinuous-fst--ece285888b7ce39785e68a8d.md) | 183 | `result-track:ece285888b7ce39785e68a8dd028f745cd51b7655d9b8ffa86662fb00c907f46` |
| 32 | `theorem` | [uniformContinuous_snd](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155.lean/declarations/uniformcontinuous-snd--49aa8aae4fad9a78ce8f61f1.md) | 186 | `result-track:49aa8aae4fad9a78ce8f61f194b964885333012abd2704525eeacdfd9e9ca2d4` |
| 33 | `theorem` | [uniformContinuous_inl](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155.lean/declarations/uniformcontinuous-inl--cfd0939b5370cd25c29f709b.md) | 189 | `result-track:cfd0939b5370cd25c29f709b0e458437df0f2c69e52de8378124689a6cf56f80` |
| 34 | `theorem` | [uniformContinuous_inr](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant21e0fd9b7f81fc4fccb478291187f8d895387a733a7bd309786c0d42a1fb3155.lean/declarations/uniformcontinuous-inr--c07b684c67a8429251ebeb75.md) | 192 | `result-track:c07b684c67a8429251ebeb7576db73dfd3e4569b59c1c25bf9bc372991a30472` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
