# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BoolAlg.Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "802256e421552099271e16a321360cca97b4060d",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `802256e421552099271e16a321360cca97b4060d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Category.HeytAlg` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.CompleteLattice` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BoolAlg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean/declarations/boolalg--591aee3c1f64302deeed9fb2.md) | 31 | `declaration-track:591aee3c1f64302deeed9fb299e280f761fccfcb4c30354d9de184f10ae190ce` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean/declarations/instance--0cf14c603eb7063b0cb684d9.md) | 42 | `declaration-track:0cf14c603eb7063b0cb684d9794a176985ac1c49183b6d5cac9e9a7d5fe64087` |
| 3 | `abbrev` | [of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean/declarations/of--5b7905a23f0fd94ca37e2b23.md) | 48 | `declaration-track:5b7905a23f0fd94ca37e2b2348eb4e0c065d7c84ca7fe7744252956d037ce6de` |
| 4 | `structure` | [Hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean/declarations/hom--eff8f6ca8a3d12f72a984c25.md) | 52 | `declaration-track:eff8f6ca8a3d12f72a984c25bd4129448ca70ada58e2c6e762f4ad4886e75924` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean/declarations/instance--203eba0157e2f9db601f18bf.md) | 57 | `declaration-track:203eba0157e2f9db601f18bf29fd93542969a5d00091eabe6bf00c0445099c96` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean/declarations/instance--e05b3010c58e5e979f0f8837.md) | 62 | `declaration-track:e05b3010c58e5e979f0f8837c55560319135df08f57ba48e186cf341b82234cf` |
| 7 | `abbrev` | [Hom.hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean/declarations/hom-hom--2a4f32e6b1ee9a66e6f43390.md) | 67 | `declaration-track:2a4f32e6b1ee9a66e6f43390fe8836ee418f91803acb2bd2a685b36a8b9b0394` |
| 8 | `abbrev` | [ofHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean/declarations/ofhom--dd779e8018978af09fbc3706.md) | 71 | `declaration-track:dd779e8018978af09fbc37065e5347e0f3f876e5f0a8c5eaa537383943f58e52` |
| 9 | `def` | [Hom.Simps.hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean/declarations/hom-simps-hom--cc9da8adedc99002146ac7d7.md) | 77 | `declaration-track:cc9da8adedc99002146ac7d7a85aebe943953b312454e99dab3731186452c19a` |
| 10 | `lemma` | [coe_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean/declarations/coe-id--f8aa98eeb524a5df9c211986.md) | 87 | `result-track:f8aa98eeb524a5df9c211986c8941c88109be1264ff14605045c20571d96acd2` |
| 11 | `lemma` | [coe_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean/declarations/coe-comp--cdd1e95235d543c0960574b6.md) | 90 | `result-track:cdd1e95235d543c0960574b6e42723a422259a2131e66c58133e1998aed6841f` |
| 12 | `lemma` | [forget_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean/declarations/forget-map--a9c422198f53154f577c3317.md) | 93 | `result-track:a9c422198f53154f577c33170f35fb29256f40d3775e0c3f8342c18c6a44e9a3` |
| 13 | `lemma` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean/declarations/ext--4e16a386534a789601a30f93.md) | 97 | `result-track:4e16a386534a789601a30f9302db93c68c5e70af4997438e9679284f69a3a59c` |
| 14 | `theorem` | [coe_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean/declarations/coe-of--0559a17d70c967f2abb5ec4c.md) | 101 | `result-track:0559a17d70c967f2abb5ec4ce639f88e20174659b3958c756f4900d9d8f38b35` |
| 15 | `lemma` | [hom_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean/declarations/hom-id--1b49afea236387c1e796f1b0.md) | 104 | `result-track:1b49afea236387c1e796f1b0e8ac4969baf1242063693278e87964cfd132090b` |
| 16 | `lemma` | [id_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean/declarations/id-apply--09458a01c4896fc6599be910.md) | 107 | `result-track:09458a01c4896fc6599be91081fb54f439241a6915acf8651bfbc69a4d99413e` |
| 17 | `lemma` | [hom_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean/declarations/hom-comp--625a009d5705e1502088227a.md) | 111 | `result-track:625a009d5705e1502088227af24379fbf7a024009e6c07712b6bcf989cd425ff` |
| 18 | `lemma` | [comp_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean/declarations/comp-apply--aa19b543c60d38ad2dfe52f7.md) | 115 | `result-track:aa19b543c60d38ad2dfe52f78f247fc7caf213f9bd9c747f8249981e735402d4` |
| 19 | `lemma` | [hom_ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean/declarations/hom-ext--c87cf60ad907bbfe4bec9e98.md) | 119 | `result-track:c87cf60ad907bbfe4bec9e98838c3ad2a33e2f6e099fa139dfb5104554008096` |
| 20 | `lemma` | [hom_ofHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean/declarations/hom-ofhom--8b1fee575d138683cc5bb067.md) | 123 | `result-track:8b1fee575d138683cc5bb0672b3b7b1c4131c9573a5c09d5fc3c8c556a9f7e4b` |
| 21 | `lemma` | [ofHom_hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean/declarations/ofhom-hom--355abc1c09c81f2e9c9471fd.md) | 127 | `result-track:355abc1c09c81f2e9c9471fd300dfc076fbc507f875d093d7302067abaf9b40a` |
| 22 | `lemma` | [ofHom_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean/declarations/ofhom-id--9051d729ff4f0e11f8201970.md) | 131 | `result-track:9051d729ff4f0e11f8201970738592673132d6e22fc25c735fda102fb8eb9c0b` |
| 23 | `lemma` | [ofHom_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean/declarations/ofhom-comp--20f97c5899f10b3d99246a9c.md) | 134 | `result-track:20f97c5899f10b3d99246a9cf9ffb213114d5ce79786277dede9a781b931494d` |
| 24 | `lemma` | [ofHom_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean/declarations/ofhom-apply--91a393db6f847521413a41f8.md) | 139 | `result-track:91a393db6f847521413a41f802f98dd50a3376a9ba8425ffeab089c55e9d52a3` |
| 25 | `lemma` | [inv_hom_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean/declarations/inv-hom-apply--fff1329fb37e4df26beea601.md) | 143 | `result-track:fff1329fb37e4df26beea601dc6a2595c238b415588fe3d235595fd393d8bfc2` |
| 26 | `lemma` | [hom_inv_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean/declarations/hom-inv-apply--54292f391542cf4ec43824a8.md) | 146 | `result-track:54292f391542cf4ec43824a8268ba1b43b73ac2863c76f63540f9848f7326a19` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean/declarations/instance--b02a685b0abf254aa5aab22f.md) | 149 | `declaration-track:b02a685b0abf254aa5aab22f89c0ad571f8c19a3e09316a2c430e0fa16db44ab` |
| 28 | `def` | [toBddDistLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean/declarations/tobdddistlat--506183484936760089f39636.md) | 153 | `declaration-track:506183484936760089f3963626eeb4752cb262da9c206c2cdd0e9413d8ee7ecc` |
| 29 | `theorem` | [coe_toBddDistLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean/declarations/coe-tobdddistlat--e688930c44cac46b9c5c200a.md) | 157 | `result-track:e688930c44cac46b9c5c200a5c6e4ff53cfd768172a3375abb91551deb383026` |
| 30 | `instance` | [hasForgetToBddDistLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean/declarations/hasforgettobdddistlat--072da46e28c647ba163268d2.md) | 160 | `declaration-track:072da46e28c647ba163268d2db98030b7c5065bf291eac6dc30b14212532cb46` |
| 31 | `instance` | [hasForgetToHeytAlg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean/declarations/hasforgettoheytalg--8be74e7053b6d573f69d1889.md) | 169 | `declaration-track:8be74e7053b6d573f69d18893f44f45c1724a31489d68f72ca9a22b34d88ff46` |
| 32 | `def` | [Iso.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean/declarations/iso-mk--b8f267e12175d03a2b10eb30.md) | 177 | `declaration-track:b8f267e12175d03a2b10eb30f1c48b37aa56337e6a042efe1f59df5d904b15c4` |
| 33 | `def` | [dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean/declarations/dual--13e4d61eebc8fc9d429376e2.md) | 183 | `declaration-track:13e4d61eebc8fc9d429376e21ff31681a646f8548fb59ea9ebcff062ef3054f4` |
| 34 | `def` | [dualEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean/declarations/dualequiv--0e7c1627a615a21c19a5ef82.md) | 189 | `declaration-track:0e7c1627a615a21c19a5ef82fedf33cc1cf96c3b21fc6290cccc95a186c7a71f` |
| 35 | `theorem` | [boolAlg_dual_comp_forget_to_bddDistLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean/declarations/boolalg-dual-comp-forget-to-bdddistlat--31c43a5cd71b04462ce37c7a.md) | 197 | `result-track:31c43a5cd71b04462ce37c7a97f99608d05aff480a4adfd6d9289b459e21e60d` |
| 36 | `def` | [typeToBoolAlgOp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59.lean/declarations/typetoboolalgop--79e5d2a785dd4b9c5091dbfd.md) | 204 | `declaration-track:79e5d2a785dd4b9c5091dbfde503790eb8451d1753ad997993fd6f27d2cd277d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
