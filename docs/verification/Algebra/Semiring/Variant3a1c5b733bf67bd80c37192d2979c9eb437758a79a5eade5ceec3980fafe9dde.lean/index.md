# Verification target: GRWTSK.Algebra.Semiring.Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4efea1b063a9902ec0e3e6f2c541618886d89042",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/index.md) · [Full source](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4efea1b063a9902ec0e3e6f2c541618886d89042`.

Source path: `GRWTSK/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Kleene` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Pointwise.SMul` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SetSemiring](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/setsemiring--e16c49e3523a3ae255dc1a83.md) | 37 | `declaration-track:e16c49e3523a3ae255dc1a83d203ce0e83802942e57ed987bd8aed04c2d37e4d` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/instance--85352c8ac79bdc7dde1a9adb.md) | 41 | `declaration-track:85352c8ac79bdc7dde1a9adb5193e56c054dec7cb2f8bf3b28db56f943868b5b` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/instance--d1ca59d7f0ebc48e908b57cd.md) | 44 | `declaration-track:d1ca59d7f0ebc48e908b57cdfd975d77e7ea22ad86397e20c868cabea88c7c4c` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/instance--f78b2d097366faa80002316c.md) | 47 | `declaration-track:f78b2d097366faa80002316cab54ac1321e5c2a5b02cbfeff6628c498049aa36` |
| 5 | `def` | [Set.up](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/set-up--6271b2fd12b231806aaa16af.md) | 51 | `declaration-track:6271b2fd12b231806aaa16af7289c7f0c9981b721651f02a3338d130248d10d5` |
| 6 | `def` | [down](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/down--320b0d1c97d8b6b9b051d1e5.md) | 58 | `declaration-track:320b0d1c97d8b6b9b051d1e5c24e85dcfe4e5193a9846158c22b2af046c3e03a` |
| 7 | `theorem` | [down_up](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/down-up--0ab701cbd5211e2c6ebbcef5.md) | 68 | `result-track:0ab701cbd5211e2c6ebbcef5265593431eb6f343904f80c8569ea1e265b44ec4` |
| 8 | `theorem` | [up_down](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/up-down--a73ff38dca92236900a085c7.md) | 74 | `result-track:a73ff38dca92236900a085c75142a6967f16bfbf5f5a37d0f1c2c7d955fcb3c5` |
| 9 | `theorem` | [up_le_up](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/up-le-up--66d0f143251e4bd4d7bb5863.md) | 80 | `result-track:66d0f143251e4bd4d7bb5863a50c11f4b901796f8e56dd8a1a5d8ae8bd318db5` |
| 10 | `theorem` | [up_lt_up](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/up-lt-up--e70e34deff950660c88cad9f.md) | 85 | `result-track:e70e34deff950660c88cad9f9aa48ba9ba6ec9e00da835273064bbb4da98a0b7` |
| 11 | `theorem` | [down_subset_down](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/down-subset-down--dd408afa833175c6cf6d226e.md) | 91 | `result-track:dd408afa833175c6cf6d226ee48786910c3a105e036118757a71eb4af47436a6` |
| 12 | `theorem` | [down_ssubset_down](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/down-ssubset-down--925d61ac14b96a86aa75d95a.md) | 97 | `result-track:925d61ac14b96a86aa75d95a1fc7fc264a10baaadf8cd69c66861818088c91e2` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/instance--479be377fa6cf10c2d3f2d9a.md) | 102 | `declaration-track:479be377fa6cf10c2d3f2d9aabcca63225988863dd63e81e8ef99af44b85dbf1` |
| 14 | `theorem` | [zero_def](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/zero-def--e925403603d52371b4a4b094.md) | 110 | `result-track:e925403603d52371b4a4b094a27bca5548e1aca3335f055a9444ba05a79f87f2` |
| 15 | `theorem` | [down_zero](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/down-zero--bce6d9d7c9374f4e9315b648.md) | 115 | `result-track:bce6d9d7c9374f4e9315b6485ca86ace0b20871cb12b04ba671b55bea85505d2` |
| 16 | `theorem` | [_root_.GRWTSK.Algebra.SetSemiring.Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.Set.up_empty](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/root-grwtsk-algebra-setsemiring-variant8f1647897dd383cd6ea75056d3c19292f--c9832a0a984ecab9c149c726.md) | 120 | `result-track:c9832a0a984ecab9c149c726983380c4dce2918aa9505daa34214ea857781e7f` |
| 17 | `theorem` | [add_def](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/add-def--914df963f31c226bdbecf952.md) | 124 | `result-track:914df963f31c226bdbecf95243cfb9b12783f2290846618c54abebac7aec300c` |
| 18 | `theorem` | [down_add](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/down-add--43f6f616c9ba99fc13daebb4.md) | 129 | `result-track:43f6f616c9ba99fc13daebb489a2aee9c92f7bf3d704c8868887e0845b2e5f46` |
| 19 | `theorem` | [_root_.GRWTSK.Algebra.SetSemiring.Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.Set.up_union](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/root-grwtsk-algebra-setsemiring-variant8f1647897dd383cd6ea75056d3c19292f--fa83611c4e3d73c84d8fd192.md) | 134 | `result-track:fa83611c4e3d73c84d8fd1929bc7b2cc87ec0d7d016fb9178f2823c66105cda6` |
| 20 | `instance` | [covariantClass_add](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/covariantclass-add--8b808544de9088dddab6f223.md) | 140 | `declaration-track:8b808544de9088dddab6f223a9bd9ec967eaa58b00ade04fe08860320462f32d` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/instance--a9371dd1b46fd6f70f92efa7.md) | 149 | `declaration-track:a9371dd1b46fd6f70f92efa7d4e32fa3ffb4468262dd65208c638e778e08ab2e` |
| 22 | `theorem` | [mul_def](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/mul-def--b777747c5aac33b29d31893e.md) | 158 | `result-track:b777747c5aac33b29d31893e6e50f4d844bbeeeeea8f837cb37df481e2dafbf9` |
| 23 | `theorem` | [down_mul](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/down-mul--6214bb88a72e6c365b2f7173.md) | 163 | `result-track:6214bb88a72e6c365b2f7173b32aff193ec0f8fd2fbe1b8388e347f70cfdbfc1` |
| 24 | `theorem` | [_root_.GRWTSK.Algebra.SetSemiring.Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.Set.up_mul](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/root-grwtsk-algebra-setsemiring-variant8f1647897dd383cd6ea75056d3c19292f--0024d0926d33f9ccaef0c9c8.md) | 168 | `result-track:0024d0926d33f9ccaef0c9c84a769b250eaaee424c7b7640ced841fe7233f8a9` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/instance--9bf53336e3dc5ee88c3e13b0.md) | 172 | `declaration-track:9bf53336e3dc5ee88c3e13b0d7e8f14d27aae5cbce93ac52ef95ff22b79bdcc1` |
| 26 | `instance` | [covariantClass_mul_left](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/covariantclass-mul-left--3ea05a27c82c8b1a130acfb6.md) | 178 | `declaration-track:3ea05a27c82c8b1a130acfb6e7f02b9816cc1b22397418928ad8e482c1b1b734` |
| 27 | `instance` | [covariantClass_mul_right](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/covariantclass-mul-right--7ab96f9f88f807e4972e9e40.md) | 183 | `declaration-track:7ab96f9f88f807e4972e9e406ef9371c97f85bd301a25f26a3ff8cbc5bdb6670` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/instance--d360356256d0edef5e419fd2.md) | 195 | `declaration-track:d360356256d0edef5e419fd22fe1262d30b953b3ba79fa7be7894cfa3496e3ad` |
| 29 | `theorem` | [one_def](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/one-def--a8ca465100e50bb2dc7c850a.md) | 197 | `result-track:a8ca465100e50bb2dc7c850a72b619e1c5c4d9e0c49bfd61dbf098cad490832f` |
| 30 | `theorem` | [down_one](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/down-one--3193063296068aa7d465d3d7.md) | 202 | `result-track:3193063296068aa7d465d3d75fb2a32da632785544a6e95e8bc7efa03c363ef4` |
| 31 | `theorem` | [_root_.GRWTSK.Algebra.SetSemiring.Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.Set.up_one](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/root-grwtsk-algebra-setsemiring-variant8f1647897dd383cd6ea75056d3c19292f--36602c29e2e12627d7af4986.md) | 207 | `result-track:36602c29e2e12627d7af49865550473dc5e1325181ef2de40176a82169ecba4a` |
| 32 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/instance--be8c3ce6aca76c47bf673c93.md) | 213 | `declaration-track:be8c3ce6aca76c47bf673c9325e46ba7a772fb0616ff23f6643f7db52a16c2fe` |
| 33 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/instance--89b1673ebca7003055e40686.md) | 219 | `declaration-track:89b1673ebca7003055e40686913e8504f906048fff4216961d94a26eac984ffb` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/instance--d51aaa39e8ccd9642fd59ea5.md) | 222 | `declaration-track:d51aaa39e8ccd9642fd59ea53e78c0ac7fbf68293c44414c976b2760d6fc4b6f` |
| 35 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/instance--82a8ca4cf1453fc70a64ad3b.md) | 227 | `declaration-track:82a8ca4cf1453fc70a64ad3b3320989e05b1f563b3d1f810403d5886bc47f24b` |
| 36 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/instance--b2bdea75dc7649534a983d84.md) | 230 | `declaration-track:b2bdea75dc7649534a983d843a7950dabcd72b8d3ded57c2da75d96c241e36e4` |
| 37 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/instance--fea90ea2f923aa2a05b7e700.md) | 234 | `declaration-track:fea90ea2f923aa2a05b7e70004cf6856a9a2035ace8010245d19be1f021fca5f` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/instance--5af67f1c393856c8d1a87e8c.md) | 237 | `declaration-track:5af67f1c393856c8d1a87e8cf25efc49cb1b237087b4ee14d1e1e93397ee20fd` |
| 39 | `def` | [imageHom](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/imagehom--db47a2e3832f7536527368f6.md) | 247 | `declaration-track:db47a2e3832f7536527368f645e45d3a7a980e5f69936de461c2a46d0c6b37b3` |
| 40 | `lemma` | [imageHom_def](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/imagehom-def--ff26956eee2466918b9cab01.md) | 258 | `result-track:ff26956eee2466918b9cab0137b2d925f4566e9e23d64a9d3305a2e564f5560c` |
| 41 | `lemma` | [down_imageHom](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/down-imagehom--98889f264c1332c71406f12a.md) | 264 | `result-track:98889f264c1332c71406f12ac14c5626669a9c07bf38624ddba78ad9e4f0e20e` |
| 42 | `lemma` | [_root_.GRWTSK.Algebra.SetSemiring.Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.Set.up_image](../../../../mathematics/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/declarations/root-grwtsk-algebra-setsemiring-variant8f1647897dd383cd6ea75056d3c19292f--3d9922117e52994639b19ec4.md) | 270 | `result-track:3d9922117e52994639b19ec48d96d499cd298f163e37eeaa66b8160ba156ed22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
