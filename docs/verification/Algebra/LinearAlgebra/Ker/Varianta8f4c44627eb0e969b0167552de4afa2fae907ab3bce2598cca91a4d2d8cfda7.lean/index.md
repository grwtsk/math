# Verification target: GRWTSK.Algebra.LinearAlgebra.Ker.Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27da0e61bf7ff14b5f0ac2660efa451939bb4e1b",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27da0e61bf7ff14b5f0ac2660efa451939bb4e1b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean.json)

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
| 1 | `def` | [ker](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/ker--391bace0904adf0e1626e1ce.md) | 68 | `declaration-track:391bace0904adf0e1626e1ce0c483cca8ea07967a258e5aad1691f17286f47fe` |
| 2 | `theorem` | [mem_ker](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/mem-ker--06dd93ea4a1e5a821f740ae9.md) | 72 | `result-track:06dd93ea4a1e5a821f740ae9f6dcc2c6479d193ca4d6ca9626010519ae784bf0` |
| 3 | `theorem` | [ker_id](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/ker-id--a5a8bba0ea89b0201e07db1e.md) | 76 | `result-track:a5a8bba0ea89b0201e07db1e73bb3ced436b7589029ce231f9b45267515dc269` |
| 4 | `theorem` | [map_coe_ker](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/map-coe-ker--66e8d2f24d0d6397df829c96.md) | 80 | `result-track:66e8d2f24d0d6397df829c96dfa6ab5a4a07184eef05914b77e59dd68e22df61` |
| 5 | `theorem` | [ker_toAddSubmonoid](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/ker-toaddsubmonoid--1188391975ce0f9eea3b9c13.md) | 83 | `result-track:1188391975ce0f9eea3b9c135246fbbd6f173738601e4550374433fe081fb6e3` |
| 6 | `theorem` | [le_ker_iff_comp_subtype_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/le-ker-iff-comp-subtype-eq-zero--a64ab75edcd8a836fdc4d9a1.md) | 86 | `result-track:a64ab75edcd8a836fdc4d9a1a5f857f6f6887bed77e677751c434b1242ff24fc` |
| 7 | `theorem` | [comp_ker_subtype](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/comp-ker-subtype--3401c619c31dffa51f386ba3.md) | 90 | `result-track:3401c619c31dffa51f386ba3e644917ec4907c2edc3750f97576749e3e1b3e80` |
| 8 | `theorem` | [ker_comp](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/ker-comp--aa61c8f9760c4c63e4418944.md) | 93 | `result-track:aa61c8f9760c4c63e44189446beb55ef833f0688d9a4f62452ecc71b1af9c7f3` |
| 9 | `theorem` | [ker_le_ker_comp](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/ker-le-ker-comp--ee955171bcb3601e4784119e.md) | 97 | `result-track:ee955171bcb3601e4784119ec47b2a9d8b31ed0daaff1c3e4ae252e92d98ded9` |
| 10 | `theorem` | [ker_sup_ker_le_ker_comp_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/ker-sup-ker-le-ker-comp-of-commute--580dcbd323821bb299acdfd9.md) | 100 | `result-track:580dcbd323821bb299acdfd903a3f8ef4cba25b66e41b31e6be0abb99f7d4475` |
| 11 | `theorem` | [ker_le_comap](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/ker-le-comap--98c3a0f1b3b6771e2b1f6e17.md) | 107 | `result-track:98c3a0f1b3b6771e2b1f6e17c494e5de99c56d3a219903cfe8f428cc83d52d4c` |
| 12 | `theorem` | [disjoint_ker](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/disjoint-ker--ffbe4b34e5d640bb64bef793.md) | 111 | `result-track:ffbe4b34e5d640bb64bef793414ef6ece2c95eda4c14d1ca4dae1d5bf84b495f` |
| 13 | `theorem` | [ker_eq_bot'](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/ker-eq-bot--659b1276f246350585056c4d.md) | 115 | `result-track:659b1276f246350585056c4d3544804ed3cfb218c01b2a1c91dde426903df349` |
| 14 | `theorem` | [ker_eq_bot_of_inverse](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/ker-eq-bot-of-inverse--c1c20d38ab48ee1121c0e6ae.md) | 118 | `result-track:c1c20d38ab48ee1121c0e6ae0fc3be2f6a843f1d16c47a9f7837f102141eceb0` |
| 15 | `theorem` | [le_ker_iff_map](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/le-ker-iff-map--479efe837e5f91279d1f5719.md) | 122 | `result-track:479efe837e5f91279d1f57199aa845c270d7288f829e2275097048f446b8ba6b` |
| 16 | `theorem` | [ker_codRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/ker-codrestrict--722618f6dea84565a2e735c8.md) | 126 | `result-track:722618f6dea84565a2e735c8b2d0f0760571577a237cbdba49ced20c4fd0f6d2` |
| 17 | `lemma` | [ker_domRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/ker-domrestrict--5bb6b33c6b3ea05a2231732d.md) | 129 | `result-track:5bb6b33c6b3ea05a2231732d173583eb8676153a07e6d06c64fdc1031a4d374c` |
| 18 | `theorem` | [ker_restrict](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/ker-restrict--f3450a77ac0265b3d026c98a.md) | 133 | `result-track:f3450a77ac0265b3d026c98ade0977037aa86924bfa22f3791ff7fd819f06317` |
| 19 | `theorem` | [ker_zero](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/ker-zero--806e7f518aab91c0216de16b.md) | 139 | `result-track:806e7f518aab91c0216de16b80f267cff08ca99c516296218dc5c3fdde6cbe05` |
| 20 | `theorem` | [ker_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/ker-eq-top--c91e80c31d3643d0c2047ff8.md) | 143 | `result-track:c91e80c31d3643d0c2047ff814c842fb4600fdc5f53a4e8e848901fe6ea05cb0` |
| 21 | `lemma` | [domRestrict_ker_self](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/domrestrict-ker-self--81d825e15baea45c7afb9b9d.md) | 147 | `result-track:81d825e15baea45c7afb9b9d0b71d1559ee678c40cb1fbba54b2c3569efde951` |
| 22 | `theorem` | [exists_ne_zero_of_sSup_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/exists-ne-zero-of-ssup-eq-top--04a88ca714f0dcabc7059e1e.md) | 150 | `result-track:04a88ca714f0dcabc7059e1e246a9636db21bcb342a53b8a5294197b6fdf590d` |
| 23 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.Ker.Variant6cc0c2a52cc00e0cfa86072a20703538d94475847249493a81617f8e5e9f956d.AddMonoidHom.coe_toIntLinearMap_ker](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/root-grwtsk-algebra-linearalgebra-ker-variant6cc0c2a52cc00e0cfa86072a207--bfc65398011cc83a0aa826e7.md) | 157 | `result-track:bfc65398011cc83a0aa826e76009ee813961713f6530c7f5facaae3967c7b7ce` |
| 24 | `theorem` | [ker_eq_bot_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/ker-eq-bot-of-injective--351a57cb62ae7b5a66227c72.md) | 160 | `result-track:351a57cb62ae7b5a66227c721188bf216c65705425cd4e3f4c86ea0a491c0b0e` |
| 25 | `def` | [iterateKer](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/iterateker--f6f368a22e1004bcdbbae958.md) | 168 | `declaration-track:f6f368a22e1004bcdbbae958796aa87676260dc1e4acb9910655e2c1f2548210` |
| 26 | `lemma` | [ker_submoduleMap](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/ker-submodulemap--614b20a5872d7a0948be56e3.md) | 175 | `result-track:614b20a5872d7a0948be56e3b4d0717ef432dd949dd8deddf08b3813366512d0` |
| 27 | `theorem` | [ker_neg](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/ker-neg--8ed9624854f2e633679b4ff6.md) | 192 | `result-track:8ed9624854f2e633679b4ff6e738638598ad88fa7bfe1545031e14e82fa14e2d` |
| 28 | `theorem` | [ker_toAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/ker-toaddsubgroup--11675404cb98796d2f81b5c7.md) | 194 | `result-track:11675404cb98796d2f81b5c7d436c133babe640e72e3b7402e80f2cd4f4ce781` |
| 29 | `theorem` | [sub_mem_ker_iff](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/sub-mem-ker-iff--e513602c1e40d2501d9de76a.md) | 197 | `result-track:e513602c1e40d2501d9de76a5ed43a165a0e71da023e4d000e02114943d1b394` |
| 30 | `theorem` | [disjoint_ker_iff_injOn](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/disjoint-ker-iff-injon--ac51010355dfc2977ba15326.md) | 199 | `result-track:ac51010355dfc2977ba153268ddc920f6141c3893e600ad16a11743add2cdc99` |
| 31 | `theorem` | [injOn_of_disjoint_ker](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/injon-of-disjoint-ker--dfb9d3a7345a618a2ad0e5e5.md) | 203 | `result-track:dfb9d3a7345a618a2ad0e5e57d3076d92e995e4997774e8e0a9bcb77c9fa4394` |
| 32 | `theorem` | [ker_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/ker-eq-bot--117816acbb8f92536ce8511c.md) | 207 | `result-track:117816acbb8f92536ce8511c8b76e8ade8b00fe3f317f477f94e5e0b6815b309` |
| 33 | `lemma` | [injective_domRestrict_iff](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/injective-domrestrict-iff--f0cc92af71300c24a448bed0.md) | 210 | `result-track:f0cc92af71300c24a448bed07f6438d67841f5d81fe2b24b3e02d913f693e95e` |
| 34 | `theorem` | [injective_restrict_iff](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/injective-restrict-iff--4d2593d1215e1c61451eeea5.md) | 215 | `result-track:4d2593d1215e1c61451eeea5d2be499ad0ea70d6c23fcab6acab6a1132df8a8e` |
| 35 | `theorem` | [injective_codRestrict_iff](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/injective-codrestrict-iff--f4098005001a85ce7b541299.md) | 223 | `result-track:f4098005001a85ce7b541299b070a2878001cf7144a7ede516327fcc325cd803` |
| 36 | `theorem` | [ker_le_ker_smul](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/ker-le-ker-smul--53a63d37aa87c7f7ff568ac0.md) | 235 | `result-track:53a63d37aa87c7f7ff568ac046f517378e828a040938d5ff1d9dc6289bb9d430` |
| 37 | `theorem` | [ker_smul](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/ker-smul--08a8eaaa0d71c19d36ae048b.md) | 246 | `result-track:08a8eaaa0d71c19d36ae048ba6b7428d523f2f182081960d95c2722f0a66cd7c` |
| 38 | `theorem` | [ker_smul'](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/ker-smul--f465913671c4c8bb719ea159.md) | 249 | `result-track:f465913671c4c8bb719ea159127098910159c300b9c595787a3cf3eaf0aa8d77` |
| 39 | `theorem` | [comap_bot](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/comap-bot--24fd9d50af2b7605ba22032f.md) | 268 | `result-track:24fd9d50af2b7605ba22032fb2ea1aa8f5146d7985919399628954cd6f37c49e` |
| 40 | `theorem` | [ker_subtype](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/ker-subtype--25cad611303f85db5196a673.md) | 272 | `result-track:25cad611303f85db5196a673f304a2b19097fb7800a0f2094e2ebe3d1926e21a` |
| 41 | `theorem` | [ker_inclusion](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/ker-inclusion--8b41cb221dd332f2bf69c384.md) | 276 | `result-track:8b41cb221dd332f2bf69c384345820f033a72f1e055c3739b64c738495d91685` |
| 42 | `theorem` | [ker_comp_of_ker_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/ker-comp-of-ker-eq-bot--5504edb595a21fded00c148b.md) | 293 | `result-track:5504edb595a21fded00c148bf2dd82329ecd1c634ce894a4169955c50b689060` |
| 43 | `theorem` | [ker_restrictScalars](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/ker-restrictscalars--721479f337b3a3a2a0aa87d7.md) | 305 | `result-track:721479f337b3a3a2a0aa87d73ab9f0069706388ea4be75a6e5e514fe5c774089` |
| 44 | `theorem` | [ker](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/ker--c2c85b18c9a5eccf1797d382.md) | 333 | `result-track:c2c85b18c9a5eccf1797d382deb9eaf2493664c799d6f4307b5b7eeee73b2ca4` |
| 45 | `theorem` | [ker_comp](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/declarations/ker-comp--079048c8640982a88253e18a.md) | 337 | `result-track:079048c8640982a88253e18a51375fc8f442cd14e2cc076142323ecd5652c3c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
