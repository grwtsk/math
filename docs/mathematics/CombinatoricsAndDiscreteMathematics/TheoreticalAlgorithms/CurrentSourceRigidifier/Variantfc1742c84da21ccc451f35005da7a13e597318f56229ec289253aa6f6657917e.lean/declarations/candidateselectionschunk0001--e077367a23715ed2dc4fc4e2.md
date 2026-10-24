# candidateSelectionsChunk0001

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7c44a7117e324cdeea20d08f99911fa6b1e43382209c3717873bba36256836e7",
  "kind": "def",
  "lexical_name": "candidateSelectionsChunk0001",
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
  "slug": "candidateselectionschunk0001--e077367a23715ed2dc4fc4e2",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42082,
    "line": 41759,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e077367a23715ed2dc4fc4e231e73b8d5d03cda03ffbb08b557a508e9cb454ed",
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

Occurrence: `declaration:7c44a7117e324cdeea20d08f99911fa6b1e43382209c3717873bba36256836e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41759–42082.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def candidateSelectionsChunk0001 : List (String × List String) :=
[
  ("name-candidate:197c9344a0c86a2fbe77d0d4e2d00a6c20957e02533e961fe181b7ae72cf6551", [
      "name-candidate:197c9344a0c86a2fbe77d0d4e2d00a6c20957e02533e961fe181b7ae72cf6551",
      "name-candidate:2812ecb1765fd9c4bcc57cdd66d04f2465fd109ed4c01f8619254d9f078618b7",
      "name-candidate:cff35b3cbfa5b941e1ea3654d3f964fb5d284bd4f3c97d644be6484f0bd6b243"
  ]),
  ("name-candidate:ea8a308db523e18ea78e51d25135c895cb7304b0691e29eb72ca9e881a6a055c", [
      "name-candidate:5aaaef4b90d53c3987577568aa8149be760a89eb74a8651ec1994a1a14a31d91",
      "name-candidate:e876e447db15d71a2e7b8db33d32d4bfd81d16c2788a28c8eb06325cfde0cbec",
      "name-candidate:ea8a308db523e18ea78e51d25135c895cb7304b0691e29eb72ca9e881a6a055c"
  ]),
  ("name-candidate:65004be8cf1ec8243ff0d9e8204fb105429b07a42f6aa12fe4e157d5766e6b07", [
      "name-candidate:65004be8cf1ec8243ff0d9e8204fb105429b07a42f6aa12fe4e157d5766e6b07",
      "name-candidate:84f8fc48ac0d7d9f07d52fcfdf620caa66a84080b156871dc4b4538c42ce34a4",
      "name-candidate:def2627a17325c1a39a5b68e71521a6556977de08478b77eb4625c3fba12b4e3"
  ]),
  ("name-candidate:8d71ec6cd2c5c9f3663ac70f27874d19e09f718e1382309ee5c95d8b05616bd9", [
      "name-candidate:48fc470566a7442eaf1fb3611086130f0aefdf57b6fb65b400131d298b13926c",
      "name-candidate:8d71ec6cd2c5c9f3663ac70f27874d19e09f718e1382309ee5c95d8b05616bd9",
      "name-candidate:b89f710977dcbf92a007f147250f19bd6e0cc2810708693f8cdbe74b6351ba3a"
  ]),
  ("name-candidate:7ca05effd056da8a4eaae1d234ae083b54ae5d6ecfda86aa5be281a8d155bfbb", [
      "name-candidate:0e5dafc754aaf4fbcb56ca2ec1b4dbaef8013c9100a4dc37cb80309d2078cca6",
      "name-candidate:2fdc35428862f79ab113ba875d415ed1d0a64218fcd803a88a8764e682616a6d",
      "name-candidate:7ca05effd056da8a4eaae1d234ae083b54ae5d6ecfda86aa5be281a8d155bfbb"
  ]),
  ("name-candidate:19a3754ed454e24cb532eaab7d3e8def6c4b379c54a89246ba2a278f24ec2a1d", [
      "name-candidate:19a3754ed454e24cb532eaab7d3e8def6c4b379c54a89246ba2a278f24ec2a1d",
      "name-candidate:503c9c6f4c1108a495f3ec7a8d8d40132b37b92cfb91b3f54077cd0496560e75",
      "name-candidate:c71cd0410bff3851783f60a8465748c8077cb1845bd7ca2c35db8a8b9fe32e58"
  ]),
  ("name-candidate:60960e7487e38b5610d953ddfb283d100f9d101a4cd9bc4afd4d9f4cb9345b86", [
      "name-candidate:5c93e4591f6acbd6c7fbcacc84d6c37993c56a69ee834843420c90c10a37307c",
      "name-candidate:60960e7487e38b5610d953ddfb283d100f9d101a4cd9bc4afd4d9f4cb9345b86",
      "name-candidate:e664e148afd1a6a2e588a6d49c3a88c9e026c13febd442bbd79329d175809898"
  ]),
  ("name-candidate:0ca1a7ab9d06607e1be976009a308b17e2952e3d21b9ef6ec2f2daefbc3464c8", [
      "name-candidate:07d74d9edb11712088a51f066a0bcfd7e5d5c256cb15b5061a467212a9730568",
      "name-candidate:0ca1a7ab9d06607e1be976009a308b17e2952e3d21b9ef6ec2f2daefbc3464c8",
      "name-candidate:f4e59d58af4bc38e02500ecc4947b6dca0a02a555f12f2dcb8439d6127925b22"
  ]),
  ("name-candidate:0a258a22b6bc4ca14325dc929a6048e6456b56f00a3f5ae7dbfc3e8caa4278f0", [
      "name-candidate:0a258a22b6bc4ca14325dc929a6048e6456b56f00a3f5ae7dbfc3e8caa4278f0",
      "name-candidate:5fc4f8ef9b81c5d71640c734756db438995362bf5b2fe25bb4f9d09d7046167e",
      "name-candidate:7bc58d8925d728b0e3e1615caff1c40863d5423d991fc95664deeaacb68d862d"
  ]),
  ("name-candidate:9f680350923d5dd4c04fa6998ae3f7d3784a22bd96c66bb60bb9fca8dfc22174", [
      "name-candidate:7b7bbb2f3a6d7ec75a704a04c31f334688db9ef456bf30d722ce3427e769bfec",
      "name-candidate:9f680350923d5dd4c04fa6998ae3f7d3784a22bd96c66bb60bb9fca8dfc22174",
      "name-candidate:a827502b9ef0efea735ccc3454a4ad489082e4186ae3bdfcecb1659f060e00e4"
  ]),
  ("name-candidate:b8f45f4ef526bf323cb6f4522bbc3ee205768eaa527a8220960183ede80a1fa0", [
      "name-candidate:159c8011df43e42c75a91107ab9aa49f203d8ba82d39a879956d82fe6e2da7ea",
      "name-candidate:5e593e608c8aa9d4c22c2e6bf84ae02bc4178c47b8d3778d49f4b69c66272281",
      "name-candidate:b8f45f4ef526bf323cb6f4522bbc3ee205768eaa527a8220960183ede80a1fa0"
  ]),
  ("name-candidate:876c68250489a624c963a00b971024c76608706adf9433eaefd6ce9459eba073", [
      "name-candidate:23ae2cdf573feaba4c62466e0dd36d96e078a9980a79275b70011c7569c1bb39",
      "name-candidate:47158087abfa0edd51bb410811a92778def0ba7cbb1fefabcf99e903f5c182cd",
      "name-candidate:876c68250489a624c963a00b971024c76608706adf9433eaefd6ce9459eba073"
  ]),
  ("name-candidate:7c8c742be142e5c766394a423e607e026a1f61af9bcd4b3e07b6610c2d76e043", [
      "name-candidate:7c8c742be142e5c766394a423e607e026a1f61af9bcd4b3e07b6610c2d76e043",
      "name-candidate:bbd6d46ae4f44d1f9a7aba857ecb2aea9fb2c158bb60920ecb8ad4ed88199995",
      "name-candidate:ed57390fabba46e47c9c743f3dbe345bbcf307c5b1df0a3e1a282ca4e54f7c26"
  ]),
  ("name-candidate:f0ab045bf62183f6ab8e0728ce882c9507155f465d316436a324f55ae37135d9", [
      "name-candidate:208f9f0f46e98bdbb624ddc9410d71ec2d4fa1d18b384edb2b740a4561e9772a",
      "name-candidate:7b05ae3bc35929458fdfee6cf039964b1c606b71e82c22824b6462ad0c671976",
      "name-candidate:f0ab045bf62183f6ab8e0728ce882c9507155f465d316436a324f55ae37135d9"
  ]),
  ("name-candidate:07c6c751be2a72311e2ef661f56713529076447fb0d72b6d0b944c4533bff45a", [
      "name-candidate:07c6c751be2a72311e2ef661f56713529076447fb0d72b6d0b944c4533bff45a",
      "name-candidate:2e752cd10e8dc4990353ed7d9cac1b2234e221b0ab62ba16747117e933e13b22",
      "name-candidate:a96672c3de80fe8b51fda1975b9219b7d2f24dbb007e9a8e9e40de38dec90fdb"
  ]),
  ("name-candidate:e7c66117b76f8c3237fb2d9135bfbe85932dc0b1b9f908cbfb9fe3b2b7e19c1b", [
      "name-candidate:e7c66117b76f8c3237fb2d9135bfbe85932dc0b1b9f908cbfb9fe3b2b7e19c1b",
      "name-candidate:ecd6ee23d4c792c217977ab2a176bb03e4108df9bd1c767a17273508a036a08d",
      "name-candidate:f9eee684b68cd8300088a6558f318afa1fc66b8f1e0b7c98c3fb8b586c0b320b"
  ]),
  ("name-candidate:7fea81934265ad45b73fef404c179941a76275ca7effe9343cfae8544e27d422", [
      "name-candidate:7fea81934265ad45b73fef404c179941a76275ca7effe9343cfae8544e27d422",
      "name-candidate:b84089dd356475b863136b775c933003a980cc1549f310bfabfd5cfb895d1713",
      "name-candidate:ead7ab28ce11932e71fef212cc414e72321dd34bffe6c55082ee1ad956b0a08f"
  ]),
  ("name-candidate:bcdca5081bb3c49a5ed1d925bf3c403912b8ea8ce096672097ede960081f20b1", [
      "name-candidate:389b948c30ec8ef98c6ab4c8c7665880278384b9745c43575fdbba189a247868",
      "name-candidate:40de814b6be7280a0d9bea319dc9a51b448370699ed4515ec2ce655285ef51fe",
      "name-candidate:bcdca5081bb3c49a5ed1d925bf3c403912b8ea8ce096672097ede960081f20b1"
  ]),
  ("name-candidate:562fb72890fc1475c90de82a89301f8a92ea2b72a8c0f321317e4035fac6ae93", [
      "name-candidate:562fb72890fc1475c90de82a89301f8a92ea2b72a8c0f321317e4035fac6ae93",
      "name-candidate:80481e2d742d59b14a10b2dfeb7a27c5ab587db9b1f336dbe3ea483c3371a186",
      "name-candidate:a6d4f2bf32199306e5d4c2e27b4ef311bf492abff8facc85eb8623ba99f0d0ce"
  ]),
  ("name-candidate:122bd705cd9347f0dc9477c32e7fbe74535980ed6bf979af0fafe435cdc1132d", [
      "name-candidate:122bd705cd9347f0dc9477c32e7fbe74535980ed6bf979af0fafe435cdc1132d",
      "name-candidate:6b0f7f524abdc18fe7f7a1c67ff4a139f78d950af2a0c727ff8a676c3362599d",
      "name-candidate:ae8cd158c15c9db5b623a41369da6f63a49ceb0f62afb5cae311ffd4c46dfe30"
  ]),
  ("name-candidate:1c8079fcc4bdc128b0fa5645152a64b2833a5a301ad76cb09172cdd972298c91", [
      "name-candidate:1c8079fcc4bdc128b0fa5645152a64b2833a5a301ad76cb09172cdd972298c91",
      "name-candidate:9349efbddd58d869c4adf032f883bce802cdcefd138545452d2b7d622e9c9754",
      "name-candidate:9e65a7638782148c57f932584a40108e01240b0df241084bd94291501d2e532d"
  ]),
  ("name-candidate:20ffac405c1196bc83dca7101f20db4d9feaaa92edb8e0d30bf30b4f1b6e3e56", [
      "name-candidate:20ffac405c1196bc83dca7101f20db4d9feaaa92edb8e0d30bf30b4f1b6e3e56",
      "name-candidate:5308bb722524f19e677ec1ec26867e86a3111c9753f3926598e728f0552987d0",
      "name-candidate:5bcb6863d7b092945305eab18691f515c2bc51a2caaff06ded86b815ca5d6d80"
  ]),
  ("name-candidate:8195b2a1cf76019f6c39e82e7cf2429c38bab545d6fe77619f2c5f1109280981", [
      "name-candidate:0bcfc147aa56b4bcab85b1f14469601669d9d5697c5ccaa0803eb5e57a7bae1f",
      "name-candidate:8195b2a1cf76019f6c39e82e7cf2429c38bab545d6fe77619f2c5f1109280981",
      "name-candidate:f95749ebd78d02c13bc590f68415b373ea2db18f14b5b37f0340f302f8bbd80c"
  ]),
  ("name-candidate:9f361b1c2e0644a7932ba3d8242a028ccd1a69667fac4f49edc5cf84e5b97c11", [
      "name-candidate:824e2d9d756d4a11afdb23eb5950e82b659d28b8426bdd6a8ff83767ec1d4c3c",
      "name-candidate:9f361b1c2e0644a7932ba3d8242a028ccd1a69667fac4f49edc5cf84e5b97c11",
      "name-candidate:d1ba4ec7150323e480ab782949dab4cd315e5a5539fb4d973bfabf0be113108a"
  ]),
  ("name-candidate:d62d32d8cdc010ceba1525cf786d20868da20017f8114aa3390a122d73381248", [
      "name-candidate:0a5727296ee4053d380af8cbf2ca403fefea9b100954c26e228341fbb22496f5",
      "name-candidate:390d1bf77bd779c94d782dae7d9be3e32e48d348350532c05ef0f4adbd93c567",
      "name-candidate:d62d32d8cdc010ceba1525cf786d20868da20017f8114aa3390a122d73381248"
  ]),
  ("name-candidate:86b791aea4558f1a9c30afcf48e61271368755e56e97dd7affec4cfb0f8c6da9", [
      "name-candidate:026c017b24f63ae95d939c1774a8e822da1708926443d13ade875dccdddfaf0b",
      "name-candidate:86b791aea4558f1a9c30afcf48e61271368755e56e97dd7affec4cfb0f8c6da9",
      "name-candidate:e3fa4c8477351960bd1f26c13df180fcd3033d8f452a42acf24bd7145ff1cf7e"
  ]),
  ("name-candidate:dc6689fc1585eca9968154d0eba2467b0f903591d954b0f4a5e58a0ffe74365b", [
      "name-candidate:06a165d956d13f528d2d0205243603832d9f158a9ca43966685f1fec4fd1ec3d",
      "name-candidate:93b6ad2e1efbeb320ec951701bc75f132ac8bfe2e659b64678a989dc0f8741f8",
      "name-candidate:dc6689fc1585eca9968154d0eba2467b0f903591d954b0f4a5e58a0ffe74365b"
  ]),
  ("name-candidate:bf04d6e81aa907ce17db2624ee1756f14abd82ae75171938cf55ad969b9509e3", [
      "name-candidate:50072a55e8f4a6fe088025a5e561c500f0c431aef6a6fb5c09dc13e55f9081ca",
      "name-candidate:8b07667a505d87f85050f6be06f7797d3a7a5117c04fb7183f667d0c04f9ff0c",
      "name-candidate:bf04d6e81aa907ce17db2624ee1756f14abd82ae75171938cf55ad969b9509e3"
  ]),
  ("name-candidate:2bc120b97d415b48e67f3c6418f544a5c95ed5ea0a89e21094c377fb1b7082fb", [
      "name-candidate:082fe9c2ee6a15a28c68ac2fa1acf24ecf3eb5b17ef71adfe00090f5533ef1b4",
      "name-candidate:2bc120b97d415b48e67f3c6418f544a5c95ed5ea0a89e21094c377fb1b7082fb",
      "name-candidate:4c924665b7fbc287be279ea8e183d4099764cbced5aaf97f2508092e96048b26"
  ]),
  ("name-candidate:b2cfa6319c598d5e0973ce63e2fa3b0ceee28a856c641f8d4825c06f20f19dd5", [
      "name-candidate:219b1bb888919dc0fbbef2ea2adcba1a67c5ca989b9a0b7bb1341fce81ee9b7b",
      "name-candidate:b2cfa6319c598d5e0973ce63e2fa3b0ceee28a856c641f8d4825c06f20f19dd5",
      "name-candidate:fbf7caa22852fb7b14ebe043bd26dd6e5a99216123ceb0fc2a77fa21ea58a781"
  ]),
  ("name-candidate:363d533d6253c0da6afb46ec7d8470dd5dde409023ffe573b0f9304d81d17fa7", [
      "name-candidate:243f6998b054755aae43666aafff241b48459d6e31334638a69c695218904bfb",
      "name-candidate:363d533d6253c0da6afb46ec7d8470dd5dde409023ffe573b0f9304d81d17fa7",
      "name-candidate:85429783f3d146e224899a342b9020a30358dcbfcce70b4c4e2a0ce3d0b518dd"
  ]),
  ("name-candidate:ff606b84bf9a7229bf43f2f3692ebc4e26e00c34bb0f2db824c2bc132ed84e56", [
      "name-candidate:985006139f7a4e3e868a06efbe39b62e7757fa50c044c7095389fba28a9d0d8d",
      "name-candidate:d1084fa09e7ba03e732ba53eee2b2b65c5001d09e95244690e4ceda9c843e865",
      "name-candidate:ff606b84bf9a7229bf43f2f3692ebc4e26e00c34bb0f2db824c2bc132ed84e56"
  ]),
  ("name-candidate:9a8200a9b417319e8575cc06a068c7b1d1271943f5bc12382e667621737d9993", [
      "name-candidate:1add09d74ee0471330cf3a1874961a8b948c70188d4abaf8d058426c3934cfd9",
      "name-candidate:9a8200a9b417319e8575cc06a068c7b1d1271943f5bc12382e667621737d9993",
      "name-candidate:ed0c8e555a2b8162bb43983da703b0c477905b283d81e1cb8bbc87c8834d15d9"
  ]),
  ("name-candidate:89dc59da09dac4d7b06ed2f7a4f9c6f0146214cdc9ab3c5d7e2854d1664adf7e", [
      "name-candidate:5703398e14b32537d350a8b706b9ba701a739b91b6f6d60cb1aa20ccde4dfa52",
      "name-candidate:6dedbefdaef92f9ef20d48a7b9c3f0a96f6fd038255013f4b34edca39ed2bfae",
      "name-candidate:89dc59da09dac4d7b06ed2f7a4f9c6f0146214cdc9ab3c5d7e2854d1664adf7e"
  ]),
  ("name-candidate:28f4b0e2203c30976ee612a7a5c7c4d88a5438588030143c49fce36430baebc5", [
      "name-candidate:28f4b0e2203c30976ee612a7a5c7c4d88a5438588030143c49fce36430baebc5",
      "name-candidate:45ad32afe836a96101b9c4deb5ad34d3464660813d6de15846095684ae0f5252",
      "name-candidate:9a0c57aab66455d4d36daee4a3c269a1af618a2b3b02c3a56bf9fe584fb742e6"
  ]),
  ("name-candidate:80e748a705b3f07d62b59fd1e1a9264ee9c00fa3cd7ac2956194c755c24ccc01", [
      "name-candidate:07e9ba676e5f346134b5680b85acc835306040a362c989cd0f09caaee3f29f3b",
      "name-candidate:80e748a705b3f07d62b59fd1e1a9264ee9c00fa3cd7ac2956194c755c24ccc01",
      "name-candidate:f9823287931f67df813eee2be0424acfe260e03310c74e4dc2da5150c6cfc5ef"
  ]),
  ("name-candidate:18998d06225cce59296a0ec6c0ff0d335ee85264fca3f7e5532258b1f204aaed", [
      "name-candidate:18998d06225cce59296a0ec6c0ff0d335ee85264fca3f7e5532258b1f204aaed",
      "name-candidate:5722825d7753b73f08bd744c2ced285c4c8835e5446bbbb5696ff52bb2fa2b02",
      "name-candidate:a74a3385ce6b688f7a78c496fb7087ec3fa15db2b3dbefca8a7d90dd8f01edc1"
  ]),
  ("name-candidate:2f63a94b189b85db138c808addf6a6c40175cb624b1bde9afb34594223368174", [
      "name-candidate:2f63a94b189b85db138c808addf6a6c40175cb624b1bde9afb34594223368174",
      "name-candidate:38129f123da84881da422f0c2032f27c3956dff6c4ac84c066097969806bedef",
      "name-candidate:8d0d53d4c7e2a746ad87617a28eaeb9e595a2314cd4cdedf43d642e712bdd519"
  ]),
  ("name-candidate:f5aeb6e926d06110cb777a924e61582b1570114586eec7ffae38aa4c091e5d13", [
      "name-candidate:4ba4a774a9614b9a24ea7e1611d1e395a46e9f4d36887ae571ac7183106fe8cf",
      "name-candidate:8cd2b8cdb10ef5567b9c62df984476b423e9c8e90cf1e66e56aebbe7cdd13fae",
      "name-candidate:f5aeb6e926d06110cb777a924e61582b1570114586eec7ffae38aa4c091e5d13"
  ]),
  ("name-candidate:18a882a2f31d1f048f48665ead717ff973a4c9e8fdb4bdb4f52678ddfc5118f4", [
      "name-candidate:18a882a2f31d1f048f48665ead717ff973a4c9e8fdb4bdb4f52678ddfc5118f4",
      "name-candidate:7d709032cc3811b23a9586885625c7afd7b26905f91d1c949bf0cff73828285d",
      "name-candidate:bc98617442a81a9db0ef2585ca8efc6b44ac62e4f9f99004fb45c6799cf20da4"
  ]),
  ("name-candidate:77f08e123a4a0ff6f27fdc9ce554a8795bc4b4d918d6426bf923de821f1526ee", [
      "name-candidate:27c7effb746d5aea1feb3c0594b00325f848fab255498fb755ac2584e9410e25",
      "name-candidate:77f08e123a4a0ff6f27fdc9ce554a8795bc4b4d918d6426bf923de821f1526ee",
      "name-candidate:9d1bb1b3b589d2f7e53f9b2d41fad1a84bf5b9cf14c57be57e89b668e36b9535"
  ]),
  ("name-candidate:1e08f023f24d3b905b305ffcc79b8826b4df33841b7607debf4322292e9dd1e1", [
      "name-candidate:1e08f023f24d3b905b305ffcc79b8826b4df33841b7607debf4322292e9dd1e1",
      "name-candidate:7e48e3fce9bed65516861b230f79ea70b5fa918f41e4d4c20fb01227ef58f6b9",
      "name-candidate:f8b8b52168e2678982bbfc16ec57d4928ea3afad4e44604f2e26a980c694080f"
  ]),
  ("name-candidate:3f7785ce5c9dbc7c4d68ae7f3114f1ef4193200add2f0e0044b9b72957097d0a", [
      "name-candidate:3f7785ce5c9dbc7c4d68ae7f3114f1ef4193200add2f0e0044b9b72957097d0a",
      "name-candidate:8b673f1fc9a3b2c565d977bd6b554bea944e5996b49d458b2a1e5f6c3ba02df6",
      "name-candidate:c523d757f6a11a763b03c862c08b136da2e7a47d24119a62cd2a333199d6b627"
  ]),
  ("name-candidate:488f17699dc87f1c063f778e45c576791daef2c72cc87cb8f01c1b63d0bddc2c", [
      "name-candidate:488f17699dc87f1c063f778e45c576791daef2c72cc87cb8f01c1b63d0bddc2c",
      "name-candidate:9b52eaa49c48206b848f329704cb2a7e12992585f3078ed8d89914a4101a6d1a",
      "name-candidate:c5cf36321d55e6597b60811e97d8ab46374f1ac6f34fa1ccd282166f314dee5b"
  ]),
  ("name-candidate:ac4ffe868367c1c8800fe4fe52b8a3a845d5dc47b5a71db668e4da2a21c8a041", [
      "name-candidate:1131ed5436fb2e80aa3d2aa0d7e8a95c56ff0aca2a0bcc91d60f054884ab8842",
      "name-candidate:834f8e612dc7c682808f0483ac81a78ffaf5db0aba29e6274ca106b7163f4764",
      "name-candidate:ac4ffe868367c1c8800fe4fe52b8a3a845d5dc47b5a71db668e4da2a21c8a041"
  ]),
  ("name-candidate:77c626a3c127ddba0a826fa9636eb4016dbd8e321220b8a101c3165a0fadc450", [
      "name-candidate:5d7ca498cba05997623ab19fd9619cc01d6919bbbe686d5fb352db5cbd0a44f0",
      "name-candidate:77c626a3c127ddba0a826fa9636eb4016dbd8e321220b8a101c3165a0fadc450",
      "name-candidate:e0e91bda9efd1b57b85a1e0afe6be98d7cf9785f885205282a2b864f191d6d3f"
  ]),
  ("name-candidate:0895130f7c65d0168f19b38b97372c0d33ff6141b89838c714ea5155c0325a2b", [
      "name-candidate:0895130f7c65d0168f19b38b97372c0d33ff6141b89838c714ea5155c0325a2b",
      "name-candidate:7b48ede6e24e86904e77212f951d5bd02666c355c835574f0020f2bb4f7022b4",
      "name-candidate:c685586036a006077f5c794a35d9952d5151815844af6a8ff6334a7fcaa25635"
  ]),
  ("name-candidate:c2f6a8be99bb8accb276245d5bca8a028c72245e555d9a4c15d8cf374e96837f", [
      "name-candidate:11714d3a78cbc338c009abd5a37561d023ea7533a4bc1f2db1da0a8cc3ee5289",
      "name-candidate:5ca8e77d4108afe3ec0eadd54d2f1e89905e1c9bcf8f2e9541e1caec830b4966",
      "name-candidate:c2f6a8be99bb8accb276245d5bca8a028c72245e555d9a4c15d8cf374e96837f"
  ]),
  ("name-candidate:508d0381085e19862174d6b7bcec8240a01ab78110372d576809830a7e32215e", [
      "name-candidate:1bd699339337e432548b558fa60c9968c91daf8dd8de68b6704625ada67c122d",
      "name-candidate:508d0381085e19862174d6b7bcec8240a01ab78110372d576809830a7e32215e",
      "name-candidate:cacb15effe814136c95b77b6d0228ab25a53beb46d60b9d49952f34d729a61ee"
  ]),
  ("name-candidate:d58d27fa3ab905d9f1b4304eadac07cdabf25b1d7f91c9859f060fe04d3df32a", [
      "name-candidate:a29de42ed0b69e5502d403210f26550c8b678fe91b1e6d9fa572c182595d75ee",
      "name-candidate:d58d27fa3ab905d9f1b4304eadac07cdabf25b1d7f91c9859f060fe04d3df32a",
      "name-candidate:e133d6908c982dc8988a82ad0ceaba84396a8713fd72b462c135764c059ecd08"
  ]),
  ("name-candidate:4d0c55ff89dbed4ae0b6d02cfd970ed31d8194b75ba4800cc6ca65642686eab1", [
      "name-candidate:4371d12f5889a53fd1c3e3401449ca5db94669f151355a15fb8fe4abe8674158",
      "name-candidate:4d0c55ff89dbed4ae0b6d02cfd970ed31d8194b75ba4800cc6ca65642686eab1",
      "name-candidate:9adfb71c782c55ea2dba3c77d5a741f3c1ac5ea69b758a82a286cda18beac417"
  ]),
  ("name-candidate:cbb55a6ab7708834f7db87a13c7bdf7e1068682fc1f930b5da587005e474e221", [
      "name-candidate:96b09b3079368c39fcd17cf501e304c883a5bc29563a5c93609c749975268adb",
      "name-candidate:c4f69001e91bf4f257c605de9d919f68ee50ed8c7b1bd4277a53d2c3ed960d7a",
      "name-candidate:cbb55a6ab7708834f7db87a13c7bdf7e1068682fc1f930b5da587005e474e221"
  ]),
  ("name-candidate:f632c8d468117ab02816f792613fd6234fa060eaa780490a11eaba4908323fe5", [
      "name-candidate:c65729e3a619df7f2321240051ac049d464150c0412b4ab2b7d50a96edeeca3c",
      "name-candidate:e097a4167e6003bbf8809c5a5843729b511d443624e3303d2946f6719162a68e",
      "name-candidate:f632c8d468117ab02816f792613fd6234fa060eaa780490a11eaba4908323fe5"
  ]),
  ("name-candidate:481cb78f2e29ff7c907fccebe4e30b560bad6b0d419649ed55948c7cc5542ad8", [
      "name-candidate:481cb78f2e29ff7c907fccebe4e30b560bad6b0d419649ed55948c7cc5542ad8",
      "name-candidate:6739ae98abfb051f7fcfd7929519a1af717bdd00a5944249b7577c7c79f0f804",
      "name-candidate:7af1173d98800c71d2c5b01b132f91e5f1f54ccc5c79b8ff9730a4a8ab74564c"
  ]),
  ("name-candidate:2aae03fe9330738633191314d8bfad4fcb98c34d39c79cafef17568e964435a4", [
      "name-candidate:2aae03fe9330738633191314d8bfad4fcb98c34d39c79cafef17568e964435a4",
      "name-candidate:7576e30b3199f9fe78ab6d7499d7e236a5280d716dcbb6ffb4f6fa521e610eea",
      "name-candidate:dcf709c1dfe38fe844789807d18bd45990c488464aae1f357f718029a57903ea"
  ]),
  ("name-candidate:17753a7a077e63843ba8d8130fff0ca43b1a875afc24b27a8f982c4be711a46d", [
      "name-candidate:065c05bb919641e84cc499fe78466e8a2d04aadb0fe3a35d51415c35f282341d",
      "name-candidate:17753a7a077e63843ba8d8130fff0ca43b1a875afc24b27a8f982c4be711a46d",
      "name-candidate:e723984df02df9b69b13add98a93bc18ff831cc6baf5bc2c130c95e581f1a773"
  ]),
  ("name-candidate:55e51e473054dea7b72a52d39a9961829880585dad5bebd9bc53b1f73dc9f4ba", [
      "name-candidate:5327c0d2a3d4de92f279ddcd5e5a369e302d350e984879dbaf16b35840c3a85e",
      "name-candidate:55e51e473054dea7b72a52d39a9961829880585dad5bebd9bc53b1f73dc9f4ba",
      "name-candidate:a958569df54de1a048a73c44d0f07ac7ef5ff7b27ad9e56e5d0a648d379c290d"
  ]),
  ("name-candidate:c7ef7a703f278b1f33fb2f9d46fe31d261be58b86b7f275bd9c3a86e2c0dc7bb", [
      "name-candidate:35eb42c2efbc1fe61533b1b24b4ea98bb9fb075960b26d9e98a0698ce0b83d87",
      "name-candidate:677b853af67fbd038623080e322cf8c1fb9e0c49b727dc64192d38ab987bbe66",
      "name-candidate:c7ef7a703f278b1f33fb2f9d46fe31d261be58b86b7f275bd9c3a86e2c0dc7bb"
  ]),
  ("name-candidate:edb5b2278dad327af93a141a0193d712aed4304537903d6da19d26081f04e7e3", [
      "name-candidate:14dba86e18dd41fc03f32afe80ea31a51e5fc5f95cac61b0f3f9e47084a5b509",
      "name-candidate:99cd11c9bc608679ed3685ef6529cede799fd64b46e0ba409f4d7e236c3ddb29",
      "name-candidate:edb5b2278dad327af93a141a0193d712aed4304537903d6da19d26081f04e7e3"
  ]),
  ("name-candidate:a5073a6d9383561691f6916f21a465ffe2a82eb65aa65296daaf18ec5ed4a832", [
      "name-candidate:1484be4e134e35613733ef36fd1752aa5a1e1088104c77e4706e69eeff3906d5",
      "name-candidate:a5073a6d9383561691f6916f21a465ffe2a82eb65aa65296daaf18ec5ed4a832",
      "name-candidate:fbfa7e1859325c43485c4bee74c87000411748ee59c678aa0d839235336c3924"
  ]),
  ("name-candidate:4bc112836f914c506b001157d876a8363a7b2a77239b76211b681d2361c1f69f", [
      "name-candidate:4bc112836f914c506b001157d876a8363a7b2a77239b76211b681d2361c1f69f",
      "name-candidate:937f47c25106d487eb3290797d07d803e3842a6d6d09b92e7b9c4f472a32c8d3",
      "name-candidate:ae6aa82d4f5804b6a4e184a2d183eda70847419181c8560be43a2b5e57910d64"
  ]),
  ("name-candidate:ae14965142e8ec6cbcdec892810422d4e0ae2ee48f8503f083d6c18d6c30f0be", [
      "name-candidate:4abadcfa6070200d03ef7a6ee33530788debac2e1a3f17635bb9014b62387e41",
      "name-candidate:8eb0331465592501ae0ae2753d9230d5fd080cdcedf1e8fecdf2acca715bf185",
      "name-candidate:ae14965142e8ec6cbcdec892810422d4e0ae2ee48f8503f083d6c18d6c30f0be"
  ]),
  ("name-candidate:c1f00122fa72e2f94fb70e859f86465acf1d825e7b8455476b8b9c8018c199c1", [
      "name-candidate:c1f00122fa72e2f94fb70e859f86465acf1d825e7b8455476b8b9c8018c199c1",
      "name-candidate:cbc518003070cabeba78da32647e2bc11a0a2b2abee906fd2fde46ecb49f0e47",
      "name-candidate:f883e3847fc9b77cd3d273a0e64a60ddf649067f2a8c535c3642034e567d2242"
  ]),
  ("name-candidate:088d708cabc971c222002f0d376490714b9c2afa8675143ca02377ac8c9811f1", [
      "name-candidate:088d708cabc971c222002f0d376490714b9c2afa8675143ca02377ac8c9811f1",
      "name-candidate:9a7b41b04c74bd5c65c6453883ea8a57aec82b5a48c5168980f57adc810957b1",
      "name-candidate:a0744594d627220b372570bdbd242dde104a16799e1fd51e20c9e49e884c3d82"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L41759).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
