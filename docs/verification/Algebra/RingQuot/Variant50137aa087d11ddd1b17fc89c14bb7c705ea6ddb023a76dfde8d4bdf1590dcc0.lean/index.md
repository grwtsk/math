# Verification target: GRWTSK.Algebra.RingQuot.Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d456bbce45029f935ba732070b78af764ae897da",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d456bbce45029f935ba732070b78af764ae897da`.

Source path: `GRWTSK/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Hom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/instance--19a749433b8cd3ed7476e475.md) | 40 | `declaration-track:19a749433b8cd3ed7476e475a92b4c7eb5198f1524b4f20754d71ca204904138` |
| 2 | `theorem` | [coe_algebraMap](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/coe-algebramap--80e072b844be2f3a40986438.md) | 47 | `result-track:80e072b844be2f3a409864387845a8ec2695bbced54d0d21b74bfb831998c681` |
| 3 | `inductive` | [Rel](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/rel--a6e14ec095c05b450dd8c9af.md) | 60 | `declaration-track:a6e14ec095c05b450dd8c9af722371807870685abb4b95cdcce168e6fe2f1818` |
| 4 | `theorem` | [Rel.add_right](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/rel-add-right--adf429259e82dbb371d970b3.md) | 67 | `result-track:adf429259e82dbb371d970b3b1940f72fdb5318eef215e4305e34dabf2701b1b` |
| 5 | `theorem` | [Rel.neg](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/rel-neg--aa16c3edaded48c73e01f545.md) | 72 | `result-track:aa16c3edaded48c73e01f545ad235a360ea60e34bdaf40ee45ded4f1331d1254` |
| 6 | `theorem` | [Rel.sub_left](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/rel-sub-left--a161b322aa48f80b8354e2c6.md) | 76 | `result-track:a161b322aa48f80b8354e2c66b8822a0a101f9e1aa11c2d5fc011b577e501ab0` |
| 7 | `theorem` | [Rel.sub_right](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/rel-sub-right--b9d9112d58fef492a85476d3.md) | 80 | `result-track:b9d9112d58fef492a85476d33d29a2796a9c2e43358402f3def05f21445578ad` |
| 8 | `theorem` | [Rel.smul](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/rel-smul--24738b1ccdb6bd747298e3f2.md) | 84 | `result-track:24738b1ccdb6bd747298e3f2b2ca2e65107ea45d641d3bcb331f579d01e797d5` |
| 9 | `def` | [ringCon](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/ringcon--f67ab6f0ecc425f2fbabc6b7.md) | 89 | `declaration-track:f67ab6f0ecc425f2fbabc6b77df297a5cd2765b45fb7d0d770e9a0000897b184` |
| 10 | `theorem` | [eqvGen_rel_eq](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/eqvgen-rel-eq--983b9313b60215d6ddde7a40.md) | 126 | `result-track:983b9313b60215d6ddde7a406eddde2e74b4460a922008a7800fc4aa20b1ffe5` |
| 11 | `structure` | [RingQuot](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/ringquot--fa4a8643cf1ac5a54b4095e5.md) | 152 | `declaration-track:fa4a8643cf1ac5a54b4095e520606e9d0a0f3c7bb3b2f9f0de17e897c58c71f7` |
| 12 | `def` | [natCast](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/natcast--ed7ab4ae5c225adb8c3bf8f2.md) | 161 | `declaration-track:ed7ab4ae5c225adb8c3bf8f2415547e358f3beb6d6b2d079c8e2b2c1327b4473` |
| 13 | `def` | [smul](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/smul--f7567daf92d879770301a0f9.md) | 203 | `declaration-track:f7567daf92d879770301a0f98cdb4ca6321d47338c2097bf6d4cc5f7abc83d37` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/instance--b99cc61f1ccc9367ebfed8cc.md) | 206 | `declaration-track:b99cc61f1ccc9367ebfed8cc69d0e925a7a62e23ea2be4377062312eccb25b79` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/instance--4460bb952f3de2c84d08daca.md) | 209 | `declaration-track:4460bb952f3de2c84d08daca10b8add71530b83e27d7f11d5d8c29f90f2e67be` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/instance--7286239e2388eab0260ada68.md) | 212 | `declaration-track:7286239e2388eab0260ada68966ec1064bf9f4c4b3f527256d2c879b6c6653f4` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/instance--2c2df3e50e707d0554c3a09b.md) | 215 | `declaration-track:2c2df3e50e707d0554c3a09ba2bc84943e5704c583ece73fabb2965b4526792f` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/instance--57d17c5e2d949446bb1e1d2c.md) | 218 | `declaration-track:57d17c5e2d949446bb1e1d2cd430c4e241da585719c729c28496b04f0df51597` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/instance--e73d5d034e15c2db759f44a7.md) | 221 | `declaration-track:e73d5d034e15c2db759f44a791e7ac7041017093a1a02d255db9314a7caee72f` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/instance--bd9d040d32297e8632f13398.md) | 224 | `declaration-track:bd9d040d32297e8632f133986a83c5f9c5d5ad449ff244fdfe74c723c702ed30` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/instance--25ef7932b0dc34a050f582e1.md) | 227 | `declaration-track:25ef7932b0dc34a050f582e1253103ac75ce570f3b3299241b56993bf85fc9f6` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/instance--6aac4e99692668440e33303f.md) | 230 | `declaration-track:6aac4e99692668440e33303ff6464df65179bceca94a23f7efb3fa9a0a43ee8f` |
| 23 | `theorem` | [zero_quot](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/zero-quot--f261a7475132a5f0de3ef466.md) | 233 | `result-track:f261a7475132a5f0de3ef4669837b32be7a4902dba84c97baa3a09f1fea56cca` |
| 24 | `theorem` | [one_quot](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/one-quot--7f7427fd4c7f1b6ad49652ca.md) | 237 | `result-track:7f7427fd4c7f1b6ad49652ca00921be9653e9019f053489760f02d47ad46df99` |
| 25 | `theorem` | [add_quot](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/add-quot--54c7f3dbf647e4f11aaf4982.md) | 241 | `result-track:54c7f3dbf647e4f11aaf49827a8b9ade6cbb935781a2907f2132b72616218932` |
| 26 | `theorem` | [mul_quot](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/mul-quot--13abf774764a55fb55bdfa44.md) | 247 | `result-track:13abf774764a55fb55bdfa445a1b9efafa2c86e3eba813afe57082017b049bc9` |
| 27 | `theorem` | [pow_quot](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/pow-quot--6f6eaa5d4ca73d2262ddef7d.md) | 253 | `result-track:6f6eaa5d4ca73d2262ddef7d9c05be5d88f194f892831dacf794f3b41653a7a2` |
| 28 | `theorem` | [neg_quot](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/neg-quot--85970edd1b22f6917a0cd7d6.md) | 258 | `result-track:85970edd1b22f6917a0cd7d6cd8bcbff5283efb558d185fbc39d504fc538497a` |
| 29 | `theorem` | [sub_quot](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/sub-quot--bb4d7bd400c6263f6a238362.md) | 265 | `result-track:bb4d7bd400c6263f6a23836271f31ba8ac44af3367286ec9239185b98a47ad34` |
| 30 | `theorem` | [smul_quot](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/smul-quot--7bd06da4804f89e42fdb5d1a.md) | 272 | `result-track:7bd06da4804f89e42fdb5d1a373a5097a9d1727534e5df24657a41bdbf1dbab5` |
| 31 | `instance` | [instIsScalarTowerRingQuot](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/instisscalartowerringquot--729340eb57dfb3272040aab3.md) | 279 | `declaration-track:729340eb57dfb3272040aab36a7a4b7aff8b99cb0be47616c32d2f7a420e327c` |
| 32 | `instance` | [instSMulCommClassRingQuot](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/instsmulcommclassringquot--a93094c7fceae874d734cb6c.md) | 284 | `declaration-track:a93094c7fceae874d734cb6ca5a5fbd1e617c55fb947abd59d8259acbbfbdb64` |
| 33 | `instance` | [instAddCommMonoid](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/instaddcommmonoid--47a151ada477b8a691d22e7e.md) | 289 | `declaration-track:47a151ada477b8a691d22e7e08490e2ca9f234d22e33d6f8433ea53f1f777afd` |
| 34 | `instance` | [instMonoidWithZero](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/instmonoidwithzero--b0e558f7bac8f8d24a176fad.md) | 313 | `declaration-track:b0e558f7bac8f8d24a176fadf6db87ed958e4e3c64856b3c09e9ffda1fc23359` |
| 35 | `instance` | [instSemiring](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/instsemiring--3a4739721d772b10f55a6d36.md) | 337 | `declaration-track:3a4739721d772b10f55a6d36e3f28936aa210e898846c874a8e09d5a60d0f1f5` |
| 36 | `def` | [intCast](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/intcast--dd8b94611dac928e2bb37403.md) | 359 | `declaration-track:dd8b94611dac928e2bb37403818bf0c0940f2c8efc03dc289f597455d34a0482` |
| 37 | `instance` | [instRing](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/instring--807e3acf2017ce81f4fd81d6.md) | 362 | `declaration-track:807e3acf2017ce81f4fd81d67d0171e2781e736131976e893efdd710b8f2df45` |
| 38 | `instance` | [instCommSemiring](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/instcommsemiring--96e2fb784ce368b7150f5e10.md) | 389 | `declaration-track:96e2fb784ce368b7150f5e104f0bd74b27dbaa6af350a6b7226231c7a87dafb2` |
| 39 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/instance--1ade205a12f23cb6472b34e0.md) | 396 | `declaration-track:1ade205a12f23cb6472b34e099fda0f6b1b1adcd0f8cebc3b0abe4f76eca3a02` |
| 40 | `instance` | [instInhabitedRingQuot](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/instinhabitedringquot--bf88e4b444e85eb4aeaf972d.md) | 399 | `declaration-track:bf88e4b444e85eb4aeaf972d61cc5743046fafcd450c5f1c0f2aef0e5d4edbc6` |
| 41 | `instance` | [instAlgebraRingQuot](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/instalgebraringquot--9c307df652b434d07a8a9d19.md) | 402 | `declaration-track:9c307df652b434d07a8a9d195855530a6104e53f75788bf9ce9e58e07948d3d9` |
| 42 | `theorem` | [mkRingHom_rel](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/mkringhom-rel--1c49d7ae27db0df1c610051a.md) | 426 | `result-track:1c49d7ae27db0df1c610051a1ba51f4515512b02ebc45b07b90ab3e359413974` |
| 43 | `theorem` | [mkRingHom_surjective](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/mkringhom-surjective--b93df07d50c222741659d028.md) | 430 | `result-track:b93df07d50c222741659d02895a1b1a9ec628971a5e2406dbea3cec92fab5d74` |
| 44 | `theorem` | [ringQuot_ext](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/ringquot-ext--a244ba98cbc70e06a98ab6cc.md) | 437 | `result-track:a244ba98cbc70e06a98ab6cc3fe7690e0db718079021e213b9ecef493cda4195` |
| 45 | `theorem` | [lift_mkRingHom_apply](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/lift-mkringhom-apply--9420ff6e2abbb5c1eee54259.md) | 485 | `result-track:9420ff6e2abbb5c1eee542590f1072a0b181317113a24be3e706b2005d7a0f44` |
| 46 | `theorem` | [lift_unique](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/lift-unique--0db9d2f6a386e8fec8892735.md) | 492 | `result-track:0db9d2f6a386e8fec8892735eea4b9eacd26f9341f2c278b0ae13a3716333dc4` |
| 47 | `theorem` | [eq_lift_comp_mkRingHom](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/eq-lift-comp-mkringhom--2484ce4d162bd2d486eb043f.md) | 498 | `result-track:2484ce4d162bd2d486eb043fbba5fd71c93aeac7facc9dd23b11028f2b52c77e` |
| 48 | `def` | [ringQuotToIdealQuotient](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/ringquottoidealquotient--f134a08bb600d6fb498ba98b.md) | 516 | `declaration-track:f134a08bb600d6fb498ba98b7dfc78d79d7d9861fa87df176d0d844c8edbb019` |
| 49 | `theorem` | [ringQuotToIdealQuotient_apply](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/ringquottoidealquotient-apply--2bbf9d3837ce4679704baab4.md) | 523 | `result-track:2bbf9d3837ce4679704baab44494eb7ea7de15fdb5d977189a5ab09af1c15bb6` |
| 50 | `def` | [idealQuotientToRingQuot](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/idealquotienttoringquot--8cfba3f37f00df9b00965ca4.md) | 530 | `declaration-track:8cfba3f37f00df9b00965ca42b6caa35cfa34192449dd020793da52d2a1d6772` |
| 51 | `theorem` | [idealQuotientToRingQuot_apply](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/idealquotienttoringquot-apply--7f57009570bd9afb69acca8c.md) | 546 | `result-track:7f57009570bd9afb69acca8c79078358c526807a02b7cbc33b859cbb9ff2ae8f` |
| 52 | `def` | [ringQuotEquivIdealQuotient](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/ringquotequividealquotient--23626525552579ba904e6b49.md) | 554 | `declaration-track:23626525552579ba904e6b498e789100e69d174d2e42a09c8ebe949c65da4f9d` |
| 53 | `theorem` | [Rel.star](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/rel-star--101c32b34c57c4ee8ee50942.md) | 576 | `result-track:101c32b34c57c4ee8ee50942613d5f8c6aa2688461047b58af3f23f844d3a534` |
| 54 | `theorem` | [star'_quot](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/star-quot--dd40dac8e7ac6ee1dc1c143f.md) | 590 | `result-track:dd40dac8e7ac6ee1dc1c143f54b874348f790677a74a732da49379a85f2b0067` |
| 55 | `def` | [starRing](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/starring--c54321a94fd8727bb3e58ce4.md) | 595 | `declaration-track:c54321a94fd8727bb3e58ce45c8efb53decdd3c1c59a33912c198234c487586a` |
| 56 | `theorem` | [mkAlgHom_coe](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/mkalghom-coe--7e4c56b05353b0f583041a1d.md) | 623 | `result-track:7e4c56b05353b0f583041a1dc71646e1edf97b5f0ba8b06e954b30ca3a3f03e8` |
| 57 | `theorem` | [mkAlgHom_rel](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/mkalghom-rel--9d04be4219459b5420161fff.md) | 628 | `result-track:9d04be4219459b5420161fffbcad9b004c874d45edd9ae781305faf21bf2e822` |
| 58 | `theorem` | [mkAlgHom_surjective](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/mkalghom-surjective--3f9895530a235d1be2f7f3ac.md) | 632 | `result-track:3f9895530a235d1be2f7f3ac8ccee098416f42b5057cfafcd6bf25d71de3662e` |
| 59 | `theorem` | [ringQuot_ext'](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/ringquot-ext--311b116c5d7bf556693a3f32.md) | 642 | `result-track:311b116c5d7bf556693a3f3291b842d76f20b329ed0db26dda05de0b48576db5` |
| 60 | `theorem` | [liftAlgHom_mkAlgHom_apply](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/liftalghom-mkalghom-apply--7cf7ae164f1c50da92816608.md) | 692 | `result-track:7cf7ae164f1c50da92816608c90d95a7d476bb62c3b493d37a6869be147b89a6` |
| 61 | `theorem` | [liftAlgHom_unique](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/liftalghom-unique--315d73c03151c00cfe2e8745.md) | 699 | `result-track:315d73c03151c00cfe2e8745364b4b114ad4665678037efe03e4347a37de9125` |
| 62 | `theorem` | [eq_liftAlgHom_comp_mkAlgHom](../../../../mathematics/Algebra/RingQuot/Variant50137aa087d11ddd1b17fc89c14bb7c705ea6ddb023a76dfde8d4bdf1590dcc0.lean/declarations/eq-liftalghom-comp-mkalghom--f18e9d6ad32e171725b2cab0.md) | 705 | `result-track:f18e9d6ad32e171725b2cab0ab1110ab597ccf9c425a031c08feea86d829b4e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
