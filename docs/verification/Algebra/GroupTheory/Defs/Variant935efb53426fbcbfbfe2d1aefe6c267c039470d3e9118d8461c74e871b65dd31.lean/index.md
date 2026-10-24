# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1754237fcc3b4a87ed2aaadf5c1e8496886d370f",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1754237fcc3b4a87ed2aaadf5c1e8496886d370f`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean.json)

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
| 1 | `lemma` | [leftRel_eq_top](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/leftrel-eq-top--bbc9c69097ea41b33f6df258.md) | 41 | `result-track:bbc9c69097ea41b33f6df2581a80d95f08e05b45324f5f32a11541ffb80d6d02` |
| 2 | `lemma` | [rightRel_eq_top](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/rightrel-eq-top--d60ed5dc20996991475ee399.md) | 46 | `result-track:d60ed5dc20996991475ee39958ae7bd5c5dcc3514444ecc19228099a8e225941` |
| 3 | `lemma` | [subsingleton_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/subsingleton-iff--f1d82bf4858a507d8880fdcf.md) | 51 | `result-track:f1d82bf4858a507d8880fdcf88fc7c85809e71884cd69fa3010a17b06adb22ef` |
| 4 | `lemma` | [nontrivial_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/nontrivial-iff--aa2c840ae8262754ebe2e8d1.md) | 54 | `result-track:aa2c840ae8262754ebe2e8d19a090dabd318f248941debb25a85cec2a6dcafc6` |
| 5 | `def` | [con](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/con--0dd3c0aab62f04751784147d.md) | 61 | `declaration-track:0dd3c0aab62f04751784147d384f17da58f90bdeacce72bad17d8d5331edb9a3` |
| 6 | `instance` | [Quotient.group](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/quotient-group--f7e147ab5a39f3b3820794e0.md) | 72 | `declaration-track:f7e147ab5a39f3b3820794e00906fbdebda6a0a74040c38b0bdd403491527318` |
| 7 | `theorem` | [con_ker_eq_conKer](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/con-ker-eq-conker--7a79c2057fb9649851ee4803.md) | 82 | `result-track:7a79c2057fb9649851ee4803425abb94f6b6c8774eef659080d8e9b673f4f7b8` |
| 8 | `def` | [mk'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/mk--aa74b14b961aa9fab35eb7e2.md) | 88 | `declaration-track:aa74b14b961aa9fab35eb7e2e05d94d0a50fd6b6a3dcea6b19fcc222fe3e5399` |
| 9 | `theorem` | [coe_mk'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/coe-mk--dc435e3f7d4b3f684b738289.md) | 92 | `result-track:dc435e3f7d4b3f684b73828948000e60f723b741861842134594a06f04efdc93` |
| 10 | `theorem` | [mk'_apply](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/mk-apply--da163fb3be70c0c7398eb4c9.md) | 96 | `result-track:da163fb3be70c0c7398eb4c91f405b7c53d09b980e377f7184d683792f050fcb` |
| 11 | `theorem` | [mk'_surjective](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/mk-surjective--c26a8c2828eb15085bd82aef.md) | 100 | `result-track:c26a8c2828eb15085bd82aef20dfb53e6589bb11ec4d57cd484cc6f47d9a6745` |
| 12 | `theorem` | [mk'_eq_mk'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/mk-eq-mk--fe1ce13eb934ecf10333d68e.md) | 104 | `result-track:fe1ce13eb934ecf10333d68ee22ac4e9b73ff0392943abc8d3eafcfc983e1a78` |
| 13 | `theorem` | [monoidHom_ext](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/monoidhom-ext--219e0f6c4c48ebd5b0ca1e8c.md) | 116 | `result-track:219e0f6c4c48ebd5b0ca1e8c2e3f66fb06fd8bad63a6e12bafb3d7138cbe2e01` |
| 14 | `theorem` | [eq_one_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/eq-one-iff--08e786d2af899fd82e30080e.md) | 120 | `result-track:08e786d2af899fd82e30080e1f72b58e7b36186bf9d51c66f52496c2a64ca173` |
| 15 | `lemma` | [mk'_comp_subtype](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/mk-comp-subtype--112f188ce1ab77df93968360.md) | 125 | `result-track:112f188ce1ab77df9396836031ed3a1212fddc22236d49b4e6c4373e352ebc78` |
| 16 | `theorem` | [range_mk'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/range-mk--8e20af078c5c08130bae3e20.md) | 132 | `result-track:8e20af078c5c08130bae3e2038f874ccf7a45f625794bb5425522636d23a9a7c` |
| 17 | `theorem` | [ker_le_range_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/ker-le-range-iff--67aaa318965cbd03976c0365.md) | 136 | `result-track:67aaa318965cbd03976c03656bf76a3e4ee9a49bedba0fa9e0417365b020c755` |
| 18 | `theorem` | [ker_mk'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/ker-mk--910f4d97cdb73709a0c300a9.md) | 142 | `result-track:910f4d97cdb73709a0c300a9680777d8a7c36f5237d607abcac705165f3988b1` |
| 19 | `theorem` | [eq_iff_div_mem](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/eq-iff-div-mem--a47992ea4d5093fa82922297.md) | 146 | `result-track:a47992ea4d5093fa829222976953d401649c7ec8ddb1e37dd3086e25e8651ca0` |
| 20 | `instance` | [Quotient.commGroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/quotient-commgroup--eb9f2ac8de1391aa14c57552.md) | 153 | `declaration-track:eb9f2ac8de1391aa14c575522971d39a447e67336ad7f769b7a18d2e4411ff77` |
| 21 | `theorem` | [mk_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/mk-one--e53e03ca06561bf33dab7842.md) | 159 | `result-track:e53e03ca06561bf33dab7842bd89d7865bd0564fa61b4fabf98b708777822626` |
| 22 | `theorem` | [mk_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/mk-mul--aa25fa6a4ae14a87f8d7c409.md) | 163 | `result-track:aa25fa6a4ae14a87f8d7c409a105a9117b2a07ca6cac5c1b53c69c30a20dfcef` |
| 23 | `theorem` | [mk_inv](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/mk-inv--8c65b1d881e1756c2dd903a7.md) | 167 | `result-track:8c65b1d881e1756c2dd903a75e8f263a3174cf7e4df40b180af194999addd7d4` |
| 24 | `theorem` | [mk_div](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/mk-div--85dccf59d77b2aed5c0f3beb.md) | 171 | `result-track:85dccf59d77b2aed5c0f3beb3ef05d970e18b1accec8a950e8192fd4b583abce` |
| 25 | `theorem` | [mk_pow](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/mk-pow--14be1ba614989da3f25ca8c5.md) | 175 | `result-track:14be1ba614989da3f25ca8c5e0803faf3bfb5c167da8ba376d9c14b57c085398` |
| 26 | `theorem` | [mk_zpow](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/mk-zpow--6b0628da8eaa0e9956943d98.md) | 179 | `result-track:6b0628da8eaa0e9956943d98559b2cde1964580fd5e0fc1e5ea3edfc3ceec487` |
| 27 | `lemma` | [map_mk'_self](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/map-mk-self--b5860d91350637f0aaa7565d.md) | 182 | `result-track:b5860d91350637f0aaa7565d337f517e1b307c0c36f9db453113c8993fc35187` |
| 28 | `def` | [_root_.Con.subgroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/root-con-subgroup--0a62698143da9c6694e7e0f8.md) | 190 | `declaration-track:0a62698143da9c6694e7e0f8653491e00da3033c1c4eac461c32d0d811928839` |
| 29 | `theorem` | [_root_.Con.mem_subgroup_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/root-con-mem-subgroup-iff--e066fca8fd2d82282c190fc9.md) | 197 | `result-track:e066fca8fd2d82282c190fc98dd7cfb6e9f1cf3bab4723529e26f1a1c05066b7` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/instance--0ab96cb03245646aa34516f6.md) | 201 | `declaration-track:0ab96cb03245646aa34516f69e71fcaef7e56eaa62d3c2573faeca0376adfac3` |
| 31 | `theorem` | [_root_.Con.subgroup_quotientGroupCon](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/root-con-subgroup-quotientgroupcon--a0852a71f2656cb2981b4e19.md) | 205 | `result-track:a0852a71f2656cb2981b4e19cc948b19993577e163fa7d094c1b030fe29b9a2e` |
| 32 | `theorem` | [con_subgroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/con-subgroup--d5823bb38114aece6a218a9c.md) | 211 | `result-track:d5823bb38114aece6a218a9c545888865b27c241a052f6d17226f859dabd3767` |
| 33 | `def` | [_root_.Subgroup.orderIsoCon](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/root-subgroup-orderisocon--5bf750b99a5aaefd11eef079.md) | 223 | `declaration-track:5bf750b99a5aaefd11eef079d6a9e43e7b0c1a123b39db0bc4dc472c894b41b9` |
| 34 | `lemma` | [con_le_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/con-le-iff--7e9318787aebd66518d9a191.md) | 236 | `result-track:7e9318787aebd66518d9a19198f4a4633167d4131f9dd0301779b61886ef31a2` |
| 35 | `lemma` | [con_mono](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/con-mono--5823b9f18afa8525a442eff1.md) | 241 | `result-track:5823b9f18afa8525a442eff1c9e5bdffb9aa278d7f4761c908a7470e70008ed7` |
| 36 | `def` | [lift](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/lift--2d2a836c21edcb52aa2e36da.md) | 249 | `declaration-track:2d2a836c21edcb52aa2e36da18fd91dd9ab709d65ec9fa42307c510076820838` |
| 37 | `theorem` | [lift_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/lift-mk--c3d67fdc57e8c428652e3297.md) | 253 | `result-track:c3d67fdc57e8c428652e3297bf108e405a7389ba90596bca0ee7adcddbb9ca79` |
| 38 | `theorem` | [lift_mk'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/lift-mk--1202186c77d6fd99c9dcf0cd.md) | 257 | `result-track:1202186c77d6fd99c9dcf0cd82c96223d8e739b6e3819a0bed3fffcac99e41a0` |
| 39 | `theorem` | [lift_comp_mk'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/lift-comp-mk--9ffaab688ef326f55090d0e9.md) | 262 | `result-track:9ffaab688ef326f55090d0e985c542fc7e3b176ab4daad97b5632bd1ba3e8582` |
| 40 | `theorem` | [lift_quot_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/lift-quot-mk--85218b70d4be653eaa412c71.md) | 267 | `result-track:85218b70d4be653eaa412c715e4505aaff3129c3afafd11069066c8460d85adc` |
| 41 | `theorem` | [lift_surjective_of_surjective](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/lift-surjective-of-surjective--b3f4afbb3d72f66a8fe731e3.md) | 272 | `result-track:b3f4afbb3d72f66a8fe731e3f8b386cff4db657ea0a03a8c005331012ce166ca` |
| 42 | `theorem` | [ker_lift](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/ker-lift--9263b0b1fa065586c7ac1db0.md) | 277 | `result-track:9263b0b1fa065586c7ac1db00b15f2a79acf5f83580417270d6f9c4b1907774d` |
| 43 | `lemma` | [injective_lift_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/injective-lift-iff--fa4bbcc8005779583171a591.md) | 283 | `result-track:fa4bbcc8005779583171a591935dc3c0339b1294f558052ca6f2451daa757b4d` |
| 44 | `def` | [liftEquiv](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/liftequiv--8492d1667879622c79b0b428.md) | 292 | `declaration-track:8492d1667879622c79b0b428c2d1edb3bc73103f3ceee5294bf54b8c45389a89` |
| 45 | `theorem` | [liftEquiv_coe](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/liftequiv-coe--ae0c251059576ff6d7093d29.md) | 299 | `result-track:ae0c251059576ff6d7093d29dec122f22289ef1117c9f0100c04fc94b6a72109` |
| 46 | `theorem` | [liftEquiv_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/liftequiv-mk--693ee14fb0f459c60dde0719.md) | 303 | `result-track:693ee14fb0f459c60dde0719cf695d1eaefc017c367316255479d9141cc54e03` |
| 47 | `def` | [map](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/map--4cd4bc8960cfbbc6a3274b07.md) | 309 | `declaration-track:4cd4bc8960cfbbc6a3274b072c58c150990fdf39632187557cbd4c87b8f320d4` |
| 48 | `theorem` | [map_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/map-mk--5211ca2d03d8ee0d56e09abe.md) | 317 | `result-track:5211ca2d03d8ee0d56e09abe097af7633ba06bb38fa8c4494a76d18c1e1c452c` |
| 49 | `theorem` | [map_mk'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/map-mk--5021c1e8c7e5d00dec909c0c.md) | 322 | `result-track:5021c1e8c7e5d00dec909c0c634bdd62cb805c35e8bf09444ad15d2c4965fbce` |
| 50 | `theorem` | [map_surjective_of_surjective](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/map-surjective-of-surjective--78bd0c51c28b27f90cc8d431.md) | 327 | `result-track:78bd0c51c28b27f90cc8d431d2119bfa6a89d01eef4b92d45b1b1ba72a5f4256` |
| 51 | `theorem` | [ker_map](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/ker-map--42b6d52df0b92fa8b2ec072e.md) | 333 | `result-track:42b6d52df0b92fa8b2ec072eacf1bb51334d50032f6d45c7fd966d548bdc1403` |
| 52 | `theorem` | [map_id_apply](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/map-id-apply--ecf7b45961bbefb90a31cbc6.md) | 339 | `result-track:ecf7b45961bbefb90a31cbc698e6f8154847f2114d0fa7e022b2e211ee6c8598` |
| 53 | `theorem` | [map_id](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/map-id--626ec5ee28214a74adf53508.md) | 344 | `result-track:626ec5ee28214a74adf53508468f9ca545e1032d9b4f4f38d9573a461df8ef2e` |
| 54 | `theorem` | [map_map](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/map-map--82b3816e8aafe3af4c30efbb.md) | 349 | `result-track:82b3816e8aafe3af4c30efbb70a14472c38a9755279f16d0f0ab97ded449f620` |
| 55 | `theorem` | [map_comp_map](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/map-comp-map--9260af94e60d7dc70bef99fd.md) | 358 | `result-track:9260af94e60d7dc70bef99fd921192cba3df936bd604e74dd679d7b509afd503` |
| 56 | `lemma` | [image_coe](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/image-coe--86ec6d6bcff4a39264e9abd7.md) | 368 | `result-track:86ec6d6bcff4a39264e9abd757ba757230a397956f1c80f7ddce2d0dd9f505e8` |
| 57 | `lemma` | [preimage_image_coe](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/preimage-image-coe--8cb4d7140c44a2fea829a18a.md) | 372 | `result-track:8cb4d7140c44a2fea829a18aff359bd686cf86158f49db653e327ee0359db630` |
| 58 | `lemma` | [image_coe_inj](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/image-coe-inj--6277ff2a91343be0dd6ec4d5.md) | 383 | `result-track:6277ff2a91343be0dd6ec4d591557765393f1f726373b9415adc8ea324c6a43c` |
| 59 | `def` | [congr](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/congr--1719152200f498086e070a43.md) | 397 | `declaration-track:1719152200f498086e070a43401d018cf1cdcfa360764318b2c5e89c7537d3aa` |
| 60 | `theorem` | [congr_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/congr-mk--55b3b56c8bcc48769ddb51f0.md) | 413 | `result-track:55b3b56c8bcc48769ddb51f03b527b3eea5f395fed3f869e2d7eb7b1b4341fbb` |
| 61 | `theorem` | [congr_mk'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/congr-mk--4e4224abc5149b0a5333b85d.md) | 416 | `result-track:4e4224abc5149b0a5333b85d02edc08c969d7d2a3e01e9e2f2ce24fd77626c87` |
| 62 | `theorem` | [congr_apply](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/congr-apply--695af2f88c42b4bf3bca5e86.md) | 421 | `result-track:695af2f88c42b4bf3bca5e864895a009c5c4bd12c93bf2d891a23d9a793beca4` |
| 63 | `theorem` | [congr_refl](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/congr-refl--5087c29bf8793e0565c7c469.md) | 426 | `result-track:5087c29bf8793e0565c7c469fdd214d678069a10a380ca51e81987842bea3ed0` |
| 64 | `theorem` | [congr_symm](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/declarations/congr-symm--0320c6b64eb6dae481186036.md) | 432 | `result-track:0320c6b64eb6dae48118603678a98e759562d8d3cf8d5d454503af003a224a12` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
