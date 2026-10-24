# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e721834b029909e2d9c079905dff8d79a550158",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e721834b029909e2d9c079905dff8d79a550158`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean.json)

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
| 1 | `def` | [limitCone](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/declarations/limitcone--231dc3863802eb0773fb88fb.md) | 51 | `declaration-track:231dc3863802eb0773fb88fb595dca0ad2a4542fed117c2a0186e21ae3fc2e44` |
| 2 | `def` | [limitConeIsLimit](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/declarations/limitconeislimit--6760c2761c068aa897800413.md) | 66 | `declaration-track:6760c2761c068aa8978004132475f259093a4b8931987a153f2c6f34f33b5dde` |
| 3 | `def` | [conePtOfConeForget](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/declarations/coneptofconeforget--3bff8834a63945c84a20ea31.md) | 90 | `declaration-track:3bff8834a63945c84a20ea3102d2cbf9b53407b91e8da819199e77fcef4a21ed` |
| 4 | `instance` | [topologicalSpaceConePtOfConeForget](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/declarations/topologicalspaceconeptofconeforget--a9e49bf7717b9b0b622c6cfd.md) | 92 | `declaration-track:a9e49bf7717b9b0b622c6cfd9e23a68f627687ff1afc061b5bdca0eed12c30e9` |
| 5 | `def` | [coneOfConeForget](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/declarations/coneofconeforget--6e3e6379bdbc3fb8f5592128.md) | 101 | `declaration-track:6e3e6379bdbc3fb8f5592128a8d50f10dafdf257fae84e0e8a63ca32c632bc91` |
| 6 | `def` | [isLimitConeOfForget](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/declarations/islimitconeofforget--226be60e568f45563a13f835.md) | 115 | `declaration-track:226be60e568f45563a13f835248f25b42cda8cc03745923ce11dad4dc44bf426` |
| 7 | `theorem` | [induced_of_isLimit](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/declarations/induced-of-islimit--6131dfb34c2a3507c1acd031.md) | 138 | `result-track:6131dfb34c2a3507c1acd03106180320017b7aa899a1b34182914dd15a4bc568` |
| 8 | `lemma` | [nonempty_isLimit_iff_eq_induced](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/declarations/nonempty-islimit-iff-eq-induced--e78a9294598b93e3d0827af3.md) | 152 | `result-track:e78a9294598b93e3d0827af3f61cc2211287e5bf15babe0e6587e30d3f5a9286` |
| 9 | `theorem` | [limit_topology](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/declarations/limit-topology--c5c7d14fd2dadca466ef7b75.md) | 165 | `result-track:c5c7d14fd2dadca466ef7b75a00163b0a70daf909c6df70044dd9e96c416f8cf` |
| 10 | `lemma` | [hasLimit_iff_small_sections](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/declarations/haslimit-iff-small-sections--2b9349c08f1e5ab7f807087a.md) | 169 | `result-track:2b9349c08f1e5ab7f807087acbf8156a21f4a6b89ab0045e0dadc4f722a60018` |
| 11 | `instance` | [topCat_hasLimitsOfShape](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/declarations/topcat-haslimitsofshape--f1c85c6f53d2d87491f3ed2a.md) | 176 | `declaration-track:f1c85c6f53d2d87491f3ed2aa8bdae37959df22ce17a3d4918b4fa93a99dde40` |
| 12 | `instance` | [topCat_hasLimitsOfSize](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/declarations/topcat-haslimitsofsize--bb4e6775b80f82fb5075bbfb.md) | 182 | `declaration-track:bb4e6775b80f82fb5075bbfb6f84dc9083896249141c2a09e5b40ba9ddd658e6` |
| 13 | `instance` | [topCat_hasLimits](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/declarations/topcat-haslimits--f7fb07c65925fb1090afaa3a.md) | 184 | `declaration-track:f7fb07c65925fb1090afaa3a047bd234663109488610b0ef02f3a7edceffbc79` |
| 14 | `instance` | [forget_preservesLimitsOfSize](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/declarations/forget-preserveslimitsofsize--b1806e60ace7897625601898.md) | 187 | `declaration-track:b1806e60ace789762560189891dab3a02bbc3dea710d05c0483edec677fbe2ac` |
| 15 | `instance` | [forget_preservesLimits](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/declarations/forget-preserveslimits--9e9118913e5d538adbf62275.md) | 190 | `declaration-track:9e9118913e5d538adbf62275facfbdab7794793ce0053654c73bd6453ecd2186` |
| 16 | `def` | [coconePtOfCoconeForget](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/declarations/coconeptofcoconeforget--f3de31c7aab07901dc5afe33.md) | 205 | `declaration-track:f3de31c7aab07901dc5afe3350e525bab6dc62844b73d19f9c3e3553fee71393` |
| 17 | `instance` | [topologicalSpaceCoconePtOfCoconeForget](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/declarations/topologicalspacecoconeptofcoconeforget--560ce0516505b01788f2ed4c.md) | 207 | `declaration-track:560ce0516505b01788f2ed4cd13d5b443c4432a7409c57eee3a57a8c97385ca7` |
| 18 | `def` | [coconeOfCoconeForget](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/declarations/coconeofcoconeforget--c07874cbf0d2965c9b6c41ec.md) | 216 | `declaration-track:c07874cbf0d2965c9b6c41ec7256d75eee8e52b254982b2e04db5f4217be65ef` |
| 19 | `def` | [isColimitCoconeOfForget](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/declarations/iscolimitcoconeofforget--418679cbb21ce2f498529a30.md) | 231 | `declaration-track:418679cbb21ce2f498529a3085da330d9ad256451885cdfedbcab56eca70b199` |
| 20 | `theorem` | [coinduced_of_isColimit](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/declarations/coinduced-of-iscolimit--934b285e638c29e1ebbcba26.md) | 253 | `result-track:934b285e638c29e1ebbcba26a6bbf65a3453daf4edbe4afde578e98e90358a4e` |
| 21 | `lemma` | [isOpen_iff_of_isColimit](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/declarations/isopen-iff-of-iscolimit--bd189757410f81ba3a686652.md) | 266 | `result-track:bd189757410f81ba3a68665240d27e306c1ac1185f744268c0b8432980a5edc2` |
| 22 | `lemma` | [isClosed_iff_of_isColimit](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/declarations/isclosed-iff-of-iscolimit--0a6108fc8e438514dc414f04.md) | 274 | `result-track:0a6108fc8e438514dc414f041639828d9d1b3725c63ef4849781dbc15f7fa3c4` |
| 23 | `lemma` | [continuous_iff_of_isColimit](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/declarations/continuous-iff-of-iscolimit--f2074d22a29df79c7c67d0e6.md) | 279 | `result-track:f2074d22a29df79c7c67d0e67abdd38b22a55f54000c6fe2ced7ddb8bc13e0c0` |
| 24 | `lemma` | [nonempty_isColimit_iff_eq_coinduced](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/declarations/nonempty-iscolimit-iff-eq-coinduced--186340d1e0bf9db400fe5f08.md) | 286 | `result-track:186340d1e0bf9db400fe5f089840e3db284993bca251fdda67e9c6f8ba867a93` |
| 25 | `theorem` | [colimit_topology](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/declarations/colimit-topology--57b8ead87c2aab30ecca13dd.md) | 298 | `result-track:57b8ead87c2aab30ecca13dd6d72d78434adeee028e0fa7472789d5e5569f117` |
| 26 | `theorem` | [colimit_isOpen_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/declarations/colimit-isopen-iff--18cd37fc2682992bf1b8f168.md) | 302 | `result-track:18cd37fc2682992bf1b8f16850c5dbefb4d0244fc1a86fd360996a04c206eda1` |
| 27 | `lemma` | [hasColimit_iff_small_colimitType](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/declarations/hascolimit-iff-small-colimittype--4a6f012f3de810db2a02faf3.md) | 307 | `result-track:4a6f012f3de810db2a02faf3a66dc9f8f53243f59abd387c9a896fb070da998f` |
| 28 | `instance` | [topCat_hasColimitsOfShape](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/declarations/topcat-hascolimitsofshape--b2fa643d16bc43dd8aa64c1b.md) | 314 | `declaration-track:b2fa643d16bc43dd8aa64c1b9d2e1980ac875b784c30e7771338674ec4e8349e` |
| 29 | `instance` | [topCat_hasColimitsOfSize](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/declarations/topcat-hascolimitsofsize--0fe068e19610f1fb93c96148.md) | 320 | `declaration-track:0fe068e19610f1fb93c9614826eb83bb1886af6481fbaf2e4f6390fa97e4eebf` |
| 30 | `instance` | [topCat_hasColimits](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/declarations/topcat-hascolimits--be3b55e337ff0e2d79750db6.md) | 322 | `declaration-track:be3b55e337ff0e2d79750db6291522e52c657299022a5bed993552c2a962724b` |
| 31 | `instance` | [forget_preservesColimitsOfSize](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/declarations/forget-preservescolimitsofsize--dd99a03add7f7ef187d24a30.md) | 325 | `declaration-track:dd99a03add7f7ef187d24a301adbdb357d82056090ee7c08fad0e6a8e4187bc0` |
| 32 | `instance` | [forget_preservesColimits](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/declarations/forget-preservescolimits--8edbeb0a6ecfd35e46df59bd.md) | 328 | `declaration-track:8edbeb0a6ecfd35e46df59bd19fb37fe9953339a50cd396885986803133b1678` |
| 33 | `def` | [isTerminalPUnit](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/declarations/isterminalpunit--b08b2bc9e03fea84ae8ba8d8.md) | 333 | `declaration-track:b08b2bc9e03fea84ae8ba8d8c98590d885a3601dbcd2103030f50cff40c09344` |
| 34 | `def` | [terminalIsoPUnit](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/declarations/terminalisopunit--b961370549a5c44335b40515.md) | 339 | `declaration-track:b961370549a5c44335b40515ac9f083d60283256123a82bb37a77306b1129b41` |
| 35 | `def` | [isInitialPEmpty](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/declarations/isinitialpempty--d918ac20ca4f283d543edc9e.md) | 343 | `declaration-track:d918ac20ca4f283d543edc9e40065723341832f1b4b230d46034777e3787f7ac` |
| 36 | `def` | [initialIsoPEmpty](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/declarations/initialisopempty--f88d80a49766bf701bd2aaad.md) | 349 | `declaration-track:f88d80a49766bf701bd2aaad6291795b44e18037bcf4dcb5ced26fe00b204c34` |
| 37 | `lemma` | [IsInducing.empty](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/declarations/isinducing-empty--ba6ab4d5479531dffb7cfa71.md) | 353 | `result-track:ba6ab4d5479531dffb7cfa71759987ba80e8358442099ef7f04d18fdc2b69dd6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
