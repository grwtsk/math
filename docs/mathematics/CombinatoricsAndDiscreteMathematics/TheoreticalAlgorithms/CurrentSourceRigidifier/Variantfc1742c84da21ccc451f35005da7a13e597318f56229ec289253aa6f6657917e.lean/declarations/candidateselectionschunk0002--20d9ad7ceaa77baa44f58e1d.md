# candidateSelectionsChunk0002

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:601d0126d79051bf13e0504e7575a73d59409fb188d8a4509bd9adf1c638dad6",
  "kind": "def",
  "lexical_name": "candidateSelectionsChunk0002",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "candidateselectionschunk0002--20d9ad7ceaa77baa44f58e1d",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42406,
    "line": 42083,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:20d9ad7ceaa77baa44f58e1d87460269d30158162d2be81f697fb42a9c594b52",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:601d0126d79051bf13e0504e7575a73d59409fb188d8a4509bd9adf1c638dad6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42083–42406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def candidateSelectionsChunk0002 : List (String × List String) :=
[
  ("name-candidate:c9ea37f30e17523ee1e34eb68b2cd1afc487973806e09f774313204a16f2f8af", [
      "name-candidate:4a4120d108bf3de3914df40821f70137a54736220565d176fed60fcd5c699622",
      "name-candidate:803194d5fb4fa54b41e334f39c2296270f5c34066da4a6d63e7f07ffbd9519fc",
      "name-candidate:c9ea37f30e17523ee1e34eb68b2cd1afc487973806e09f774313204a16f2f8af"
  ]),
  ("name-candidate:9cce45540f73c05af387ae8b2ca8d4b9507afa0db93d69d6bcb2bbb318aa3386", [
      "name-candidate:9cce45540f73c05af387ae8b2ca8d4b9507afa0db93d69d6bcb2bbb318aa3386",
      "name-candidate:d0f0511f480e6de6e2bc58e78539dcc478d877847f6f2d015cc29087e0584165",
      "name-candidate:eaf33056071d57d5bc8d270f517139a0a0f45d33df7f7a76d8e8675a4fb450b8"
  ]),
  ("name-candidate:74d30594617c79d4e821a46bd511076a4561e2f3937fffcbe13a7552b9991ed1", [
      "name-candidate:0e2d96a96fbf21215e1f9b5f1930505d9fe49c560ba799a9535ff1b3683a088e",
      "name-candidate:74d30594617c79d4e821a46bd511076a4561e2f3937fffcbe13a7552b9991ed1",
      "name-candidate:8b1be718a6d608dedf9f0506e151cc6a012b1f80df5e06544587466f5ec5df69"
  ]),
  ("name-candidate:159958acbb24666a4dc408a9a57a12949bd1da79865fb16c7bc9b50c4dc470b5", [
      "name-candidate:159958acbb24666a4dc408a9a57a12949bd1da79865fb16c7bc9b50c4dc470b5",
      "name-candidate:658be1d526e21527acde1e18f1b414384c68871ec99efc90b4456086dd993fc7",
      "name-candidate:daa60984423d0f641010cda00a2ebdaa3fd2736660e57855960ab04fb7993484"
  ]),
  ("name-candidate:a8be4a6b5ea80cbc22431c8cf6eb22b5c2f4a745e6c219fe674c8085666ae1f0", [
      "name-candidate:9bf86fc4369b278c7181e33ad3bdf1a87f178cc6e66e18c8ed8dae875f8f763d",
      "name-candidate:a8be4a6b5ea80cbc22431c8cf6eb22b5c2f4a745e6c219fe674c8085666ae1f0",
      "name-candidate:f8080c844d9191452e4c2b0cc5c88adf20822dcf3c3d96b5d6663cdf45e418a1"
  ]),
  ("name-candidate:67416558e1c40eba36f4b89ad531a366a889c4213cb23b92670eb07b36474401", [
      "name-candidate:01d1132c4a0c5a24eb59e225beace4949490d026c1d048aa8d979f20f5bd9081",
      "name-candidate:67416558e1c40eba36f4b89ad531a366a889c4213cb23b92670eb07b36474401",
      "name-candidate:c1d42e3a0360a45f20b8c811b4043fa66b57f55531f670a4ef8064f87f7300a2"
  ]),
  ("name-candidate:f78c48b0aa8a62321c208818676b3a0e5586ff84edd253a3892480e54a078fe5", [
      "name-candidate:c85d19d1e14aede8237307e06ae34548c2f77bb02b0278aa6f4c16b84e569d32",
      "name-candidate:d94763e24509eef481419e8183753506af04b483277c10482228b7c1fec7d4ea",
      "name-candidate:f78c48b0aa8a62321c208818676b3a0e5586ff84edd253a3892480e54a078fe5"
  ]),
  ("name-candidate:4b856e60339397c253e9c47b3879bdddfb157e699962a495c0a1265864465679", [
      "name-candidate:0f9739bb81db8bdf6b473a23f1805be3942440cd4cf609e96b15ae94182e77c1",
      "name-candidate:4b856e60339397c253e9c47b3879bdddfb157e699962a495c0a1265864465679",
      "name-candidate:e8c4f9da5797bc9cf8269c73936af053faa942fe3f54d2bbeea3c145f641185b"
  ]),
  ("name-candidate:9431a6c476f7839e2664bbaf534aa483e7787afd55a7260411a1167a3b5e5b61", [
      "name-candidate:2b0697ee64a1f772bbf5f009d85deba0bbe43706f7d4fda3d699dfc2ad4a9be6",
      "name-candidate:9431a6c476f7839e2664bbaf534aa483e7787afd55a7260411a1167a3b5e5b61",
      "name-candidate:9820d80b0769dedbc302cad38e94fcdf3ff246b02da560fdfded5c8456c98690"
  ]),
  ("name-candidate:420e54b7017bb3e1df33c0a0c0249e65a83d9a03a5214aa6de4f72861ae46831", [
      "name-candidate:420e54b7017bb3e1df33c0a0c0249e65a83d9a03a5214aa6de4f72861ae46831",
      "name-candidate:89d09780617c80324aa2854b9a0545cbf76519f7f938f2292f2a6ad9dc07b187",
      "name-candidate:a1e7a55abc3b01e331f9c84940aa0d0bddc7d08f866563cc1d32171bbc069547"
  ]),
  ("name-candidate:fafadb23075251449a9bd8233d09b1ca9a00ede878d81448cd9cae22d66e6bca", [
      "name-candidate:6dcd649fca6bef438a93dc4009eaefb2dad697d7103adee6b73807b282489300",
      "name-candidate:ecb264d12cbb2a5a667f4324c7644c345bc0beb7c963a6ec05b4446fa05552a0",
      "name-candidate:fafadb23075251449a9bd8233d09b1ca9a00ede878d81448cd9cae22d66e6bca"
  ]),
  ("name-candidate:908b521c8c682ee0900bc76f37b05ed5662ed5e96398b2a6a46930511ca9d9e4", [
      "name-candidate:908b521c8c682ee0900bc76f37b05ed5662ed5e96398b2a6a46930511ca9d9e4",
      "name-candidate:9f7000a08a8a1a6d0fcc7a9c0ce0195f33dac68323a2b3119129c629850aaae0",
      "name-candidate:a4b9413d0293a595dddba54b448ae10df05c3c9cddb97c5efa8d3889288500c8"
  ]),
  ("name-candidate:0911b913755c30fbbe4b9dd1320f2e46ace749f5721d497bf971e6aa984667d7", [
      "name-candidate:0911b913755c30fbbe4b9dd1320f2e46ace749f5721d497bf971e6aa984667d7",
      "name-candidate:5cc88fabf25f9d0317a25f529faceba8059d27130110ca5c36f2e3bf79a78ba1",
      "name-candidate:efae66348f52515d87ceaf34ce55fafe7f84e3b89734942b141a90201b46c2da"
  ]),
  ("name-candidate:5bbbcf9aa58f70f12db18285c931a9775b6d8956202cba267cf61eb7d68dc313", [
      "name-candidate:45438716ab63581b1fd6f4136028c276482229b6a9c444377cff824d4259763f",
      "name-candidate:5bbbcf9aa58f70f12db18285c931a9775b6d8956202cba267cf61eb7d68dc313",
      "name-candidate:e7d9d4c590f68b36980af70151a0dfb4570465a241f4750cec64706d465a7c98"
  ]),
  ("name-candidate:884eba7f20308fe7a346724d19446de441645069d2b8fed0e511064878f15bc2", [
      "name-candidate:378e7fce054c44f1c126465e7700a5d1c03de103896a6aa7ba58273da5fe58b3",
      "name-candidate:53cdb880c28c72c551ef1362734848bba8f045f97bd5b5e4bd728cfdbb92cb3b",
      "name-candidate:884eba7f20308fe7a346724d19446de441645069d2b8fed0e511064878f15bc2"
  ]),
  ("name-candidate:a582d1b93d316bdcddb658dc3d8abf9df1ecee2ae0f209ba6875666536f5e836", [
      "name-candidate:8849ef9288863f4d13e853a3fab2e3409e9483b713001951732133270ea38725",
      "name-candidate:a582d1b93d316bdcddb658dc3d8abf9df1ecee2ae0f209ba6875666536f5e836",
      "name-candidate:b0f3db9b3e48185a7d94bac721eb176c2347fc8463b1cb121ae0274990c1289b"
  ]),
  ("name-candidate:a7bc17d1986f44d436677d549091087a75d47145f5cae5deac11cbb6944214e0", [
      "name-candidate:a7bc17d1986f44d436677d549091087a75d47145f5cae5deac11cbb6944214e0",
      "name-candidate:b6d9f7e3c729c5d0fcb860cec9e0a10be1eef2d30229d1c0864afc4ff4abab4d",
      "name-candidate:db8073f8e19582ccbd8b72273d525c297ca15a6f86a9bfb6fbff290fa128e2c9"
  ]),
  ("name-candidate:2dc7a319ae6ec508e475a924473f551d71cd64edb242673de0434c4fd6104255", [
      "name-candidate:2dc7a319ae6ec508e475a924473f551d71cd64edb242673de0434c4fd6104255",
      "name-candidate:367b89cccdf652647ecb293d655ea971b5e6e06d537c8f1fbce43061d7f408cf",
      "name-candidate:77698e07191265253c586fc86a625ce786ba02fef5accdd40d5f44edf7c01814"
  ]),
  ("name-candidate:9ee0caf6c73bec70494928014c5fde1c14916753fc0eeddc6933e22e6a147ca0", [
      "name-candidate:6de1584851841c95dbe8f44a5e77a2a93059c35c1774f7e851d41f58d5495891",
      "name-candidate:7631b19c920c6b78c90c5f65d98bf3618f01d235b8237a64391d90a227f4a4d1",
      "name-candidate:9ee0caf6c73bec70494928014c5fde1c14916753fc0eeddc6933e22e6a147ca0"
  ]),
  ("name-candidate:f9fdc957a12155a209def3ed9e0840f37146da3f374ba1087a59ce4b2139ca15", [
      "name-candidate:22e5ce4daa1275b19b647fae53d0d8e886a9e1cfad64171c4b2ba7a00f85f1ed",
      "name-candidate:b47ae73554c0b356feba04234219fe101bdf1f73c4d3a859c9ff92c0d04a3f87",
      "name-candidate:f9fdc957a12155a209def3ed9e0840f37146da3f374ba1087a59ce4b2139ca15"
  ]),
  ("name-candidate:b8653d451c2cbfa2d8701cd772dc84eaeee1a64a42ea24e5a76a01d6b780ffde", [
      "name-candidate:0273f35cdf713ba438263fd9657a7f37535a63e85d8026487c1b6a1b518223e8",
      "name-candidate:40cae331b5e71a7b21ef24497d7cf1772802a9f52ca4e8f7d59c872fbccc02f2",
      "name-candidate:b8653d451c2cbfa2d8701cd772dc84eaeee1a64a42ea24e5a76a01d6b780ffde"
  ]),
  ("name-candidate:83fe8d57ae3cadf925d25a9ab5145d423242a7507ed1e44dd2c901b781435921", [
      "name-candidate:65625108e02b520487cd9251cbdd99d24cfee3c25e7bfa026936627b7bef8ab9",
      "name-candidate:83fe8d57ae3cadf925d25a9ab5145d423242a7507ed1e44dd2c901b781435921",
      "name-candidate:cde065c933f1cbda686283d6eeacfc1969e5e76df64863dfd1dfdf9f37382b29"
  ]),
  ("name-candidate:b18b973991b92eaf9d0379e56f757f44b8d5795634013e9de331cd1736090ce9", [
      "name-candidate:4091878a6cc27b7f825abd8a609b1dbb0423c0e17a5624f6d51983d82d835ed2",
      "name-candidate:b18b973991b92eaf9d0379e56f757f44b8d5795634013e9de331cd1736090ce9",
      "name-candidate:f969161ecf2a26098e277a6c59c73c5ed7aecaae69867727b22a13a0e3aaae31"
  ]),
  ("name-candidate:519cd3b244aa53f1b1286a62998c08db20debfe91fe6d92cc67c9d6c6c218e6a", [
      "name-candidate:519cd3b244aa53f1b1286a62998c08db20debfe91fe6d92cc67c9d6c6c218e6a",
      "name-candidate:5c0fd673e12180ac8c4bca285419a0f4c98fe7fc6f1aa1a0f9d1c85c6e18727b",
      "name-candidate:c2bb65ccbe04855aa704dcccda915c43116c25ad4bb97a78ba16ecfd035ae6db"
  ]),
  ("name-candidate:735941992043c0a020cfb93dbe0bf0112614ead8652e4a378b0101a97b6d4207", [
      "name-candidate:735941992043c0a020cfb93dbe0bf0112614ead8652e4a378b0101a97b6d4207",
      "name-candidate:e75f4cc6fa5837d2bb2b4c7313cbdc6e5056db5b7fb86ea9ecbff3bfad7c0f38",
      "name-candidate:f544e74c76a7f00692636906e39293a77d129d90104b760698dd23c55c1d5ec8"
  ]),
  ("name-candidate:7c849dca8a71ddc125f84a04b050f692b7afabca174721ff787fa9b22a96442e", [
      "name-candidate:264b8968ecc3fae71e1af664fac74dbfd5b7affcccc870daf951c0803aeb09b4",
      "name-candidate:7c849dca8a71ddc125f84a04b050f692b7afabca174721ff787fa9b22a96442e",
      "name-candidate:ac52f801ee7fd8e02b99e8efcc213b103e5ad72f54286a6d605f34a849ee860f"
  ]),
  ("name-candidate:ad7a541719bb3a414d08d63c95b3960a5c3da9c1c030352cb53b25377b489e32", [
      "name-candidate:434c4880081f4d75d6812b2037ddb8e550aeb7401de01f42a489dca4d92accf4",
      "name-candidate:ad7a541719bb3a414d08d63c95b3960a5c3da9c1c030352cb53b25377b489e32",
      "name-candidate:e78e24213d1e658ca3f0a5599a1ab42b92040943cba54c14a4fb0c64e1718a19"
  ]),
  ("name-candidate:c8773d4da5dc1a55d248275207803903a700d4de9288bc7d2786ae8f985165b0", [
      "name-candidate:989f34840165940fd5cdefc383f721fee84ac3a8f6fa5815d1aa2cfc648e878e",
      "name-candidate:c8773d4da5dc1a55d248275207803903a700d4de9288bc7d2786ae8f985165b0",
      "name-candidate:cd7c87944c8185bc6e0ed3a6577670480dbfbfc6b77dc372dacefb41f425e5ac"
  ]),
  ("name-candidate:da36af295fd2829004265f0e1b973ab9767b4f2d3e7bf79ce9cec2522880e55f", [
      "name-candidate:8651aed0dcb33b924ecd2b1afab3d930a097a97c14377be16e0d5c9bcab86945",
      "name-candidate:c58a58c9eeba53d5a4f475711e5b6ec68fa045407127b11928faf80a9855c7f3",
      "name-candidate:da36af295fd2829004265f0e1b973ab9767b4f2d3e7bf79ce9cec2522880e55f"
  ]),
  ("name-candidate:01b2a51c51d922ce853393e3dc7bce48a09f0f63322612622ce098972b661fd4", [
      "name-candidate:00d74839529e5961bfed17cfd59b278c37e37be7d71632ec46a7d4b0cbcb2183",
      "name-candidate:01b2a51c51d922ce853393e3dc7bce48a09f0f63322612622ce098972b661fd4",
      "name-candidate:cc84f2abe71b48b2a64c22728db9c4eff7b2e8c7383f0021e81525380ce5dd75"
  ]),
  ("name-candidate:1a080d5b52efabe8f7f70b99124028982c752f6658e5ef4aa84a9fd703ca00dc", [
      "name-candidate:1a080d5b52efabe8f7f70b99124028982c752f6658e5ef4aa84a9fd703ca00dc",
      "name-candidate:3c57848a52294ab0ccb9868f52897ccbb5e84c8cd7a925308283395411222b82",
      "name-candidate:ac7a692d241cfba92e012444121e87d7986aea2ab1c3090f39e127760e6bc6f1"
  ]),
  ("name-candidate:318274aaada5b137dd8ab6a4372dc1115d4da1a98a090e889151580efe2095bf", [
      "name-candidate:318274aaada5b137dd8ab6a4372dc1115d4da1a98a090e889151580efe2095bf",
      "name-candidate:a2b57fb8cab7417c5c51a159f0a02cee88bdb0ab2ef11b8d1387d6c165578d28",
      "name-candidate:c6cfba6350417c5cbe5e5392453fe391e579d50f1add5b0841fb62908f1f79ac"
  ]),
  ("name-candidate:b60f5df35fe1fac3d07338569d25fa7215d8fcf11923e0356ef29b78bfde318c", [
      "name-candidate:3a4cc256cbe25484160f6d198a1a1d6d73df82f396d2da2822c3e9e3f048c2af",
      "name-candidate:572eb5b4e89b8af1e5329fc66f70ebc65af41375cf60d4b0bc70e0c1354fa45e",
      "name-candidate:b60f5df35fe1fac3d07338569d25fa7215d8fcf11923e0356ef29b78bfde318c"
  ]),
  ("name-candidate:8482907d202ef13e3788f2d1d2d19c080c3d607cbb1c515f79f24a3203d52c07", [
      "name-candidate:04e12bbc547b6d81964a965fd62df7eebd307a791a223d4ac8bf631f480d15d3",
      "name-candidate:8482907d202ef13e3788f2d1d2d19c080c3d607cbb1c515f79f24a3203d52c07",
      "name-candidate:e1378ea2eee054bb753a12a1753495913315d3cb3f77e46d3b28f10d0f98e005"
  ]),
  ("name-candidate:bbd562a91c3c1ac641d448641c3262fb8a1c41e79904bf608fc075acc7fee28b", [
      "name-candidate:bbd562a91c3c1ac641d448641c3262fb8a1c41e79904bf608fc075acc7fee28b",
      "name-candidate:c3113e5f0e70be82d10b170a3fddea46b0c9355cd8749c5e5659da9e5804c5e4",
      "name-candidate:e0f0dc8152b8b22a3548cd2ca196a2380843d3ed0d81045305e6b532c6db9db0"
  ]),
  ("name-candidate:775c037ee57cf669f3536b1ad6038dd37bbe7d6d81a5cc61f3212e6beaadd17f", [
      "name-candidate:775c037ee57cf669f3536b1ad6038dd37bbe7d6d81a5cc61f3212e6beaadd17f",
      "name-candidate:c28868b34871dc63ada8a0586dfa3805b7af457d396f58fb4898a90c9ca8c7ef",
      "name-candidate:f6199f32907705f25f9041ac4ea20b667b00a4794b5df8fcddc015115fa213cf"
  ]),
  ("name-candidate:4951a201c38c89cc0c40bb327c29c87543a83aad0cb9a7003f053c1a5ca1844c", [
      "name-candidate:2bde2d55792efc34e86abda102959634bd57bdb4712bf59338b91783b036b343",
      "name-candidate:2c6c24ebc9e8f2a107b21d99835eb55a609f04c75a95866651ff4cf01276a12d",
      "name-candidate:4951a201c38c89cc0c40bb327c29c87543a83aad0cb9a7003f053c1a5ca1844c"
  ]),
  ("name-candidate:6da301b069dade67648bafcd933999218accfd918c3746f51b81c46cd4d4221e", [
      "name-candidate:6d2eed0caa2a853530b9d201aa9a0b21e8308ffa9a5e57fc1d5f008eea8e7c35",
      "name-candidate:6da301b069dade67648bafcd933999218accfd918c3746f51b81c46cd4d4221e",
      "name-candidate:d1f1d8475c1fc17cc4da110dbd02b0b171f6df3526d853c7f4849f20e2cef298"
  ]),
  ("name-candidate:5f192aeaf4fd0da041cdfbd198c63011a88d5074219c458be65e371fcbfc08d3", [
      "name-candidate:022cf7ea68be2b4ea50cdc7efd564792ceae4cf75e76be2fec6150dab943d16b",
      "name-candidate:5f192aeaf4fd0da041cdfbd198c63011a88d5074219c458be65e371fcbfc08d3",
      "name-candidate:d2a665093ae05f4554b3f49119592d624b0e116ff8013699a148d20bf197210c"
  ]),
  ("name-candidate:5fa71400b20136273311354911275572cb9b4a5ad5aa54a57db9938422b5d457", [
      "name-candidate:23fd80c696f3e0c3c87b0e1be70e5d2f9acac425489cace524da85cbf49adf00",
      "name-candidate:5fa71400b20136273311354911275572cb9b4a5ad5aa54a57db9938422b5d457",
      "name-candidate:7f51b1783fd8f1b035425b99c49a70854d58653c3f0181cecb0b5b3b1b56d4dd"
  ]),
  ("name-candidate:4f98de1ece4deb95062ad220b75d31728679e08ae8a046f61e1627964f7a3443", [
      "name-candidate:4f98de1ece4deb95062ad220b75d31728679e08ae8a046f61e1627964f7a3443",
      "name-candidate:b4f24072d59d05e8e656706d31d526eb99d30c205ce137fe1112b11295922e93",
      "name-candidate:fc023e08e50a50b261fcf6a02ca150cee51af8091136fc16cc02a7da2fb9cf2b"
  ]),
  ("name-candidate:2bba23882c39425f358c7f47ff591a0dd1bb2835e29e8deba8396280035b562c", [
      "name-candidate:2bba23882c39425f358c7f47ff591a0dd1bb2835e29e8deba8396280035b562c",
      "name-candidate:dedce1d14077091d3e8d23aa26df90b6c95cd958ec3746204e7cc93d338b6542",
      "name-candidate:e719b34b8382b77713083b5cbb2d361fffe6aaf3f2f1a97fa8bbe4b676ee7937"
  ]),
  ("name-candidate:fe9734d7fbbadb3e25808fe05bee96ee22ce48adfd34fee5b1d24f87c7beeaf0", [
      "name-candidate:ae0f20c66b00383c3fca41afe611a3398b43079aab4502f7f54b67fdb9e1a11d",
      "name-candidate:e66ddfe2c8330bf9855401c076fe74a4de2695c67a28c626de7f475c90fbc717",
      "name-candidate:fe9734d7fbbadb3e25808fe05bee96ee22ce48adfd34fee5b1d24f87c7beeaf0"
  ]),
  ("name-candidate:cce745a5baba7f75e6f2c7bd326f648b97c861a03e7aeb087cf32eb0b8e9985e", [
      "name-candidate:0bc0235bca800bfc4d94c57f51519817aa9b24f1e0a8e08c434911b42c0980c0",
      "name-candidate:cce745a5baba7f75e6f2c7bd326f648b97c861a03e7aeb087cf32eb0b8e9985e",
      "name-candidate:f5c0a5ffecdc069afaa3604041ba34e430467c10ae6f60545fe3436c6dde20bf"
  ]),
  ("name-candidate:147084de5209ee7125ef661a2f3a55c101d747ebca9bf6a6bbedcc9bf13f092e", [
      "name-candidate:147084de5209ee7125ef661a2f3a55c101d747ebca9bf6a6bbedcc9bf13f092e",
      "name-candidate:a1f5482efe011269e90de8f30d373d984efa340eff0623a608b6fbb148e1f490",
      "name-candidate:d08f69600f7c55aa97fefebb9c936bcadaeaa0c872d67f0a88c02f90bc030632"
  ]),
  ("name-candidate:cdd7a8925c591c14525c2e73dc24ea05b358d3a287977938783f96bd8a1dbdf0", [
      "name-candidate:cba535d968f8ac0bca199baa5c581ef135e1f08a931f449a3924051c19f0677c",
      "name-candidate:cdd7a8925c591c14525c2e73dc24ea05b358d3a287977938783f96bd8a1dbdf0",
      "name-candidate:e684662c938b423fe88d1b266b24d8ba4a6c6d30b9491d53e17dfef449c452c3"
  ]),
  ("name-candidate:a77884f076e9f0c72f250d32c119036b31c8aad93ad66b5eebced1f75a965861", [
      "name-candidate:a77884f076e9f0c72f250d32c119036b31c8aad93ad66b5eebced1f75a965861",
      "name-candidate:b0309e25cdcc2678e971658b29af4fabb021e8868e6dd2b78d1cf4d1415704c3",
      "name-candidate:d47a51b0bb4bf67d862450459de052a804a63d727804411fe74a0f13c999ec90"
  ]),
  ("name-candidate:a4f0cdaac032d7371dd1c4049b431befa318f098acc5ebfc62792ef57db40894", [
      "name-candidate:9d9b15d16e188742498b45a0b47fd64c72a889a2e6dab8f6d23431e9f35a0b8d",
      "name-candidate:a4f0cdaac032d7371dd1c4049b431befa318f098acc5ebfc62792ef57db40894",
      "name-candidate:c488843e38d4f7e03b2478c1672a625b96e73ed12f7711d3f2b1c30c17a2a5c4"
  ]),
  ("name-candidate:b54944ae6a9a7b9a1a23e197057e1e823deae38743b53cb30f4dd2f05e4a8ecf", [
      "name-candidate:04e33c8925194716f040dbcb881f870a3f42d333376657af97f2bb4844729018",
      "name-candidate:19581996ddb8fcdb5861cfff0a477c53b363f17d6abee6da9dc2201b09a9be64",
      "name-candidate:b54944ae6a9a7b9a1a23e197057e1e823deae38743b53cb30f4dd2f05e4a8ecf"
  ]),
  ("name-candidate:056858fc648af4d15bbfc2d4a289ee3373be84e2cc11e9d23ae3056542d71bf3", [
      "name-candidate:056858fc648af4d15bbfc2d4a289ee3373be84e2cc11e9d23ae3056542d71bf3",
      "name-candidate:40c24144d8330e98c1fe2adaf5a3fbf607a8de96d637f722d2607714ea1ccbe6",
      "name-candidate:f38ee58e3671b6d9b667ac6db473d4909c3d4b5b333bce09425027bd8a201ad1"
  ]),
  ("name-candidate:d0ea62b56a9eb966f2fd2cb3b35523194f8efa036a446480add85249056ca8c4", [
      "name-candidate:c52097f68acb4c84c1d0b26071c14a2b848bece8ab7173d78779ec859c615357",
      "name-candidate:d0ea62b56a9eb966f2fd2cb3b35523194f8efa036a446480add85249056ca8c4",
      "name-candidate:d648bf6417c634d3c62ec84c460caafd290377e59f29cbe8258b07f18fc07c87"
  ]),
  ("name-candidate:225a387ae3d4a485396b94dd9b8c9be5ad1dd8830212b73e8ab5c19fb678a3d8", [
      "name-candidate:225a387ae3d4a485396b94dd9b8c9be5ad1dd8830212b73e8ab5c19fb678a3d8",
      "name-candidate:709f8aab237a25e6cd1082f3bf833beedb7114c4916b14bdc756d4e60a9f319d",
      "name-candidate:90464946c856415f442b8dd9ea011d2b00e95f975d8b48cd7503042dadb2b6bb"
  ]),
  ("name-candidate:6a5f37246291c3f0ea01fccfe2df4db0c08900df60af215644a8999c7c658ce5", [
      "name-candidate:6a5f37246291c3f0ea01fccfe2df4db0c08900df60af215644a8999c7c658ce5",
      "name-candidate:89535e6e5c08d2684901084b165e478dc6ad40468204e91798a83de0472ae94c",
      "name-candidate:dcd7aff7fd4d6dc77e3cb374e0215a4a795df64cb6d82166e580ded938b58355"
  ]),
  ("name-candidate:cde12973a2e6620f69d7b2f690111e9a970d3833a2da639b07f8c98b60478549", [
      "name-candidate:7d88eb14c6b334ac37c616abd618a3dd2d5b5e73cb07841d8e5a3dce15d2c61a",
      "name-candidate:8bbb77ba8ca8b3327b47976e0c08cae6798b11b2f277bd69ee4f516a71e02373",
      "name-candidate:cde12973a2e6620f69d7b2f690111e9a970d3833a2da639b07f8c98b60478549"
  ]),
  ("name-candidate:aa803fe925d5605369c3e09370865d634daa655df53ed5c5caeb146a33c8720d", [
      "name-candidate:1abe055c1ba54b18ec484818e0de67cae6dee78a12714172c13ead6361d87a46",
      "name-candidate:aa803fe925d5605369c3e09370865d634daa655df53ed5c5caeb146a33c8720d",
      "name-candidate:f17b28354ae1bab79d64330487cce528892a35b40371a36f671ac58e8aa781b5"
  ]),
  ("name-candidate:09e62d802b9a859f3ca9ea8e7765de192ba52b4fbe6a25b0d04031d30ac57995", [
      "name-candidate:09e62d802b9a859f3ca9ea8e7765de192ba52b4fbe6a25b0d04031d30ac57995",
      "name-candidate:80d5248550c5be6082b14a49da7e4fdfddfb8f947d62c6853fdeb862e88cd886",
      "name-candidate:961d381d84269414d7430a0edd09128c9637b4693e9fc132a6f0c36f0226d518"
  ]),
  ("name-candidate:2181f63ea8ef8966cb0ae73ce37ab16cb064122587462e098bcca26fe13a62ea", [
      "name-candidate:2181f63ea8ef8966cb0ae73ce37ab16cb064122587462e098bcca26fe13a62ea",
      "name-candidate:69d92a0bf6f95f0465fbdeb7f19bc7d719c68358ce34273d892493eb3a5409fe",
      "name-candidate:7aaf08d81d45f7a002d0a745abf67f0fd77422d4d076f758da4feafd2fd641ef"
  ]),
  ("name-candidate:3a9bf6f2c2c6f371cc43a12717647002d8259dbb87eacdd837546f9e3123c541", [
      "name-candidate:0e52b744d54f21ce509b2c47824be483bb12a9377f8059703ceacb25cfe03372",
      "name-candidate:221419020b0e656f15bd026f5f59dd89e742665367130ca8d0acee14333e18b1",
      "name-candidate:3a9bf6f2c2c6f371cc43a12717647002d8259dbb87eacdd837546f9e3123c541"
  ]),
  ("name-candidate:59f588359e641cc1ae9b2feac96ffc2a8d6cde83e7fc9754a3587b9b6dd2602a", [
      "name-candidate:090ced11b80ee8a6b9e8649dc8f9bb3ed29a98b8d734b509f8376b850b960700",
      "name-candidate:59f588359e641cc1ae9b2feac96ffc2a8d6cde83e7fc9754a3587b9b6dd2602a",
      "name-candidate:6908cea8cc4e83d22667d832d597688fa2a7477f6bf4f760c592dd8508202609"
  ]),
  ("name-candidate:ae91444aacc6ef3295bc1ec50b813602fe855878092714824bbff1c89b39f621", [
      "name-candidate:073a0c3e1bef9e4e790b8f6c104d9eb484de5ccf20606ea58eb9968c4e66cfd3",
      "name-candidate:6a975aa88864d05b8e6cd5e05afb6a6fcd926c362c236c494f10ea969bd42817",
      "name-candidate:ae91444aacc6ef3295bc1ec50b813602fe855878092714824bbff1c89b39f621"
  ]),
  ("name-candidate:d8cabd5de94307804356583fc8d6cc85ad07d89da43c70a0ae83b5db2658cdcd", [
      "name-candidate:a79f3b213aecb9b93fa2362fe43e3b25fb8c2188ca28d99f8d9a5e063c0f2c7e",
      "name-candidate:d8cabd5de94307804356583fc8d6cc85ad07d89da43c70a0ae83b5db2658cdcd",
      "name-candidate:de8106414880996f336eeff3f624c1b8dcafe8c10e02b3d863fe2b55a9434255"
  ]),
  ("name-candidate:8889f0fc06ff0a69e2be1d26709fe90df695f23fb8114d0c894707c5f2362411", [
      "name-candidate:7c3f33d0eb9c8c9403f1f43c9b39b62affe8e0398b147a5bbb3ce13e966b3b32",
      "name-candidate:8889f0fc06ff0a69e2be1d26709fe90df695f23fb8114d0c894707c5f2362411",
      "name-candidate:d3a81d6fa6900734309c758e5820349f78c715532d2eaca8ea97544976b5b89d"
  ]),
  ("name-candidate:ac62e95dea6a9fb37a135b71a29409fb651a0a77bd166a5ba4deb3add47031fd", [
      "name-candidate:27ac9ee714b3083800693b3a34ec817032978a1edfd4a98751cac03a54d550b9",
      "name-candidate:86a377ce92c7f0111b478724a91ea9e93a44c76c2ba2b69139aeba7ffb09fa5f",
      "name-candidate:ac62e95dea6a9fb37a135b71a29409fb651a0a77bd166a5ba4deb3add47031fd"
  ]),
  ("name-candidate:ed80c06d4a1ccbd0473b52ea9fa4fdd966d5b3cece0e6d071e02d91c98e7549f", [
      "name-candidate:662b728baba1d127645d7961370cb31a8d6bf865760317b532801125dcdc7274",
      "name-candidate:b147f508cfe629903b32a9348ba5539855adcd780e55c6686a3cbe35f4acf0f0",
      "name-candidate:ed80c06d4a1ccbd0473b52ea9fa4fdd966d5b3cece0e6d071e02d91c98e7549f"
  ])
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L42083).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
