# Verification target: GRWTSK.Topology.GeneralTopology.Count.Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f35d96f622744658843063f780a6041054070da",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f35d96f622744658843063f780a6041054070da`.

Source path: `GRWTSK/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.List.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Std.Data.List.Lemmas` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [countP_nil](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/countp-nil--35c860c7612ef12ce6d6d369.md) | 26 | `result-track:35c860c7612ef12ce6d6d369872a65f2b573089e0f1850f5c411a2755448c3e1` |
| 2 | `theorem` | [countP_go_eq_add](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/countp-go-eq-add--31f2c9ba9bff2ca0872d606d.md) | 28 | `result-track:31f2c9ba9bff2ca0872d606d357df67b621771d0b080ddf662e37026c9fcc588` |
| 3 | `theorem` | [countP_cons_of_pos](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/countp-cons-of-pos--99a384962b43a76ae67d8c6e.md) | 36 | `result-track:99a384962b43a76ae67d8c6ef1a27865a383adfc3c8c1bd5eb026fb8151b685f` |
| 4 | `theorem` | [countP_cons_of_neg](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/countp-cons-of-neg--0acd6a5a77c5227122e1963b.md) | 41 | `result-track:0acd6a5a77c5227122e1963b4ea14f7e19a4c34f9f161cbcfcb94a9638a18eb1` |
| 5 | `theorem` | [countP_cons](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/countp-cons--68d3897874180eb72bacf026.md) | 44 | `result-track:68d3897874180eb72bacf0267d2fec87f476633a79e0768c2f8805e8cee20985` |
| 6 | `theorem` | [length_eq_countP_add_countP](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/length-eq-countp-add-countp--0179b998383423a114b08ac6.md) | 47 | `result-track:0179b998383423a114b08ac614cfeefe4c0ae637b02d84c91bacc44dea156f76` |
| 7 | `theorem` | [countP_eq_length_filter](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/countp-eq-length-filter--0868d6da0f6802a65ba6cc37.md) | 60 | `result-track:0868d6da0f6802a65ba6cc3793f1b565e3592ce55395562af0939ff60c192193` |
| 8 | `theorem` | [countP_le_length](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/countp-le-length--7caaa2d5c92c4f472fbdbf6e.md) | 68 | `result-track:7caaa2d5c92c4f472fbdbf6ebabc31cc142fdf6515697f06c9ee824fa6346fff` |
| 9 | `theorem` | [countP_append](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/countp-append--4587d670661340d50a9ae427.md) | 72 | `result-track:4587d670661340d50a9ae427345510d7a8f1565312336ee53979824a3e149ebe` |
| 10 | `theorem` | [countP_pos](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/countp-pos--2d882189c23945b74e5a8ddd.md) | 75 | `result-track:2d882189c23945b74e5a8ddd845e984e9662dbf5c052a938532808ad8ce2fceb` |
| 11 | `theorem` | [countP_eq_zero](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/countp-eq-zero--065a3c3a5bf2f60219b1a6ad.md) | 78 | `result-track:065a3c3a5bf2f60219b1a6ad3fb3d8d17f6e247f495be376b31572e7cec1f548` |
| 12 | `theorem` | [countP_eq_length](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/countp-eq-length--58fa7063467e3319bc791940.md) | 81 | `result-track:58fa7063467e3319bc7919405732bbb069ae28751a63faba1a3ebb745ca88a06` |
| 13 | `theorem` | [Sublist.countP_le](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/sublist-countp-le--7e6ec3782c6fb9ec509f32d6.md) | 84 | `result-track:7e6ec3782c6fb9ec509f32d6712da0e645ac0b6b6512ed649aac97595adc9c84` |
| 14 | `theorem` | [countP_filter](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/countp-filter--a3faccd164097bc60179b30b.md) | 88 | `result-track:a3faccd164097bc60179b30b904c9b1e50b5168673e7e5b2c525edb0a8a25071` |
| 15 | `theorem` | [countP_true](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/countp-true--fbfd3f4343b47f18e7a91684.md) | 92 | `result-track:fbfd3f4343b47f18e7a9168450ac0f751c5d954f98e7d0bed2dcf075805ce16d` |
| 16 | `theorem` | [countP_false](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/countp-false--2eafa470a274c3bb189db4b6.md) | 96 | `result-track:2eafa470a274c3bb189db4b614e29d3ea8c87fe2b34ae695eafcb60de1c39ad1` |
| 17 | `theorem` | [countP_map](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/countp-map--979ec597ecc22f0d3da4c39b.md) | 100 | `result-track:979ec597ecc22f0d3da4c39be19df78e14654b41cdac861266399f6fcdc64d3c` |
| 18 | `theorem` | [countP_mono_left](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/countp-mono-left--4253143abf576e68742ac3da.md) | 107 | `result-track:4253143abf576e68742ac3daa3d10649f34692d59c3e2e741952ed3c748bcbf1` |
| 19 | `theorem` | [countP_congr](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/countp-congr--d5db7de98ffc5fe2ce0ab658.md) | 122 | `result-track:d5db7de98ffc5fe2ce0ab658cfff4dce5ab6a5a8bc80730c942d9733289aef7e` |
| 20 | `theorem` | [count_nil](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/count-nil--fd4491469b86061e7ea32a53.md) | 135 | `result-track:fd4491469b86061e7ea32a53642f590551399d18d501ee148f763efd00cc4c1a` |
| 21 | `theorem` | [count_cons](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/count-cons--77c0462ca1be0f9194a78bc3.md) | 137 | `result-track:77c0462ca1be0f9194a78bc3dc11e8e8993780ac9ff0fc442aaedb20be64b54a` |
| 22 | `theorem` | [count_cons_self](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/count-cons-self--758ba31ec85e3deb4a96d154.md) | 141 | `result-track:758ba31ec85e3deb4a96d1545fd6ddb2c56485626443eef9757709acf332a883` |
| 23 | `theorem` | [count_cons_of_ne](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/count-cons-of-ne--22a0c9ba79d148a5fdeb67d2.md) | 144 | `result-track:22a0c9ba79d148a5fdeb67d247165901ed7f490c7383eb3ee6a8d29a96bb73cc` |
| 24 | `theorem` | [count_tail](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/count-tail--53759809168e5e8a8471334d.md) | 147 | `result-track:53759809168e5e8a8471334d78e203921cb36941790b14482a88226ba2bcd83c` |
| 25 | `theorem` | [count_le_length](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/count-le-length--3ad063deb2fbd74a20b91860.md) | 151 | `result-track:3ad063deb2fbd74a20b918600c032055605e1d682f713545f94da768c7725916` |
| 26 | `theorem` | [Sublist.count_le](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/sublist-count-le--a31035b75074ec26e066dbaa.md) | 153 | `result-track:a31035b75074ec26e066dbaa9e37d4044b535ac883a44a3cc76fc9db22183ca6` |
| 27 | `theorem` | [count_le_count_cons](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/count-le-count-cons--b48ce595c6f3a93a6dc9fcd2.md) | 155 | `result-track:b48ce595c6f3a93a6dc9fcd29aba79f385d960804019a0792d7b96f3f4b38c9b` |
| 28 | `theorem` | [count_singleton](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/count-singleton--15318f07167d4fda1bf7719c.md) | 158 | `result-track:15318f07167d4fda1bf7719c32b088d0186b7aea2e01607a5e4f45684913ef9f` |
| 29 | `theorem` | [count_singleton'](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/count-singleton--0fa4586e9ae4e008f77627ca.md) | 160 | `result-track:0fa4586e9ae4e008f77627cae16f9e27f2bee2ec6bbfa88ac49483d286e69d5a` |
| 30 | `theorem` | [count_append](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/count-append--faecf2012076a7ca55b1e81d.md) | 162 | `result-track:faecf2012076a7ca55b1e81d5ec5999b450a400f7f8c34ae5eafd09a52f22ae9` |
| 31 | `theorem` | [count_concat](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/count-concat--0dda0f14751f768997c0a859.md) | 165 | `result-track:0dda0f14751f768997c0a8594c5350d64220d41f426a3dbf25e80475816dbbab` |
| 32 | `theorem` | [count_pos_iff_mem](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/count-pos-iff-mem--58dac16ae29ca79b32edc8c0.md) | 167 | `result-track:58dac16ae29ca79b32edc8c0258ca4608dfc560ac72c41a28d90d8cfb89bcfc3` |
| 33 | `theorem` | [count_eq_zero_of_not_mem](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/count-eq-zero-of-not-mem--a0ecd0252b7790cc52f9e05d.md) | 170 | `result-track:a0ecd0252b7790cc52f9e05d74a5bc8ccac1ec53b1e600937468abeb1a3e6f2b` |
| 34 | `theorem` | [not_mem_of_count_eq_zero](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/not-mem-of-count-eq-zero--828100a3d7e245ae934c8f7f.md) | 173 | `result-track:828100a3d7e245ae934c8f7f7be7b7323749aa0e181a6eae6aa408829420c8ac` |
| 35 | `theorem` | [count_eq_zero](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/count-eq-zero--d87ef6c41d268c2089e316aa.md) | 176 | `result-track:d87ef6c41d268c2089e316aaba1e21da34b6b2741dcf5344a84720a97f8845e0` |
| 36 | `theorem` | [count_eq_length](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/count-eq-length--edd5e2a49c8e2fb2030974be.md) | 179 | `result-track:edd5e2a49c8e2fb2030974be32afef96c33ead1527cdaab8dd2f40e0b73477c8` |
| 37 | `theorem` | [count_replicate_self](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/count-replicate-self--a5736801a368634ca68db2b3.md) | 185 | `result-track:a5736801a368634ca68db2b39663712b98a2756ea8ca5ffbbb610ca0ef9f84d3` |
| 38 | `theorem` | [count_replicate](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/count-replicate--9e33bc25acd110cae75c2b24.md) | 188 | `result-track:9e33bc25acd110cae75c2b2489ec08110b109fc9b3d7b08bfdd799a6c15fbedd` |
| 39 | `theorem` | [filter_beq'](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/filter-beq--a71c11129e7115e9a07d92a9.md) | 192 | `result-track:a71c11129e7115e9a07d92a935eba8a5ae6184d2ab4c15e8b707d25dac5a952d` |
| 40 | `theorem` | [filter_eq'](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/filter-eq--ebff9b0d18e605d9b71ea60a.md) | 196 | `result-track:ebff9b0d18e605d9b71ea60a4a9c891d113f801d0e13c3aa95b17920897fd51c` |
| 41 | `theorem` | [filter_eq](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/filter-eq--758aa379ede85e6ae30e576a.md) | 199 | `result-track:758aa379ede85e6ae30e576a49b7fb4008a86bb1585dc98985e8168a13f65e66` |
| 42 | `theorem` | [filter_beq](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/filter-beq--57c0fa183681212f78d652fd.md) | 202 | `result-track:57c0fa183681212f78d652fdc5247900331a8889d7706b56a7b50393a2ecbe3f` |
| 43 | `theorem` | [le_count_iff_replicate_sublist](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/le-count-iff-replicate-sublist--a0f9fcca8400533ee5f272ef.md) | 205 | `result-track:a0f9fcca8400533ee5f272ef0927417064c19bc513b62ec3735cb48b086a512c` |
| 44 | `theorem` | [replicate_count_eq_of_count_eq_length](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/replicate-count-eq-of-count-eq-length--8fa91db2072a77e9e7f97ec9.md) | 210 | `result-track:8fa91db2072a77e9e7f97ec9d1cde1d0cdf1081c521fa2f9e071ebba262501ba` |
| 45 | `theorem` | [count_filter](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/count-filter--79660c962e9a899a96414d92.md) | 215 | `result-track:79660c962e9a899a96414d92da4876f22daa3c568b1e0199adb8327d4901a44a` |
| 46 | `theorem` | [count_le_count_map](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/count-le-count-map--eded100d8215cdbb87409acc.md) | 220 | `result-track:eded100d8215cdbb87409acc696596c82c6264cac45670ce26c8e8b90ccf20bd` |
| 47 | `theorem` | [count_erase](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/count-erase--27c0f5cc4bb85a692417aca1.md) | 225 | `result-track:27c0f5cc4bb85a692417aca113175b052807aac26dd8ee48693c26855982c1cf` |
| 48 | `theorem` | [count_erase_self](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/count-erase-self--679142fa2f5fb33186cd3560.md) | 240 | `result-track:679142fa2f5fb33186cd3560f51e254e5c3758b50f3b601ecaad190b79fe5090` |
| 49 | `theorem` | [count_erase_of_ne](../../../../../mathematics/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/declarations/count-erase-of-ne--3686839152ff64dc8f422e78.md) | 243 | `result-track:3686839152ff64dc8f422e7864c9f2582002b538dbdae556ce49c7e15dcde54f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
