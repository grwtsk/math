# selectedParentRowsChunk0020

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1b7eab9018bae70dbfad23b91b631954061a7180f76b9f57e8576a423a8232e4",
  "kind": "def",
  "lexical_name": "selectedParentRowsChunk0020",
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
  "slug": "selectedparentrowschunk0020--44d88295552da93cd59d84ba",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136216,
    "line": 136017,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:44d88295552da93cd59d84bab6c8c18210faf2276dc4bbde6371d2562791c3eb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1b7eab9018bae70dbfad23b91b631954061a7180f76b9f57e8576a423a8232e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136017–136216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedParentRowsChunk0020 : List (String × String × List String) :=
[
  ("formal-neighborhood:9c0c46f2e07302599cfacc1cae5b453f585bdb623cfb834cc19c43bdb9ce9586", "formal-neighborhood:99ca63c61dd07d14f43c94768640688b9ad2f74d9c6ef794153c5d281619a4f5", [
      "formal-neighborhood:99ca63c61dd07d14f43c94768640688b9ad2f74d9c6ef794153c5d281619a4f5"
  ]),
  ("formal-neighborhood:9c1335b83c56e88d7e65369a4c9811457ac89134c1b6f526afb1d2589f0a8d9f", "formal-neighborhood:f9ded91a76994425ab042ce37542bc433c8043568d4c9f18cd2840d946089b95", [
      "formal-neighborhood:f9ded91a76994425ab042ce37542bc433c8043568d4c9f18cd2840d946089b95"
  ]),
  ("formal-neighborhood:9c15fe632df12062df398b664cffdb0e58f9951ec595f05c0f7c14100a5f19f4", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:9c740eae7f3786c0b52704f58461893d936dac490dd5b1ac72ae35e5eabc9dea", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:9ca8ca1f07c63623fa75b8899c12356f997f8215f577d343ea84ba732a4bfbc5", "formal-neighborhood:6cda5aab5a336b82481ba4210de8551709e5dd07f824300a182e0b68ff428825", [
      "formal-neighborhood:6cda5aab5a336b82481ba4210de8551709e5dd07f824300a182e0b68ff428825"
  ]),
  ("formal-neighborhood:9cc57b1a0f81a0c2f75de2c12938d4c0e98f544fab4e7b11f3ae284a57f36157", "formal-neighborhood:732df222b418aaa75f8c317334abcfe51d90c71d829ae02f09336bb2dc41893e", [
      "formal-neighborhood:732df222b418aaa75f8c317334abcfe51d90c71d829ae02f09336bb2dc41893e"
  ]),
  ("formal-neighborhood:9d413a40bf934b7af4bc5ee327068b1173700bc902faa4baddb30352f0d6a217", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:9d427bca33947cfb3992a61026198dd8a263884a7c6c5c7d9c201185a674cec3", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:9d49b03f5c4048408421a6371b8ff3b1f5710dead651e8fdfc716f2b0c7cef07", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:9d4e476fec9f4d12fcf32cd23600728a5c22402fcf364316572a168c0d5e5cd1", "formal-neighborhood:7e40518b1954bca6f6bf4fab80de78e8eea4fd3c34f309d22cd94882509e6f75", [
      "formal-neighborhood:7e40518b1954bca6f6bf4fab80de78e8eea4fd3c34f309d22cd94882509e6f75"
  ]),
  ("formal-neighborhood:9d9b3a46122de7e6517794f36128f69a2eaf4bc6ceb88d80fd0431869d794ba9", "formal-neighborhood:59bc573a7161a3bc69cf5618772de5de7ed2ac783a95bbca4cd8664bf18dbd62", [
      "formal-neighborhood:59bc573a7161a3bc69cf5618772de5de7ed2ac783a95bbca4cd8664bf18dbd62",
      "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a"
  ]),
  ("formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6", [
      "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6"
  ]),
  ("formal-neighborhood:9db1b0f4846a7cce0d6965e8166fbf30648a99f736d4f420a4b5312ab2ccd96c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:9db48a2fde9d7c1bcb655fc8d7b8d60fc5c015baa8188f8e1f75134ced95cfa1", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:9dc79097ba8f3f27d82630cf29dde5367ee0874168889d4fe539ccaef9d2b1d2", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:9dcb1c4ecbdde47cfa361be7ef8202b51b6f4507c44ffbacf58e8e6f893f82eb", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:9dfb9a52d9657312e7b1613c2c119257eca525b840f8c6e07cbbfcd905a97b62", "formal-neighborhood:c76f2ea6c00c8a71326cdd4e46d83bbde6fab3d77efc9a4d2e30f336a9929727", [
      "formal-neighborhood:c76f2ea6c00c8a71326cdd4e46d83bbde6fab3d77efc9a4d2e30f336a9929727"
  ]),
  ("formal-neighborhood:9e152670a5df3ce3398f10280617a9cdcd0110ebf93a9e86722ca490e7ed6a21", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:9e23c80c1bac27f42c75fef14291dfac83c78d25fc5543d5b79dab48770668e0", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:9e28df2e9f66f10241cb12fb7c800b6f3da6c53fe9da9a0e08317cfd16b86878", "formal-neighborhood:648c87db79955f7c76c5a236ebb56be832448a0a0a40a828ba15090e1f1b9a35", [
      "formal-neighborhood:648c87db79955f7c76c5a236ebb56be832448a0a0a40a828ba15090e1f1b9a35"
  ]),
  ("formal-neighborhood:9e4a4a4f72bbf8b127ed814cddc364f032a5a2d02191cedcd974aa91fd83a251", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:9e600a076b396f929085625851c1987f60bfc61ff10d29aed808d07078b74bed", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:9e6953cd2a1731234774884b76cc04c9892f79c65e5f86d24b5196630aa660e4", "formal-neighborhood:3aa0eb82b7cbdcf62e3a1967eed0a9f8520be98f1f7594698be3571c4d9a1dbf", [
      "formal-neighborhood:3aa0eb82b7cbdcf62e3a1967eed0a9f8520be98f1f7594698be3571c4d9a1dbf"
  ]),
  ("formal-neighborhood:9eafc56de3c642c6641a5abdb02ec7e3393f28b81186fd00163fac9d47787c86", "formal-neighborhood:dc5c35e938710e2d85c13651a27a08720c459b40824b0bf0f172e751402119a0", [
      "formal-neighborhood:dc5c35e938710e2d85c13651a27a08720c459b40824b0bf0f172e751402119a0"
  ]),
  ("formal-neighborhood:9eb021fb23caba9b88a5dd66bfe14e374f645f4f5d6f48a0120ca8676f575bbd", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:9eb43fb7163b379316e3b61d8cb815bede548b5d2382bcd66152d5ed880fd786", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:9eb5de301c76f48739f399d556265511719a547264e6981f90b3bace40f259a7", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:9f391ed7b409d134b8f059bd34527394140ff2a5def8b45a85af4cb14ce20aeb", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:9f81f43890b4b7026d76c79485dc328aca04cca433a123420ecfa14766b71534", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:9f90ec3eb42622286c9d9297aae32061ca6bf0430610112dd0a0de2b1ccf6753", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:9fa9407ce26ba30a7346cf9ac9b975fd68054429afbeae739a6182b5388c14e4", "formal-neighborhood:122f67c84934b650672f0aa4f4f31b8d29aeb1757b2c207e121769a12b224cf3", [
      "formal-neighborhood:122f67c84934b650672f0aa4f4f31b8d29aeb1757b2c207e121769a12b224cf3",
      "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420"
  ]),
  ("formal-neighborhood:9fb9545383728e4615ab1a8f0dfd89552ab7957f288b484f49482a9081f77f99", "formal-neighborhood:be89f7a3d34265d94cf60e2ce20b2c62eb5e0c0dde6bd8895082158ae82b29a3", [
      "formal-neighborhood:be89f7a3d34265d94cf60e2ce20b2c62eb5e0c0dde6bd8895082158ae82b29a3"
  ]),
  ("formal-neighborhood:9ff6444efa2773777f32c2b93cede9e293ecb2e01d55f7cb4d13ba26aaa9fb63", "formal-neighborhood:5c146f043f5a2da872af0f005749327b93e0c96b43557e914aa04044db21a012", [
      "formal-neighborhood:5c146f043f5a2da872af0f005749327b93e0c96b43557e914aa04044db21a012"
  ]),
  ("formal-neighborhood:9ff8478ae64541927d09ec1ee3d8f9a850a76dd99602d9584ab9346731945994", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:a07c1f83bac659a7930f85be87d9be52e52775c6c7f82e244b6a3a97cba42849", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:a08e1d75bc224fe8a55ad3cc32a7c8465ab4ca0254ef5f763412d009a9ed702d", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:a100fe3d7834d99d52877faf18f591bb193dd0a0554ef68e0821ab45ba667a2b", "formal-neighborhood:13286c818d376ce96c289e47e85c5edd94bcad22e44d0668b5ee880d1af46712", [
      "formal-neighborhood:13286c818d376ce96c289e47e85c5edd94bcad22e44d0668b5ee880d1af46712"
  ]),
  ("formal-neighborhood:a11952655ecf1c4f6ad4a26bb965ba3ca0793417e0d7a15d85686dd4964f3f43", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:a1355fdcc5d24e37cc73e49e474717a082244fec6467454cd0c3ba6d35541154", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:a140787333dfbad666d795ae1d7e15748e3b248855afe4af70eb0a863c255a43", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:a175ac337db3293e6cb262ba4fc28607b5830c2bf82e5441f8b9f1c9b28c8acd", "formal-neighborhood:1cac27e5188cd2ffaa0b329631dac1f50fd365a0ab4890db3208673e78f587fb", [
      "formal-neighborhood:1cac27e5188cd2ffaa0b329631dac1f50fd365a0ab4890db3208673e78f587fb"
  ]),
  ("formal-neighborhood:a18c7e2c39ba0410b67b5b22b07e50f5f1fb3bc49e5e7e4bea0179711b062dd0", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:a194eb6919beecaed9a8163457aa1b31dd7d664e5b7378979fc95ded9fcc1847", "formal-neighborhood:da40cf4500ad5a07503dfa87e3e7a17a99df33fdd64203069c4a86cce77a33ee", [
      "formal-neighborhood:da40cf4500ad5a07503dfa87e3e7a17a99df33fdd64203069c4a86cce77a33ee"
  ]),
  ("formal-neighborhood:a1d464ad69a5ad164f89acb3dbde6b8217b5bdf2fb24c73870645f8a553694e4", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:a1d5660ab36f05ce6ac44ebc26db5672b129dd215013b0b2bc66a4c44143dc7d", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:a1da953325dc8b4361b6fd46b5680954c5ba4a9e8439f9b83faed015fbd56b76", "formal-neighborhood:d113cb82eefe661ceb072b8d8b4af179ce6fc78c542ad0b823306e5de3d63471", [
      "formal-neighborhood:d113cb82eefe661ceb072b8d8b4af179ce6fc78c542ad0b823306e5de3d63471",
      "formal-neighborhood:232e7a59cdc3444bd036aade9d6ecddde49da84f934c0a9ba94495b6ef888727"
  ]),
  ("formal-neighborhood:a1e187edc2c4d2098b46f5d35ac800975c603b0c9cb40bbef6207f75ddc836fd", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:a1e1a4938c5487eb597c7f4e052d44313db47da54cb1c17bf660d2cbf9a011a9", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:a211f3ec42fdb7bad37ad1216ffd9e80f005bc4aaa5cb88b29a18041c6c71f52", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:a23e58dcdb4bfe7f4024a20b78b8243a9b92601687d38aaa410ccc82c6df0a17", "formal-neighborhood:255133780f3d3f3172676bcc229ac54c60c8c4bd5eb60bceb24c6671ec51b22c", [
      "formal-neighborhood:255133780f3d3f3172676bcc229ac54c60c8c4bd5eb60bceb24c6671ec51b22c"
  ]),
  ("formal-neighborhood:a24984e52684ecb948241b5bca4d6b4e1ec8f7b2a6908ea725b41cb269f0c7b9", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:a264f28051478e010781a182c06c4dc14c630f870fc35427436cf52e336e8dc9", "formal-neighborhood:da40cf4500ad5a07503dfa87e3e7a17a99df33fdd64203069c4a86cce77a33ee", [
      "formal-neighborhood:da40cf4500ad5a07503dfa87e3e7a17a99df33fdd64203069c4a86cce77a33ee"
  ]),
  ("formal-neighborhood:a26e3d9d935bb36b2a5c53ce45ffa110339e412202298b4b93ac9540fd9c25b6", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:a2876154cca590842dd52093f7188dda5b8a3d7b83d11e8aad3f191b71e70833", "formal-neighborhood:6cda5aab5a336b82481ba4210de8551709e5dd07f824300a182e0b68ff428825", [
      "formal-neighborhood:6cda5aab5a336b82481ba4210de8551709e5dd07f824300a182e0b68ff428825"
  ]),
  ("formal-neighborhood:a29ad5d1c1ce330eb6e74eba0a2793fd6d3444ff93c5a67e160ffea359eb940c", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:a29af07ef07228197ce232112dbfcd609df266cfb135b08b5b7b99fabe6befb4", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:a35a4561c162aa9a5011c68e1c1cf0107519e8d5e7910a6f034613eec5bf305f", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:a376f5e630c85bfbeec54459a7563f07c0de489649180b6b060823f47cb31c99", "formal-neighborhood:f269dab0cdf3143b9820920be11ba8f99ec1125b8e0ab3d9789288da9ff6b07c", [
      "formal-neighborhood:f269dab0cdf3143b9820920be11ba8f99ec1125b8e0ab3d9789288da9ff6b07c"
  ]),
  ("formal-neighborhood:a38ff1a154c6f1df86a76e69b039490b09f1c3734d09edd0bd331974188c3a86", "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378", [
      "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378"
  ]),
  ("formal-neighborhood:a3a56472f9937eb51d1c055e3dbde46f42c58cc09e07f92dd3165ca001ac3653", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:a3a84cf959d9dd86302b643f641dbaf18aa735951af43a657f819e9e0966824d", "formal-neighborhood:5958d6381fe7c176597a62fd9f6f273f7c1776a9623fadb639f5ccefc239840f", [
      "formal-neighborhood:5958d6381fe7c176597a62fd9f6f273f7c1776a9623fadb639f5ccefc239840f",
      "formal-neighborhood:ee76e132d26929f6bb6b324b6a28a04ccf34d480d335df1312b8a6f053e28d27"
  ]),
  ("formal-neighborhood:a3bd88a022561e332d8931e260269785c6fcdd6716dbf87a92f229ad8770a7eb", "formal-neighborhood:7806e65b097986b5d12556f55ec7eda2dd5407530af279f9bc298b7b1a38556f", [
      "formal-neighborhood:7806e65b097986b5d12556f55ec7eda2dd5407530af279f9bc298b7b1a38556f"
  ]),
  ("formal-neighborhood:a3cf7f0005b7e0ff1fa02d39aca896b23446ddf5f94504079f8e72648d27b6e5", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:a3f928f3b87145ff6fdc85684097e07653bdf01ad8e602c6dbb4fbe1ca874494", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ])
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L136017).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
