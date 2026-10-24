# Verification target: GRWTSK.Algebra.RingQuot.Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6276320a5cef6c76cc60bc47a8457e5267456fab",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6276320a5cef6c76cc60bc47a8457e5267456fab`.

Source path: `GRWTSK/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean.json)

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
| 1 | `inductive` | [Rel](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/rel--d03cabc784336abf1eee6763.md) | 49 | `declaration-track:d03cabc784336abf1eee676321689b14bbc06e70d7f89911588127d7f1d5fc04` |
| 2 | `theorem` | [Rel.add_right](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/rel-add-right--80847603568fb53a75a4dc5b.md) | 55 | `result-track:80847603568fb53a75a4dc5b40ccedf4f63e6c0df026fb6a1a8095d792b9ea24` |
| 3 | `theorem` | [Rel.neg](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/rel-neg--b97b85692cd5fa0a3b22be02.md) | 59 | `result-track:b97b85692cd5fa0a3b22be020d041a45250a190ef2dff613871be28bbca2ce5f` |
| 4 | `theorem` | [Rel.sub_left](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/rel-sub-left--5f2a5030228e02035738885e.md) | 62 | `result-track:5f2a5030228e02035738885e12321bc6fd5cb155d22081792bdb31f066dda763` |
| 5 | `theorem` | [Rel.sub_right](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/rel-sub-right--2b83e50cec9664e79cedf84c.md) | 65 | `result-track:2b83e50cec9664e79cedf84cd74c0b7be62edafedd4d00593094e0ac52c3bf68` |
| 6 | `theorem` | [Rel.smul](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/rel-smul--0b6b10d8b6ef53ad248748d9.md) | 68 | `result-track:0b6b10d8b6ef53ad248748d94b90e456d9bdecdfe427cf371d3c7f96fc2a4e6a` |
| 7 | `def` | [ringCon](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/ringcon--a26f18de7dd8aa2153979bc9.md) | 72 | `declaration-track:a26f18de7dd8aa2153979bc9a78041be2a592f6033f3bff9e2eb5b0541f8c265` |
| 8 | `theorem` | [eqvGen_rel_eq](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/eqvgen-rel-eq--a655b9d53013134d0306af5f.md) | 108 | `result-track:a655b9d53013134d0306af5f6b86b376e35362efc1cef2b04059d5ca2f7b93c9` |
| 9 | `structure` | [RingQuot](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/ringquot--6c8ebdeabc067d9e5a0f6f0d.md) | 133 | `declaration-track:6c8ebdeabc067d9e5a0f6f0d2dee16ac4733312fad1a4e35836c16c396e5dcac` |
| 10 | `def` | [natCast](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/natcast--5b54813885c8942f3bbf1d00.md) | 142 | `declaration-track:5b54813885c8942f3bbf1d00519369bb24f56a64635272b1de1c0db66f9c3215` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/instance--34693edc3deac36a5510d55c.md) | 145 | `declaration-track:34693edc3deac36a5510d55c135407d5b7e07e1baaba0d321440cce33c755539` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/instance--a6ebf208c73085a6f488c49a.md) | 148 | `declaration-track:a6ebf208c73085a6f488c49a6d7a17bd76398e889aa45a9ab96169cd3f2d2108` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/instance--ce2c00f8ba284567375adbb9.md) | 151 | `declaration-track:ce2c00f8ba284567375adbb93854595b99f4f1213337cab8def0c25862af7497` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/instance--770dc96d1991bbd86fe0bd1c.md) | 154 | `declaration-track:770dc96d1991bbd86fe0bd1cf6dcf29e35e3ba649a6f8bddb435f16aa7eb9c89` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/instance--41e293d41ba2e89984900dde.md) | 157 | `declaration-track:41e293d41ba2e89984900ddef72cdd895e09af9d2b0899b7d983402806c7ced7` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/instance--d51590a88d61148df710aaca.md) | 160 | `declaration-track:d51590a88d61148df710aacaaad7a81d70d5b1bcfcadef9767a4a102c3a494f8` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/instance--77a192da85091e3cbb5f6da2.md) | 171 | `declaration-track:77a192da85091e3cbb5f6da234794e2529ce8c029893e520fc71449fd9e35a1c` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/instance--1a76381a38a52c8258b27f7a.md) | 174 | `declaration-track:1a76381a38a52c8258b27f7a6f085aef097e8f2f70b5cd290e70725e0a39cdb4` |
| 19 | `def` | [smul](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/smul--2a01b321b80969ce77e82136.md) | 179 | `declaration-track:2a01b321b80969ce77e82136b5bf16b0ee5730fdbdfa7f8e283cfcb50949ac8d` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/instance--3e1c3c62c4d652afe998c11f.md) | 182 | `declaration-track:3e1c3c62c4d652afe998c11f61734f055e7aecdc59a0e86bea8ce3aab7fd9150` |
| 21 | `theorem` | [zero_quot](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/zero-quot--e5d3b5a789c62f096620c8b2.md) | 185 | `result-track:e5d3b5a789c62f096620c8b2217a32d131e251638afdc4113a7a1be8061f46da` |
| 22 | `theorem` | [one_quot](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/one-quot--5ac48832f517f0deae49db3c.md) | 188 | `result-track:5ac48832f517f0deae49db3cec3b4a4294901f47a5f621fa17a156ed719ec6f7` |
| 23 | `theorem` | [add_quot](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/add-quot--7505b410ed335080af14a2e1.md) | 191 | `result-track:7505b410ed335080af14a2e1578a97308b06e782a65170cfa4421537b926da85` |
| 24 | `theorem` | [mul_quot](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/mul-quot--eb0d50edefe3e7e4a6983f52.md) | 194 | `result-track:eb0d50edefe3e7e4a6983f52bf08f35467289cff1a015c115007fd61f0aa1c54` |
| 25 | `theorem` | [pow_quot](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/pow-quot--b4a7f2c92eb207f429e386b4.md) | 197 | `result-track:b4a7f2c92eb207f429e386b4a131d1dd598db42151586933ab13e9fdf706dca0` |
| 26 | `theorem` | [neg_quot](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/neg-quot--6d70328099ffe2dd3df7a494.md) | 200 | `result-track:6d70328099ffe2dd3df7a494445839a09882709207a3c18da997d20c4927810d` |
| 27 | `theorem` | [sub_quot](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/sub-quot--fc29b6914b719397e0521016.md) | 204 | `result-track:fc29b6914b719397e05210164017e4708dfb12cfb09ab485c2fb31d8ef4a460e` |
| 28 | `theorem` | [smul_quot](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/smul-quot--14f700bc8767b83390307a61.md) | 208 | `result-track:14f700bc8767b83390307a6167caad5c472258e767eb96f5c515a8e3f2bed7a6` |
| 29 | `instance` | [instIsScalarTower](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/instisscalartower--733dbae2a348b885a0fca38d.md) | 212 | `declaration-track:733dbae2a348b885a0fca38d204696481749c4dab7fd16bc9b22e3f409566e70` |
| 30 | `instance` | [instSMulCommClass](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/instsmulcommclass--ffbdfd60fa0efd772d1f8f0f.md) | 216 | `declaration-track:ffbdfd60fa0efd772d1f8f0faf73674d559598d115c56126841fb7633f7098e9` |
| 31 | `instance` | [instAddCommMonoid](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/instaddcommmonoid--3182372ac379dcb45bd0726c.md) | 220 | `declaration-track:3182372ac379dcb45bd0726c191df1ddfe5d33415365b44f2dedb2cef20509a8` |
| 32 | `instance` | [instMonoidWithZero](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/instmonoidwithzero--476fabc51c84640a60a6ebd0.md) | 242 | `declaration-track:476fabc51c84640a60a6ebd0c7d264983e90719276bed913ef649a8199fcaaec` |
| 33 | `instance` | [instSemiring](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/instsemiring--acf28de0a3350d0ab4028c25.md) | 266 | `declaration-track:acf28de0a3350d0ab4028c2543b52598c3f2d866e85dada2ef1c5694b572cd97` |
| 34 | `def` | [intCast](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/intcast--f808031e32637e04a3572e8d.md) | 278 | `declaration-track:f808031e32637e04a3572e8d620ace38d03ff705eb6a1e11a76675c13b2e07d5` |
| 35 | `instance` | [instRing](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/instring--52dc0ce5769e6712cb22fc28.md) | 281 | `declaration-track:52dc0ce5769e6712cb22fc28ad084d33fec2709dacce005f6badebfc911492a1` |
| 36 | `instance` | [instCommSemiring](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/instcommsemiring--b544bb71d4248763ea4796c0.md) | 303 | `declaration-track:b544bb71d4248763ea4796c00966c2a8572419a28c8d877d14812515ddd44c03` |
| 37 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/instance--49f6307cbbe5d235f7d33afc.md) | 309 | `declaration-track:49f6307cbbe5d235f7d33afc6e5b37543e393eba0a2241ed77f23271c12d29ef` |
| 38 | `instance` | [instInhabited](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/instinhabited--2684d4af21e47b0f6beff234.md) | 312 | `declaration-track:2684d4af21e47b0f6beff2342522a917e5622e7cae11a6b26f8de5680301a9d3` |
| 39 | `instance` | [instAlgebra](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/instalgebra--897b0bc5427d4bfd8dbc2fb9.md) | 315 | `declaration-track:897b0bc5427d4bfd8dbc2fb938b13f2bab5d70218cdf4b5ebf36b58818f9ad03` |
| 40 | `theorem` | [mkRingHom_rel](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/mkringhom-rel--16603d6b0c340db4dd924958.md) | 338 | `result-track:16603d6b0c340db4dd9249585f3ca3448efe19053b211dc8d6bdc6c876eed960` |
| 41 | `theorem` | [mkRingHom_surjective](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/mkringhom-surjective--112af1ed0a9c8af2e9f978e3.md) | 341 | `result-track:112af1ed0a9c8af2e9f978e37803c7600f302c0e50020ca7174beac56ac82ea1` |
| 42 | `theorem` | [ringQuot_ext](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/ringquot-ext--061f7aece4c4f9489eb4e8db.md) | 347 | `result-track:061f7aece4c4f9489eb4e8db371dc814ae2ceda8df301aadfb883dbd081ae3e1` |
| 43 | `theorem` | [lift_mkRingHom_apply](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/lift-mkringhom-apply--ac1260e3bcde4179d5b563a8.md) | 393 | `result-track:ac1260e3bcde4179d5b563a844a624eb9b08c6a67502689924cc3162911d709c` |
| 44 | `theorem` | [lift_unique](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/lift-unique--9164a80eda9e105e674c61d8.md) | 399 | `result-track:9164a80eda9e105e674c61d8f95e24357142d09fd6447da2ffa2773c25ba544d` |
| 45 | `theorem` | [eq_lift_comp_mkRingHom](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/eq-lift-comp-mkringhom--55f161de72a6a21273d4f24c.md) | 404 | `result-track:55f161de72a6a21273d4f24c54d9f41f9b800f6765ac5a442debf204e9a6b610` |
| 46 | `def` | [ringQuotToIdealQuotient](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/ringquottoidealquotient--4c1aabd9c4fcd4e5c20d6682.md) | 419 | `declaration-track:4c1aabd9c4fcd4e5c20d6682219e823984100396058ca02061d2cf47714832bb` |
| 47 | `theorem` | [ringQuotToIdealQuotient_apply](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/ringquottoidealquotient-apply--849afa448a8d54be6148bbad.md) | 425 | `result-track:849afa448a8d54be6148bbad6f1d2e3212acb0d3b65433186d8049ca675a2186` |
| 48 | `def` | [idealQuotientToRingQuot](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/idealquotienttoringquot--352bec492ed6e7dc8e1a57ea.md) | 431 | `declaration-track:352bec492ed6e7dc8e1a57ea6de7814ccde30cd7883d82ffe11c9e3841691ed7` |
| 49 | `theorem` | [idealQuotientToRingQuot_apply](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/idealquotienttoringquot-apply--e0e134af5968dadaac562045.md) | 446 | `result-track:e0e134af5968dadaac562045e2d8ed853a369d308c5a24ee427a6094d371b92e` |
| 50 | `def` | [ringQuotEquivIdealQuotient](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/ringquotequividealquotient--0e309dacfc92b59ee14c0e4e.md) | 453 | `declaration-track:0e309dacfc92b59ee14c0e4ec52929e3c1686b82a2ab6cb2cbdba59dca6d21f0` |
| 51 | `theorem` | [mkAlgHom_coe](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/mkalghom-coe--91bd0b850e0f4c7557484fb8.md) | 475 | `result-track:91bd0b850e0f4c7557484fb880c4f93e0fd58fc77b6f4fefd56275aee644d9ba` |
| 52 | `theorem` | [mkAlgHom_rel](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/mkalghom-rel--fd838b6af5b0bc7eb7858561.md) | 479 | `result-track:fd838b6af5b0bc7eb7858561fb0570e661cb413b12565291275d0bdef81e9482` |
| 53 | `theorem` | [mkAlgHom_surjective](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/mkalghom-surjective--ab57068ae8e6c134466afde5.md) | 483 | `result-track:ab57068ae8e6c134466afde53f4fa0a354fae585d545e0ebab6e00210d68666b` |
| 54 | `theorem` | [ringQuot_ext'](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/ringquot-ext--f423c03de395fdf03d09ca82.md) | 492 | `result-track:f423c03de395fdf03d09ca82b29b2316d7fcee6c7e3d8e97a8f37af42f950d3b` |
| 55 | `theorem` | [liftAlgHom_mkAlgHom_apply](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/liftalghom-mkalghom-apply--5e59d4faa34a6cbe481558de.md) | 540 | `result-track:5e59d4faa34a6cbe481558de9e68c2bf5fabeedb577eeec75031320edc416d3c` |
| 56 | `theorem` | [liftAlgHom_unique](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/liftalghom-unique--8e18f7e0cfee675fdba59b81.md) | 546 | `result-track:8e18f7e0cfee675fdba59b813a2df4750bb05fbc108c451a0ecb15306642241b` |
| 57 | `theorem` | [eq_liftAlgHom_comp_mkAlgHom](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/eq-liftalghom-comp-mkalghom--55142472c2171f74650f020c.md) | 551 | `result-track:55142472c2171f74650f020ce573fbf87789b636c64028085d5caf6f352d58e8` |
| 58 | `def` | [algEquivQuotAlgEquiv](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/algequivquotalgequiv--9aecc2f1329f396a8aaa4186.md) | 563 | `declaration-track:9aecc2f1329f396a8aaa4186eda47c02c44e8298660080e58210ce81de87de5f` |
| 59 | `def` | [equivQuotEquiv](../../../../mathematics/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/declarations/equivquotequiv--76e681357131d7127874f77d.md) | 581 | `declaration-track:76e681357131d7127874f77df7f3bfa6c5bc34c1f5f796bc83234eabd36f2f53` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
