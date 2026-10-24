# selectedParentRowsChunk0015

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e460cb980453299702eaa0ee955464f6fd10c3e08c0442790d417cf3b289a125",
  "kind": "def",
  "lexical_name": "selectedParentRowsChunk0015",
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
  "slug": "selectedparentrowschunk0015--46690dd1bd872462741bc83c",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119454,
    "line": 119259,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46690dd1bd872462741bc83cf472cb8fbbcfebe41abc5b2fa53471abf723331d",
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

Occurrence: `declaration:e460cb980453299702eaa0ee955464f6fd10c3e08c0442790d417cf3b289a125`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119259–119454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedParentRowsChunk0015 : List (String × String × List String) :=
[
  ("formal-neighborhood:77c4629b2d8afab66c03e350e130a73591a7134673fb71d21cafe6f36543cb27", "formal-neighborhood:9dcb1c4ecbdde47cfa361be7ef8202b51b6f4507c44ffbacf58e8e6f893f82eb", [
      "formal-neighborhood:9dcb1c4ecbdde47cfa361be7ef8202b51b6f4507c44ffbacf58e8e6f893f82eb"
  ]),
  ("formal-neighborhood:77d32e32bfcf4ff4d57eff193fcf05a10628f41797384405d5eea8a7e12c39a1", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:7801842df901f2552da5bdd2c777d7960a9ba12b9907ecfca1d7e6e2660b1583", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:7802c0e7cff3e6a23be9815ac52ac94f8535ec2b273fd34e563ddcb357645b58", "formal-neighborhood:4bc639a87d08029417e4a5a94ba18955ae2a57fe59f5fc8ad173e6a4ab095e00", [
      "formal-neighborhood:4bc639a87d08029417e4a5a94ba18955ae2a57fe59f5fc8ad173e6a4ab095e00"
  ]),
  ("formal-neighborhood:7806e65b097986b5d12556f55ec7eda2dd5407530af279f9bc298b7b1a38556f", "", []),
  ("formal-neighborhood:7837ea65044f1841fbef3b83224ec142a71b0b75fcf8ff31b900fd3177de62e8", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:78a888345547f8679cdccd19ccffb3e96f8c606d36cbf914c92895cc80ba0eaa", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:78c87322c297b7ced114e8432178edf6e226869b098c12c28b6a7fe25c61edc6", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:78c9c0f9cbe9bd2ee10a3b7a0251d0159b6163ca5e665aebf9c89b69eabb9e55", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:78f3f30d045d59d5434f3411dd7876648d0840dc370d1639e38151f9f303fe96", "formal-neighborhood:fe158ec9621c8804d6fffab90957736e58486d3fab5abb064e8e61db87516f29", [
      "formal-neighborhood:fe158ec9621c8804d6fffab90957736e58486d3fab5abb064e8e61db87516f29"
  ]),
  ("formal-neighborhood:790a45e3b8e4ea767a1d130ccc20a9a4f25c298bd064b263b471d5389615c097", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:790a932e014824d57fc8e8857a7c8510dc8b33104fbcf3d603a8c965fbad4425", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:791bb8e5d982660252c030c3365f2d55338ba7d72035daa6f3697c3b766a1169", "formal-neighborhood:5bf76d0a0613306eb29631c8bbdb74f1c4b07ceaf885555e8b676d76194ddd49", [
      "formal-neighborhood:5bf76d0a0613306eb29631c8bbdb74f1c4b07ceaf885555e8b676d76194ddd49"
  ]),
  ("formal-neighborhood:79237bd81509aae3e76afa61397f09a7ed1060e18519cc411b350b2ec9700598", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:79275fda948c7994dcb1d9164d6c28707ee4b74dc011ef69d129ae3ed55d760d", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:793410a63343c33d2391c3c00e2553272f4dcd4da8ea3347c819f796ba80d63d", "formal-neighborhood:aa965215f0dddc1c50dec93543f4a80b801d5c40fa07b040ca44451dc7843344", [
      "formal-neighborhood:aa965215f0dddc1c50dec93543f4a80b801d5c40fa07b040ca44451dc7843344"
  ]),
  ("formal-neighborhood:793e35d97b413e591ba3e843a8770c96663220036dfd2f431067d2ed2c53b423", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:795669f2a5330bff3ee38e43f5c2b2905dd233a6fba23d75941a28e417cf106a", "formal-neighborhood:f503c1dcdb2e060f69459c6d2ca85e041f6de2fe0f5cdc2012ef9371a23f047c", [
      "formal-neighborhood:f503c1dcdb2e060f69459c6d2ca85e041f6de2fe0f5cdc2012ef9371a23f047c"
  ]),
  ("formal-neighborhood:7959bf55f1cb68e8a1a4e3e31719cbdc5aa493ec2554ff1f032bb23cf0179ef0", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:79603f4bba9f8d5f386610d0c238578e062effe2e3a29aa77ecf41f33898bcbf", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:7980bb020260cecbcbfb4074008c585b0b47eb9ceb5913ac356aa1a44ca58058", "formal-neighborhood:e39f823e964358ad3b64c19fca46de6aff61678e57ae1786dcb9af24c60af628", [
      "formal-neighborhood:e39f823e964358ad3b64c19fca46de6aff61678e57ae1786dcb9af24c60af628",
      "formal-neighborhood:95d5e2da90944f8d6a8924fa343fe2ee3ccac6f500d69f0d2bb4df5e9c308606"
  ]),
  ("formal-neighborhood:79d3ba9f7db152c3bbc83b183937310523e39ae7a4a6eca5596626975f9b01ed", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:79dd6b8d3fecea2022bb76bc3c06fa1546e557b719ccb807f569a8647e116e03", "formal-neighborhood:be89f7a3d34265d94cf60e2ce20b2c62eb5e0c0dde6bd8895082158ae82b29a3", [
      "formal-neighborhood:be89f7a3d34265d94cf60e2ce20b2c62eb5e0c0dde6bd8895082158ae82b29a3"
  ]),
  ("formal-neighborhood:79e2732b775506d1a754cd8c920b426675ceffdcd25473232166f1f2fb71ab94", "formal-neighborhood:11444de477cdbb524a4f3a4d3e08ae249eedcc48698d79545df427c75bacbc19", [
      "formal-neighborhood:11444de477cdbb524a4f3a4d3e08ae249eedcc48698d79545df427c75bacbc19"
  ]),
  ("formal-neighborhood:79e38e121dcd0324646566398624b020d59fa3452d7973fb14b007a0913f64d6", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:79e643b8fa86da47eab31ae8e26906c30d97cd38d7338ac4311fc90af1619373", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:79f13c40a15bf336646eae9b499af25b47d9dc0b2d3a5d146820c657c5ac0549", "formal-neighborhood:6c978835c396eb444f4edc3aee53a4a306223a44f08f8d1135170808a8ba8275", [
      "formal-neighborhood:6c978835c396eb444f4edc3aee53a4a306223a44f08f8d1135170808a8ba8275"
  ]),
  ("formal-neighborhood:79f1b66a9b20faa9a2ca0fb241a581a48ede78492c3707af6feebf29644812ad", "formal-neighborhood:ca85785ad178ee9532837d58c9b30735e918b968b519f814d7b7525221e72663", [
      "formal-neighborhood:ca85785ad178ee9532837d58c9b30735e918b968b519f814d7b7525221e72663"
  ]),
  ("formal-neighborhood:79f66d5e5d736ae9d390c25155363d3c5d5e9e616beb1a68de396d6f4c280455", "formal-neighborhood:23903cfc932d4ee93b866f1d63c0896132a9a43b15c83e2f0b672a6467d45684", [
      "formal-neighborhood:23903cfc932d4ee93b866f1d63c0896132a9a43b15c83e2f0b672a6467d45684"
  ]),
  ("formal-neighborhood:7a19e83435574338f12128ff6cb89624bf24666840b1d5fa7db2a4e62f53fadb", "formal-neighborhood:4720bc422e48c3b41e8786fa4c29b7145575157deaa66c72c8aaacc9eb58e02a", [
      "formal-neighborhood:4720bc422e48c3b41e8786fa4c29b7145575157deaa66c72c8aaacc9eb58e02a"
  ]),
  ("formal-neighborhood:7a4da1ca779a03bdbfce8cbdbb3651b211124f59d98d3343b138d3e10d32458a", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:7a5edd02079517bb8f91d5b2d2f801beca9cef3d5a703bb40bfb200099c831e8", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:7a958fb257a9fa50c9bf4fb2f84ecc181fb9aa77be440201d04a42980490656c", "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a", [
      "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a"
  ]),
  ("formal-neighborhood:7ac1a2ee12fa7122a326fb540039050c1789db688572489e0395033075b6f8a6", "formal-neighborhood:648c87db79955f7c76c5a236ebb56be832448a0a0a40a828ba15090e1f1b9a35", [
      "formal-neighborhood:648c87db79955f7c76c5a236ebb56be832448a0a0a40a828ba15090e1f1b9a35"
  ]),
  ("formal-neighborhood:7b212ca54e412089828c9eebb08aede23cdc90e813c0d3682910600420d292fa", "formal-neighborhood:f77ce8ee3c0075ff90458a9608e699b81fc093a68f2ba1a8e7e8703a34021fd3", [
      "formal-neighborhood:f77ce8ee3c0075ff90458a9608e699b81fc093a68f2ba1a8e7e8703a34021fd3"
  ]),
  ("formal-neighborhood:7b3f4cedffd8e4ccf87dcc7c665272f5a97705205ebdb9759566a8b954846e37", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:7b4814ce4c3277593564d16e2b239adbbd66a5df94bf0a8f21ca2cc482a6d7d3", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:7b7eabd137005f5ad4d0d25cf0a5577e4acf41c8309ec056d4bfa0cb048ccdcd", "formal-neighborhood:8c9e6cde235ebdece0d952fc93ed2e5ec83a10a3eb2a42ee3bbfd207d83fe413", [
      "formal-neighborhood:8c9e6cde235ebdece0d952fc93ed2e5ec83a10a3eb2a42ee3bbfd207d83fe413"
  ]),
  ("formal-neighborhood:7b854c3c48ea2b55ec471426d9242cd7a1e914889102c20cd20cec15ee959037", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:7ba3d235e4bd55ae1b396de74a681d4a0dbd53dcb61594f9bc133db01d6d20b8", "formal-neighborhood:19077cda15fb227f903e41af19ed9034270b1c6faedaa25d9dd5dcc2de69fb0f", [
      "formal-neighborhood:19077cda15fb227f903e41af19ed9034270b1c6faedaa25d9dd5dcc2de69fb0f"
  ]),
  ("formal-neighborhood:7c1426ced8f8bee73a08e8e3a2f45d0df91045849aabfdfdb961c4717c3adfe4", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:7c323910f1b9a11a8ea9d5c794fc7e8dc14e398c7e513d2b8da978467fbffbe6", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:7c44213625ba5ef6f8da374c958e8f31da209f8dcf8f99dc9604b6ffb68404c2", "formal-neighborhood:9569cf3fd89b2b33e2f30c6fde3b8c82aa4a94b646e00e9426b11360fe0838c2", [
      "formal-neighborhood:9569cf3fd89b2b33e2f30c6fde3b8c82aa4a94b646e00e9426b11360fe0838c2"
  ]),
  ("formal-neighborhood:7c7dfd83efde4d129a6c4d5f58e8870da7a1050d457a5c96cce4413f9e8de5b6", "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378", [
      "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378"
  ]),
  ("formal-neighborhood:7d3c17f3362c49e52bfc6497a5a39e2b01d9fe20e0a7dc1032b86066c4338820", "formal-neighborhood:fe158ec9621c8804d6fffab90957736e58486d3fab5abb064e8e61db87516f29", [
      "formal-neighborhood:ce5e9b44c10d9aabe0a64fa6eb48272a2bdb3fef0da42b7e2c81de59e7841ebd",
      "formal-neighborhood:fe158ec9621c8804d6fffab90957736e58486d3fab5abb064e8e61db87516f29"
  ]),
  ("formal-neighborhood:7d5a76ccd0b531efc335bca9a431d2dee98c1d229292cd0dcbb2a7ba12cb3d88", "formal-neighborhood:13a131c2cd2c46a2b05f82e4127814101498e3a9dc28f95fb0266e030a6708c1", [
      "formal-neighborhood:13a131c2cd2c46a2b05f82e4127814101498e3a9dc28f95fb0266e030a6708c1"
  ]),
  ("formal-neighborhood:7d6d9a1e1f20a1791b0eea986743a8c9686d31e216730cc07642480d0072e783", "formal-neighborhood:171700bee02ab42afbfe4f37c193af6b28d7c96d81eb9f562b94ec046746a131", [
      "formal-neighborhood:171700bee02ab42afbfe4f37c193af6b28d7c96d81eb9f562b94ec046746a131"
  ]),
  ("formal-neighborhood:7d7924b772f561c329c68c5613d647400df3960ba49dd4720a8d0aecbd36f547", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:7d7afc29dbf58bebb1b37c17e2b5feef17eb4b336b34aa34ba751d81e7af47cb", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:7dc4381f86a33b0fd98a0d9f03a5f3945b69a4b91894c8ae2dec5c62f7be6341", "formal-neighborhood:aa05df4ddb4a38180d5fed3e5ad7b971e513f3ceed2384c16c5ab7820b12aec1", [
      "formal-neighborhood:aa05df4ddb4a38180d5fed3e5ad7b971e513f3ceed2384c16c5ab7820b12aec1"
  ]),
  ("formal-neighborhood:7ddc88e84ffd293319f848049346effc6bf5d2befc845cf52369fbbbe567c40c", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:7e0237a94759f582e3aefb476aee245998c7d2fdf2894d2964df21272924bb0a", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:7e40518b1954bca6f6bf4fab80de78e8eea4fd3c34f309d22cd94882509e6f75", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:7e411b379dc36a220f39e2f35d657d98a3af8748f386009c5b70a1ce0f4adf18", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:7e4207455b505bcf4cbb8ee80a7868ecffa7199ef6cbc873ea9df2efa7da9ccf", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:7e471535dcd05d59cc9e60ce7ff3c4806cf89c20f176788dd7951c3de2b21b8d", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:7e63c0deafe62c0a5ab997383ac3d9659647024a32b4f81328e32e0f43389787", "formal-neighborhood:5c146f043f5a2da872af0f005749327b93e0c96b43557e914aa04044db21a012", [
      "formal-neighborhood:5c146f043f5a2da872af0f005749327b93e0c96b43557e914aa04044db21a012"
  ]),
  ("formal-neighborhood:7e66542e548028787802445166c53044f7823de1b140f75c5db24b0269df0359", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:7e87af71b266cec806ec49b25c87e4861e5f7de63fdd495751d76190808d18ce", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:7e8ef5693077d551e4d7cbe5eefcc7c1dbfa69f9b316db7a7a821707deec1222", "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6", [
      "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6"
  ]),
  ("formal-neighborhood:7e95681fbcf6e30c852efe033e0aa420811f9502a26701e5be8da74df96fe6a6", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:7e97d0dcce12358927e23686ca19b629673b949dc42b9854382de52e350e19de", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:7eb4b049e752337f58ff0f813042eeaf10dd5bf74b83c155221f937c9fb53543", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:7ebac01a57551fbec15ed76a61a5f137d6a9de399c433bb305c7c7099a667759", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L119259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
