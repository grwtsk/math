# candidateSelectionsChunk0021

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e65de3bc3006df8a3299663a104dafe596e6f334da94576f5453796b40861b39",
  "kind": "def",
  "lexical_name": "candidateSelectionsChunk0021",
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
  "slug": "candidateselectionschunk0021--2ba6633c1693d59b2611cce5",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48867,
    "line": 48500,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2ba6633c1693d59b2611cce5bd287158c8875d64204bf245b026958332a362f3",
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

Occurrence: `declaration:e65de3bc3006df8a3299663a104dafe596e6f334da94576f5453796b40861b39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48500–48867.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def candidateSelectionsChunk0021 : List (String × List String) :=
[
  ("name-candidate:2df57510143517c5c5a8aa9bcffe733c6336d6bc958629a8116a72493ffc23c7", [
      "name-candidate:2df57510143517c5c5a8aa9bcffe733c6336d6bc958629a8116a72493ffc23c7",
      "name-candidate:3dc816d2ed7c617b756ab4c62e8a31cb5ca003924354370e3327acca4a07e4b8",
      "name-candidate:a60085784cc36835f58da7f2c632336180574aac6e7ca7aad7a704dc12b97fbe"
  ]),
  ("name-candidate:28430d2800b219a1ab67f31b28c24cce64cb22191abb18e1fcaaa4cc7e6875b0", [
      "name-candidate:140902f7867eb1bee70b21e9fdd893e93da27cc28b63cabb05a3b365ed011434",
      "name-candidate:28430d2800b219a1ab67f31b28c24cce64cb22191abb18e1fcaaa4cc7e6875b0",
      "name-candidate:35a0cbbe3c86c6c18e61618baee44d6148069fe7e770a70168d86df1f02c4af8",
      "name-candidate:7f6f6e3792c3982ad9616db21cbfacbcb79c1aa35dfe9b88ca79e57d2161558a"
  ]),
  ("name-candidate:536ceb997fdd26680665c33d1f7cdb93aefb9db92bdde7d14eb56ab8ebdf2f46", [
      "name-candidate:536ceb997fdd26680665c33d1f7cdb93aefb9db92bdde7d14eb56ab8ebdf2f46",
      "name-candidate:aec9eaf917dbacfc8a09427738da1fe03a022ecac499d7ae2e38a8d6182cf295",
      "name-candidate:c1d5abb5dd47b99493ab9cac1d6c7b54fd16883984b46b4545c9fc320317f69d",
      "name-candidate:e284ab93522c8927de6cc7e27d302956e5f65a60cac9b68dfb98426c399fd6c8"
  ]),
  ("name-candidate:3f1d19093fed89dec392db32154e7444e5dd64c2fd77d88b0ef43082f385e3c1", [
      "name-candidate:079d51daf4b434b4a43f12d6b4341c783736ef08d1443b65fa3856e5fe183663",
      "name-candidate:3f1d19093fed89dec392db32154e7444e5dd64c2fd77d88b0ef43082f385e3c1",
      "name-candidate:eaf25a8d53309b2d6188401e6069ddc760a6d9e9e5a176748dc7b9ed33ba7d08",
      "name-candidate:f8132e0a00a567cd56dce94e7987825dde87fffdc7f77aa983e6d60c9837e545"
  ]),
  ("name-candidate:ea1be85a4272af11bfceec9aad26239752dff6a6e83e045e2bcb025a2bfa9a37", [
      "name-candidate:1ea2114c2a9924ed4004be4a7884fb415b47e5bcb898ce7a88cb521f8f2e64d8",
      "name-candidate:2bcf355e5a4a8e6c30f8c948fec3a6ec30110989823409eb28a4152cfa967c31",
      "name-candidate:b7ebeb96f6ef964d34c8471d3997533198dc0daa6975ee7ab915ad85efba0afd",
      "name-candidate:ea1be85a4272af11bfceec9aad26239752dff6a6e83e045e2bcb025a2bfa9a37"
  ]),
  ("name-candidate:30d7de2d92db65e5839d5f40b767366e597997af7c3c8ee2d6703ff03781a62a", [
      "name-candidate:30d7de2d92db65e5839d5f40b767366e597997af7c3c8ee2d6703ff03781a62a",
      "name-candidate:5fd5ee12af9fc37619c1a80ed2532c869cd346b3fb60bb2e712d5a27f5203c16",
      "name-candidate:86406dc10709686b1a41a403c978fd99bad220fa53f272f21526b3f80f863f3e",
      "name-candidate:ee4b12cc8c7562b7ba49a58f3ae639d68553fb9cb3891125b01f965e8271dcd4"
  ]),
  ("name-candidate:5ea27e8e9b97f7420eb7e4834fdf86f6e320cecfd3646e473c34ce1125d5342e", [
      "name-candidate:046905b29e68227970bd9e850c62fc3b95f12651496b641342d4ff66ca996360",
      "name-candidate:5ea27e8e9b97f7420eb7e4834fdf86f6e320cecfd3646e473c34ce1125d5342e",
      "name-candidate:8c5679d8fe712e5895d28055364abafb8bf5127cf934f8d5d2021197bba2b8c2",
      "name-candidate:b65a17c6359f3951911f47c1636803ea1b8250ac4e803c7b39e00d9034f61722"
  ]),
  ("name-candidate:06bf7b05fd170d14f10f5e44e4fd262e5aa9623dcdab15b9770431d00d640dc7", [
      "name-candidate:021abee571570e20f5ca5c4ed85d6bcb05ff3615daf061c4937582503572ac09",
      "name-candidate:06bf7b05fd170d14f10f5e44e4fd262e5aa9623dcdab15b9770431d00d640dc7",
      "name-candidate:8560da0a23b9700f28526977d45a88d342d7c1b64d45c6176c910189238f3664",
      "name-candidate:c05933e557ab01705ab5368df0686963482a11af6ed7934821f8a10a38603c84"
  ]),
  ("name-candidate:192e94dea9ef31bf18aa221e8ffc339462d6903b606e4ac7d28568fbf8d4fcf2", [
      "name-candidate:192e94dea9ef31bf18aa221e8ffc339462d6903b606e4ac7d28568fbf8d4fcf2",
      "name-candidate:4fd09f728b0f0a5dc76d12eb9cd7ae9c8c597935aaa3d1366515e742e3b62bc9",
      "name-candidate:68bd42a2f0cc513c6c0b543b5317030a725d208621bc0eb6b10252fb0bea264c",
      "name-candidate:88d4f0cdb0faaf95a9eb840baa2c44115e9cda777a3f7e31dfe10154676c74de"
  ]),
  ("name-candidate:af3a7412982d472aa451d5fbe960ad959e4567177ca78868dc95564ef6c9904c", [
      "name-candidate:78efe8572166e7bf32072c6305ad6334efaae2dfd05dab24c4f78b10d54b327f",
      "name-candidate:a4353c4baff1e8179685bcf24ee4bd0b62786f79d9d1ae3f6b000155e9b0ccd9",
      "name-candidate:af3a7412982d472aa451d5fbe960ad959e4567177ca78868dc95564ef6c9904c",
      "name-candidate:d5a9169aa98eb7850a39caf1d77fa8d98401def93a691e69953cbcc135fa4326"
  ]),
  ("name-candidate:4fb5cf9ebe27d1278b51b59bc573cc88e48fcdcfe12f61fdac90ada96ddb947a", [
      "name-candidate:08617fd494d0ceed883293cea9bb73a9a543e4b1b303f487cae42cc64ffa9deb",
      "name-candidate:4fb5cf9ebe27d1278b51b59bc573cc88e48fcdcfe12f61fdac90ada96ddb947a",
      "name-candidate:730c3db8298896b12ce0a7cfb8aae7dee4cd1fbaaf7d2c6f88d576cfdb755e9b",
      "name-candidate:f9933156e29c8d1d9bde240b717aafdb1b080ddf802adf6f5e46fadf316b04bc"
  ]),
  ("name-candidate:2c31037be0e26ce0b77429a328d62a669d900305dd522df9d380b1ea7dbd02e6", [
      "name-candidate:08055465d4c1d2b7a98a7669a9253958bab7758270ac88e5646254ec3675ec18",
      "name-candidate:2c31037be0e26ce0b77429a328d62a669d900305dd522df9d380b1ea7dbd02e6",
      "name-candidate:9024f5b154cfe1940ca2cfc4740297f961e2d56082d4916ec4ee254c9e68baa3",
      "name-candidate:9d0dd6d3caef8e4fd25a1f89ed1335641a2b6c06598eb7110f25a1f326a82e90"
  ]),
  ("name-candidate:1d176b444b84740e3661f5e24b6491cf578fae8e2fef10fde1e61dde5986b022", [
      "name-candidate:1d176b444b84740e3661f5e24b6491cf578fae8e2fef10fde1e61dde5986b022",
      "name-candidate:356a9c24b8ee7aed2156926e9c66e60501c137e4d1e1d9659c3ddbc9506c93c4"
  ]),
  ("name-candidate:c3704ace6f18b7ff6ccdfbb6a442ad9c74b83f65e3223c2666c206c3362e093c", [
      "name-candidate:94a58875f7c35f53539d37b581c0e36a8d5c070cacb1fa872bb3a5c50f84b4c7",
      "name-candidate:bbe02383d8423887e96eeabc81aa85f7ad10b6acbad28b0c1c9340b3a6c058de",
      "name-candidate:bf1b6d22c5d4ce7760803b5286f2fe29e84a74eb15a494c8b110e36124c98d21",
      "name-candidate:c3704ace6f18b7ff6ccdfbb6a442ad9c74b83f65e3223c2666c206c3362e093c"
  ]),
  ("name-candidate:39a31d90e63cac1e5614c8a26b484a69d3aabe3b2086ef4f3a090eabd1898b49", [
      "name-candidate:39a31d90e63cac1e5614c8a26b484a69d3aabe3b2086ef4f3a090eabd1898b49",
      "name-candidate:547e88c3d7006f8fd37aaa624818268bedefaaa25494ca52c6fff98b05848e39",
      "name-candidate:7832937829b6106fe82a7d0b4877a0348078208075ca39ae9b7d9a7898f67413",
      "name-candidate:caa951bd869f00c50a434313dcf6db002fd7690ab52c44fcff0532a035f14428"
  ]),
  ("name-candidate:978bac718d6e3ddd18a7d59d83f30325681de89a4ccb8822ad4f2c480b96aa0c", [
      "name-candidate:7ce2ae4da4522772101723e2c8199dc51fcf083011cd15e85594c25324db8f56",
      "name-candidate:978bac718d6e3ddd18a7d59d83f30325681de89a4ccb8822ad4f2c480b96aa0c",
      "name-candidate:ce6786ef821041618625305f3bae957b1c9090934fb33abcc698b9fb6cd9bf33",
      "name-candidate:eb0ba8d5d19a7d4b5fe914416503afb2add7d42760ecbe5f9744c85de07deead"
  ]),
  ("name-candidate:509495132f7166a5b53b5f7b85a457605443110b4416640d1232386d608504f9", [
      "name-candidate:31b5c176c0957aac851b608962b0e3e9ba6d61a8ff2705c3445e752f4208c261",
      "name-candidate:509495132f7166a5b53b5f7b85a457605443110b4416640d1232386d608504f9",
      "name-candidate:c066d7ac3c806d309ca8ad9d642a41fbd08617e33ebb02a297dc700dfceba808",
      "name-candidate:c7f94e4db4a328cf314fc0309fc9ed05269b981c4ec86b3109e2f26b7b1bc35c"
  ]),
  ("name-candidate:9452f89e2ac616a9eaa408375cd0509c72bb70d2bd3c9716c7b25c50c24ce64c", [
      "name-candidate:030de9ef13350c63a0523e2f3c8565eeb9e52feadb583b36640847e49daa0ece",
      "name-candidate:9452f89e2ac616a9eaa408375cd0509c72bb70d2bd3c9716c7b25c50c24ce64c",
      "name-candidate:aba8310f4f099cc0c6be1a3aab7d3b619468a16727f80f0fd52d47778013d255",
      "name-candidate:e095cd81de9f496a0bf9a246e78f3196af715fbf9d484779e122beec4cc8f994"
  ]),
  ("name-candidate:1bbf595c8854538f0f248f5307a388a96412d39c871aab0462c2e1beaf52d32d", [
      "name-candidate:1bbf595c8854538f0f248f5307a388a96412d39c871aab0462c2e1beaf52d32d",
      "name-candidate:3630ed63347cef80a60e62dce30181f83d1c66499e06fa541e57aba3beb5b7f2",
      "name-candidate:af8edb13eb098d87b5c64513b3a9372b0d8a2e204ab635681578f449e60a9020",
      "name-candidate:d8fb9da54d5a85edf8ffd28f21ea16f0fa14ccf325a58acd94e26f899c1fda7c"
  ]),
  ("name-candidate:4e2d754b89284e4173ed54de5532b2c621bec6274a5a81f3d5b48d2d51785672", [
      "name-candidate:05b3444578fe148f0bac73410c97d9b9b481b2d18d051401639418f7266dfe44",
      "name-candidate:412dbb83e90a787b3d5ef4883dbbccd7312d8d5e8517c4788f8c6144baf80c49",
      "name-candidate:4e2d754b89284e4173ed54de5532b2c621bec6274a5a81f3d5b48d2d51785672",
      "name-candidate:bbcf644298b3c1755dee39250b5b12343203d01d54618895e944047b3da20948"
  ]),
  ("name-candidate:b19a523d2b3af89cb728b11ac13dfe9a476f831d4faec4a1d4eedf557ebeb57b", [
      "name-candidate:561af2841c5e2aa28f979fc43ec9e2d7cb99f0171ae3806d70a7973c6447a232",
      "name-candidate:66b80a53b824247913f338376c484f14fad16bad9a23ce2d117f0470c4ffeb1d",
      "name-candidate:a287b6a5c2f2769d76e9d0e6af9473467b6a646af92a7a930110fbeb0dc00efc",
      "name-candidate:b19a523d2b3af89cb728b11ac13dfe9a476f831d4faec4a1d4eedf557ebeb57b"
  ]),
  ("name-candidate:f4ce13c7af77d60dd0cfb5036cbf04f7375409b4ccb068765b9da47d5e51bb52", [
      "name-candidate:19eebde2c8496467bce79361477f9890fff899b7369f179298f67b0307dfe6a5",
      "name-candidate:74926a0718a670271f82c4a26670366f4ca46e27c5a21272d41ac70c1907d6bf",
      "name-candidate:f4ce13c7af77d60dd0cfb5036cbf04f7375409b4ccb068765b9da47d5e51bb52"
  ]),
  ("name-candidate:58924b448fe895eba209015fa382be82d1943ef6633d88f74c70dc3ef4545a70", [
      "name-candidate:41c7c2db06f3a39fd12d63274f108949162d84cdd0615cdf570a330e3260ed89",
      "name-candidate:58924b448fe895eba209015fa382be82d1943ef6633d88f74c70dc3ef4545a70",
      "name-candidate:6280fb82c862de7283d91a649e70cdcb46e435e4bade64aab960f35c3b5df6d0",
      "name-candidate:f6e1453e8dc00765891154ada5937e9ab41830270d718a6ca27d69ee991bc815"
  ]),
  ("name-candidate:0d702700dc47a3053c3064c7d1e49f556204ab88bb2540fd2869f7217907ea0f", [
      "name-candidate:0d702700dc47a3053c3064c7d1e49f556204ab88bb2540fd2869f7217907ea0f",
      "name-candidate:0e1e73d7fb2d4d554b74c9efb7cf4f66d6eadcfc98438beb3104e1bc91222d7d",
      "name-candidate:6b8de8e3d292de02a9242f37ef76e486647781010b65c81c4d92fb31e49e5907",
      "name-candidate:eb8a782aac43f00e5f1615cc860d6f05a96e4d492cb8a286f46badd8c76b1a26"
  ]),
  ("name-candidate:4d9845b99666711b28d159ca2ee3156799493d8945247acbcbd0b072734c78d5", [
      "name-candidate:34079e2a7ce176b0150067b1b2fa8bdb7a320e882d43f9ef735afdcae87c94e4",
      "name-candidate:40073674cf525f4056b628e89aaca1c5ee2dd8d54964e82eb154e7592a4d7ccd",
      "name-candidate:4d9845b99666711b28d159ca2ee3156799493d8945247acbcbd0b072734c78d5",
      "name-candidate:aace84213063cb2ff96385164e7687209d4a9740b64dba4d7d9f6105d68432de"
  ]),
  ("name-candidate:0ed858f4db0c6eb566d9b807fdbebb97443197a9ba75e1f159330ec4240b12c8", [
      "name-candidate:0ed858f4db0c6eb566d9b807fdbebb97443197a9ba75e1f159330ec4240b12c8",
      "name-candidate:0fe11a1312dfc60ca4871c627539144d0a224ae0579b8607e002d469c7921042",
      "name-candidate:1df1c6e95f94517558ec2eeae1680a5e2e677f5cf1ae8b5f66ab2cfe142a6005",
      "name-candidate:bb533dfef7d1e50641eded1e326d8da06434194a8f3a4ef3f28f404b69c96c5a"
  ]),
  ("name-candidate:0c33436ed722fbc70dd94255ab8ddf1786ccabb3acdf47f5d9078053ca7517d8", [
      "name-candidate:0c33436ed722fbc70dd94255ab8ddf1786ccabb3acdf47f5d9078053ca7517d8",
      "name-candidate:fc08fec4a347af92e0845624497b144b6e7f129c666e02759e73c2d4db0e05ad"
  ]),
  ("name-candidate:3d1b87aa3ce913ee3ad6d08a3a5c4c8ff72ee1e47d3f9bb822d6b983d5d99ece", [
      "name-candidate:3d1b87aa3ce913ee3ad6d08a3a5c4c8ff72ee1e47d3f9bb822d6b983d5d99ece",
      "name-candidate:43b8f44eb9a7174c358777784bc58227f7aebeeb5964f739a5db0c13c6613fa2"
  ]),
  ("name-candidate:54f1f8bc9214335e4c81438af566ba776a3603bb5d629530e92a0be891eab3e2", [
      "name-candidate:51d76e9bd4e5fefea27fd987fa13807b3cc328bad91d0f6869dffe99437f42af",
      "name-candidate:54f1f8bc9214335e4c81438af566ba776a3603bb5d629530e92a0be891eab3e2",
      "name-candidate:c416a0c448a33558f273547c7cabb8ccb7f560a305f8872be7c8f0bdccfd499a"
  ]),
  ("name-candidate:8627dfc8a690717b20eec8df92a8367914ce2ea5e3e8d2b1389fc7887d86a4c5", [
      "name-candidate:6e0ade08740563f4e5a12e62d3fbde50945f12fb402cddbde29c5a0554737a56",
      "name-candidate:8627dfc8a690717b20eec8df92a8367914ce2ea5e3e8d2b1389fc7887d86a4c5",
      "name-candidate:9e31633da8ba409266ad0f0e9f93d96b720784f866a1c72391a8b4dc2b842cc6",
      "name-candidate:f1bc48f4ef3382d8ef9e3eab41bf702338ea2b1a0054b55418d9ee605b511a22"
  ]),
  ("name-candidate:6aabef367c11af52398251e31e3db70abc8f35813a6f2a8e88b81b81f1233682", [
      "name-candidate:2019e90231708cef74e8b4cf395337640c81e495dd1c7f3225d24b0ccfa28740",
      "name-candidate:2e2d8fa2524fb8cbb127c4709917ce21300a789eaeb13ca4424026c50e2cbd3b",
      "name-candidate:6aabef367c11af52398251e31e3db70abc8f35813a6f2a8e88b81b81f1233682",
      "name-candidate:f71cef3803c9957cb02b8a62658f63e020a91368e3f0a912df139c9de6a49035"
  ]),
  ("name-candidate:2fb9a3d45495422763f638ca5f2c42ac78d7334eb469cb43955b0790c40d8a0a", [
      "name-candidate:2fb9a3d45495422763f638ca5f2c42ac78d7334eb469cb43955b0790c40d8a0a",
      "name-candidate:56b4c1b6c8e3ffd8bce066838c60d0f00adcdf2005cc4a80f1a564432fb5080b",
      "name-candidate:6cb213185e95fe121d8434879f4752b8c59b7394f666e8e9c83e7cbc2f403c2c",
      "name-candidate:8c591d2783f75047fe7ecf7abcea4a239aac4308c3eadb5a9b6e1ebfdf978541"
  ]),
  ("name-candidate:ef55d370e21aef9ad56f7738ff7f5f9ccdca260938eb90d5b223a5627fa59072", [
      "name-candidate:83bd7ceb9199e8f037202bc8dc599c1801308a68f213e0841c1707885f0ad934",
      "name-candidate:8a9ed0a99becbfd540c89d85525cc085a0377cb838eb9322c07260e8e4cc3d88",
      "name-candidate:ef55d370e21aef9ad56f7738ff7f5f9ccdca260938eb90d5b223a5627fa59072",
      "name-candidate:f785c3a982b82a7ee3215e0d80c920e901c08d3f99d7f534218fc468c3fab398"
  ]),
  ("name-candidate:82685b4e347267b7d4fc39cd047f8ee559b41bb59910e61c5570efc20d91aef6", [
      "name-candidate:3a843863f67e132bab053d871780e6fd96c995105a554046c05ce83df0e5d68e",
      "name-candidate:82685b4e347267b7d4fc39cd047f8ee559b41bb59910e61c5570efc20d91aef6",
      "name-candidate:c184eb576bce70480d23d6b4bf1beb782d71bd222140170b9c765e0cb9af0add",
      "name-candidate:df672de81c01bfa1ac64bd761caceeb082886fbddcc3e42a2504b1243b6612a2"
  ]),
  ("name-candidate:df6673792785ca0b8235f987e46aa9ee4a1bda1281c415fcff0e3913b21bc4fd", [
      "name-candidate:68c7018a4334b029b981cffac5fbc4c79b3792155efde963409a329f82f4daaf",
      "name-candidate:96d2269dc881e61e5650f6d1e5193acea6c03f3c03fb60570fb5e6703ce7efb7",
      "name-candidate:9b2edfb7db4487ac2cd45d851a2f720edfc081b50d4fed6163da98f92b674ce2",
      "name-candidate:df6673792785ca0b8235f987e46aa9ee4a1bda1281c415fcff0e3913b21bc4fd"
  ]),
  ("name-candidate:f5a6fa40cfa7859aebc85d58c492cd8f9bbcba1fcf5e51d51968520de79759e7", [
      "name-candidate:f5a6fa40cfa7859aebc85d58c492cd8f9bbcba1fcf5e51d51968520de79759e7",
      "name-candidate:fc8a34c9879747a0cdd3a8ce8e31da866aa316a65c30d1dd9b25e5ceef2e6f8b"
  ]),
  ("name-candidate:f10f53ee07b41009d4a471762bf19f3a92c52ad129f0149fdf7abec6637758b4", [
      "name-candidate:3cc2f8580cc351b3db8d8bfbf205b9882f40f1046a02871e31ad25195aaa1e1f",
      "name-candidate:9d23f2e0a364d62ef2f318c310bf32618b959d1df47f44a188ef686b5f5ab366",
      "name-candidate:f10f53ee07b41009d4a471762bf19f3a92c52ad129f0149fdf7abec6637758b4"
  ]),
  ("name-candidate:64f4ffa87807d3493756d682f03543bdedace66b94c1e31ca36007c4f61d0608", [
      "name-candidate:64f4ffa87807d3493756d682f03543bdedace66b94c1e31ca36007c4f61d0608",
      "name-candidate:9a45245392f41691d312e6e69df972d1b2ffcf74c2745bbe912e624f37355c4f",
      "name-candidate:cf344d714225c9fdcd18177f33cabdebf651381e7d2aabb3a7b3cb0f02a07582",
      "name-candidate:fdb6824df1558f15749f0305f8dff007c793931288bf21d122c0503ae5d4ecfe"
  ]),
  ("name-candidate:190dfa1ae86488840df94c14853a467b51af39d1ab3f8173bd3e13fdf40800e6", [
      "name-candidate:190dfa1ae86488840df94c14853a467b51af39d1ab3f8173bd3e13fdf40800e6",
      "name-candidate:32333d6df3bd875395c189527d5d28d29b92491719a75f533223d15a966ed3b4",
      "name-candidate:7e6db78c04e31cfd203a35072c5f280593125d3baddd31a70b9c1b61011e792f",
      "name-candidate:a5d117688f7073403d7a9553270cfa01d396ebc5e970afacbf7bcd5375ee971b"
  ]),
  ("name-candidate:c277b90b0b944be30ddad033cd9e242fd62d0191e86e93b2f6b499b61ed520b2", [
      "name-candidate:79b6accc31830768e1be7715075e6ceab4309179efc60f9b35ec95623f698747",
      "name-candidate:b75d2c2f91b52581df0ac3a69fa479e8e35a286719ad0110967fc28fe69518f5",
      "name-candidate:bc43d0bf394be13544d7d146c0573f813dcedc7474c934f9c4f278e9e8d78f7f",
      "name-candidate:c277b90b0b944be30ddad033cd9e242fd62d0191e86e93b2f6b499b61ed520b2"
  ]),
  ("name-candidate:86153ba12779b3e7e1916dcec63b3cffe25c4ae09d138a4e44625f5e72f9be12", [
      "name-candidate:1cf4685403f6aa997f1334d20f98c0870a11e8516206a0faae0788053ebffd85",
      "name-candidate:53f2feafcda65dc74ac4a76c8efe9636eb5dbe71913c56397f716c59f0ef60e7",
      "name-candidate:86153ba12779b3e7e1916dcec63b3cffe25c4ae09d138a4e44625f5e72f9be12",
      "name-candidate:97a834454df260f19d4d3daa6c056becb11fae643e8c0054566fd8823c182cbb"
  ]),
  ("name-candidate:c7aa55bd7f9e64994674fab995b109d2ee188069dd1129d53b00ddf67aa8e353", [
      "name-candidate:65394e5447eb504cc2e4d5227353cf763c3040fe953db3434187dede3ee92c6d",
      "name-candidate:6eb773131e43ba0d4f0716d5de89b1ecbd26c4e66fc5cafaee8db81c44ab539f",
      "name-candidate:bc70ffd6ef95ce8380c6835b4f35bc2c642f44e9615824713d59708fca6828b4",
      "name-candidate:c7aa55bd7f9e64994674fab995b109d2ee188069dd1129d53b00ddf67aa8e353"
  ]),
  ("name-candidate:b4b4f30ae5ab0430e71f5dfd1d4b4c853997372ba890eb9952489e27bc3420eb", [
      "name-candidate:213d23231ce2a4a81e4c25d11512224ae0942c337a292c2260d2101c593d6209",
      "name-candidate:b4b4f30ae5ab0430e71f5dfd1d4b4c853997372ba890eb9952489e27bc3420eb"
  ]),
  ("name-candidate:6d78b31d3a66ff7cd7815e022e44d9c70cf7f905ac1c6994c7356f957b3bc999", [
      "name-candidate:418f7365d4a30d1c4d8420f4cda3d407a32431b4d6b004fe48a7ba3d32598fd9",
      "name-candidate:67d6ad62bd782f307ce2bd6ec56f67bdba3309006d95fd1f99ac3a8730962ee9",
      "name-candidate:6d78b31d3a66ff7cd7815e022e44d9c70cf7f905ac1c6994c7356f957b3bc999",
      "name-candidate:812ae1e96dd448a766aeee9267964b7401c0e2b7c0959d90961dec72a0ad59fe"
  ]),
  ("name-candidate:54d5b319ee0fa45dbcce0ce267b9a977892f385113d7c388ada0d10e973fd529", [
      "name-candidate:481838afbe22ad0167a7571fe125b0abd6d18b1fcbb0c199b214a5db5c26e99e",
      "name-candidate:49e10f1973b101fc400f2950d36dbc64f59451834cca7f3316670c279cb3816c",
      "name-candidate:54d5b319ee0fa45dbcce0ce267b9a977892f385113d7c388ada0d10e973fd529",
      "name-candidate:9a678c9cfd4759376d92ff9807617b6de23dc8cd818fd67898313b68dec9dfa7"
  ]),
  ("name-candidate:82bd3481052facd003215610bf4c70f683b9d644a9f7360a259aa7c241846f80", [
      "name-candidate:82bd3481052facd003215610bf4c70f683b9d644a9f7360a259aa7c241846f80",
      "name-candidate:b277f5aaddc2f81002547a18e5176c80d348908d8c3457d752df1d67758737a2",
      "name-candidate:c13fca8d7521f63058005027ea87bfd627489be73f0d883711640b66ca5406be",
      "name-candidate:cab77cbd1a10b2bd93c8e9cbe2c0fc6b2d52b95c940addf0bb984d89d2ab350b"
  ]),
  ("name-candidate:9c2b8ae3d539ff9f684cf87cc6e1e4ce338e2ca220986300af00764f5df0acda", [
      "name-candidate:470d55e2a12e71f024251f7911e5335aade5f52a8ea4f9f44b6ed6959963be70",
      "name-candidate:5ed747fe9b0ac6d99ec29ef7604852777c5beb4e61d7eb7dc48a780d6e540cdc",
      "name-candidate:9c2b8ae3d539ff9f684cf87cc6e1e4ce338e2ca220986300af00764f5df0acda",
      "name-candidate:e011cadb3af715428024f26452e077ec3252ed7b4c8f54659c860809e1db4ec2"
  ]),
  ("name-candidate:27115b73de3dc64d37e1d0ebd913b256d95d0d9470639ac095c120739396ca15", [
      "name-candidate:186c35e91d2a5e462a862dfdbcc3a1643009d6bd8980495ec19720e31df4f91f",
      "name-candidate:27115b73de3dc64d37e1d0ebd913b256d95d0d9470639ac095c120739396ca15",
      "name-candidate:72dc100571f657b73f2d80297dfd1bdf5e47d74f1ee7b88ff50a1f647e29de4a",
      "name-candidate:747a98e479547fed131791807e07e94f12474bac51254fa7005ca0b0408719dc"
  ]),
  ("name-candidate:6f4b930d6765dabbd2c08f46777e6279f534c2bc8d1ec0b3b0d9db50bcf822be", [
      "name-candidate:07d9d6ca39ec8115b766a41b894a3ab4d4ce732f49be76caa6b67dbb019d4e26",
      "name-candidate:2eed5bda72a64e60dcc9da64e681249d17d6681d59b3179d0039c4228c76b57d",
      "name-candidate:6f4b930d6765dabbd2c08f46777e6279f534c2bc8d1ec0b3b0d9db50bcf822be",
      "name-candidate:a11cfe8db2bb3cc1bf48c70c9f804eeae6ced72c1bdc57a2e0ba4f48d67106ae"
  ]),
  ("name-candidate:fb15e7ddfa8816c5061cdebbe9e210dedf25b8b692385ea944ef0c531e1e0f3d", [
      "name-candidate:6b7fb3e4c01ae192415083f8df94adbcacb9bd7187c4c5ad05641c94574599f1",
      "name-candidate:6f633dbf45ec5895f4157e6b72972cb97f33f618e6234827eff5b866188ae7f4",
      "name-candidate:71854540fa8ebd0b1fba846bca1f8a50884a4d98981f3fd878e376a8319beae0",
      "name-candidate:fb15e7ddfa8816c5061cdebbe9e210dedf25b8b692385ea944ef0c531e1e0f3d"
  ]),
  ("name-candidate:9a6a9c3a44d6ddd16209e03466710cf0603fe904c9f96c446e4f417e9bfe427f", [
      "name-candidate:010ca9e761f780e918bfe496d89d4e3789ade79cd7240581e828df2ff5c74fbe",
      "name-candidate:6d92192ec5693fa68dd4ab5b334af4b0cb2c6c8b1079327a436f8e4bceff7370",
      "name-candidate:9a6a9c3a44d6ddd16209e03466710cf0603fe904c9f96c446e4f417e9bfe427f",
      "name-candidate:e73104d2112e72d2ade6c1f67167fbf7ccbc4e2a2c100412efd70b85b2ef4c07"
  ]),
  ("name-candidate:4f107d3d57dec5fe3b3c543266ca08dba5d3ffce3be2d305dbf71a820212c1f2", [
      "name-candidate:4f107d3d57dec5fe3b3c543266ca08dba5d3ffce3be2d305dbf71a820212c1f2",
      "name-candidate:78846a4c29d0406013dce723b81840376c361249602a3eefe1c9b30f0107aec0",
      "name-candidate:963bfcd14f30ec063bf01565cba3fa6493a3db4298d96b9277dd2dc8d8ec94b2",
      "name-candidate:ee09c7e59b4fd5ff042eb098bb04c168f1a0bbe6b45a82f5f30986290fb6acf4"
  ]),
  ("name-candidate:529fa468b921a551445fe12312e77e8227e26be26c72292aaaf00633fdacac5c", [
      "name-candidate:529fa468b921a551445fe12312e77e8227e26be26c72292aaaf00633fdacac5c",
      "name-candidate:5b7b3a6d17312dc5958f319b5c41688575f8de05253439b2a8c06b09063b4ab6",
      "name-candidate:cf2c5a385196edd41531a698b849d4a8dd39ec329f51cbb33c6dadee21ad309e",
      "name-candidate:daf508ef092339df277da75d2aaa2ebe04a206bea0a6e044d23b8d7597ca7203"
  ]),
  ("name-candidate:b32328f5ae81f0c583fa12a2ae3a514d8e8c126a1f791c2af6728ddf9e4f46ae", [
      "name-candidate:2e13dfbe1bf66b60f8b7e9c479b267747e891321c01e35f93e5bfab102454ff5",
      "name-candidate:b32328f5ae81f0c583fa12a2ae3a514d8e8c126a1f791c2af6728ddf9e4f46ae"
  ]),
  ("name-candidate:ed0cef3635e3192b51d31939c78fa5d4ba16d9ceadef7b8b141f863266e63967", [
      "name-candidate:8ae36f1fb744abe9212d38d7145457b65341620aec0ee54cb3bc597f66f0e95d",
      "name-candidate:ed0cef3635e3192b51d31939c78fa5d4ba16d9ceadef7b8b141f863266e63967"
  ]),
  ("name-candidate:a094deede10f668117d86bac498ee4594e77d20a09669e3336ebb145f1909043", [
      "name-candidate:1924a24e2c9c31c437adc7921506374818af26473ead9c8018defb5431332882",
      "name-candidate:75e2d08fd88ecab7b842befb8acd06a1b15b815bbd0c68ab1aaf57232ace8828",
      "name-candidate:a094deede10f668117d86bac498ee4594e77d20a09669e3336ebb145f1909043",
      "name-candidate:a98d6a85f163485e2da10c55353eb9498cd77551d42c0d04451dfffe2c13bf78"
  ]),
  ("name-candidate:defacf9b27932c005f436bb597f36be8c60b671f746afff28152b07d722e28fc", [
      "name-candidate:584ac893c9f93c20205f5d2192e1ca96892c602fea4db53ddd9f2678365bd3ca",
      "name-candidate:69f837d2647fba82519b348e4b4b443e59e7e25b5edf463bc04f8f430f427087",
      "name-candidate:defacf9b27932c005f436bb597f36be8c60b671f746afff28152b07d722e28fc"
  ]),
  ("name-candidate:c04cc0a7a57ba7c96be2fcac8fe972b9f2fd5cd6ea2de8ac10d672e56cf33eb4", [
      "name-candidate:4418979a614fddbffc89847e1c452ed82233ca6a9035fcfa2e6387a270d301d4",
      "name-candidate:4837ab27dfd8cbd9e7ebf04e87f72a33b231dd7d1d74137a2f7185bc3734ff12",
      "name-candidate:c04cc0a7a57ba7c96be2fcac8fe972b9f2fd5cd6ea2de8ac10d672e56cf33eb4",
      "name-candidate:eb551605176d0360ae4d508101c12a22ba99adab719e59bcef7bc9ef681593fd"
  ]),
  ("name-candidate:145e42d4dd05c5cfbf382e883833b8399e9c3cd4e4c08ded468fb110acf480c6", [
      "name-candidate:0cd918f86a26f1cff3372dc34361297c715f5ec2a969c9c94ddc1a965e4ee050",
      "name-candidate:145e42d4dd05c5cfbf382e883833b8399e9c3cd4e4c08ded468fb110acf480c6",
      "name-candidate:601948939034fe4b292f03cf17818b61c804dcba1e60e5478aea1bab46390d2b",
      "name-candidate:c46922eb13d0b6ab33756ad8d561c7d00ddba08c0270d888144a70ed5b570704"
  ]),
  ("name-candidate:40a20709c66e2e9443f16e67fc72fa6554d2d36834fc01edfed17c808380d384", [
      "name-candidate:2b18a47855b446153c7518a007411b58ad92606031475a92d23cd389b9e45efc",
      "name-candidate:40a20709c66e2e9443f16e67fc72fa6554d2d36834fc01edfed17c808380d384",
      "name-candidate:4413d523476da94725d090f2c3c7e5e1b94c9ceef70e5b5e1c30a719a155644d",
      "name-candidate:d81df5f856417505bbfcc6b2c2683d54d75236328c4a3d7d669c582da5c55b7a"
  ]),
  ("name-candidate:903bda35c84d0f9a028b756404862fa6f34c488232ef78439e92a71062eba699", [
      "name-candidate:281a76cb9f9e3a58407b4fa744c5420c70b94882fa37a747eff5972f041d37dd",
      "name-candidate:74773b0603a71d4b8ddbb55334d462735240e2d0a17c20e7d8fc894c39e1a9eb",
      "name-candidate:903bda35c84d0f9a028b756404862fa6f34c488232ef78439e92a71062eba699",
      "name-candidate:c6132126383842b138ec2cc08f1f91d8e27038dd07889189068b1dae406744ac"
  ]),
  ("name-candidate:bebbf7fcaa430ae6bff0ce9572a2855edbdf9e27e1c3f63545639c8c0de2c995", [
      "name-candidate:211248ee6d4dcd0c88f5569181c39598a35a2ac06ea99e11865444d73792a44e",
      "name-candidate:809cddaa4e4fc071c24caa1237ccc5e74a9f227258f139c89da1e45fd85b92ad",
      "name-candidate:9abb4788cc24d390c0aabc66d123055d8210e5ee07fdfdedac93823243d5974a",
      "name-candidate:bebbf7fcaa430ae6bff0ce9572a2855edbdf9e27e1c3f63545639c8c0de2c995"
  ]),
  ("name-candidate:608cffeebb0ed7c652b3959305dee146c17879ad50742f973e07d52f2c1e8e69", [
      "name-candidate:608cffeebb0ed7c652b3959305dee146c17879ad50742f973e07d52f2c1e8e69",
      "name-candidate:a50d2b1874a2adfa72fbf6b1c1fd5239d9bf948838658346029cab118bce9c87",
      "name-candidate:d08400514f758bc325aeba9d74032ccc7fc13c6b18f5ee4130709e1de84f4943"
  ]),
  ("name-candidate:bb4088a231775d4c15c6ed9353d15eab523e1d9ec6160486a7cfe8758cdad74a", [
      "name-candidate:35bc5d47f024b627b0be1628918f5729b94c66d5b4f59392c7bec91e9dd83c7b",
      "name-candidate:9f04f404e7e21b09924c84e71a52d22db148ebf81a2e08e62c889ff778358a3f",
      "name-candidate:bb4088a231775d4c15c6ed9353d15eab523e1d9ec6160486a7cfe8758cdad74a",
      "name-candidate:f21d7ee875f9c2dd8a26b4c69b01092b4128cffcabb0df09049f5fec07c98a76"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L48500).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
