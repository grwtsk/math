# Verification target: GRWTSK.Analysis.ComplexAnalysis.Complex.Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fae4130626453eb655d57cda26af187dba42df6d",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fae4130626453eb655d57cda26af187dba42df6d`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean.json)

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
| 1 | `def` | [cpow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/cpow--9c1606149a89a9e7d5540270.md) | 35 | `declaration-track:9c1606149a89a9e7d5540270f55c24529e6b528f894d5f342141b77b3830e18b` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/instance--f677a9b7dd5a9c2ae4d055cb.md) | 38 | `declaration-track:f677a9b7dd5a9c2ae4d055cbfa731bb3fc80f0d2ac7da06c077038714feaa543` |
| 3 | `theorem` | [cpow_eq_pow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/cpow-eq-pow--4f7554e94c74966989acba3b.md) | 42 | `result-track:4f7554e94c74966989acba3b2147e5cc01ee2450460a97a59b976679b869c563` |
| 4 | `theorem` | [cpow_def](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/cpow-def--ad30034325afeaa766f1803c.md) | 45 | `result-track:ad30034325afeaa766f1803cecf6802178c6bb56cc696596c10087aabf5cc246` |
| 5 | `theorem` | [cpow_def_of_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/cpow-def-of-ne-zero--e3c38c804e8cc3e0697f4d25.md) | 48 | `result-track:e3c38c804e8cc3e0697f4d252a243559ad5be8e5aa1187517d511a099ce6f3fd` |
| 6 | `theorem` | [cpow_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/cpow-zero--8c2de70410d6a7a0b0cdb169.md) | 52 | `result-track:8c2de70410d6a7a0b0cdb1694d2481c9490bf2aed079219276e0b7b85f8fe38a` |
| 7 | `theorem` | [cpow_eq_zero_iff](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/cpow-eq-zero-iff--e811f66d2f75105e5939bf13.md) | 55 | `result-track:e811f66d2f75105e5939bf13cdf92e3c646536238a7a67b8e2fe03cacadd1513` |
| 8 | `theorem` | [cpow_ne_zero_iff](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/cpow-ne-zero-iff--cfa29e595ebb4da3b4799878.md) | 59 | `result-track:cfa29e595ebb4da3b4799878c157415724ba3cfa8324d7a50ccf191bd38303ba` |
| 9 | `theorem` | [cpow_ne_zero_iff_of_exponent_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/cpow-ne-zero-iff-of-exponent-ne-zero--54c2c0b6763f9a4329794d92.md) | 63 | `result-track:54c2c0b6763f9a4329794d923e42a25a95fdba9b6aa60dbe56543ab23821de73` |
| 10 | `theorem` | [zero_cpow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/zero-cpow--2703936491125524af12e0c0.md) | 67 | `result-track:2703936491125524af12e0c0e7e8044311d809bb5d396a32e0dfbe91dd409d0e` |
| 11 | `theorem` | [zero_cpow_eq_iff](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/zero-cpow-eq-iff--85bb70ab384484ced1665451.md) | 69 | `result-track:85bb70ab384484ced1665451e1d0ff885b2ec9ef60448df7aa8515eb30bbcddd` |
| 12 | `theorem` | [eq_zero_cpow_iff](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/eq-zero-cpow-iff--b1c033e7c299891ac2eeee32.md) | 78 | `result-track:b1c033e7c299891ac2eeee325f60608dd9d17d7cd7508ed9606cc8f6456bdbc0` |
| 13 | `theorem` | [cpow_one](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/cpow-one--e98d0573c4329ca7236197ec.md) | 82 | `result-track:e98d0573c4329ca7236197ecf2d0f87160359ff0f29ba3108853d0e881668a88` |
| 14 | `theorem` | [one_cpow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/one-cpow--7094beb4437336f38a2050cf.md) | 88 | `result-track:7094beb4437336f38a2050cf29b084b2149d20674e9ef6f6603304eabda389a4` |
| 15 | `theorem` | [cpow_add](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/cpow-add--2f86d7622d5fb8fcf3954bd6.md) | 92 | `result-track:2f86d7622d5fb8fcf3954bd601cffdd47965c8cda820dfb17cde390b7297481b` |
| 16 | `theorem` | [cpow_mul](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/cpow-mul--82e8bf06500700648c6a8889.md) | 96 | `result-track:82e8bf06500700648c6a888920f1d9edcd6b74e847fad8915610eeeea80120b2` |
| 17 | `theorem` | [cpow_neg](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/cpow-neg--793c6308724a77fddfc1f241.md) | 101 | `result-track:793c6308724a77fddfc1f241e111bf0285bde17d4a6904f43eabdb9b11e6faa4` |
| 18 | `theorem` | [cpow_sub](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/cpow-sub--953b2fa3f45e9954d705780f.md) | 105 | `result-track:953b2fa3f45e9954d705780fb269363fae009ae831b65edfc04ad2669539a71b` |
| 19 | `theorem` | [cpow_neg_one](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/cpow-neg-one--dc59e8cfdcee9aae6c2455cf.md) | 108 | `result-track:dc59e8cfdcee9aae6c2455cf5f45df2cf8e59f8c91e9813a2ea04fcb41697590` |
| 20 | `lemma` | [cpow_int_mul](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/cpow-int-mul--5c86dc9bcae14f15cdb980d3.md) | 111 | `result-track:5c86dc9bcae14f15cdb980d3606abfa8f4dd32e4be471a497e823d48c3de03ee` |
| 21 | `lemma` | [cpow_mul_int](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/cpow-mul-int--a7d2e0afc02f6b4d93390c81.md) | 118 | `result-track:a7d2e0afc02f6b4d93390c8138b5d4354375978b7a87222fa42666b50de068db` |
| 22 | `lemma` | [cpow_nat_mul](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/cpow-nat-mul--9fd861754891d94b999bb610.md) | 120 | `result-track:9fd861754891d94b999bb610bfa0a17b27e1fb6f1ca5c294d264ff0ea0e3dcec` |
| 23 | `lemma` | [cpow_ofNat_mul](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/cpow-ofnat-mul--5050d880ce01212c751ad02d.md) | 123 | `result-track:5050d880ce01212c751ad02d28175a7c4158d985d787d816bb42ce8840169507` |
| 24 | `lemma` | [cpow_mul_nat](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/cpow-mul-nat--1a83a299d1754420a76c88a3.md) | 127 | `result-track:1a83a299d1754420a76c88a3abaad2c2e4836731b1ddee29ec6827c686addda7` |
| 25 | `lemma` | [cpow_mul_ofNat](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/cpow-mul-ofnat--aa65e9f2ed5be81b534e005a.md) | 130 | `result-track:aa65e9f2ed5be81b534e005a97ebcad830b452633aebdc8e319efddc2e24dbc5` |
| 26 | `theorem` | [cpow_natCast](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/cpow-natcast--d00cda02695034cecd3890c4.md) | 135 | `result-track:d00cda02695034cecd3890c414e07bcad39556450812c04305d56ba21373519c` |
| 27 | `lemma` | [cpow_ofNat](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/cpow-ofnat--d7ac553a8fac0cd247e7ef68.md) | 138 | `result-track:d7ac553a8fac0cd247e7ef68ff8b16ae980bb4fc507169a708588429d8058791` |
| 28 | `theorem` | [cpow_two](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/cpow-two--471a9b5c4157cb62f98df747.md) | 142 | `result-track:471a9b5c4157cb62f98df747b0dc64768306855aa815665dcd10ddb882ea2fa2` |
| 29 | `theorem` | [cpow_intCast](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/cpow-intcast--1c27ec58dc9e7be35f1573fc.md) | 145 | `result-track:1c27ec58dc9e7be35f1573fc04cd38b623bc50f51513be4f450b5d37e404e3bc` |
| 30 | `theorem` | [cpow_nat_inv_pow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/cpow-nat-inv-pow--a4089d7ec34a433b771bba9e.md) | 148 | `result-track:a4089d7ec34a433b771bba9e2bdff3120b0a5b93a9556fae97df026fdc868118` |
| 31 | `lemma` | [cpow_ofNat_inv_pow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/cpow-ofnat-inv-pow--48eb1d5c0af05e944e2aa0b2.md) | 153 | `result-track:48eb1d5c0af05e944e2aa0b29f038ce629a3c02446417c64caf255292abe97e7` |
| 32 | `lemma` | [cpow_int_mul'](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/cpow-int-mul--5f450a00be74c202d55f2534.md) | 161 | `result-track:5f450a00be74c202d55f253491a8840eb8f4e053f4922a01c482d786dcd0bcd7` |
| 33 | `lemma` | [cpow_nat_mul'](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/cpow-nat-mul--8a00928364d658837c27f502.md) | 170 | `result-track:8a00928364d658837c27f5022ff211f0914b88e88db4e29deba72de7c4ee0727` |
| 34 | `lemma` | [cpow_ofNat_mul'](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/cpow-ofnat-mul--089cfaf7d350ba3c81d7f55a.md) | 174 | `result-track:089cfaf7d350ba3c81d7f55ae8865feae8bcdbe390d14e2907221b789c30e107` |
| 35 | `lemma` | [pow_cpow_nat_inv](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/pow-cpow-nat-inv--f5b82e8374c73db525f6e8f0.md) | 179 | `result-track:f5b82e8374c73db525f6e8f0c1f40447da5aca356933383420838df57465e902` |
| 36 | `lemma` | [pow_cpow_ofNat_inv](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/pow-cpow-ofnat-inv--820815d001d202c5fddcc7bb.md) | 185 | `result-track:820815d001d202c5fddcc7bb72c86fc07e954a6bf338d5b059b693d0256f8f8a` |
| 37 | `lemma` | [sq_cpow_two_inv](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/sq-cpow-two-inv--6224c59ac7116cf967706cb6.md) | 191 | `result-track:6224c59ac7116cf967706cb61abc86f837938d56773f40eca0f3f8b9a8ed079a` |
| 38 | `lemma` | [isSquare](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/issquare--a93012ccae00dcc94b4fcd18.md) | 195 | `result-track:a93012ccae00dcc94b4fcd187a959aeb5dfa43f5d8cd0add7f014acb67a36652` |
| 39 | `theorem` | [mul_cpow_ofReal_nonneg](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/mul-cpow-ofreal-nonneg--501f8cd389ceff88d879478a.md) | 197 | `result-track:501f8cd389ceff88d879478a0e8f3bd5e26253ddf8f0ca9e88a0f62e93040f9c` |
| 40 | `lemma` | [natCast_mul_natCast_cpow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/natcast-mul-natcast-cpow--8ca06587fcd83329d90ec331.md) | 210 | `result-track:8ca06587fcd83329d90ec3313d6e8cc3c9fa9b73c4f71455715cb7a4184fb587` |
| 41 | `lemma` | [natCast_cpow_natCast_mul](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/natcast-cpow-natcast-mul--50c5802bbad63aea75c4712d.md) | 213 | `result-track:50c5802bbad63aea75c4712d56a370a6528d4ff5d45a7ddd535a0897d6d2d6c7` |
| 42 | `theorem` | [inv_cpow_eq_ite](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/inv-cpow-eq-ite--2dc1bf98ada8dfca3480b642.md) | 218 | `result-track:2dc1bf98ada8dfca3480b6427530f316b90542f106373835fc871a14c68b7f8b` |
| 43 | `theorem` | [inv_cpow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/inv-cpow--a6dc2856ad836d54f1c06915.md) | 225 | `result-track:a6dc2856ad836d54f1c06915a47d9d76d521d9f81fe881db2cf24e62c7175973` |
| 44 | `lemma` | [inv_cpow_ofReal_nonneg](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/inv-cpow-ofreal-nonneg--a9ae8fa23f8b88026a31dd7b.md) | 228 | `result-track:a9ae8fa23f8b88026a31dd7b7ad9e1a7ec3c89de4f0c6b56f6bc284b9654f3a9` |
| 45 | `lemma` | [div_cpow_ofReal_nonneg](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/div-cpow-ofreal-nonneg--23837daa7f3a111bea8496c8.md) | 232 | `result-track:23837daa7f3a111bea8496c868c070193025890a4d876e992752f67f37f03dde` |
| 46 | `theorem` | [inv_cpow_eq_ite'](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/inv-cpow-eq-ite--b2d4b0e3bf85b1550f859c54.md) | 238 | `result-track:b2d4b0e3bf85b1550f859c5403e882a8e1330e0bc22d942f646865cb59286150` |
| 47 | `theorem` | [conj_cpow_eq_ite](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/conj-cpow-eq-ite--be4957804f47ababdad53f22.md) | 245 | `result-track:be4957804f47ababdad53f22091ab80d14e675b5c1e94bad6b095c2908fab819` |
| 48 | `theorem` | [conj_cpow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/conj-cpow--638da6bdc6fc8413bdd92f49.md) | 251 | `result-track:638da6bdc6fc8413bdd92f495c916f5b99c7346a857303768575751ec4a60fd5` |
| 49 | `theorem` | [cpow_conj](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/cpow-conj--326918b20b0b627aadc24c1e.md) | 254 | `result-track:326918b20b0b627aadc24c1e33f292d27fd95ce9d7b00023a39a61f1987a7acb` |
| 50 | `lemma` | [natCast_add_one_cpow_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant6976075d9c008b6bf9b02017ea376a05a2a8443c4ac49feeba9cc0bdb6bf4bac.lean/declarations/natcast-add-one-cpow-ne-zero--fa405b283a80ab4020da4d71.md) | 257 | `result-track:fa405b283a80ab4020da4d71339626a0f301cd5d65265dbf3c2986457acb7da5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
