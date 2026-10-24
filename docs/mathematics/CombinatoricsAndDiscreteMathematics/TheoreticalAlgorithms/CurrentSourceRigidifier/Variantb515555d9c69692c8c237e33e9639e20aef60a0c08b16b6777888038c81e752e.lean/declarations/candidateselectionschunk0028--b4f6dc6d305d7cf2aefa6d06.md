# candidateSelectionsChunk0028

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:282748df9e26e4198cea742081cdb1cbabbd51015652ed7de3a2673fc097978c",
  "kind": "def",
  "lexical_name": "candidateSelectionsChunk0028",
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
  "slug": "candidateselectionschunk0028--b4f6dc6d305d7cf2aefa6d06",
  "source": {
    "blob": "c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51463,
    "line": 51093,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b4f6dc6d305d7cf2aefa6d06cfcbb34d2c6cfc1091c09c98ced601134b228e97",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:282748df9e26e4198cea742081cdb1cbabbd51015652ed7de3a2673fc097978c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51093–51463.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def candidateSelectionsChunk0028 : List (String × List String) :=
[
  ("name-candidate:a27ecc9f7f02fbe8f4d34f9fee02e7344a8d9bb446c544bfe3d91b259a73de4e", [
      "name-candidate:60ac34eec94e7b2b5d2d93d2325d1ac9d88fabc52f34a08e48db23c50fecce05",
      "name-candidate:9bda9b27697c767386c9dba498d02bce1437c66ca3d94d40e2c6fdf3975a0022",
      "name-candidate:a27ecc9f7f02fbe8f4d34f9fee02e7344a8d9bb446c544bfe3d91b259a73de4e",
      "name-candidate:f095ebee9fe8dc3ca668569cc7600ba91a159c644f2e4c03ac2f08905cd04021"
  ]),
  ("name-candidate:1995a5c967db0092c6754ae261d88ed5601d6f3703c43c95438dc78b6e9b3189", [
      "name-candidate:1995a5c967db0092c6754ae261d88ed5601d6f3703c43c95438dc78b6e9b3189",
      "name-candidate:5cab245d77e76c4846197451fea87acbd2a0a95dbbe29e9d2dfd0e75c43bedad",
      "name-candidate:6c65b1e15e0a4470c5204baab11469509020b78a7b4bf7fed69466f6bbfb1885",
      "name-candidate:7e8bcc8c9b5570bb2b900a08cd1da9e381ff7fd3b3f1e347ce40b11305116cfa"
  ]),
  ("name-candidate:4c3a1d505f72f39bcdfc92fb44893b885ec1ebc6ea48591d5c9f69b707256669", [
      "name-candidate:0b3a49a5621932ffd4406c1e408a1af5d5f9de7ad18522c77a5a42a975e10b20",
      "name-candidate:4c3a1d505f72f39bcdfc92fb44893b885ec1ebc6ea48591d5c9f69b707256669",
      "name-candidate:5716057b04bd56fea594f687ef33552f95251e3eac5a7c968ae3a5d60ca0b82a",
      "name-candidate:5ee24977f575ff5a0f5eec1bf8e93e37564bfad6eabbe3ae91b68fa31203700c"
  ]),
  ("name-candidate:4f4cc57d809e383163dc4fa524b9faa78affc5f9378329f6791217ef4d5aa1cc", [
      "name-candidate:1336ad051414810efef076ad397d51094730e6223889d8c5dc06730cd5fe63a7",
      "name-candidate:426bfc082010a0d898961b9b41c83a6e93eaff6f420d09e672818c86e95ae32c",
      "name-candidate:4f4cc57d809e383163dc4fa524b9faa78affc5f9378329f6791217ef4d5aa1cc",
      "name-candidate:d32beb6ae49c3f7b9737b883bcd560975dc02912b4d8df58f50309dfd11103fb"
  ]),
  ("name-candidate:c22b273518c88e2573e4bcd6579d77ec491b89b1a71f924192d10e90501a1037", [
      "name-candidate:a19085a90ec87c1e2afc474ef09bbf37043a30a46817e512b3e698c5233199eb",
      "name-candidate:c22b273518c88e2573e4bcd6579d77ec491b89b1a71f924192d10e90501a1037"
  ]),
  ("name-candidate:103f0eb7a5dbdc845d9495b3f3b23bc1c1795edb929cf01d41aa50332f6e2fca", [
      "name-candidate:103f0eb7a5dbdc845d9495b3f3b23bc1c1795edb929cf01d41aa50332f6e2fca",
      "name-candidate:65017d727de07ba7499809ed24ce2331bb880e7ddc60669bfa8719f7cbe4a419",
      "name-candidate:78ef18f21d832cdaafc60b6f7f8237d46ea17742b5cfaac7eed11339f5c26cc1",
      "name-candidate:ca84e98882ad5bc6c235276a3e837372de5aea5c57a328a579fcc23671914350"
  ]),
  ("name-candidate:0bdfedf1d911ced1a6b7f43a042c1a72203d3672f8b4876d357d7cba4b7e8e94", [
      "name-candidate:0bdfedf1d911ced1a6b7f43a042c1a72203d3672f8b4876d357d7cba4b7e8e94",
      "name-candidate:6c91b0e4b8d8610ff13fc54dc3d6622c95a5596ec1cf45a5bb4ef4cb2b16cf47",
      "name-candidate:731d5bcb9710ce7a7ff23f240e48f1fe6199b18c4268126a528c90f08c423da6",
      "name-candidate:82b17ec9ccf665d76d0953751234f6f9382ba289294ac068ca3f282872414504"
  ]),
  ("name-candidate:5d9e2e59562b7768214feeea21b0ffd87912e6ab95a50de7cdae9465308a1de3", [
      "name-candidate:54db782f188b4574fc2cac4a9afb53487879fafe32648098b08238c56f1886dd",
      "name-candidate:5d9e2e59562b7768214feeea21b0ffd87912e6ab95a50de7cdae9465308a1de3",
      "name-candidate:8fb82c688d64a8e7e25e8ae3c438f6e4a19c4f323d0d684c3137b9be9ecd3d80",
      "name-candidate:acad7198d2cb0d6767784b962a9c296534af75b883910b6710eb25a257853923"
  ]),
  ("name-candidate:ca991892d8f510a9e2ab0f204c431e4d29dad9c384513d22eb5f9517cec0a8c5", [
      "name-candidate:60f3c4d8dabdf280bf87e02ed4c2b4a05be1c761ed5bcf50f552d402045bdd72",
      "name-candidate:ca991892d8f510a9e2ab0f204c431e4d29dad9c384513d22eb5f9517cec0a8c5",
      "name-candidate:cb6d1332a8acecad4cc09b4b8f647b066e3696a846a9481b0753d5ae237b7b16",
      "name-candidate:eeb77d19e3fe3b57e3949af2477c5286b39196922e07ddf963477fedfd4982ef"
  ]),
  ("name-candidate:604443d640e8310dcde7bbfbb162508b37a664d7b24606722feef0c9681d87b5", [
      "name-candidate:45c66a584c84731d2e49350dff33909e86c2693a359c511d9a6d974a489ee72d",
      "name-candidate:604443d640e8310dcde7bbfbb162508b37a664d7b24606722feef0c9681d87b5",
      "name-candidate:95e511fafc28a713ed3a74a6c6685d953d2c7a792b385bf3e7356cc293eb2ce3",
      "name-candidate:9f5e6d470fe04d5524116eeddada72f29c005eab277ecd00860da141aa6e342b"
  ]),
  ("name-candidate:414eedbe37dde6bd819b21f822416d385c4a35601a6259986a7d7832d945ef9e", [
      "name-candidate:414eedbe37dde6bd819b21f822416d385c4a35601a6259986a7d7832d945ef9e",
      "name-candidate:4dd9fd196abefe6495998ab0bbc4f7da75c525869c0b361ed8eee9d590707db0",
      "name-candidate:b667601c253dbed1ad38fc1b3ac8025f91527d5e17fc50cec7df54dc6073b4fe",
      "name-candidate:f7487e65223173948558f87f9277b0fd09e1102d5aa46b997eff3e63291cb0d1"
  ]),
  ("name-candidate:6292f33a2cef95ebd21dbdd3e4b21411adcf999583a0ae92f2d25b449714abfc", [
      "name-candidate:4355d4b370b0bc0b4bba8303b439032b0b172dcfdce2267ac5ca7a388439cecd",
      "name-candidate:489567a9df33ffe479342a5f96638335a317776a3a3a5f0b3ad7a33da5df8b2e",
      "name-candidate:6292f33a2cef95ebd21dbdd3e4b21411adcf999583a0ae92f2d25b449714abfc",
      "name-candidate:e7fe659b9db253209ce0a2d769f3fb03146ab915509f63f4a662a00be06f837d"
  ]),
  ("name-candidate:62c27b97ccf73d8b3161457bda504aad3df2c4e61d7ca193dd44ff3810023325", [
      "name-candidate:149bcf02845dad7ff9641c421b66099f077e919005a5276b58e320674c547ad8",
      "name-candidate:62c27b97ccf73d8b3161457bda504aad3df2c4e61d7ca193dd44ff3810023325",
      "name-candidate:670aad453e35eb2eb04ed62ee065c07409943d5e68b7aba1734dcdb247e62824",
      "name-candidate:8792917a65dcd1320c4410b9f51d578decbb642dcfe506ab2a74552ecc811432"
  ]),
  ("name-candidate:963a46bc8592410d43868a805ca16a5c22d9f62077670d2c0b368e46c1b876b4", [
      "name-candidate:6177cb832a1e0362f120123ee099242dcc16dc35fb2b6e99bd9183e9f95824d2",
      "name-candidate:963a46bc8592410d43868a805ca16a5c22d9f62077670d2c0b368e46c1b876b4",
      "name-candidate:d44fffb08719ea35ca4e539ea2bf4a635761918c1a44e51cbb17be79b651db12",
      "name-candidate:ec450eda354e4324f5928c2ae01efaa6a9eed394f297ccae6ceb7a8db28515c2"
  ]),
  ("name-candidate:28740a225d40d6b961b95939313833f09578f91a19a50d69eb89b953daf920a3", [
      "name-candidate:28740a225d40d6b961b95939313833f09578f91a19a50d69eb89b953daf920a3",
      "name-candidate:e1c09311d856828f54271f8d2f6fe7d308e49cc37fb055f09b5363ca78129e92"
  ]),
  ("name-candidate:41508b15a1cb5c8619ce3cfce15321d4b59e38999c5d3f2c734c12b533f2a513", [
      "name-candidate:0de32bcb76fa8b403d4e5f0b2be90d03ecf0832a0cc96e422e311c914ccc948c",
      "name-candidate:1cd5bf6e339f773920c4dccd8f0c47e25f9789ec0a8c9a4c303f56a664d59ac4",
      "name-candidate:41508b15a1cb5c8619ce3cfce15321d4b59e38999c5d3f2c734c12b533f2a513",
      "name-candidate:fc7e3b43f671c9d2b05d4dfe617a3fd7bdd4a88f23035fab2e20f7304c3d4cb3"
  ]),
  ("name-candidate:0c6ee80ce06c5a71ccb39bbed6c78abd81427ff61b540adee2e92e6e78dd009c", [
      "name-candidate:0c6ee80ce06c5a71ccb39bbed6c78abd81427ff61b540adee2e92e6e78dd009c",
      "name-candidate:37bedaee586214739dda46125394534d5f5071050401316f34b6c93ad34893aa",
      "name-candidate:6a65a87df4d7933c1a42bab2e82376143758802ce6aefb9ab8e9abd2c50f46a9",
      "name-candidate:dee515e08e82e550055d31b0fd4061dd6a89b50a18f6e932dd139f55dcb510de"
  ]),
  ("name-candidate:e5183fe45c794d295e0dde77f1ed4a33992fab4f49c2d79c1f2a5318df4e9ee3", [
      "name-candidate:280a3e18be78ab139e54354e4693406ac49f3aa08f38d10436b0cd59761c1cac",
      "name-candidate:8588732a20324351df987fdfebda1e7b6c1bd22b95286c24cf62eeadcc7dde77",
      "name-candidate:de4ce5e0b74223a1c5adc4d02cf31f028ab1df3839a9e6552cd0f6532127419a",
      "name-candidate:e5183fe45c794d295e0dde77f1ed4a33992fab4f49c2d79c1f2a5318df4e9ee3"
  ]),
  ("name-candidate:cdcdd4444336e0758dfef6a35967f650e6ccf0e384c8c275a38d9e7743d5376e", [
      "name-candidate:2d132695bd88d36a268a3b88bd936b9c9d0736995c53a77cf3c2af6c91c52181",
      "name-candidate:3fa92285805ddcc85524c40844c62b6cbd5e9bacdbd78fcd8610d84e28c5f54e",
      "name-candidate:cdcdd4444336e0758dfef6a35967f650e6ccf0e384c8c275a38d9e7743d5376e",
      "name-candidate:e26a75c3d77ed85dc6986611d460ba1bacb6cedfa69c17634d2495693d4418fe"
  ]),
  ("name-candidate:9a4ae8b6612e2ba1dda1c063ff2613c23a5d4dd2263aff42cf0090365b06ad8a", [
      "name-candidate:00bf6e83506c97f29aafaf9f9874c1590fccb4673398f47d3978ca324a655e7a",
      "name-candidate:9a4ae8b6612e2ba1dda1c063ff2613c23a5d4dd2263aff42cf0090365b06ad8a",
      "name-candidate:a4c617a97e121cb25e916d625f37fadf3708a9fd48c150c5ffbaf77b8fd0a931",
      "name-candidate:c76d3d327b93994198aca3956e1544d2f21c633431937fb24df99cc2f3b33417"
  ]),
  ("name-candidate:94cecb0fd57be87a368c7fcfb9e1ad3019805355229ce1dc0d3dc28ffe1a132a", [
      "name-candidate:2e3667ca86f7fa37fe9021b8ae126647b5a4697c1fa321aca14cf82d18f0db97",
      "name-candidate:5fd4eeabc12a880004c213d6ef291dde932eb460450cf9268ec75e16ae1dd34f",
      "name-candidate:84e55ceb1e5315aa1e45220f3c10043334d04e7ff939b24aac4ea255246c9b04",
      "name-candidate:94cecb0fd57be87a368c7fcfb9e1ad3019805355229ce1dc0d3dc28ffe1a132a"
  ]),
  ("name-candidate:ab40ebb5f1b2a8a8c9c2f42f41695b260aa6b93629fccae514e2ae4309fb13cf", [
      "name-candidate:0a1c6b382091eea19abf1dfb16843a30095e332b3747ee769ecd6f4ff3567688",
      "name-candidate:2834c84b355ff28658d9ef7d66256fc670a46a7461de03177c8010d1ec0deb51",
      "name-candidate:7f8bf0f71b6f97699f554eddfb3ad9055d21273297de1238df3a2b402221a28e",
      "name-candidate:ab40ebb5f1b2a8a8c9c2f42f41695b260aa6b93629fccae514e2ae4309fb13cf"
  ]),
  ("name-candidate:a6b1980d3c22dfd5f2d7b228a285ca3a13e1a934c4fe7fdc3cdf6ddd772ca100", [
      "name-candidate:4a6dedc3ab1023846e82daa15b293521a9bc55c2bdce884ae877a4bf3b9b815f",
      "name-candidate:6db398348811813194750bfe26ac77872028c09553c98ec88dcdf2a6182f32ba",
      "name-candidate:934bcbaa7bb9b7b58efb1835c7340e53d535290962e17896b20bdd37c57d2513",
      "name-candidate:a6b1980d3c22dfd5f2d7b228a285ca3a13e1a934c4fe7fdc3cdf6ddd772ca100"
  ]),
  ("name-candidate:46dcd707419e8216019790f698cdc3b57d3df7efb02c0dc8219e0f7fd8d2c2e5", [
      "name-candidate:46dcd707419e8216019790f698cdc3b57d3df7efb02c0dc8219e0f7fd8d2c2e5",
      "name-candidate:4ec21a5cc288c5ad10da72f436a33c6b7aa7e3c533885960358f5c11c143e614",
      "name-candidate:83af7379b41baa4c28fecd905f792a24b83fa3a277709a9c788724c252224f8d",
      "name-candidate:9eb1e713f5babff7e92d4d46f05859019131320a3b63daf761a4d4af245009c5"
  ]),
  ("name-candidate:ff688eb786e70f371738d1eb5c7714ceb9eec8b1c651659df0a7babfb5abbe19", [
      "name-candidate:ae43b55db0c48c217faee2f80a37791deddb10e30d6fcd840c3ef23af97d59c4",
      "name-candidate:c8f455a8cd583ec770477701f22523ded00e583cf202fcb3dc4c88d762912d94",
      "name-candidate:e08cdde66af071656081fff9ebfe9c6e09e681d205e7c5430ec210164f12c0aa",
      "name-candidate:ff688eb786e70f371738d1eb5c7714ceb9eec8b1c651659df0a7babfb5abbe19"
  ]),
  ("name-candidate:117259cdf61ad15cb6fa6333f57bc8fbaf887994eff1c36d91c9894454fcee75", [
      "name-candidate:117259cdf61ad15cb6fa6333f57bc8fbaf887994eff1c36d91c9894454fcee75",
      "name-candidate:2af08d3c9c5b01b8f88d49f07a487063b818cb316ab965a2c8d36d7b5df84b97",
      "name-candidate:6bae065d29596dbfdc13f41eb35d437948d2e209bd18554a350f6f7c3353ba0a",
      "name-candidate:728b828dbb2d0429021020376acd0330c988faba04da7fb78d1598f459552bf6"
  ]),
  ("name-candidate:cc70a5f4de698471f4a58af42a2f2035b3ac2d7fb2168c8efe17eb05099d98fc", [
      "name-candidate:a962de8b801b7a0d12e493af85bb9ddc8c94e4956d5008e58e8afa9392573afa",
      "name-candidate:be1b3dacac5a46d68cc8ee8e62004f90f324dd7618d941fdcb5605521523e45f",
      "name-candidate:cc70a5f4de698471f4a58af42a2f2035b3ac2d7fb2168c8efe17eb05099d98fc",
      "name-candidate:eb382920ffdf268cc270d5c75c0de06f213b7811525e07340709391193bdb321"
  ]),
  ("name-candidate:61765b294ddcf221ca28588fa56fe0326132f8566b1441d0e25cf7416c8b0b97", [
      "name-candidate:29d26f2b44add31b1cd28b8b942bb1ff6f88d3afdca7d762e23baadacb160172",
      "name-candidate:61765b294ddcf221ca28588fa56fe0326132f8566b1441d0e25cf7416c8b0b97",
      "name-candidate:83e667250be2597a9f399a558ce1f22093862647122a78891850e57b55d5ba12",
      "name-candidate:a4f6135525200898519f0adedfa77d849fadce1fdca704ac1a1e0ac9468c9c25"
  ]),
  ("name-candidate:313d17ff6ed3077911e38da7060d6be2282fdb5fd88239aa904b374053317236", [
      "name-candidate:313d17ff6ed3077911e38da7060d6be2282fdb5fd88239aa904b374053317236",
      "name-candidate:49e683d2125ec9a407b6690e3fb76f13a18ff51247584c4218a209fa582b1cdc",
      "name-candidate:89dd3759ea2db8d9abe28fbc0108ecf510a79391fba24b6f2cdd3c03048c1108",
      "name-candidate:a307a642292d41f177ff98d86d7a5622811dd8bdeb123ad7040e8c00f3d8f287"
  ]),
  ("name-candidate:8e22400a69e0eb7bce526bdac9c6c963b539359c995f44b7152e03f5b22d7427", [
      "name-candidate:09f7016c416017910c2c22604ac5757535a8dba2034f1f3040aed5ad861b14b4",
      "name-candidate:8e22400a69e0eb7bce526bdac9c6c963b539359c995f44b7152e03f5b22d7427",
      "name-candidate:b38e1ccfd411e4de5436c588f62061b127541b066890ee2019ed17326e6697c4",
      "name-candidate:f13507934eb69b0bf8d16f4417dd775c8af78c542bdd5c2072d7a27cc37127ea"
  ]),
  ("name-candidate:28b3bdd038bfb9d7d67ad0ed1dc7a10670b76adae5c48b5616bb64900a05acc1", [
      "name-candidate:1183550e7c67bde5cc598a08d75ddca1d776eed4cdc9345eec6492b92d08ce26",
      "name-candidate:28b3bdd038bfb9d7d67ad0ed1dc7a10670b76adae5c48b5616bb64900a05acc1",
      "name-candidate:30d078f8099a09b24cc1760f4007c6ee474661ab2e1015d01de656d8a062c84c",
      "name-candidate:cdc9764e6f36e4513bd8d6ee8723eb4cf23a20e948a588eb4f10046851ef3b57"
  ]),
  ("name-candidate:01eb73dcbc37422fbc217502b6712774e7f4fcaf3ffb2ab269a9ad268c48fb4d", [
      "name-candidate:01eb73dcbc37422fbc217502b6712774e7f4fcaf3ffb2ab269a9ad268c48fb4d",
      "name-candidate:440093b0a6b085da570e2b6d46abc6db6a5eeb1c57a0e5e1c8bde18ed397c9af",
      "name-candidate:6cc9442bf57cdf2b164bc402df8ba1e996a764bcc37142379d14c09f241b1e35",
      "name-candidate:87fa421fc57b866e6ba35a4233db573d5e61c67ba02f5980c6644de10ed4b75e"
  ]),
  ("name-candidate:91d2cf3f9e9b4299c0de459befd81f3f74606413a21767a2342ef6141f67530e", [
      "name-candidate:156e4723c972a62c88c661f4b32cc48f9dd2910e16d7a122baab9126101c62e8",
      "name-candidate:36848f342df899cda377a07fea5666d228927dfd849e79138cf2b07220b0c6ad",
      "name-candidate:5acf0336c8aef1b090939614e0c9972d3a80082b90bfb6226737eb6266892aa6",
      "name-candidate:91d2cf3f9e9b4299c0de459befd81f3f74606413a21767a2342ef6141f67530e"
  ]),
  ("name-candidate:31a8483290b9f130eb47097b3fa6495a978a677fa256d6ef068eaeba8d2350f7", [
      "name-candidate:31a8483290b9f130eb47097b3fa6495a978a677fa256d6ef068eaeba8d2350f7",
      "name-candidate:5fa14f61a96aae36e57124f2861b030e2184c6c9f36c5350ad41ffd14aabfc8f",
      "name-candidate:9fa296380a683bc899a47aa38309a4e93caddcd8c5257b870277f0e119ef67b6",
      "name-candidate:ac93e8abcb4129b35f645f787f0851b89d981689c18277eb9c84bb88c4dfbdbb"
  ]),
  ("name-candidate:ace75c0a07f33e112fd115bb5e1e37808c8145fc7003aaaf66da8df9108bf60b", [
      "name-candidate:82997aabbb143372e48ec8123e4b5824bf376e95cb6e4d4bd4beb0f1b8edf0cd",
      "name-candidate:8fc4aebc535a1489d0cec7ff6606d4e74e1206f5f1b3bc255712df58d45394bb",
      "name-candidate:ace75c0a07f33e112fd115bb5e1e37808c8145fc7003aaaf66da8df9108bf60b",
      "name-candidate:fd2993da22bdfd1000b550a58175a0e3708b1410264fe792416b42fd788cc88e"
  ]),
  ("name-candidate:360e81ed1c6886331d3a01d1440115a358ce9fc32b80236c707ec74f7a058492", [
      "name-candidate:360e81ed1c6886331d3a01d1440115a358ce9fc32b80236c707ec74f7a058492",
      "name-candidate:a7e7e59be295f5ad3dbf41b23b1e8610bfacdaba14b14cb036b63c1b22a7d22c",
      "name-candidate:bf0952baa0c6a5e8b7e6ae35ba799999d4271acd8aba1a0b2e661ed5ac47f100"
  ]),
  ("name-candidate:13937262aaf4d84db633680ff565e4574ca4142018f7ca870b8377ee73104166", [
      "name-candidate:13937262aaf4d84db633680ff565e4574ca4142018f7ca870b8377ee73104166",
      "name-candidate:401e8298e95464596a22d2867e6fba82f1a2e0d1eae2bfa60a2129aa5e30043d",
      "name-candidate:69aa56ac6b8497e64b45941387fc06d05db99388282693b4b10e32c51dcf42b9",
      "name-candidate:76c62693ee4c490f14733c932c2bdd161ecdb3fedab6cd9d6ff57a43dd53612a"
  ]),
  ("name-candidate:3948f13594ca9b8040ee135200117c5e0c84ace67e4a910453a19c325ff725ea", [
      "name-candidate:3948f13594ca9b8040ee135200117c5e0c84ace67e4a910453a19c325ff725ea",
      "name-candidate:b52f0b6316c912d9f37c419c36ed36cc47050347bfd409d516e0a02410179c85",
      "name-candidate:b5927cc5ddf799cbb218053e838c80acde6c627040518b8da0ac75588607def2"
  ]),
  ("name-candidate:1623118073c103f0e824708aa461820a2ada9cad3aacd853a7a3a113ff68a2ef", [
      "name-candidate:1623118073c103f0e824708aa461820a2ada9cad3aacd853a7a3a113ff68a2ef",
      "name-candidate:7283fb7c0f51a0603e80ed2841ed5dfc80bd5266a0ce89a3de2be60c037bb668",
      "name-candidate:aa3ac7ebc0ed2f75fcf88abd6fee29479aa5f4207202b1a4c2633375490560ae",
      "name-candidate:d178c9d0e48cb8c483d07e1aef9f276381703b9e652273a19109ac02bf33b3b0"
  ]),
  ("name-candidate:99996955aaa70fcd3d79f3ca41ea3758c2961c61d23297e94e328874bbcfc75a", [
      "name-candidate:090964e9ee051621be60715d00333c5c368a5c4aab3564038389479646084944",
      "name-candidate:2092c122464d09483911f6d33fa063ba8caea696012ae9473504159dd8c365e9",
      "name-candidate:3509d4c59f2063973df0028144db79027b2f312e98fdff40f3f2ebba9f32f3d9",
      "name-candidate:99996955aaa70fcd3d79f3ca41ea3758c2961c61d23297e94e328874bbcfc75a"
  ]),
  ("name-candidate:7eb63d6858889867f4d68cba606699a79436ba2b12c656d5b660aa10536f6e73", [
      "name-candidate:313f8d4eb6e72f48c4760ac762d9e53d3be23ddfa30ffe1e8621afb062baf516",
      "name-candidate:74978b8b3e46bcea1d446007117096916ce49219c79c391520fd9cf17446bd5e",
      "name-candidate:7eb63d6858889867f4d68cba606699a79436ba2b12c656d5b660aa10536f6e73",
      "name-candidate:ab534ab5f625e389276e49a4f8b6442e71605a663fc2f3f9b17cad23252fc7fa"
  ]),
  ("name-candidate:6860601779357c9712a17530b27d63a309d4715917ce6ef67326a3773b207c5e", [
      "name-candidate:3e86afcdad37bad56959765d786d76d5c8e324dcb3cb0c5de4ed5341b45b3d23",
      "name-candidate:6860601779357c9712a17530b27d63a309d4715917ce6ef67326a3773b207c5e",
      "name-candidate:9d9a829cac339b3de9af3761e0ea4b24cc7af6c74c1d8e8c15f297a655fb87f7",
      "name-candidate:d1748676bbfc7d74bfa89c1dc9f6359ba056c563655bcba1290c3228963f93aa"
  ]),
  ("name-candidate:37a93760a2a6703335b993ea1e599d18819c470eebd57c2c25a03ca0d45ab372", [
      "name-candidate:0a78fa6a27946e1bcbf7be9838e465a808d6b30e7b6ca34fdc64c94801d576ab",
      "name-candidate:37a93760a2a6703335b993ea1e599d18819c470eebd57c2c25a03ca0d45ab372",
      "name-candidate:4971e0f216e90170f61fc0879ab237beef484bad818d57e8ffcb34c195edf5f5",
      "name-candidate:bf4a96f6e88a145a2735a056220b56df610e275a30fb217c3023b173cbbee8e0"
  ]),
  ("name-candidate:d2578922854effc60b11c5e6a7318dda1e86088f68e0121e8a4c9361188fed2f", [
      "name-candidate:501f94a5228bbbfceaf3bc0c6e5c34afb72b547b4ed3d0b31de4de67046e942d",
      "name-candidate:893d8abf0032f2692efd783052b3e8288b691f16716e651d209ac3ee9a8136c7",
      "name-candidate:b74c319075adc7cd7f7fb7cdf07179db2501813629c08a29fb09d8e51d34e636",
      "name-candidate:d2578922854effc60b11c5e6a7318dda1e86088f68e0121e8a4c9361188fed2f"
  ]),
  ("name-candidate:222a9bc02d8d1f9567183320a0da24e2d2d5ffab0dd7d010d4e5c494a528566b", [
      "name-candidate:222a9bc02d8d1f9567183320a0da24e2d2d5ffab0dd7d010d4e5c494a528566b",
      "name-candidate:34428fbfdfff5d159caa6dbead0a0a4b7f6cd975437ecf16082ea11a42760cf4"
  ]),
  ("name-candidate:10a0552b446d2868072ab77071b692f84946a7d7976e199c39eabc2f1ce53598", [
      "name-candidate:10a0552b446d2868072ab77071b692f84946a7d7976e199c39eabc2f1ce53598",
      "name-candidate:421c46b0ff59baced4777daba40c2ea5100579204e726d841b8e997e492e9f0c",
      "name-candidate:c001622af0cb3bc5c138b9dd9f18756b2f57f82acc58a7b5385f3720034e6c84",
      "name-candidate:c405d3228b62cccc367f6a5c90404d478e179b45078f6c21831c7b0003e16356"
  ]),
  ("name-candidate:cd9a6f7e5a5913f8d7f9c8e2ed83a818561a383beaf475a4aaeff4d99ca4f18f", [
      "name-candidate:32830df7d495627ee34cebfcd4f044988795606a7f1f58f9bd2997b1831022c3",
      "name-candidate:9867752c77563254574475a253ebe8259b6884aaf91e2bdc8738956367ccb33c",
      "name-candidate:cd9a6f7e5a5913f8d7f9c8e2ed83a818561a383beaf475a4aaeff4d99ca4f18f"
  ]),
  ("name-candidate:509b7e2554752eb19b5f95aa4e5b0fa4d11c9c6629970a75f20c7dabf7b1dc51", [
      "name-candidate:3fcd85666dd0c908286b8c45934c189ad95b69a1f9d5a7dbb48c7dee80ea6eda",
      "name-candidate:41ede36e5e544d27e0cdd605b2b7b8b175b3ec79c3b06467f42d37a70bdb7a62",
      "name-candidate:509b7e2554752eb19b5f95aa4e5b0fa4d11c9c6629970a75f20c7dabf7b1dc51",
      "name-candidate:e88c791f8cb25f8efd991fc7d8e586aadfe1e0544a3cb6eb3f306ee96f14de09"
  ]),
  ("name-candidate:35f88aef2dbf588eed0c4ab639ae22a16ffac51fff8f976faca97a7c92cfa3b6", [
      "name-candidate:35f88aef2dbf588eed0c4ab639ae22a16ffac51fff8f976faca97a7c92cfa3b6",
      "name-candidate:45223cf95bd12cbbee0bc28bb455629123c7e5ef6b35e671b00e2db0481ce61b",
      "name-candidate:49569c2724c8e91f0e0809cd2f86274ee819b1a72490820d177736675d7ac180",
      "name-candidate:d03220186d7d47adfe5b964a8633e0a4f9dc4258e46529ab001208853e4d2d87"
  ]),
  ("name-candidate:ced6f9cf1a69ac77619e6584c81e98db90ba703bc6f03179c04d926c38293a01", [
      "name-candidate:933f6be8741bd8d3717446769f15c8229a8198611a6b56dc6d73cf572b4b54d9",
      "name-candidate:ced6f9cf1a69ac77619e6584c81e98db90ba703bc6f03179c04d926c38293a01"
  ]),
  ("name-candidate:f6b8022ba226e60d82057ff3f19b2373acf2207efd19064a2331418f2fa31bc4", [
      "name-candidate:3553de2e00d46a00183a29f966b5835c70d0c86ef0cc5c3f7f908e749c046e0f",
      "name-candidate:44429e4537f08dd7c48005acfa7d0d25b68b277d1db5eb18b09311e4852c15ce",
      "name-candidate:e806c46cb93694e63359c224a5f14c636da7d56fa7bdcc34426f63a35c897eaf",
      "name-candidate:f6b8022ba226e60d82057ff3f19b2373acf2207efd19064a2331418f2fa31bc4"
  ]),
  ("name-candidate:041a43e8fc4e4783ccd164baa1c86340eb4684d93309dd2f0e2d774f254dcbc4", [
      "name-candidate:041a43e8fc4e4783ccd164baa1c86340eb4684d93309dd2f0e2d774f254dcbc4",
      "name-candidate:6b8eeedf4e7145d2222c25bcc243211128138869ba437a46151af8a9fe52ef2a",
      "name-candidate:78debdcc70afef497fff0a889453d01ca85a9bb39c99ced102eac83fc8ee5162",
      "name-candidate:855b4bff2f219490d710a15b6f5e4ff4a68483971289a30bb5db18fbc93b797c"
  ]),
  ("name-candidate:800b82ea94c9de2f7332b2b36c0c17dd424d4c331bb9e15549128bfd4cbb2f78", [
      "name-candidate:800b82ea94c9de2f7332b2b36c0c17dd424d4c331bb9e15549128bfd4cbb2f78",
      "name-candidate:b54e0a7e6246af2ba889f4a5754cecbf13ad0ac87f237eefeacfb6c2013a480f",
      "name-candidate:d68704664561e4ffce0b4d1f77a5d3d26696badaa8d502eb8ddf36763929351a"
  ]),
  ("name-candidate:ca131770e96ffe8991d6eff7cb258840c7b495b5a97d9da2c44ffe4937fbfc67", [
      "name-candidate:0f9f2b93eb54e517be698793d5f70bff942978f5c94539ae084cbc9bd335d81f",
      "name-candidate:ca131770e96ffe8991d6eff7cb258840c7b495b5a97d9da2c44ffe4937fbfc67"
  ]),
  ("name-candidate:2247eb86443be736a923aec4a1419917a3333ad3ef63bf0d6f36843a16e8ac71", [
      "name-candidate:2247eb86443be736a923aec4a1419917a3333ad3ef63bf0d6f36843a16e8ac71",
      "name-candidate:6891580b849dd727d407d37bf333fd12c5a38c48492ac6bc359319ca0b40ebe3",
      "name-candidate:a251f85e2f81bfc2cb25e7b9f8a474f598875f6dc2f18695be76d70b97a8c44b",
      "name-candidate:a42ec9949b69560c272f292553e496505806527fb3545befff4992f65ecc0f9c"
  ]),
  ("name-candidate:3506ae5622dd1df96d9158c9fc66a216a59687e5dbc3954a281ba0bfac5c908b", [
      "name-candidate:3506ae5622dd1df96d9158c9fc66a216a59687e5dbc3954a281ba0bfac5c908b",
      "name-candidate:d5d60469963f1bd025ba278c325a01029c17773bba99a9108dc7da06bf03d1c7",
      "name-candidate:e095819d22efe3b6f1eeb57182ff353ceb5d6a058ae73ecd57337a7f1118b137",
      "name-candidate:fc02862a22f5fc23fa0e703013e884a488c8566a1e1a7072b2a17830793776f9"
  ]),
  ("name-candidate:fcd4b8a2a621e781244446e0ee85f456393bff04c4abd9d01b5a06fb9408544f", [
      "name-candidate:13b2f79db867bf711f576e6582079459b44d155b0020b6c599465069ebe54050",
      "name-candidate:6a2f24f2148395a87d06c4ddf2c1dc742303cdd9e08d293e12161ff473709ada",
      "name-candidate:a58aa3fb09bbae35cce76a55308bdd5eb41ece1ca78ab79b80005575c02fbd8c",
      "name-candidate:fcd4b8a2a621e781244446e0ee85f456393bff04c4abd9d01b5a06fb9408544f"
  ]),
  ("name-candidate:c818862982ab652af6b7b161c610470656063c7563a8647eff0bad83ad683dbf", [
      "name-candidate:0df021ecb0b02948e88e89f06aa9096ffd72634fbeb20460ff5e1d8043e15c69",
      "name-candidate:299309a3572ff0dde9fc8c10062117dc9aaae44fa08fd71a7a673d30c7ce8bcc",
      "name-candidate:c818862982ab652af6b7b161c610470656063c7563a8647eff0bad83ad683dbf"
  ]),
  ("name-candidate:69132f1b0f8d941a90ceef0e4175fb0afc5278dd4c7ba25ff3c11faa118ba00a", [
      "name-candidate:13709da41117873aa56ba75ce1c5e8bd8b9d2d867b7a0da980c2d58fb489e3c6",
      "name-candidate:69132f1b0f8d941a90ceef0e4175fb0afc5278dd4c7ba25ff3c11faa118ba00a",
      "name-candidate:e772b66ad48e05053961df2ee5dfb37e7b7de130aa7c41f271c78c86aa3ca82d",
      "name-candidate:fa80c583cbecfd200f794d071445417d8c7f7e51408ebf38b743784e95bd73e7"
  ]),
  ("name-candidate:1847cd2cfcc1d7b7c372e8eccc51ecb2c345bf64f68bf1fb7c5913d55cad0937", [
      "name-candidate:1847cd2cfcc1d7b7c372e8eccc51ecb2c345bf64f68bf1fb7c5913d55cad0937",
      "name-candidate:43dda35e4f5ffda07e2709e8ac3dccb1ed2ba9473bbde7ff2a686c3650fc3d66",
      "name-candidate:8eb32dc3dc4b2070193323ade42661f5a81bc6db2479699a4dc6ec9c254f35e7",
      "name-candidate:c402ef5ed1876120264484786b7e601e783c5ad7288c0675a2ec738986e56965"
  ]),
  ("name-candidate:ad0829b42b01c6c17ef4eeb585f0872fc44335414454c40971eaec4b934d8015", [
      "name-candidate:2d7f04646478c251f18b8567c074e5e96869cc29cef1809649460dcd35cdc198",
      "name-candidate:5591be381e6c473606e2d17ddc6a3d0fbef3934cc7b71a0b40db588cfde77d18",
      "name-candidate:6857761f5bf6eafbc3cb951896b3da31a2715bd7066ce291f95e3e0a0f94c5a8",
      "name-candidate:ad0829b42b01c6c17ef4eeb585f0872fc44335414454c40971eaec4b934d8015"
  ]),
  ("name-candidate:b0b589fec09aa580b9b4b381eca384148da5445fc173f3caf0434ae1a06a90ff", [
      "name-candidate:1be2c73f6093990e5b82b030d6f4246545fa58226931960b1984cbbcfc227b14",
      "name-candidate:4f4012cc4be0395fe61a6d6503847b387b4ce93676a47d8419a167894ba6103d",
      "name-candidate:59cddc054b5ff7775fb4d5da261e29eade3914d66462238b3ca72282e994f94d",
      "name-candidate:b0b589fec09aa580b9b4b381eca384148da5445fc173f3caf0434ae1a06a90ff"
  ]),
  ("name-candidate:744e2cdb230713a771ffce5720db6bf54aa4a603cc1a657371bc3acb3780b3f0", [
      "name-candidate:2c30ecc0798a8d299eee37c6d1e4a1b44422c116855ab50bceb4e1ea810f051f",
      "name-candidate:7153ee3ef8a580f476429b060a5403be3ee295d042de9fdd1a3188d800b0854a",
      "name-candidate:744e2cdb230713a771ffce5720db6bf54aa4a603cc1a657371bc3acb3780b3f0",
      "name-candidate:929a604f0e751f6a5e093c742eea8f4b3b67d7c1cf9f6e2b0ace1dbf80def91b"
  ]),
  ("name-candidate:ffb4d3be30634450340d9306ee51725a6bd41bf81077a4ed64fe032370c6aa6a", [
      "name-candidate:202d41a0b9f76ac9a3c7ed2032cfa8ecd7c54a3c7e791da5ea9544819107cd47",
      "name-candidate:ffb4d3be30634450340d9306ee51725a6bd41bf81077a4ed64fe032370c6aa6a"
  ])
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean#L51093).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
