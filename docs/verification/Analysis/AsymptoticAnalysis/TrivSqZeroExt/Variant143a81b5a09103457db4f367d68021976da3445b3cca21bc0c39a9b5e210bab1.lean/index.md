# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.TrivSqZeroExt.Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35759bafc950c5ce8bb2852dfa008f9a9db24b1c",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35759bafc950c5ce8bb2852dfa008f9a9db24b1c`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.TrivSqZeroExt` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.LinearMapPiProd` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instTopologicalSpace](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean/declarations/insttopologicalspace--410d0a679493c5e9b0089ca3.md) | 39 | `declaration-track:410d0a679493c5e9b0089ca3ca46f2e8ba4b2ae9d0edd66f1491c10886f777a6` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean/declarations/instance--ed3e8cbbd733a5ebad9aad19.md) | 42 | `declaration-track:ed3e8cbbd733a5ebad9aad193ff896a4884b3682fab57858961f45aa01848383` |
| 3 | `theorem` | [nhds_def](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean/declarations/nhds-def--7788974aaa35021ad91c4e8a.md) | 45 | `result-track:7788974aaa35021ad91c4e8a90f7269818e8bd1248225374ab36dd4c3c330fe1` |
| 4 | `theorem` | [nhds_inl](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean/declarations/nhds-inl--8ed9a9c8ab18b17c91d5fd2d.md) | 47 | `result-track:8ed9a9c8ab18b17c91d5fd2dfefb2ca52e59b7697b3b18d19ab4128c52c841b0` |
| 5 | `theorem` | [nhds_inr](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean/declarations/nhds-inr--373e271b6cfe90c9602d163f.md) | 50 | `result-track:373e271b6cfe90c9602d163f7fe8542a7a68a4235c1adb7746153b7fcbc21676` |
| 6 | `theorem` | [continuous_fst](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean/declarations/continuous-fst--82dfe457bffd7242a3e5a140.md) | 53 | `result-track:82dfe457bffd7242a3e5a140e6a0b874ecfff914d01eb61ec5098dcb49c391d2` |
| 7 | `theorem` | [continuous_snd](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean/declarations/continuous-snd--95839a0b68bb326088786668.md) | 56 | `result-track:95839a0b68bb326088786668541df018fdb1e1883f35ebbb41ef87aee9a199db` |
| 8 | `theorem` | [continuous_inl](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean/declarations/continuous-inl--81eaace488bcc65decc1722e.md) | 59 | `result-track:81eaace488bcc65decc1722e9035f54fa84a13e1137050c23318b3cdce692760` |
| 9 | `theorem` | [continuous_inr](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean/declarations/continuous-inr--ee7519fe739d8be973e975e9.md) | 62 | `result-track:ee7519fe739d8be973e975e95e3124e703bce05f694c16c64992aa5a19f964d5` |
| 10 | `theorem` | [IsEmbedding.inl](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean/declarations/isembedding-inl--96667c2cc5d6600e516248c4.md) | 65 | `result-track:96667c2cc5d6600e516248c4d95d1999c9e588c3a8eda609e254a61c7d7dc729` |
| 11 | `theorem` | [IsEmbedding.inr](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean/declarations/isembedding-inr--c29b44d0221e37599d0b1668.md) | 71 | `result-track:c29b44d0221e37599d0b1668c2516b2cf86fc3f448b53eb17231e033210fcb32` |
| 12 | `def` | [fstCLM](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean/declarations/fstclm--7da0507a5a7e342e33e933dd.md) | 81 | `declaration-track:7da0507a5a7e342e33e933dd53f8f517ff9ed8dc2e49e1a3b1abf21d28536cc1` |
| 13 | `def` | [sndCLM](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean/declarations/sndclm--e1256c299810e33d2afc4fba.md) | 86 | `declaration-track:e1256c299810e33d2afc4fba03cd7170e3ec2c8f2a0d91ef86ac10c9e35e1ac8` |
| 14 | `def` | [inlCLM](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean/declarations/inlclm--2bbae8e8e25231c346036974.md) | 93 | `declaration-track:2bbae8e8e25231c3460369749e8ecae25884dbc27cef23c9fd625bd2ee7af9bd` |
| 15 | `def` | [inrCLM](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean/declarations/inrclm--8c86bc0f12e60b8e47d7c9dd.md) | 98 | `declaration-track:8c86bc0f12e60b8e47d7c9dd091e5f70bb6af601527b49d637914b70b3ce0c03` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean/declarations/instance--bf465d87e2ba2effe9b91482.md) | 103 | `declaration-track:bf465d87e2ba2effe9b9148218f0636c6d27cdbef533d84e69571028d461015e` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean/declarations/instance--21225586907d09828c2e4713.md) | 106 | `declaration-track:21225586907d09828c2e47135557ca396df70cdd66ae40e1d9019a41d06a4c61` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean/declarations/instance--1a3b0e19b40fed9007efd3c4.md) | 113 | `declaration-track:1a3b0e19b40fed9007efd3c410a8ae4bc52bc77e7eaebeee92d3d056ac49ee6e` |
| 19 | `theorem` | [topologicalSemiring](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean/declarations/topologicalsemiring--697985792fe07981fef40c98.md) | 118 | `result-track:697985792fe07981fef40c986fceaeba522c75df2af899b9dcf14473da8b8dd3` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean/declarations/instance--5b8e6ed02b0ff133f9eaa8da.md) | 122 | `declaration-track:5b8e6ed02b0ff133f9eaa8daa0c2f9a43a91e0e47ff90d97d52beb05a16a02e7` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean/declarations/instance--b97cc4ad3d5cae77bd0d658c.md) | 126 | `declaration-track:b97cc4ad3d5cae77bd0d658ccc024723a408b1bd7d71f9adbba7c9be81aee835` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean/declarations/instance--cc66ccd2fc60132b048ec699.md) | 130 | `declaration-track:cc66ccd2fc60132b048ec6998622c5e4e261d109b90601148b35e708ad66a50f` |
| 23 | `theorem` | [hasSum_inl](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean/declarations/hassum-inl--5be622e98ac322dceeb4050b.md) | 136 | `result-track:5be622e98ac322dceeb4050b40283d0169b62d6a9733efc7a48aa4744c154355` |
| 24 | `theorem` | [hasSum_inr](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean/declarations/hassum-inr--95042fdcf0a4cc3652d853ad.md) | 140 | `result-track:95042fdcf0a4cc3652d853ad4f294115ce6faab94e52f31ab432ab8e086905d6` |
| 25 | `theorem` | [hasSum_fst](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean/declarations/hassum-fst--a16e54b241f5d800f136dac5.md) | 144 | `result-track:a16e54b241f5d800f136dac5096d4583561640cd4bb545229eed66df69e0d821` |
| 26 | `theorem` | [hasSum_snd](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean/declarations/hassum-snd--f0d3f157e2ee12cfeb1ecc4b.md) | 148 | `result-track:f0d3f157e2ee12cfeb1ecc4b7e87b2ee6995ba4db96fafd37a2aed3a7e8af5e3` |
| 27 | `instance` | [instUniformSpace](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean/declarations/instuniformspace--e37de6d62ec2ead0e5d87c9d.md) | 157 | `declaration-track:e37de6d62ec2ead0e5d87c9db8975e5f839056471668b9184b2484d675b7e3a5` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean/declarations/instance--9ba12d578291e76d22b08b07.md) | 161 | `declaration-track:9ba12d578291e76d22b08b07bc38380a883d936ac711350635ee13dfcd255144` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean/declarations/instance--05eb81a530cb658a6670ccf0.md) | 164 | `declaration-track:05eb81a530cb658a6670ccf094e26eeb98d45324be02dfba00f80ba1c037abf7` |
| 30 | `theorem` | [uniformity_def](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean/declarations/uniformity-def--88232dec692e6c6b869aaefe.md) | 170 | `result-track:88232dec692e6c6b869aaefee139b1a9ab8d25e6dc6bafdae363745c577867bf` |
| 31 | `theorem` | [uniformContinuous_fst](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean/declarations/uniformcontinuous-fst--18e37dd6f2f5a34a8348f18d.md) | 175 | `result-track:18e37dd6f2f5a34a8348f18d554599358ee24a302ed97f36cabc96ecc0072b1c` |
| 32 | `theorem` | [uniformContinuous_snd](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean/declarations/uniformcontinuous-snd--d749dd79a50e732982dd9519.md) | 178 | `result-track:d749dd79a50e732982dd9519830e337efbdf88dce9b87dd57cf70b4afda64b97` |
| 33 | `theorem` | [uniformContinuous_inl](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean/declarations/uniformcontinuous-inl--90096cebbc21b299ec971530.md) | 181 | `result-track:90096cebbc21b299ec9715300803a37bbbc3b1c4603a497ec68d18139f76331f` |
| 34 | `theorem` | [uniformContinuous_inr](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant143a81b5a09103457db4f367d68021976da3445b3cca21bc0c39a9b5e210bab1.lean/declarations/uniformcontinuous-inr--3a6f1a84e359bedddd4ee230.md) | 184 | `result-track:3a6f1a84e359bedddd4ee23004428d2f8fb8baf54dab7399725ad62a66d6072f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
