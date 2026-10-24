# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.DirichletTheorem.Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66e59771eb655041fc341a01186f6754b23ff81e",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66e59771eb655041fc341a01186f6754b23ff81e`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Gershgorin` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.CanonicalEmbedding.ConvexBody` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.Units.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [w₀](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/w--7786901acb2eae274f59672d.md) | 71 | `declaration-track:7786901acb2eae274f59672d975074580b4d06dea31e95c0066731dd4789aee0` |
| 2 | `abbrev` | [logSpace](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/logspace--cfe10c6d2b55f5663c8b9b3a.md) | 76 | `declaration-track:cfe10c6d2b55f5663c8b9b3a85d245bb9b48ca542ae6e5edc9f1c48f3091be82` |
| 3 | `def` | [_root_.NumberField.Units.logEmbedding](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/root-numberfield-units-logembedding--e8b64e7ae5ef09a5e2bc3931.md) | 80 | `declaration-track:e8b64e7ae5ef09a5e2bc3931b153acd1baffacd752ab029ba7a500357bd1e035` |
| 4 | `theorem` | [logEmbedding_component](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/logembedding-component--69f0a39da3fbe824f462bd3d.md) | 87 | `result-track:69f0a39da3fbe824f462bd3da62f6432d779243bd68c73350c7b366a0a5d2501` |
| 5 | `theorem` | [sum_logEmbedding_component](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/sum-logembedding-component--648e48301676d7e5d684f59d.md) | 91 | `result-track:648e48301676d7e5d684f59d6156e10a96924b21ab168e8e3efb6c93a886dea7` |
| 6 | `theorem` | [mult_log_place_eq_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/mult-log-place-eq-zero--cbc900d8c9cf4da0eae797be.md) | 100 | `result-track:cbc900d8c9cf4da0eae797be3f7513c7a1daafacbbfd6b944f86101ab5d28403` |
| 7 | `theorem` | [logEmbedding_eq_zero_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/logembedding-eq-zero-iff--ecb88f2cc6e80e4efc671672.md) | 109 | `result-track:ecb88f2cc6e80e4efc671672e6207dcd24382af3e471092571bbb397cb355b7a` |
| 8 | `theorem` | [logEmbedding_component_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/logembedding-component-le--bdc61332b0fc8528b9b7fafd.md) | 124 | `result-track:bdc61332b0fc8528b9b7fafddf0903f25b6c0285fd8c5e62cbb6cd73dd8aa075` |
| 9 | `theorem` | [log_le_of_logEmbedding_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/log-le-of-logembedding-le--a9d447dcfc989d29aa565220.md) | 131 | `result-track:a9d447dcfc989d29aa5652207a3192ec9286b85de0c2028d699e3f3e50620bf8` |
| 10 | `def` | [_root_.NumberField.Units.unitLattice](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/root-numberfield-units-unitlattice--786005c499377be98acf33ff.md) | 160 | `declaration-track:786005c499377be98acf33ff9bccda367ecd13e3db250eafe3e976ef3bf3c5e1` |
| 11 | `theorem` | [unitLattice_inter_ball_finite](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/unitlattice-inter-ball-finite--a8a91a7326abb7424952197a.md) | 165 | `result-track:a8a91a7326abb7424952197ae8148441c58f4fe215b10846086454f200ef8e88` |
| 12 | `theorem` | [seq_next](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/seq-next--b444090ef1349ebecbee2255.md) | 207 | `result-track:b444090ef1349ebecbee22557ff356165097f762a9eb3000bc891857db977dad` |
| 13 | `def` | [seq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/seq--65df3a08b5909ee0a62993bd.md) | 237 | `declaration-track:65df3a08b5909ee0a62993bd166ffa008f7eca83f7ccf4f964a1a28544230d42` |
| 14 | `theorem` | [seq_ne_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/seq-ne-zero--6507aac334f93e43d80d9455.md) | 243 | `result-track:6507aac334f93e43d80d945509bc211e879532286f8646a7149e0810ff723c2b` |
| 15 | `theorem` | [seq_decreasing](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/seq-decreasing--6f51aff2e58f6669c8f2c36f.md) | 247 | `result-track:6f51aff2e58f6669c8f2c36f7b9d61dc7d5d3894cc7d981cb503319c702fb62b` |
| 16 | `theorem` | [seq_norm_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/seq-norm-le--a6b3903dfc4bdc9fdc0c351b.md) | 263 | `result-track:a6b3903dfc4bdc9fdc0c351b1cb27b07db5a6c054ff3f9ae8971dd7ffe77fb43` |
| 17 | `theorem` | [exists_unit](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/exists-unit--148f5172893b4865260d90d8.md) | 278 | `result-track:148f5172893b4865260d90d833c6ced86dec89a2b9008e40e7667b38b883bce6` |
| 18 | `theorem` | [unitLattice_span_eq_top](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/unitlattice-span-eq-top--5eaef9b8c690cbc720c02a98.md) | 302 | `result-track:5eaef9b8c690cbc720c02a983b15d61f70e1c5c4b8b6e495bf9f4cd2c51f85bd` |
| 19 | `def` | [rank](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/rank--e5ff0cea9340956c73aaaf4f.md) | 343 | `declaration-track:e5ff0cea9340956c73aaaf4f967573b7a9b0428a2db00b671a54c8a5f44fbb2b` |
| 20 | `instance` | [instDiscrete_unitLattice](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/instdiscrete-unitlattice--33cff360a9c7340e070b55d4.md) | 345 | `declaration-track:33cff360a9c7340e070b55d41cee8cc75cc61b2af90098eb78ff093aa72d1fbb` |
| 21 | `instance` | [instZLattice_unitLattice](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/instzlattice-unitlattice--4b9e9a7f5db8c49793fe6350.md) | 358 | `declaration-track:4b9e9a7f5db8c49793fe6350e8ee66c18f95c2277170787eb02694fcb1e45071` |
| 22 | `theorem` | [finrank_eq_rank](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/finrank-eq-rank--a5f39c6500eeab4fd8670820.md) | 361 | `result-track:a5f39c6500eeab4fd8670820de2c2aa0bb452efea3f54f13da6868c799f0083b` |
| 23 | `theorem` | [unitLattice_rank](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/unitlattice-rank--cb69757acc9ca29db685caea.md) | 368 | `result-track:cb69757acc9ca29db685caea8af3b543c950dfc020e24f1a4d85da25e33ab364` |
| 24 | `def` | [logEmbeddingQuot](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/logembeddingquot--8f6a179686d600d440012d9a.md) | 374 | `declaration-track:8f6a179686d600d440012d9a1e2b5785df4de938d2c58ac0531a7bedc520cc8e` |
| 25 | `theorem` | [logEmbeddingQuot_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/logembeddingquot-apply--2546826e2a7936ed9ab586f5.md) | 384 | `result-track:2546826e2a7936ed9ab586f596aecc16378f2da0e8ca5e5b77ae2d8b8f408fed` |
| 26 | `theorem` | [logEmbeddingQuot_injective](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/logembeddingquot-injective--b70924a0dd49a89857bc1ee5.md) | 388 | `result-track:b70924a0dd49a89857bc1ee5d7d4ef8b83a6c2d49c6d8a19a94a7976a7923b15` |
| 27 | `def` | [logEmbeddingEquiv](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/logembeddingequiv--73b591731240232865b06a39.md) | 398 | `declaration-track:73b591731240232865b06a39c4a2910e80eb4477d2c6ecc9c994749a6d53edbd` |
| 28 | `theorem` | [logEmbeddingEquiv_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/logembeddingequiv-apply--80917d9d9e05cb94d0b7b069.md) | 409 | `result-track:80917d9d9e05cb94d0b7b069ae0e18ae88468874fba3554315b8ddeaef955009` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/instance--514b1bc7182562c68278cd09.md) | 413 | `declaration-track:514b1bc7182562c68278cd095080117198526e3c063b3a0e27d50e2fc9a88517` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/instance--6cee5c121366dded16299a20.md) | 416 | `declaration-track:6cee5c121366dded16299a20bb8bc71ab3397429cb740b1bb4276b67df9b0d22` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/instance--fd59058cd909e019464a98e1.md) | 422 | `declaration-track:fd59058cd909e019464a98e1b8d2f13180daf56015ec7f00274608fd61ceda52` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/instance--ea7fbb991b4d9cb756ba122e.md) | 435 | `declaration-track:ea7fbb991b4d9cb756ba122ec0958c218a75d96719f4542ce6b1ba647aa00d7a` |
| 33 | `theorem` | [rank_modTorsion](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/rank-modtorsion--7c24454df66aebf0e25348c0.md) | 439 | `result-track:7c24454df66aebf0e25348c0996303ee3178e4692203842cc8c1d88f0b80138f` |
| 34 | `def` | [basisModTorsion](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/basismodtorsion--8a01cba51c42da75541a2837.md) | 444 | `declaration-track:8a01cba51c42da75541a2837b640b58d44e7d57f56fbdc4c79f225761bae0c17` |
| 35 | `def` | [basisUnitLattice](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/basisunitlattice--00d1b83d9d404ed5b2fb9f3b.md) | 449 | `declaration-track:00d1b83d9d404ed5b2fb9f3b10397f0d5179a8449940c0a4cb738e56d9229b93` |
| 36 | `def` | [fundSystem](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/fundsystem--6aa8bde2dd1bc0a31ca7dea0.md) | 454 | `declaration-track:6aa8bde2dd1bc0a31ca7dea0c6dfaca7938602ad35ad424aa8649c3405283ff6` |
| 37 | `theorem` | [fundSystem_mk](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/fundsystem-mk--468c894e233f08cbc520f7ab.md) | 458 | `result-track:468c894e233f08cbc520f7abff7675f7cc165756262bff63d6f257136f83a96f` |
| 38 | `theorem` | [logEmbedding_fundSystem](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/logembedding-fundsystem--1d24d60dbb0bffd6d37f455c.md) | 462 | `result-track:1d24d60dbb0bffd6d37f455c45c37b8caf021bbfa2ec53c84f109a75f6c1d341` |
| 39 | `theorem` | [fun_eq_repr](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/fun-eq-repr--0db427be4cf649a81e858e93.md) | 469 | `result-track:0db427be4cf649a81e858e937fa7bc714e62ea2c35ceabc82ffa8e17453bfb95` |
| 40 | `theorem` | [exist_unique_eq_mul_prod](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/declarations/exist-unique-eq-mul-prod--67139a1c3317ceffc75d8fb9.md) | 484 | `result-track:67139a1c3317ceffc75d8fb9dcba6f9cb1b38afcf2b584a70f2ce32d5a5a5df7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
