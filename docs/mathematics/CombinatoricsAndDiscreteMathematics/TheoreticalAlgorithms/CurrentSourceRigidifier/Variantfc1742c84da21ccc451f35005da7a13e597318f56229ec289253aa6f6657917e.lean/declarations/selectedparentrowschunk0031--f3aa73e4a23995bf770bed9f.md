# selectedParentRowsChunk0031

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c6435c9fd61ce9956bd49942178d841d3a2792f3461cc9e8fdd6acbcbf605991",
  "kind": "def",
  "lexical_name": "selectedParentRowsChunk0031",
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
  "slug": "selectedparentrowschunk0031--f3aa73e4a23995bf770bed9f",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122653,
    "line": 122454,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f3aa73e4a23995bf770bed9f457ec8ef23b367e497dbe699cbfacff0de369bd7",
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

Occurrence: `declaration:c6435c9fd61ce9956bd49942178d841d3a2792f3461cc9e8fdd6acbcbf605991`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122454–122653.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedParentRowsChunk0031 : List (String × String × List String) :=
[
  ("formal-neighborhood:f66538520416489aca0b6dba166aca2b4015fa8e083676863129ce6b201452d6", "formal-neighborhood:864a46ba86eff0b3e4828470517ffa1e5eef8b6d8806b72c48645d6210318ad0", [
      "formal-neighborhood:864a46ba86eff0b3e4828470517ffa1e5eef8b6d8806b72c48645d6210318ad0"
  ]),
  ("formal-neighborhood:f667805a17ab36b48e41f02200c289f9a2bc64c47102685592110998478b6807", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:f687a223e9b81b4da9d790ff779eb33ef3096e3a509c1938ad8807e26f3b3aba", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f68d7aa5fe39cdf1adac6c563dfd205a9758a8ed07d515dabf80b97355ae11f2", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f6a4d929ee9c1b4b3c5432d80bc4f4985888a1dfe6a152e69a5e25e8574bf370", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:f6bc8b8ee206fa500541689fdd8b2a8d04c15af3afbb887e942bd17597556339", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f70a65568865f90f8429d177995a933dd088bde96db220abf6c1e11b1a65d6a2", "formal-neighborhood:9518bfd5a87145ab3f9bf941dd78bb35bc48e986636765a03c320a29ff7c873d", [
      "formal-neighborhood:9518bfd5a87145ab3f9bf941dd78bb35bc48e986636765a03c320a29ff7c873d"
  ]),
  ("formal-neighborhood:f70eed943587b3e8ac5cac6bdb95f66c5aa560781c56d1a88dee0519e720ee9e", "formal-neighborhood:dbb3ac5bba53f1f37daf540a8b57f7da7749168bd843e8dcdf8a25c355a1d8e2", [
      "formal-neighborhood:dbb3ac5bba53f1f37daf540a8b57f7da7749168bd843e8dcdf8a25c355a1d8e2"
  ]),
  ("formal-neighborhood:f712b9d89a1da8c2e1deb0847636913e6e307a02222ae21c1cacb845bf198909", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:f7188180e4b5c783e2ccdf520bdf2b9716262cc7a1e98a7c1e9bee6ae1e33bb7", "formal-neighborhood:41e168b48dd649ee81f1ad96a7a31c6e908738b0e11e79ef16afe90bd86e2451", [
      "formal-neighborhood:41e168b48dd649ee81f1ad96a7a31c6e908738b0e11e79ef16afe90bd86e2451"
  ]),
  ("formal-neighborhood:f722a9f9d21109d114cd9a695c9322cad2322b7a7ea2cd998498a5da7b61ea03", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f730a365639593a523ce56b9b27145158b75746534eb8dadaf64c9d1c9070938", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f74142c920b8816e35b2603b97b5d42b56599cf065f53b29de1ae738e8f1e04d", "formal-neighborhood:3b3ef9591dd4f52b01a6b82029faf2b7ff4bc78212e75451770cf88a86b6450f", [
      "formal-neighborhood:3b3ef9591dd4f52b01a6b82029faf2b7ff4bc78212e75451770cf88a86b6450f"
  ]),
  ("formal-neighborhood:f74bc577d2bd1f5d4ea500ba94660f5a8ced9295b2bc71c9e85aca8758bf09ec", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:f74efb094c59fe8fbb5a55aa0041af256e6112ea47840b37ce8080a38caf6e94", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:f76e7b129e7ee8f44ed1dbaf2c7cc8d02e99da93eaa2c0ac33bcb6c9f3c59bfe", "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420", [
      "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420"
  ]),
  ("formal-neighborhood:f77ce8ee3c0075ff90458a9608e699b81fc093a68f2ba1a8e7e8703a34021fd3", "formal-neighborhood:7806e65b097986b5d12556f55ec7eda2dd5407530af279f9bc298b7b1a38556f", [
      "formal-neighborhood:7806e65b097986b5d12556f55ec7eda2dd5407530af279f9bc298b7b1a38556f"
  ]),
  ("formal-neighborhood:f78d7ef7b2781fd763cdbc0fa44d1c2a71b8166f39b1d6548929e1ce39910b86", "formal-neighborhood:ef6b3777b0f728ce110b4eeb887cf17e072ebf5547833a9312dafa8ae34192e0", [
      "formal-neighborhood:ef6b3777b0f728ce110b4eeb887cf17e072ebf5547833a9312dafa8ae34192e0"
  ]),
  ("formal-neighborhood:f7ba8f6b5eefe4ee97a6ea8086c368075995540395b402c4fb2d7ab53f867967", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:f80d6a663574c95cb3211d4c241708eea078719bd71c5b6e0303144cfc264108", "formal-neighborhood:1556182a1aefb4fbd6c807eaa1b23be738d7a2424def3b080955b193e507964b", [
      "formal-neighborhood:1556182a1aefb4fbd6c807eaa1b23be738d7a2424def3b080955b193e507964b"
  ]),
  ("formal-neighborhood:f88d9ba1df6a2f7e5adc94886da4a82ce3df83dea19e62b7f8b9bfe0b659ff3a", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:f89e7b56554a16c9afd08f8b0613ed9bd3a9218b314fe64fe491496178ed5152", "formal-neighborhood:818454c7c9170958efb67015b551227968d981d38bd038603a8d5642adc89d37", [
      "formal-neighborhood:818454c7c9170958efb67015b551227968d981d38bd038603a8d5642adc89d37"
  ]),
  ("formal-neighborhood:f89f70e66cb569b78fb514c13731da30e4716471be81e459585cbf8810b168b3", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f8d9e5e37a774ac3a64a36cedeee8a01b6278210aac0ad124d02c883d0c06fd2", "formal-neighborhood:9926c61b70f9581613897ba0c9178560f8aac2f192f81117f7dbb0677ae01270", [
      "formal-neighborhood:5adc76236da3d931eca8bdc698c0f47b622de9d6854b692969214a8b41711da6",
      "formal-neighborhood:9926c61b70f9581613897ba0c9178560f8aac2f192f81117f7dbb0677ae01270"
  ]),
  ("formal-neighborhood:f8df0558852aeb07538ff89ab0ee402d3f0b0904c28d9baebba5a0cee7c454fb", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:f8e5aa0682c1877bb8bb2aff5de8319093554ebf19622001271d4148c9f039fd", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f8f6362ecf15961d6936405fdfdbb48983204f3ba62a0465edf6d62f495cdb9e", "formal-neighborhood:cceea42c6f48a51a02fb905b71fedfce390d506ce009a1339eb83bc793a81b88", [
      "formal-neighborhood:4edaa65c20517f440ddf567b54f23a286be402e879526f83889c8516fb9293bf",
      "formal-neighborhood:cceea42c6f48a51a02fb905b71fedfce390d506ce009a1339eb83bc793a81b88"
  ]),
  ("formal-neighborhood:f8fbab5b4becb176dc6c29ead9ae93dce130b4c3fdfed7b69f7ecd370faf9473", "formal-neighborhood:aa05df4ddb4a38180d5fed3e5ad7b971e513f3ceed2384c16c5ab7820b12aec1", [
      "formal-neighborhood:aa05df4ddb4a38180d5fed3e5ad7b971e513f3ceed2384c16c5ab7820b12aec1"
  ]),
  ("formal-neighborhood:f9932fa118dc999ec8cec95e77ccebbf4efa1e40fd8478ec78f3b977b8436d58", "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378", [
      "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378"
  ]),
  ("formal-neighborhood:f999043af87315a979a9106a88355f7019fc3d2867d1d375cae76f18b085d3ac", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:f9b41d4d3cfb0790461c799eab88d978600ec802be5d0840087f75ae1c8657d1", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f9c896a8ebec625deb5e7259c5205b8c265d4a9659023c25442d4dee3c67e1f1", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:f9ceca9e62c8d45326ec21addbb80c0c1df923416204065b042ba1264330ca8c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f9d9bf71e76e7b26c53794e77dc359d8da052984a7261af9798afe0dcf6de8e5", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f9ded91a76994425ab042ce37542bc433c8043568d4c9f18cd2840d946089b95", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f9ffdb0aafa97530ab92d434a0b854a84f9838c36cb28181b4f972179baf07d9", "formal-neighborhood:a963a472d8e7d0c502971cba23f57aaf880fa7afb3b59f4a2f9d7b5f77f868bd", [
      "formal-neighborhood:a963a472d8e7d0c502971cba23f57aaf880fa7afb3b59f4a2f9d7b5f77f868bd"
  ]),
  ("formal-neighborhood:fa12ba23bcfaee9a0af7d1a79113391190314779fffdaf974ad1247e6cf065e1", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:fa4babc8c9fa5ab1c9eb49b467582176cdd467ba8dcf14be2a793762bcbeda5c", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:fa7116ee6c1eaab0f3683af63c24d6dd4258c52c240b888e5838ac8b3b73339f", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:faa763dca853bc9b756bce2fe236668e733cd9a039803ae53672ba149b7d21c4", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:fac02baabdee0ce784d7ed95e240bab7e57640bddc7fdd0b1badad100cda5404", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:faca650a74f040544dfb3e10a54237c1e84dccabb112eca9eed7baa5264c1c68", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:fb27fc944824dc3b3857402bba716950b24f420c7ffd55e5865e107a92cde5cc", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:fb5075afba286f5b2129f0129ae7a7ec36f8a67469bccc031f2094770ade1e1a", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:fb795d0661b1782419eae432283984c14c36ad56476854b7b852dc4328f73426", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:fb97d4dae546e6326ee3f46c744782b215b70ab4b6955764fe09d8110dd59b21", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:fba010feba391baeddc816ad3f5edb7f9ed2b43c6d03cb0ce05d4e9a7585b7eb", "formal-neighborhood:7806e65b097986b5d12556f55ec7eda2dd5407530af279f9bc298b7b1a38556f", [
      "formal-neighborhood:7806e65b097986b5d12556f55ec7eda2dd5407530af279f9bc298b7b1a38556f"
  ]),
  ("formal-neighborhood:fba0a78ac89566d355a68a649c3cbdd3fcd4fb6cba588a42881017e001ff321f", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:fba214292c0636a141433a708e0032750177dd672e596a8d1a0aa9503441c871", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:fba29b2cfc89703651bea943fec30795329904f40c493cf3ec8581895819c4a2", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:fba82f9793fa6addbbe20a0b3610f0f55276e5e0594344bb26090e6c573f6301", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:fbab52b3b702d507a90b426e59d1caa577e10d1797c9c2f20d7edc41776838cb", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:fbd6d2a0d44175c79d483c028be789b8d912b2b17c9e9168da726b23d283c128", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:fc5e4c693e16f0c88b1a350f11a86976377299199e85673a06ec6fd9e323580b", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:fc93f49cbc55c9fd746b1edb3e8649f0fc47968381a0f55256b0f8c6e32f9eaa", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:fcaf27c2b4e0a3bbaf4d403d0a2756d059ad6ff27d1245d696b4914578850859", "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6", [
      "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6"
  ]),
  ("formal-neighborhood:fcbc7fd0ad59da8e53dcf7c69309ba8e8238c215336d5ac68b9ba9ab7987ec94", "formal-neighborhood:6cda5aab5a336b82481ba4210de8551709e5dd07f824300a182e0b68ff428825", [
      "formal-neighborhood:6cda5aab5a336b82481ba4210de8551709e5dd07f824300a182e0b68ff428825"
  ]),
  ("formal-neighborhood:fcc86183d63398321d3f78e47d49acadd34ff31b2d51eb0ce2cdd5cbb53aa191", "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a", [
      "formal-neighborhood:813e30b15a7b4fc3343660ff049fd497e0f5d3fcfa4bf9b2d184e4ec376aaa99",
      "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a"
  ]),
  ("formal-neighborhood:fcdce8107226a7c917c8ac697e83aea514c8ee49b7607334815978f5e21171a1", "formal-neighborhood:ebfc725d08e2e165ec1152f812beeb377b86f70e8739a94befea6fcbcff9837b", [
      "formal-neighborhood:ebfc725d08e2e165ec1152f812beeb377b86f70e8739a94befea6fcbcff9837b"
  ]),
  ("formal-neighborhood:fcf189fc5e2e6b3b57d18aa534ea177f3aadb2fcf71c355b014845a6b4b36da7", "formal-neighborhood:f2e8365c984b751022da3dc2040a5186be9b7207811eee857e524f4c3278b539", [
      "formal-neighborhood:f2e8365c984b751022da3dc2040a5186be9b7207811eee857e524f4c3278b539"
  ]),
  ("formal-neighborhood:fd0a3a25f8b167ab7c8fd056b0eed71ef218ac765402f11d74c0d8d624a3ea13", "formal-neighborhood:cceea42c6f48a51a02fb905b71fedfce390d506ce009a1339eb83bc793a81b88", [
      "formal-neighborhood:cceea42c6f48a51a02fb905b71fedfce390d506ce009a1339eb83bc793a81b88",
      "formal-neighborhood:ee76e132d26929f6bb6b324b6a28a04ccf34d480d335df1312b8a6f053e28d27"
  ]),
  ("formal-neighborhood:fd335f82f01245963e58d27e5291bb08a6d60f34b6d9333d34b680b41d527db9", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:fd63327b5c88eb4d8f6040637ed2b3f73925e2c77ab722cba3cb041dc7086d90", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:fd79f277430a054a091dbe4e773ca6cff622bc3436ebbc162ee0f4c78e72437b", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L122454).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
