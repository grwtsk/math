# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PontryaginDuality.Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58bd84ccac8ac366e0c35745471db38ea7474381",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58bd84ccac8ac366e0c35745471db38ea7474381`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.ModEq` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zmod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean/declarations/zmod--683da7941093de31dcc953a6.md) | 47 | `declaration-track:683da7941093de31dcc953a63c826ccca8ccfd4600709e29c2c756cb5d1cf0f5` |
| 2 | `lemma` | [zmod_intCast](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean/declarations/zmod-intcast--89fad74865f13997b97382f4.md) | 51 | `result-track:89fad74865f13997b97382f4c1e9cc480d5d73d5d044752117c2deebdd947a24` |
| 3 | `lemma` | [zmod_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean/declarations/zmod-zero--2901432747949f6c5d029836.md) | 55 | `result-track:2901432747949f6c5d029836078820a25f771924c4c9003ab1411b0a054c4c52` |
| 4 | `lemma` | [zmod_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean/declarations/zmod-add--7940a3f8a925cc0e7aa31162.md) | 60 | `result-track:7940a3f8a925cc0e7aa311620d5fb1444c3abc13b58a322787ddfa983c63416c` |
| 5 | `lemma` | [zmod_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean/declarations/zmod-injective--f210f86095f748e223d91c99.md) | 63 | `result-track:f210f86095f748e223d91c9943396dcee72021d90d372a94d8a45c4dc3927988` |
| 6 | `lemma` | [zmod_inj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean/declarations/zmod-inj--2a7c388fa31b89d6ea4d3583.md) | 71 | `result-track:2a7c388fa31b89d6ea4d35830edb7cef644579dbc1d6780e6ef6df32ab88961b` |
| 7 | `def` | [zmodHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean/declarations/zmodhom--506bf0906badffc80be96501.md) | 74 | `declaration-track:506bf0906badffc80be96501ec48e1f51b4d6ebd04ab7912307bdec4d6846234` |
| 8 | `def` | [mkZModAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean/declarations/mkzmodaux--08af8a76283256b1a2c74312.md) | 80 | `declaration-track:08af8a76283256b1a2c7431214dd9a1b473c0b951b60bb3a07504917c661704a` |
| 9 | `lemma` | [mkZModAux_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean/declarations/mkzmodaux-injective--0893ab3f729bab8a66b7b2e5.md) | 84 | `result-track:0893ab3f729bab8a66b7b2e5b66537d064877d499651e5df382755c1200431b7` |
| 10 | `def` | [circleEquivComplex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean/declarations/circleequivcomplex--931ffbe176bdfc90fd412576.md) | 91 | `declaration-track:931ffbe176bdfc90fd4125768c7e18110a084527d229c4687b9a54d9d63822c8` |
| 11 | `lemma` | [card_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean/declarations/card-eq--9572c1e14d0c7d0cedce31b3.md) | 101 | `result-track:9572c1e14d0c7d0cedce31b3bcdfeff7dce338e79c85ee8c335114c061a163ca` |
| 12 | `def` | [zmodAddEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean/declarations/zmodaddequiv--1f2903dae088dea74671bbd5.md) | 112 | `declaration-track:1f2903dae088dea74671bbd5d27508088a5486b63108f5b027aacc8eab13db56` |
| 13 | `lemma` | [zmodAddEquiv_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean/declarations/zmodaddequiv-apply--b3a9dd82ad2c52014782a431.md) | 118 | `result-track:b3a9dd82ad2c52014782a431524698c89ba8f0a0ccc10eff72853a2c4c7e4cd0` |
| 14 | `def` | [complexBasis](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean/declarations/complexbasis--0698fa4eec3656637d24c9ae.md) | 125 | `declaration-track:0698fa4eec3656637d24c9ae3b63df136f5e088e76d4253522c055607f38bc61` |
| 15 | `lemma` | [coe_complexBasis](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean/declarations/coe-complexbasis--df5edbfcf7fdc742fc55acf7.md) | 130 | `result-track:df5edbfcf7fdc742fc55acf7694cbc7801be5e1202e34b4e86c76b396323a166` |
| 16 | `lemma` | [complexBasis_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean/declarations/complexbasis-apply--1c2e1dfe17c069a0e6ae9c95.md) | 136 | `result-track:1c2e1dfe17c069a0e6ae9c95209c9edef93b077f2999b4b8b05e5531bdc241a2` |
| 17 | `lemma` | [exists_apply_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean/declarations/exists-apply-ne-zero--a5effca699940665a18c82b0.md) | 138 | `result-track:a5effca699940665a18c82b054d1434d8c402b649e2f7d4c6f86f36cbae42dcc` |
| 18 | `lemma` | [forall_apply_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean/declarations/forall-apply-eq-zero--34664856e8467f44c428aff4.md) | 151 | `result-track:34664856e8467f44c428aff46a126cb7e37c799e3c6694c5d4eceb72bd8c81bd` |
| 19 | `lemma` | [doubleDualEmb_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean/declarations/doubledualemb-injective--3058dfef93e3de67424c86d4.md) | 154 | `result-track:3058dfef93e3de67424c86d44725d8b0ac19c3fd27cf5a25d6214b2403573e10` |
| 20 | `lemma` | [doubleDualEmb_bijective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean/declarations/doubledualemb-bijective--eba6b8f471ce4f63e82650a8.md) | 158 | `result-track:eba6b8f471ce4f63e82650a845ebaf8508a96e98d024e4b6a9490d3e0ece31ad` |
| 21 | `lemma` | [doubleDualEmb_inj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean/declarations/doubledualemb-inj--deaabedb57f6965a0a070c06.md) | 164 | `result-track:deaabedb57f6965a0a070c065d195089a49af355de88484e726170af62da8274` |
| 22 | `lemma` | [doubleDualEmb_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean/declarations/doubledualemb-eq-zero--3fb4223628faa4cdf35b53f9.md) | 167 | `result-track:3fb4223628faa4cdf35b53f97e4c78c6bddfdbcf92ec8d1f7f489d74a5729e44` |
| 23 | `lemma` | [doubleDualEmb_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean/declarations/doubledualemb-ne-zero--eed36199f5bdc12c6aec1fcb.md) | 170 | `result-track:eed36199f5bdc12c6aec1fcbacd22e50194addff02e72bff49682d5c04e74563` |
| 24 | `def` | [doubleDualEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean/declarations/doubledualequiv--8b64292d996d1aebed28593e.md) | 174 | `declaration-track:8b64292d996d1aebed28593e5d819275976d3c16e7c57f9cfa42d4b7d33e9a15` |
| 25 | `lemma` | [coe_doubleDualEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean/declarations/coe-doubledualequiv--0ad7dad4c3872d82eb99d358.md) | 177 | `result-track:0ad7dad4c3872d82eb99d358eef6d74ccd1e9a5cfd7592a624f9458217ddccc0` |
| 26 | `lemma` | [doubleDualEmb_doubleDualEquiv_symm_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean/declarations/doubledualemb-doubledualequiv-symm-apply--7ee04cada8e11bbbcd485a4f.md) | 179 | `result-track:7ee04cada8e11bbbcd485a4f17f509487c2856604d922a6f6ddf89d071777340` |
| 27 | `lemma` | [doubleDualEquiv_symm_doubleDualEmb_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean/declarations/doubledualequiv-symm-doubledualemb-apply--e838fa21b82737dc68884d4d.md) | 183 | `result-track:e838fa21b82737dc68884d4d29904644692d460850fda8d7dc65c02ec5ebdbca` |
| 28 | `lemma` | [sum_apply_eq_ite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean/declarations/sum-apply-eq-ite--99dd37062f5324f482a9446e.md) | 188 | `result-track:99dd37062f5324f482a9446ecb9a1965a926c59450ffed49ba2111c6f4cc2061` |
| 29 | `lemma` | [expect_apply_eq_ite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean/declarations/expect-apply-eq-ite--72d2fb4be530f32fccb1d8fd.md) | 192 | `result-track:72d2fb4be530f32fccb1d8fd35434ca093bfcbc6abf0641d50e987cc1d6142d2` |
| 30 | `lemma` | [sum_apply_eq_zero_iff_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean/declarations/sum-apply-eq-zero-iff-ne-zero--7caa9cb106ff48e4761ee5e4.md) | 196 | `result-track:7caa9cb106ff48e4761ee5e423980a1f8130402c8e081814373aba04e70d7226` |
| 31 | `lemma` | [sum_apply_ne_zero_iff_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean/declarations/sum-apply-ne-zero-iff-eq-zero--ab4d87f137a85b78bd2e96e0.md) | 202 | `result-track:ab4d87f137a85b78bd2e96e0e3ed6629ffd5ab275544447fc8eaa1c12ebe628b` |
| 32 | `lemma` | [expect_apply_eq_zero_iff_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean/declarations/expect-apply-eq-zero-iff-ne-zero--3a571ab1a72311e9c22c0333.md) | 205 | `result-track:3a571ab1a72311e9c22c033321d7b163b9acfcf1b646a3a4bba63f515ff9675b` |
| 33 | `lemma` | [expect_apply_ne_zero_iff_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantded3dd754a4f180e6178cd5adc77ec7cb0f45cea105d56fb550868273c94978e.lean/declarations/expect-apply-ne-zero-iff-eq-zero--2d3c043f61af3c1b1c94b3cb.md) | 210 | `result-track:2d3c043f61af3c1b1c94b3cb901048fec0032c15876569f1ae8916156679d257` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
