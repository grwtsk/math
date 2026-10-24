# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a0da4567b8b41ad8120b46809c6270e0a00bf14",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a0da4567b8b41ad8120b46809c6270e0a00bf14`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean.json)

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
| 1 | `def` | [restrictScalarsEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/restrictscalarsequiv--d03a66fd08246408c4b0ba0d.md) | 53 | `declaration-track:d03a66fd08246408c4b0ba0dddbfc1fa55fd581791c2374fd9bb088f96794fd3` |
| 2 | `theorem` | [restrictScalarsEquiv_mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/restrictscalarsequiv-mk--28eb7d9491d0504e55090bf0.md) | 60 | `result-track:28eb7d9491d0504e55090bf01454cf9d9b3456f9a2a19d6d89be0f0ffbe0c2e2` |
| 3 | `theorem` | [restrictScalarsEquiv_symm_mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/restrictscalarsequiv-symm-mk--a18d41093dd9de4718d96927.md) | 66 | `result-track:a18d41093dd9de4718d96927014be9d4c0ca685e52c60f6b3e8bd3fe6768cfe0` |
| 4 | `lemma` | [nontrivial_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/nontrivial-iff--363fb52fa849bbc9dff9e926.md) | 75 | `result-track:363fb52fa849bbc9dff9e926394d3d0374297dca3cf358959564cd700d3b2f09` |
| 5 | `lemma` | [subsingleton_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/subsingleton-iff--41d22a0b1891e291926c85a9.md) | 78 | `result-track:41d22a0b1891e291926c85a9872d876a3ed9289391d1ef7b60d713e70eca059a` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/instance--bcdf3b314bcf794aba356479.md) | 81 | `declaration-track:bcdf3b314bcf794aba356479284296292d2c90a0de9fd1f0bf16c92e83aeaed2` |
| 7 | `instance` | [QuotientBot.infinite](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/quotientbot-infinite--8bd799c5e8e317fbd58fc3f8.md) | 85 | `declaration-track:8bd799c5e8e317fbd58fc3f8bf8366c99b447989af68862280683f706e89d6a2` |
| 8 | `instance` | [QuotientTop.unique](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/quotienttop-unique--eca3fa5066c1808fd9f7dcbe.md) | 89 | `declaration-track:eca3fa5066c1808fd9f7dcbe791e348ace71e94193509c3de0e8d0efb167511f` |
| 9 | `instance` | [QuotientTop.fintype](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/quotienttop-fintype--8a12376ef90e92a77895a67c.md) | 94 | `declaration-track:8a12376ef90e92a77895a67cbbbad2f084f7b551668c3e7f6030aacfe5ec3aa7` |
| 10 | `theorem` | [unique_quotient_iff_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/unique-quotient-iff-eq-top--4810d97686ea56a5b6aedc67.md) | 98 | `result-track:4810d97686ea56a5b6aedc67e5213288bd6b2e711d87bc488bd21be7c37d431a` |
| 11 | `instance` | [Quotient.fintype](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/quotient-fintype--dc5427b8d4d42c18c8fce8d8.md) | 102 | `declaration-track:dc5427b8d4d42c18c8fce8d8e1c25c7b35e084118e499032578057cbe878333f` |
| 12 | `theorem` | [strictMono_comap_prod_map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/strictmono-comap-prod-map--46e6d0cff07e05f7b2e1bc67.md) | 107 | `result-track:46e6d0cff07e05f7b2e1bc67bc874b0c6b9c7591b04e5a982484a51988ac1119` |
| 13 | `def` | [liftQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/liftq--248d52b39da3dab9ee18f864.md) | 118 | `declaration-track:248d52b39da3dab9ee18f8641a55480f706869b01e25a59f0ea5db11ac82bf42` |
| 14 | `theorem` | [liftQ_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/liftq-apply--a1d07887199219a1073af179.md) | 123 | `result-track:a1d07887199219a1073af1796a9021283549c96aa408ee82acefbcfbbc38c139` |
| 15 | `theorem` | [liftQ_mkQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/liftq-mkq--58c9efc15951d3f6a48c25df.md) | 127 | `result-track:58c9efc15951d3f6a48c25dfc5815941ce4ebfc3ed5413138d3437cf8b3b2ca6` |
| 16 | `theorem` | [pi_liftQ_eq_liftQ_pi](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/pi-liftq-eq-liftq-pi--24fe28cbd31bf85ed931895f.md) | 129 | `result-track:24fe28cbd31bf85ed931895fde61786cc479fa6e60e041d03b88c68880307909` |
| 17 | `def` | [liftQSpanSingleton](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/liftqspansingleton--eadb54b1764793daf5a7524d.md) | 139 | `declaration-track:eadb54b1764793daf5a7524d84cf527b5ef7dffa9dff82b59de28565579b7d90` |
| 18 | `theorem` | [liftQSpanSingleton_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/liftqspansingleton-apply--a6e2c4543a08a4e9da19256f.md) | 143 | `result-track:a6e2c4543a08a4e9da19256f57c4185c5025e2e8d032e7f0fa0cf0e79defba34` |
| 19 | `theorem` | [range_mkQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/range-mkq--0f37ce2bae75b74fe923fba8.md) | 148 | `result-track:0f37ce2bae75b74fe923fba835eff02ff1491cf606d5b8f6533a948562c789fe` |
| 20 | `theorem` | [ker_mkQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/ker-mkq--d854dcbce798072eba374eac.md) | 152 | `result-track:d854dcbce798072eba374eacddb3ead99ecb5c48b982eee6413d1c480bb54537` |
| 21 | `theorem` | [le_comap_mkQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/le-comap-mkq--dbc20c283a75f65e5024d1d6.md) | 154 | `result-track:dbc20c283a75f65e5024d1d6fbc30acb0dd82d0af2d639bf73456fa2b887d057` |
| 22 | `theorem` | [mkQ_map_self](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/mkq-map-self--5252c64fc70a1f546409c7be.md) | 158 | `result-track:5252c64fc70a1f546409c7be51fa463468cd1d833436e9698d124605e4f423b5` |
| 23 | `theorem` | [comap_map_mkQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/comap-map-mkq--f2533e5252e579c116995630.md) | 162 | `result-track:f2533e5252e579c1169956308b7842be67f13ada334ff0d49095a8e28e09c337` |
| 24 | `theorem` | [map_mkQ_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/map-mkq-eq-top--d95178ac64648d7ed6e3488f.md) | 165 | `result-track:d95178ac64648d7ed6e3488f44a7985d626430875c983395595b0d64996e5ed3` |
| 25 | `def` | [mapQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/mapq--fd0f286edd68e7fe6ed5f51b.md) | 172 | `declaration-track:fd0f286edd68e7fe6ed5f51b037ad8737c16255f045b3e854aa0b75f644d5d1c` |
| 26 | `theorem` | [mapQ_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/mapq-apply--b3f69712b4c7777ba250949f.md) | 176 | `result-track:b3f69712b4c7777ba250949fcf52f358bcfdcc2ba82a4073776e11fffac47ea9` |
| 27 | `theorem` | [mapQ_mkQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/mapq-mkq--d5f84cd1c90d29f8b76ac556.md) | 180 | `result-track:d5f84cd1c90d29f8b76ac556282aa40b3341c4efbcee5628fa6c4e054fba364f` |
| 28 | `theorem` | [mapQ_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/mapq-zero--e922fe3af971b58b9b900040.md) | 184 | `result-track:e922fe3af971b58b9b90004016963f5eccf4962b3e7c06eb75cee7dab43b768b` |
| 29 | `theorem` | [mapQ_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/mapq-comp--9f47dc2e19f9d88257db2831.md) | 192 | `result-track:9f47dc2e19f9d88257db2831610f57d3ca171da3f26eeb20fd097484534e28ad` |
| 30 | `theorem` | [mapQ_id](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/mapq-id--dd23e305714481ae0dfd8dfc.md) | 201 | `result-track:dd23e305714481ae0dfd8dfcd584abc0ea1027def6fc2d64586b60fa33afa316` |
| 31 | `theorem` | [mapQ_pow](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/mapq-pow--3abf68c7403110867f99d8b0.md) | 206 | `result-track:3abf68c7403110867f99d8b006b614690ffcfc4e9fc936af8fede1f4600b729a` |
| 32 | `theorem` | [comap_liftQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/comap-liftq--d930e5858343ec54ed29e4f6.md) | 216 | `result-track:d930e5858343ec54ed29e4f638e6a277fe6c65c4e8f63be2d92f77712f24d6bd` |
| 33 | `theorem` | [map_liftQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/map-liftq--7b7de988c6127c161affdc4f.md) | 220 | `result-track:7b7de988c6127c161affdc4f178ec10f470f195392b9963c2361d23d6c8e6072` |
| 34 | `theorem` | [ker_liftQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/ker-liftq--0952b7ece1c3d14a726b572a.md) | 225 | `result-track:0952b7ece1c3d14a726b572a64931baf21131b71851b27ce495af1174bd21f9a` |
| 35 | `lemma` | [ker_mapQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/ker-mapq--665887b45b912a5de58a1148.md) | 228 | `result-track:665887b45b912a5de58a114874b058938b0e6204fa0c85c9a8196896f27d79be` |
| 36 | `theorem` | [range_liftQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/range-liftq--18bba12329057042d7f7023d.md) | 231 | `result-track:18bba12329057042d7f7023d1c9c5a50887476d1bde958fd15dcb36675f89dd9` |
| 37 | `theorem` | [ker_liftQ_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/ker-liftq-eq-bot--477a5984480d9e0339c6b382.md) | 234 | `result-track:477a5984480d9e0339c6b3828b60b9e18b3544b8b67864699779fbe9a68a9435` |
| 38 | `theorem` | [ker_liftQ_eq_bot'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/ker-liftq-eq-bot--2e19cf0788f7b36b8b1ff06c.md) | 237 | `result-track:2e19cf0788f7b36b8b1ff06c7031750d226f5c47613862050c9e10d905eef70f` |
| 39 | `theorem` | [range_mapQ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/range-mapq--a0f377cdef71eedcdca9adbb.md) | 241 | `result-track:a0f377cdef71eedcdca9adbb034c494b3703755591e1fed76cf87b77d2f5c3c6` |
| 40 | `abbrev` | [factor](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/factor--59e423610b248550f2ce2a3c.md) | 255 | `declaration-track:59e423610b248550f2ce2a3c701bc3a84248047a62dde6df70e67cf454bdd503` |
| 41 | `theorem` | [factor_mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/factor-mk--2d58967d13872bb20145f6f7.md) | 259 | `result-track:2d58967d13872bb20145f6f71e3dfec0b7058391bfa0f58bcb10d1dc45ee0c40` |
| 42 | `theorem` | [factor_comp_mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/factor-comp-mk--d6dd9f56648a5561b423a953.md) | 263 | `result-track:d6dd9f56648a5561b423a953e9b967f8309e08364e01fb2008f3c66eed665ad3` |
| 43 | `theorem` | [factor_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/factor-comp--b0c64f3f2c857f9d3a9fbecd.md) | 268 | `result-track:b0c64f3f2c857f9d3a9fbecdc13753c11c25987003b5814fa4e22d93d329dbee` |
| 44 | `theorem` | [factor_comp_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/factor-comp-apply--57e8480229eb2e6491a91f0e.md) | 274 | `result-track:57e8480229eb2e6491a91f0e37caef2d9ad99cb60248aa301ec66fe2af8870d7` |
| 45 | `lemma` | [factor_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/factor-surjective--0e0e3c3ed6faf0c44b3600cd.md) | 279 | `result-track:0e0e3c3ed6faf0c44b3600cd3bc30ca75a6a78a836562017a47eaa2c78ffb7f4` |
| 46 | `def` | [comapMkQRelIso](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/comapmkqreliso--3680837830c45d715f840d22.md) | 288 | `declaration-track:3680837830c45d715f840d22ccccc7b72029fbcf24a50775bbdce3d0c23066b8` |
| 47 | `def` | [comapMkQOrderEmbedding](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/comapmkqorderembedding--2d9bbad3540cf42f910e9c2b.md) | 297 | `declaration-track:2d9bbad3540cf42f910e9c2b9e69a956b92809f64316117767b59423dd7d6446` |
| 48 | `theorem` | [comapMkQOrderEmbedding_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/comapmkqorderembedding-eq--804ab4262610cae571b38398.md) | 301 | `result-track:804ab4262610cae571b38398e70131909d1b3e82fb423d2f495b5b597ff3081c` |
| 49 | `theorem` | [span_preimage_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/span-preimage-eq--78736faec6b4a5e1c49ce700.md) | 305 | `result-track:78736faec6b4a5e1c49ce700c3193805a40e692d12f23d69d6dc95c9dc17e54c` |
| 50 | `def` | [Quotient.equiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/quotient-equiv--686cef696102988993a094f4.md) | 327 | `declaration-track:686cef696102988993a094f4f39e9d23ec6324505c57196ba686ad63331972a1` |
| 51 | `lemma` | [Quotient.equiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/quotient-equiv-apply--7c6b816db11b703bb168e253.md) | 335 | `result-track:7c6b816db11b703bb168e25395316201c1f7ba219821f473b84bb0a062c91c3f` |
| 52 | `lemma` | [Quotient.equiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/quotient-equiv-symm--5954e0529a8dd682524adb54.md) | 340 | `result-track:5954e0529a8dd682524adb5442b3dceb68d5e87a2f8fe2c89e8296e930ea4641` |
| 53 | `theorem` | [Quotient.equiv_trans](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/quotient-equiv-trans--72b4e7fbaadc1956e190bbbf.md) | 345 | `result-track:72b4e7fbaadc1956e190bbbf5e1dadb2273882e84e2c2f644934e6007ec24546` |
| 54 | `theorem` | [range_mkQ_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/range-mkq-comp--507301bdc3b0df4ae23d9726.md) | 376 | `result-track:507301bdc3b0df4ae23d9726221a5703db895022311031bbc838f298cf0931f6` |
| 55 | `theorem` | [ker_le_range_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/ker-le-range-iff--6fea17757cd529ac37d1074c.md) | 379 | `result-track:6fea17757cd529ac37d1074c394253a2f0579285597596baa4ec73f620d2b866` |
| 56 | `theorem` | [range_eq_top_of_cancel](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/range-eq-top-of-cancel--dfb2e68ac81c0e275b39dac5.md) | 384 | `result-track:dfb2e68ac81c0e275b39dac5fec08112ff4959673958fc2ae18a0a1450a81590` |
| 57 | `def` | [quotEquivOfEqBot](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/quotequivofeqbot--3e6cfa854a6c17f1b53e46c2.md) | 402 | `declaration-track:3e6cfa854a6c17f1b53e46c20d252aa0479e48cfa4478cefc536ab35e3c660c6` |
| 58 | `theorem` | [quotEquivOfEqBot_apply_mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/quotequivofeqbot-apply-mk--569af49eada0f8efb2d9ef1c.md) | 407 | `result-track:569af49eada0f8efb2d9ef1c5254651f23dd41d0f783da83cfb4a45e64e83c42` |
| 59 | `theorem` | [quotEquivOfEqBot_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/quotequivofeqbot-symm-apply--cd2d48e4235e066e29e27632.md) | 412 | `result-track:cd2d48e4235e066e29e27632127d76bd4f0789ee4efc285e94acb13df0e58e78` |
| 60 | `theorem` | [coe_quotEquivOfEqBot_symm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/coe-quotequivofeqbot-symm--08185239f2e1770cd59d7c35.md) | 417 | `result-track:08185239f2e1770cd59d7c35b318e570f7aa6a73322defff236d42cb6ac18762` |
| 61 | `theorem` | [Quotient.equiv_refl](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/quotient-equiv-refl--31dcc4a54fb44a0f56fce76a.md) | 422 | `result-track:31dcc4a54fb44a0f56fce76a2b78740934fc0660593771480e92674ee398695c` |
| 62 | `def` | [mapQLinear](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant564aad5ee0111df700cb30aca030018f26939ed1c307f19ee6d9ac02b6bc4312.lean/declarations/mapqlinear--2c72ad307b3f6f0df58c2fe9.md) | 440 | `declaration-track:2c72ad307b3f6f0df58c2fe9ada9e075c86a98c8cd13396aab5a171aad242a61` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
