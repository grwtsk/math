# Verification target: GRWTSK.Algebra.GroupTheory.Opposite.Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2b4195f2049e5020c80587f4ef11d93e1ac9802",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2b4195f2049e5020c80587f4ef11d93e1ac9802`.

Source path: `GRWTSK/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean.json)

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
| 1 | `instance` | [instAddSemigroup](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instaddsemigroup--f22ff7c9848f672482f1706e.md) | 30 | `declaration-track:f22ff7c9848f672482f1706e639f65af1e3baa557775245721b4238b68d909db` |
| 2 | `instance` | [instAddLeftCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instaddleftcancelsemigroup--b50796f12a99ae3fea4b5aa8.md) | 33 | `declaration-track:b50796f12a99ae3fea4b5aa8e2658f4945cf59d881f8ca1195d4b4af2fd484ba` |
| 3 | `instance` | [instAddRightCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instaddrightcancelsemigroup--fbaeccc3b9c1a64b1915b342.md) | 36 | `declaration-track:fbaeccc3b9c1a64b1915b342d884c4de6daeb382ebec28c66a315b54b81f29da` |
| 4 | `instance` | [instAddCommMagma](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instaddcommmagma--bc471ee366444c36c835fc5e.md) | 39 | `declaration-track:bc471ee366444c36c835fc5ecae1b3d8d6c3ef2fe5236e2c90536ade17c0818d` |
| 5 | `instance` | [instAddCommSemigroup](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instaddcommsemigroup--d79a6d1c8f172d062cc214c2.md) | 42 | `declaration-track:d79a6d1c8f172d062cc214c2da300ec6056db1ef3f008e76f0140900390072dc` |
| 6 | `instance` | [instAddZeroClass](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instaddzeroclass--79c71ed80889f43454df5cad.md) | 45 | `declaration-track:79c71ed80889f43454df5cad00c13b51d93781d1dc62682af5ded05d93912f3b` |
| 7 | `instance` | [instAddMonoid](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instaddmonoid--689d53909d8e4d6a46ce2f6a.md) | 48 | `declaration-track:689d53909d8e4d6a46ce2f6a9ee8fff2e5846d08f848d529edcfce856e93f94f` |
| 8 | `instance` | [instAddCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instaddcommmonoid--3b826735ef208e43609050ff.md) | 51 | `declaration-track:3b826735ef208e43609050ff07b5490c732f3bf19ab4e5e29291a7f6e05b7ce1` |
| 9 | `instance` | [instSubNegMonoid](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instsubnegmonoid--bee9b00f0b5d50f60437c5c7.md) | 54 | `declaration-track:bee9b00f0b5d50f60437c5c71d06b8963d2cf8c42ef7c567c1d6752aaf235f5f` |
| 10 | `instance` | [instAddGroup](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instaddgroup--fdf7488d98dfa7b7a9e5cb85.md) | 58 | `declaration-track:fdf7488d98dfa7b7a9e5cb85acbbeb6cb30ddec7e5923b98846ce9a607939155` |
| 11 | `instance` | [instAddCommGroup](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instaddcommgroup--623ab07a5ed47a3961fc5f51.md) | 62 | `declaration-track:623ab07a5ed47a3961fc5f517ccf687ee9729e1cfb5417c341bd951fbfb737f9` |
| 12 | `instance` | [instIsRightCancelMul](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instisrightcancelmul--e77b45ca2cdcfefa22dc5242.md) | 73 | `declaration-track:e77b45ca2cdcfefa22dc5242325e05fc759fb9a3472bcd32d663fa1a197a491f` |
| 13 | `instance` | [instIsLeftCancelMul](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instisleftcancelmul--8521ced50263f2afad3c5116.md) | 77 | `declaration-track:8521ced50263f2afad3c5116969a39ba5829504a9cff51ebcf7628c916c33a61` |
| 14 | `instance` | [instIsCancelMul](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instiscancelmul--4381dbbbec64179938826ef2.md) | 80 | `declaration-track:4381dbbbec64179938826ef238810d9ae7dc7ed0a9028ad89d1d620a74b9b141` |
| 15 | `instance` | [instSemigroup](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instsemigroup--823c1ef456eba6c30b6635c8.md) | 83 | `declaration-track:823c1ef456eba6c30b6635c828fb8ed381088d0a693219df1a6d92ae876ef211` |
| 16 | `instance` | [instLeftCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instleftcancelsemigroup--1c75a07e5e94230247f8a7aa.md) | 87 | `declaration-track:1c75a07e5e94230247f8a7aaefe753cf2360d864bf49116f612cc69d17c8b7d8` |
| 17 | `instance` | [instRightCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instrightcancelsemigroup--307627b64f3b6fc798d76181.md) | 91 | `declaration-track:307627b64f3b6fc798d7618198c35afe8829c7fb432f37b38ccb0a533bd27fbe` |
| 18 | `instance` | [instCommSemigroup](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instcommsemigroup--0e27f2f0de5ac540ce6eeeb5.md) | 95 | `declaration-track:0e27f2f0de5ac540ce6eeeb5e971bb4af9ea61af1e7f0cdf71eb41ad26f45401` |
| 19 | `instance` | [instMulOne](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instmulone--683d7d0c584d1ae8d69fde2a.md) | 98 | `declaration-track:683d7d0c584d1ae8d69fde2a828e083cda9b81b11a80f003a97198ec3b931179` |
| 20 | `instance` | [instMulOneClass](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instmuloneclass--21c6ba85bfc55be826d8c54e.md) | 101 | `declaration-track:21c6ba85bfc55be826d8c54efd1ecc13ec1cb4908d86a5ec724968a553178ee2` |
| 21 | `instance` | [instMonoid](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instmonoid--c8bcc4177240bb64abd29cb8.md) | 106 | `declaration-track:c8bcc4177240bb64abd29cb87d20b7a37692e6657fd85141c84495438829cf83` |
| 22 | `instance` | [instLeftCancelMonoid](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instleftcancelmonoid--855b530b171743e30e60f12d.md) | 114 | `declaration-track:855b530b171743e30e60f12d6dc71ecabed18b7968cb8dc0c2a2b07ecb26071f` |
| 23 | `instance` | [instRightCancelMonoid](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instrightcancelmonoid--f710101315a15fdee055094c.md) | 119 | `declaration-track:f710101315a15fdee055094cf0732dff2e9e1458e1bb1b8dcc50baad0331e270` |
| 24 | `instance` | [instCancelMonoid](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instcancelmonoid--6c303152d7daa39834e500f4.md) | 124 | `declaration-track:6c303152d7daa39834e500f42ed2702417a174b9e5c1ea67ec14e72090fd1fee` |
| 25 | `instance` | [instCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instcommmonoid--dfd905f8a4363d856178231f.md) | 129 | `declaration-track:dfd905f8a4363d856178231f81ee27bf041c47e31a0f1b0ad9a8bed6a942bb1a` |
| 26 | `instance` | [instCancelCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instcancelcommmonoid--a85d62519f29bda6f5e07878.md) | 134 | `declaration-track:a85d62519f29bda6f5e078788e86151a1b3db334ca959b126e81dcf49e3ee526` |
| 27 | `instance` | [instDivInvMonoid](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instdivinvmonoid--df03e07647bcfcc741ec1f2b.md) | 139 | `declaration-track:df03e07647bcfcc741ec1f2b132acba0efc477a29ac16740babf2fd25300bbe2` |
| 28 | `instance` | [instDivisionMonoid](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instdivisionmonoid--62233f649ddfc5362b81390e.md) | 150 | `declaration-track:62233f649ddfc5362b81390eb4293159b8aedb266a707b7414a4cc12a7b9e66d` |
| 29 | `instance` | [instDivisionCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instdivisioncommmonoid--2114c1f53138dae037fe09c0.md) | 157 | `declaration-track:2114c1f53138dae037fe09c0dcef7d027dfd1c3c5edc011999a9250cf4ae0f33` |
| 30 | `instance` | [instGroup](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instgroup--48a8de9ccd5fb86d28069cf2.md) | 162 | `declaration-track:48a8de9ccd5fb86d28069cf299d0dd542f1c2ca59930f0adc3823f6322a0e543` |
| 31 | `instance` | [instCommGroup](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instcommgroup--e0ff773685ef7d04dcd140d9.md) | 167 | `declaration-track:e0ff773685ef7d04dcd140d9f7c6fda8e21dfadfc87bcdcc4f60bb154f5eae6d` |
| 32 | `lemma` | [op_pow](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/op-pow--ed6b2645b34d487f382e000a.md) | 174 | `result-track:ed6b2645b34d487f382e000a3cdb6ab8d080c86d6dcf4799a736d33586dc601a` |
| 33 | `lemma` | [unop_pow](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/unop-pow--b2c64ee99f00556c73bf2d91.md) | 176 | `result-track:b2c64ee99f00556c73bf2d91ed8026e0dcd7918e285d04d002bf2cd2885f9637` |
| 34 | `lemma` | [op_zpow](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/op-zpow--990ebf6bd73136a317f7ee91.md) | 183 | `result-track:990ebf6bd73136a317f7ee9160df2b40b99cd40848eccbdee5f579e757995642` |
| 35 | `lemma` | [unop_zpow](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/unop-zpow--975e3fe336cb7d19bada5384.md) | 185 | `result-track:975e3fe336cb7d19bada538465c58059997064e820d831706c94beac5162efd0` |
| 36 | `theorem` | [unop_div](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/unop-div--eb1d0b69a128e16f29f575c5.md) | 190 | `result-track:eb1d0b69a128e16f29f575c54a5b95c33922448280d0ddcc275b96b0be8012c5` |
| 37 | `theorem` | [op_div](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/op-div--91c3cfc0ab11173a333102ed.md) | 194 | `result-track:91c3cfc0ab11173a333102ed6c82dc22a06e7dba045a8f642d3ae3078ddce3dc` |
| 38 | `theorem` | [semiconjBy_op](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/semiconjby-op--80968845eec482d5e30bc692.md) | 197 | `result-track:80968845eec482d5e30bc69275ce2ada9004a95ef4f8659213f6b07de429571f` |
| 39 | `theorem` | [semiconjBy_unop](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/semiconjby-unop--8c1c02ce88b3af75c200f4c6.md) | 201 | `result-track:8c1c02ce88b3af75c200f4c66787f1d62092c975ab56585688ad029ded47542f` |
| 40 | `theorem` | [_root_.SemiconjBy.op](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/root-semiconjby-op--dc48fbbef48b9c951cc65a51.md) | 208 | `result-track:dc48fbbef48b9c951cc65a5140b40759fcb3e50a011f7e09e24a7a2eb15f5e4b` |
| 41 | `theorem` | [_root_.SemiconjBy.unop](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/root-semiconjby-unop--8672f12584190fe7af9d34d8.md) | 213 | `result-track:8672f12584190fe7af9d34d8f9086819e19b73e2d5be9c3176e0db95ac966460` |
| 42 | `theorem` | [_root_.Commute.op](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/root-commute-op--eed35dbd3a5a96c9f396d802.md) | 218 | `result-track:eed35dbd3a5a96c9f396d802d3f09c18fd96c007a162f680582dd19a14d7f21a` |
| 43 | `theorem` | [_root_.Commute.unop](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/root-commute-unop--7e1bb9042ce0e4059a988546.md) | 222 | `result-track:7e1bb9042ce0e4059a988546bb755577c19233c3567fef692cc8701ba7259ca0` |
| 44 | `theorem` | [commute_op](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/commute-op--370cdb2936a11237e7fe506a.md) | 227 | `result-track:370cdb2936a11237e7fe506ae017959a4a3cf87abd99917f53e0c576dad53e19` |
| 45 | `theorem` | [commute_unop](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/commute-unop--58800bc243678359d02dd96a.md) | 231 | `result-track:58800bc243678359d02dd96a41ad069776a32c1103c6c422b6d549a35da0eadd` |
| 46 | `theorem` | [isDedekindFiniteMonoid_iff](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/isdedekindfinitemonoid-iff--312a1f23e0f24b8abc9db508.md) | 236 | `result-track:312a1f23e0f24b8abc9db5088164a6501c84e0d2b5e19a1f88f651c2f3d349a5` |
| 47 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instance--830403603971c86af7137299.md) | 241 | `declaration-track:830403603971c86af7137299d7a6d848e92bd10ef1926d107873f02b41be167e` |
| 48 | `theorem` | [isMulCommutative_op_iff](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/ismulcommutative-op-iff--af3b5b841efc9a97ac78a2e5.md) | 245 | `result-track:af3b5b841efc9a97ac78a2e56689be48b79b715d74fb95994f12bb9be7c3179a` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instance--7f269ad906618c7116e3ed66.md) | 249 | `declaration-track:7f269ad906618c7116e3ed66342ac0dea002b19025b3073e691cecfe08599d29` |
| 50 | `instance` | [instSemigroup](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instsemigroup--9621aac5ceef5f7b5f441bd3.md) | 261 | `declaration-track:9621aac5ceef5f7b5f441bd36532dc107b3e5e26f882a540ca56155f79e7bbf1` |
| 51 | `instance` | [instLeftCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instleftcancelsemigroup--cb200e28b60402162006e88b.md) | 263 | `declaration-track:cb200e28b60402162006e88b81548de459243645c9982f4933088ac1fa16470a` |
| 52 | `instance` | [instRightCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instrightcancelsemigroup--8a84760ad718b9bcca70f63d.md) | 266 | `declaration-track:8a84760ad718b9bcca70f63de36c178f7e479c81dcd0df19ab73a1688ac3458b` |
| 53 | `instance` | [instCommSemigroup](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instcommsemigroup--7e0fde79c4f13521a484d041.md) | 269 | `declaration-track:7e0fde79c4f13521a484d041618c0a42d087f89b5b83eb4397ae27120f396203` |
| 54 | `instance` | [instMulOneClass](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instmuloneclass--a58215d9e1403432be6a621d.md) | 272 | `declaration-track:a58215d9e1403432be6a621d2f50cc692c463bc94c17e6e729aed6d69e2794be` |
| 55 | `instance` | [pow](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/pow--8744703ccc300f929cf3c344.md) | 275 | `declaration-track:8744703ccc300f929cf3c3441274ab3ea9fcef0755b55e73c9aecfa10bc21e83` |
| 56 | `theorem` | [op_pow](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/op-pow--a55dcbcc20e32517b2418953.md) | 278 | `result-track:a55dcbcc20e32517b24189537f76473eed409a2a00324b6c4df259919825041f` |
| 57 | `theorem` | [unop_pow](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/unop-pow--81a327268a6eb85ba910c3a8.md) | 282 | `result-track:81a327268a6eb85ba910c3a877aa6627b9eaca49ac0f24d1d8de51b41b02e4fc` |
| 58 | `instance` | [instMonoid](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instmonoid--6c3b7aba7715a8432f7ba931.md) | 285 | `declaration-track:6c3b7aba7715a8432f7ba931b5c2c681b65b9d0b33c113807133864136dce9fc` |
| 59 | `instance` | [instCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instcommmonoid--c7a0809680ad66f8fe165a8f.md) | 288 | `declaration-track:c7a0809680ad66f8fe165a8fb658f75697a9800bbac620e5ef560fee5d985204` |
| 60 | `instance` | [instDivInvMonoid](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instdivinvmonoid--3514e0f4869a20651543491b.md) | 291 | `declaration-track:3514e0f4869a20651543491b4be3e4391c3051472c89b17fa89bf58a2b98a228` |
| 61 | `instance` | [instGroup](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instgroup--f37c06f9b08d7c8e88142448.md) | 295 | `declaration-track:f37c06f9b08d7c8e88142448d3896d3d5ddf7c2eb5f9422965c52e7a0bf047fc` |
| 62 | `instance` | [instCommGroup](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instcommgroup--45e212f266ba4b4885522a63.md) | 299 | `declaration-track:45e212f266ba4b4885522a63983ec642b98ae57289d6f982a557c63394f4299a` |
| 63 | `instance` | [instMulTorsionFree](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/declarations/instmultorsionfree--1b754422b9f7d39eb6c07287.md) | 304 | `declaration-track:1b754422b9f7d39eb6c072872b035f9d4c23a34729bffbbdca1d4fbdd31cd4b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
