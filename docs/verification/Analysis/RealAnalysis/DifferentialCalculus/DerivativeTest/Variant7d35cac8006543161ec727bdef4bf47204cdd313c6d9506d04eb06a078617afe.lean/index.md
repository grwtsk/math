# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DerivativeTest.Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1017da179f46259c0349010e25819d0173d94ed8",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1017da179f46259c0349010e25819d0173d94ed8`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [continuousOn_Ioc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/declarations/continuouson-ioc--b0d8a387b4f356a501e7608c.md) | 58 | `result-track:b0d8a387b4f356a501e7608c5569473437ed950fbeb0ea7c8c7cd90de19d7623` |
| 2 | `lemma` | [continuousOn_Ico](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/declarations/continuouson-ico--ba2e1bafd8853a35b290c9b3.md) | 66 | `result-track:ba2e1bafd8853a35b290c9b35c250e37a98b77d83f4b52fd886742f9c043a043` |
| 3 | `lemma` | [continuousOn_Icc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/declarations/continuouson-icc--08f506c9797bdb2cf046e979.md) | 74 | `result-track:08f506c9797bdb2cf046e9794c4f9056f664ffa206d7fce400775b71e574b2a8` |
| 4 | `lemma` | [continuousOn_Iic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/declarations/continuouson-iic--2e16dee0dd3793766ae7e36b.md) | 82 | `result-track:2e16dee0dd3793766ae7e36b63a88361468399a7e7144e2b323ddf024147a649` |
| 5 | `lemma` | [continuousOn_Ici](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/declarations/continuouson-ici--50228fa881a63b801e972e60.md) | 89 | `result-track:50228fa881a63b801e972e602ba01101ecbf521ddb3098a02cf07a87029c9727` |
| 6 | `lemma` | [isMaxOn_Ioo_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/declarations/ismaxon-ioo-of-deriv--f35e5106ae80a6f421e6ba70.md) | 96 | `result-track:f35e5106ae80a6f421e6ba70b3dd16cc47b6a81cc712564eec1407e4559101e6` |
| 7 | `lemma` | [isMaxOn_Ioc_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/declarations/ismaxon-ioc-of-deriv--d1cb91037e7b18ef0d41edf9.md) | 106 | `result-track:d1cb91037e7b18ef0d41edf9d3d14c097ea7e8826af35e3dbaded81fbfd04aee` |
| 8 | `lemma` | [isMaxOn_Ico_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/declarations/ismaxon-ico-of-deriv--2a4872163bc384b7c7efd2b1.md) | 116 | `result-track:2a4872163bc384b7c7efd2b16b773e2822b86809ddf70091bc0d1d841b467208` |
| 9 | `lemma` | [isMaxOn_Icc_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/declarations/ismaxon-icc-of-deriv--a875d2e77b16ae90e1b1bd3d.md) | 126 | `result-track:a875d2e77b16ae90e1b1bd3d65e5401989346d035c0c273d9017372689702ee8` |
| 10 | `lemma` | [isMaxOn_Ioi_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/declarations/ismaxon-ioi-of-deriv--f2dbb68ece6199c03d0064ba.md) | 136 | `result-track:f2dbb68ece6199c03d0064baae023f709e48e110234574e777fd4be54e723986` |
| 11 | `lemma` | [isMaxOn_Ici_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/declarations/ismaxon-ici-of-deriv--7133a52baf46f2136a522b41.md) | 146 | `result-track:7133a52baf46f2136a522b4198d0880e10c179fca6a535c7aecc55b54fb83591` |
| 12 | `lemma` | [isMaxOn_Iio_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/declarations/ismaxon-iio-of-deriv--9de0255b2d796a36d29cda17.md) | 156 | `result-track:9de0255b2d796a36d29cda172968a47e53dbe48cfe0d4a13ec2b6628c4457fa8` |
| 13 | `lemma` | [isMaxOn_Iic_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/declarations/ismaxon-iic-of-deriv--ea5c37ab4c48c0493346b79f.md) | 166 | `result-track:ea5c37ab4c48c0493346b79ffe6f99fb17cddd9753c066be37c94f79d9653bcf` |
| 14 | `lemma` | [isMaxOn_univ_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/declarations/ismaxon-univ-of-deriv--5882b11b05f4a33bc8f9bdb9.md) | 176 | `result-track:5882b11b05f4a33bc8f9bdb9c53aab3c829875b2d84bde17b7971c34faac7b43` |
| 15 | `lemma` | [isLocalMax_of_deriv_Ioo](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/declarations/islocalmax-of-deriv-ioo--925163c991aa1e0f3699543f.md) | 187 | `result-track:925163c991aa1e0f3699543f9cb1ac2cf37effbf9296928d312fbbf5da3b24fb` |
| 16 | `lemma` | [isMinOn_Ioo_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/declarations/isminon-ioo-of-deriv--ab5796c2a93b76d068849e59.md) | 195 | `result-track:ab5796c2a93b76d068849e59b2fc401c60f0e19763aab3d0c3464095d2efecf3` |
| 17 | `lemma` | [isMinOn_Ioc_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/declarations/isminon-ioc-of-deriv--e4d60c5b89fe1f5fcd21bae1.md) | 205 | `result-track:e4d60c5b89fe1f5fcd21bae1fbd12296a1c646ac8490ed96278eaccbf2bae0c2` |
| 18 | `lemma` | [isMinOn_Ico_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/declarations/isminon-ico-of-deriv--264e74a3efc6a9cd181c7691.md) | 215 | `result-track:264e74a3efc6a9cd181c7691fa8cdfad0f89102150883b7002ec943b63306720` |
| 19 | `lemma` | [isMinOn_Icc_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/declarations/isminon-icc-of-deriv--8feff9b2a49ea64df73d72b1.md) | 225 | `result-track:8feff9b2a49ea64df73d72b176538dbd796f80d011ad8c5d847adc3332d6eabf` |
| 20 | `lemma` | [isMinOn_Ioi_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/declarations/isminon-ioi-of-deriv--e3cdc382c43d629e665c3449.md) | 235 | `result-track:e3cdc382c43d629e665c34497875724159315df43770e7a4801c1fb8d468ba26` |
| 21 | `lemma` | [isMinOn_Ici_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/declarations/isminon-ici-of-deriv--4846066d0276c0c27db9885a.md) | 245 | `result-track:4846066d0276c0c27db9885afdccf916251205a459b08e47ddc5b692e6cea197` |
| 22 | `lemma` | [isMinOn_Iio_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/declarations/isminon-iio-of-deriv--37987e702aefc36be8ed21d4.md) | 255 | `result-track:37987e702aefc36be8ed21d4dd26f651d623166f16c72ea90530157c0cc2485f` |
| 23 | `lemma` | [isMinOn_Iic_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/declarations/isminon-iic-of-deriv--ca321c569e9b6cf0066a05cb.md) | 265 | `result-track:ca321c569e9b6cf0066a05cb52f1d7c2bd5f17a67280a098aed89acec6ab472c` |
| 24 | `lemma` | [isMinOn_univ_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/declarations/isminon-univ-of-deriv--0875ccdf8ae1c0181fc2e956.md) | 275 | `result-track:0875ccdf8ae1c0181fc2e9569c3773f4b7f58cc117db332cd65345a35eb4d099` |
| 25 | `lemma` | [isLocalMin_of_deriv_Ioo](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/declarations/islocalmin-of-deriv-ioo--915caee7b36ef0a03c578fdb.md) | 284 | `result-track:915caee7b36ef0a03c578fdbe84275b18d8bcc4dee0cefd9618c6844edfad7f8` |
| 26 | `lemma` | [isLocalMax_of_deriv'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/declarations/islocalmax-of-deriv--ea2dd0d2aff19e2723aef370.md) | 292 | `result-track:ea2dd0d2aff19e2723aef370cda86a2b0523989af2f1ee1c5c061964fe5493f8` |
| 27 | `lemma` | [isLocalMin_of_deriv'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/declarations/islocalmin-of-deriv--ebae5fb3602592821ee37801.md) | 305 | `result-track:ebae5fb3602592821ee378014c204b5bd34a8e198db3e4354b9e450d208fb5b7` |
| 28 | `theorem` | [isLocalMax_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/declarations/islocalmax-of-deriv--e6718af9fe310b53ccd6f977.md) | 317 | `result-track:e6718af9fe310b53ccd6f97728dd3c209ead9ef7f6595848737931c5f4a90804` |
| 29 | `theorem` | [isLocalMin_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/declarations/islocalmin-of-deriv--d634e83043435013cca89561.md) | 324 | `result-track:d634e83043435013cca89561038198bf2ad2b9d4caf59c85026cc6e4fc25a6d9` |
| 30 | `lemma` | [eventually_nhdsWithin_sign_eq_of_deriv_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/declarations/eventually-nhdswithin-sign-eq-of-deriv-pos--4f948d217871577cb6fdd92a.md) | 338 | `result-track:4f948d217871577cb6fdd92a2e384d83d3d080747556986de6b3a936ccf3d5c8` |
| 31 | `lemma` | [eventually_nhdsWithin_sign_eq_of_deriv_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/declarations/eventually-nhdswithin-sign-eq-of-deriv-neg--0c65af85e32048d798937c9c.md) | 353 | `result-track:0c65af85e32048d798937c9cd7d9e7a0da280bf546e95563ab048ebcc349c3cc` |
| 32 | `lemma` | [deriv_neg_left_of_sign_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/declarations/deriv-neg-left-of-sign-deriv--e2cd3fad1cea3bea61e233e1.md) | 359 | `result-track:e2cd3fad1cea3bea61e233e1f5f6dd88b55b2169b194e29c15ed1da3364b9793` |
| 33 | `lemma` | [deriv_neg_right_of_sign_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/declarations/deriv-neg-right-of-sign-deriv--61fe596d014312b6a7da7ed4.md) | 365 | `result-track:61fe596d014312b6a7da7ed460408c5a425cb6ba9155948ff7d46d8a4d6a4b63` |
| 34 | `lemma` | [deriv_pos_right_of_sign_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/declarations/deriv-pos-right-of-sign-deriv--963472e2b43f8a66538fd7f2.md) | 371 | `result-track:963472e2b43f8a66538fd7f26a8c7d90fc6e011f632c4d7b3c2383bf533be420` |
| 35 | `lemma` | [deriv_pos_left_of_sign_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/declarations/deriv-pos-left-of-sign-deriv--c84650d7484fe5194602dbbe.md) | 377 | `result-track:c84650d7484fe5194602dbbe746bc9b9478ae64d436248585e70d5589afbc962` |
| 36 | `theorem` | [isLocalMax_of_sign_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/declarations/islocalmax-of-sign-deriv--cad58cadae9b3655aadfbefa.md) | 384 | `result-track:cad58cadae9b3655aadfbefac63af0cf498da6cb37461a6f338d5a36bb08e0a8` |
| 37 | `theorem` | [isLocalMin_of_sign_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/declarations/islocalmin-of-sign-deriv--31b91827e972aea93be596c0.md) | 395 | `result-track:31b91827e972aea93be596c032260ce9d17ec4f9f907c4321facdae992b6adb1` |
| 38 | `theorem` | [isLocalMin_of_deriv_deriv_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/declarations/islocalmin-of-deriv-deriv-pos--444b002986273bb5018b2aee.md) | 404 | `result-track:444b002986273bb5018b2aeec435137f85d316b715f4788a0e1855e0a4a20cd9` |
| 39 | `theorem` | [isLocalMax_of_deriv_deriv_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant7d35cac8006543161ec727bdef4bf47204cdd313c6d9506d04eb06a078617afe.lean/declarations/islocalmax-of-deriv-deriv-neg--604327cc7743b34a552a1583.md) | 410 | `result-track:604327cc7743b34a552a15835e4cd122b07226a33257e9f056ed51901285373d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
