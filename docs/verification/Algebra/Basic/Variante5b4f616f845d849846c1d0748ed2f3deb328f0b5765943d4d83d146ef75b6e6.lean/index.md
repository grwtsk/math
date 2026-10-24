# Verification target: GRWTSK.Algebra.Basic.Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f95a1ed39a7b70bbce9b42220473bbd3d0ff9bb7",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f95a1ed39a7b70bbce9b42220473bbd3d0ff9bb7`.

Source path: `GRWTSK/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [FormallySmooth](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/formallysmooth--155eb3108c70ea64e591fbe9.md) | 70 | `declaration-track:155eb3108c70ea64e591fbe90df8dd1e013e10d457b3759f3a1cb858bd1aea63` |
| 2 | `lemma` | [FormallySmooth.comp_surjective](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/formallysmooth-comp-surjective--fa55f65086ae70105b876f65.md) | 80 | `result-track:fa55f65086ae70105b876f6580d64564ab88d7254905fa2e1d871bf5c484b26b` |
| 3 | `instance` | [instFormallySmoothMvPolynomial](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/instformallysmoothmvpolynomial--d41fc4a7e7c892e69adbcbb0.md) | 112 | `declaration-track:d41fc4a7e7c892e69adbcbb05f03740e48f87933a34291958043a1cc0631b3a7` |
| 4 | `theorem` | [exists_lift](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/exists-lift--0cec9820d5be0fad6b131938.md) | 126 | `result-track:0cec9820d5be0fad6b1319385556f8e2067020b134a57660c3c2cb41f8528e9a` |
| 5 | `def` | [lift](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/lift--ced98dfc5b05314acc047084.md) | 148 | `declaration-track:ced98dfc5b05314acc0470842591fbde314b475242a86153000ab88186705c36` |
| 6 | `theorem` | [comp_lift](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/comp-lift--a25e42aae7ea2769693556a7.md) | 153 | `result-track:a25e42aae7ea2769693556a7757e8c284acbbe90afd7d3533ef4d9893de9511a` |
| 7 | `theorem` | [mk_lift](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/mk-lift--a27de3a45aa272552a3ac1e4.md) | 158 | `result-track:a27de3a45aa272552a3ac1e40ebb5304cb191896126ca3a6cd82436dae1f761f` |
| 8 | `def` | [liftOfSurjective](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/liftofsurjective--05db92de85ca3d57405db411.md) | 166 | `declaration-track:05db92de85ca3d57405db411258a1db0ed36c0205db01389d9df1e00c4ff1af7` |
| 9 | `theorem` | [liftOfSurjective_apply](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/liftofsurjective-apply--3a7d87bafb30467da95cf28e.md) | 173 | `result-track:3a7d87bafb30467da95cf28eb6fa1889e64fee1bacfec07d2c5ad668bd9aac89` |
| 10 | `theorem` | [comp_liftOfSurjective](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/comp-liftofsurjective--8f3dfb7928d744a83e45e2cb.md) | 184 | `result-track:8f3dfb7928d744a83e45e2cba49f3e3f6d1f8c6b0aa7582498c5411f4e69bb45` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/instance--08f1d5ebf21ff41edcbccd20.md) | 189 | `declaration-track:08f1d5ebf21ff41edcbccd20b3da8af5d8302b01ac169d8d311710f8029b47bd` |
| 12 | `def` | [homInfinitesimal](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/hominfinitesimal--bcdc1136e05582d78cb3d0c3.md) | 202 | `declaration-track:bcdc1136e05582d78cb3d0c3b0cd96034453a447c4f54efe8f75366d3bca827f` |
| 13 | `def` | [H1Cotangent.equivOfFormallySmooth](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/h1cotangent-equivofformallysmooth--2f37c4ddfdd15850e7eab431.md) | 228 | `declaration-track:2f37c4ddfdd15850e7eab431867510a2dc7a5e2e03c2503e62081805a29599d9` |
| 14 | `lemma` | [H1Cotangent.equivOfFormallySmooth_toLinearMap](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/h1cotangent-equivofformallysmooth-tolinearmap--ce315c6cb42006cadacdc213.md) | 235 | `result-track:ce315c6cb42006cadacdc2138e09bc3e1c32a261c18cc7d287704d0cc85551bf` |
| 15 | `lemma` | [H1Cotangent.equivOfFormallySmooth_apply](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/h1cotangent-equivofformallysmooth-apply--50bf4da98c7ad46f051eef07.md) | 244 | `result-track:50bf4da98c7ad46f051eef07fb6402388f1b97b98612337e2b246fe4a6bb264a` |
| 16 | `lemma` | [H1Cotangent.equivOfFormallySmooth_symm](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/h1cotangent-equivofformallysmooth-symm--fcb5282f24d5f7e1e99f0ac4.md) | 249 | `result-track:fcb5282f24d5f7e1e99f0ac43642b59699a4612a062b7334868f1e044bc062e4` |
| 17 | `def` | [equivH1CotangentOfFormallySmooth](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/equivh1cotangentofformallysmooth--a905c55e1adc9385fd87d933.md) | 256 | `declaration-track:a905c55e1adc9385fd87d933f04a868c1e24c59249847be72d59684500ec67a5` |
| 18 | `lemma` | [cotangentComplex_injective_iff](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/cotangentcomplex-injective-iff--c9fba1f72864ca00ffb6f860.md) | 262 | `result-track:c9fba1f72864ca00ffb6f860b64cc040d8fe49269ad7704a569f51aaa7f37c9b` |
| 19 | `lemma` | [kerCotangentToTensor_injective_iff](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/kercotangenttotensor-injective-iff--4869a93ac783ed17cbf31fab.md) | 276 | `result-track:4869a93ac783ed17cbf31fab9557f17cde762217df428741ad9af10e8b9eb6ca` |
| 20 | `theorem` | [iff_split_injection](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/iff-split-injection--9bcd0c2c599297ba20e378be.md) | 291 | `result-track:9bcd0c2c599297ba20e378bece497be607eb15689afeefe218bbc7610493af8f` |
| 21 | `theorem` | [_root_.Algebra.Extension.formallySmooth_iff_split_injection](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/root-algebra-extension-formallysmooth-iff-split-injection--a125eab7f87764288910c6a6.md) | 312 | `result-track:a125eab7f87764288910c6a6ea33ac74a175dc819adbe5091ce7d969107b3dc9` |
| 22 | `theorem` | [iff_split_surjection](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/iff-split-surjection--a6a3e4217f1cf46d56245ae9.md) | 331 | `result-track:a6a3e4217f1cf46d56245ae924c6ae3fb8a87e8a8f936488898f7037ac8deb7c` |
| 23 | `theorem` | [of_split](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/of-split--fc79339d76de9c0307af044f.md) | 338 | `result-track:fc79339d76de9c0307af044f4f0ef5c26eb81a6bf9bf35d19b8d018fffec5b24` |
| 24 | `theorem` | [of_comp_surjective](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/of-comp-surjective--26d6f420d75cbe1645bbd906.md) | 346 | `result-track:26d6f420d75cbe1645bbd906bd217659c2d04825926114935d4369367996be9f` |
| 25 | `theorem` | [iff_comp_surjective](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/iff-comp-surjective--51ba883a5195264c19434c54.md) | 371 | `result-track:51ba883a5195264c19434c54ae54382838cd450f2ea9b5b19df138b63e5eef14` |
| 26 | `theorem` | [of_equiv](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/of-equiv--eb7f1b953fe3441b39c412a8.md) | 383 | `result-track:eb7f1b953fe3441b39c412a85f7324fe2c6fed17191b55265ef5b04e34984e0b` |
| 27 | `theorem` | [iff_of_equiv](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/iff-of-equiv--4afb1953a34629658c5f904c.md) | 387 | `result-track:4afb1953a34629658c5f904cd95f20b8d17a53898e1935e1af54cee4457231da` |
| 28 | `instance` | [polynomial](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/polynomial--3d99125864c15f18a16c164c.md) | 395 | `declaration-track:3d99125864c15f18a16c164cb690ef8e3d59bfe1274e4556350bf37b5b523780` |
| 29 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/instance--e3b7b9e652b53aa704c29a5c.md) | 398 | `declaration-track:e3b7b9e652b53aa704c29a5c6d794b4f6db9cb3dbd2781e0bc1c7fd8d598fcba` |
| 30 | `theorem` | [comp](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/comp--613bb0883400dbfac541b821.md) | 408 | `result-track:613bb0883400dbfac541b821e42f4f62a446b8dfa8267a02ecd23834d3b92535` |
| 31 | `lemma` | [of_restrictScalars](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/of-restrictscalars--f16b6e5e4472668957cd90f9.md) | 416 | `result-track:f16b6e5e4472668957cd90f9032870dfc02b610f9e3d5299a10b75a9065a930d` |
| 32 | `lemma` | [iff_of_surjective](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/iff-of-surjective--58d256c6416742cfe9c08e15.md) | 435 | `result-track:58d256c6416742cfe9c08e159080fbf2258f54f469b876da4d13eee00a7791e6` |
| 33 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/instance--ba2231f1b335fed77cbca646.md) | 459 | `declaration-track:ba2231f1b335fed77cbca646d88a35483b636b5c83d821a74be612291c3d3cf2` |
| 34 | `theorem` | [of_isLocalization](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/of-islocalization--33bda1e85f37bb1f15bd30b4.md) | 482 | `result-track:33bda1e85f37bb1f15bd30b46a7c61403917cf4ef20ddd8b161032f3ad5cd08c` |
| 35 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/instance--72edef6b8fbaf23cdc08422e.md) | 497 | `declaration-track:72edef6b8fbaf23cdc08422e07829811ef5c30def83002d728f06c965d747118` |
| 36 | `theorem` | [localization_base](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/localization-base--c383f0999d427ea46b51e277.md) | 502 | `result-track:c383f0999d427ea46b51e277db48416abeae446344bb6d0390845a15dbe66c9e` |
| 37 | `theorem` | [localization_map](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/localization-map--81915b7dd465d4ad738fb3eb.md) | 522 | `result-track:81915b7dd465d4ad738fb3eb4bc090f8b6c80c7769c2343f6c37ef381b8ae572` |
| 38 | `class` | [Smooth](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/smooth--55ce493eb3edb219e7e7a13d.md) | 540 | `declaration-track:55ce493eb3edb219e7e7a13d907055cbe4bf00a3efd4f87d1fbe7b6719e1ac69` |
| 39 | `theorem` | [of_equiv](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/of-equiv--7d25871319fd224b4aca9d91.md) | 554 | `result-track:7d25871319fd224b4aca9d9196abb6659e84fc0b5a082c52e401115adff17102` |
| 40 | `theorem` | [of_isLocalization_Away](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/of-islocalization-away--abc8ad23f051d7440f1fc151.md) | 559 | `result-track:abc8ad23f051d7440f1fc1519a29a6777df1bdb7a46c8352118e6878367b96b7` |
| 41 | `theorem` | [comp](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/comp--b98af98e38befe197e074028.md) | 568 | `result-track:b98af98e38befe197e074028bb73454685dc34fe7b394e4e855b10a2622e77f1` |
| 42 | `instance` | [baseChange](../../../../mathematics/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/declarations/basechange--aee8404dc88915357e994335.md) | 573 | `declaration-track:aee8404dc88915357e994335334cc0e94d0ea66203edb400eae8701e4763b5f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
