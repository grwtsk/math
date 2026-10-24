# selectedParentRowsChunk0002

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f02ea62d63736ce1962efecf29c43547b4feb4c910490f1a6262baae017ea06",
  "kind": "def",
  "lexical_name": "selectedParentRowsChunk0002",
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
  "slug": "selectedparentrowschunk0002--e84619863be13813c3e7d755",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131682,
    "line": 131487,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e84619863be13813c3e7d7559ddb4114c862489ba713de3353c19782e5ec5158",
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

Occurrence: `declaration:6f02ea62d63736ce1962efecf29c43547b4feb4c910490f1a6262baae017ea06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131487–131682.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedParentRowsChunk0002 : List (String × String × List String) :=
[
  ("formal-neighborhood:10e70f5e3c751707438e58f78d40efb08dd9a4094eeac60f3842437aab0a1cf8", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:111f4bb67cc88f6f756001cb0314e3c6bf7f546969b83a0a6a51d6df3d09b9b8", "formal-neighborhood:99ca63c61dd07d14f43c94768640688b9ad2f74d9c6ef794153c5d281619a4f5", [
      "formal-neighborhood:99ca63c61dd07d14f43c94768640688b9ad2f74d9c6ef794153c5d281619a4f5"
  ]),
  ("formal-neighborhood:11236e160c3f7364df208d3dcbff31f6379af5ae187207aefa1c162eac0a0962", "formal-neighborhood:10df30505a11183f493570089b0808147dbcb86933ce38d0629c47a4dba134f7", [
      "formal-neighborhood:10df30505a11183f493570089b0808147dbcb86933ce38d0629c47a4dba134f7"
  ]),
  ("formal-neighborhood:113a25670398c6cf2baa4ffedd5e14ecf653f636c7302897034ec7d6b6d84fbf", "formal-neighborhood:6cda5aab5a336b82481ba4210de8551709e5dd07f824300a182e0b68ff428825", [
      "formal-neighborhood:6cda5aab5a336b82481ba4210de8551709e5dd07f824300a182e0b68ff428825"
  ]),
  ("formal-neighborhood:11444de477cdbb524a4f3a4d3e08ae249eedcc48698d79545df427c75bacbc19", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:117a9ca59c16ddea21ac7b1bdc5164415fe3df9c08231dcabf2acdcf1ce9c6a0", "formal-neighborhood:6ca385528799e6af0a096338e93ee2ade36b7909ff6e9fdb6933fd44b4919dc1", [
      "formal-neighborhood:6ca385528799e6af0a096338e93ee2ade36b7909ff6e9fdb6933fd44b4919dc1"
  ]),
  ("formal-neighborhood:11a15fb01996c5b7556653e3f2be05e4be1de4e424a694385822c5828676733e", "formal-neighborhood:07f2c3a9d990b17e5bdbeecfa1ac1f10c17431aebbaf9d2d7ad8f82465ce79b6", [
      "formal-neighborhood:07f2c3a9d990b17e5bdbeecfa1ac1f10c17431aebbaf9d2d7ad8f82465ce79b6"
  ]),
  ("formal-neighborhood:11af4011641551682ac4ce8ace6b25ef3e1ebc3f7936dcc00d8f9f3d69a65ec3", "formal-neighborhood:fe158ec9621c8804d6fffab90957736e58486d3fab5abb064e8e61db87516f29", [
      "formal-neighborhood:fe158ec9621c8804d6fffab90957736e58486d3fab5abb064e8e61db87516f29"
  ]),
  ("formal-neighborhood:11b0fe8fd5d3b0b5217b45c42e4df4aa7960e946a2c2d93711dc1f4dfd3fa196", "formal-neighborhood:bfbcfde1ab7603e88f1f64fced086be53c638527f302246314667c75d76142da", [
      "formal-neighborhood:bfbcfde1ab7603e88f1f64fced086be53c638527f302246314667c75d76142da"
  ]),
  ("formal-neighborhood:122f67c84934b650672f0aa4f4f31b8d29aeb1757b2c207e121769a12b224cf3", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:124b9e42574cf3716c1e03a5d7f337c716b8b70ed1780fa8cf551c7d9cd88631", "formal-neighborhood:13286c818d376ce96c289e47e85c5edd94bcad22e44d0668b5ee880d1af46712", [
      "formal-neighborhood:13286c818d376ce96c289e47e85c5edd94bcad22e44d0668b5ee880d1af46712"
  ]),
  ("formal-neighborhood:125c36571e6c8e08671cc3a07899c40b1f2820c0c0768f4cc6bd9dd7a692717e", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:125db69b9ab57d24fc78d6c0c5f022267d462dcd7a62c0207891c9174c4420a3", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:126e7d21209622f0c057a9fc3e81a25d3aeaad7467e8b19522baf4016ad0fbae", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:127490707de44e628e3991678cfe93cf040c41bde6365033f5b18fbfd97992a6", "formal-neighborhood:6ca385528799e6af0a096338e93ee2ade36b7909ff6e9fdb6933fd44b4919dc1", [
      "formal-neighborhood:6ca385528799e6af0a096338e93ee2ade36b7909ff6e9fdb6933fd44b4919dc1"
  ]),
  ("formal-neighborhood:128c99bec905307cc3532df01ac00ba7eeee745ca155ad7356eeeb18af4d189c", "formal-neighborhood:a7db0a46b7d2613cfa874ad0dfc0ea40c0f97f59b966e64449e0e90506d2f94a", [
      "formal-neighborhood:a7db0a46b7d2613cfa874ad0dfc0ea40c0f97f59b966e64449e0e90506d2f94a"
  ]),
  ("formal-neighborhood:13286c818d376ce96c289e47e85c5edd94bcad22e44d0668b5ee880d1af46712", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:13a131c2cd2c46a2b05f82e4127814101498e3a9dc28f95fb0266e030a6708c1", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:13cdad0ba9b5a907a75047da0988e1603eb98b16f49fe2a023fd6ea1d496e2c4", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:13dca5a43634812ea5707526fdff469507776a16048a4110d6fcb432a1941b69", "formal-neighborhood:b2717d27ab29a21a6e4335fcbea2e7b51f2569bdcb10ee191ed8a31bfabe2e5d", [
      "formal-neighborhood:b2717d27ab29a21a6e4335fcbea2e7b51f2569bdcb10ee191ed8a31bfabe2e5d"
  ]),
  ("formal-neighborhood:13f7dbd5a1ac694429edac312dbacdbfeeb9d15e991c26b7465afd04a49b5aee", "formal-neighborhood:5e232afe281570e69f875d62727b30397f5ff3bc4e619d390ae9bb78fcc9de59", [
      "formal-neighborhood:5e232afe281570e69f875d62727b30397f5ff3bc4e619d390ae9bb78fcc9de59"
  ]),
  ("formal-neighborhood:13fabdac85435a21b1b8b90ef9bfde95a9c4047b4b2b782492acdd35b0fc9514", "formal-neighborhood:13286c818d376ce96c289e47e85c5edd94bcad22e44d0668b5ee880d1af46712", [
      "formal-neighborhood:13286c818d376ce96c289e47e85c5edd94bcad22e44d0668b5ee880d1af46712"
  ]),
  ("formal-neighborhood:1404be9403355f071a912c2682915693b8a54f446232621f1cad10b458c86d88", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:140eb154c33785a61e1fdf8b12a91fc2f728bdd9602c211f05097f0c030f74e7", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:141eef96a2948944b6088666ec01ba5a42fdd42470831cffae9c72c72a39c1fa", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:14335951ba5e1fc29539f6fe9b6628932d40c94fb1329a2606d57c7f5ce2723e", "formal-neighborhood:c8a6c0954b95287ba8261ab92de8750c8f45ff15675a94768ea0f4d9ad864283", [
      "formal-neighborhood:c8a6c0954b95287ba8261ab92de8750c8f45ff15675a94768ea0f4d9ad864283"
  ]),
  ("formal-neighborhood:1456bed23c0de0402ff9b1d6147b316e63f7b2155cedfc8f2be2eab3685785f6", "formal-neighborhood:16bd97e406d1be21b54b659820a7355d479a96e6fb82812c652d103a9af88100", [
      "formal-neighborhood:16bd97e406d1be21b54b659820a7355d479a96e6fb82812c652d103a9af88100"
  ]),
  ("formal-neighborhood:148bb870f393530eb9b3765e1caf962e8ec8282ecc2a9f4ebf0533541377f948", "formal-neighborhood:9dcb1c4ecbdde47cfa361be7ef8202b51b6f4507c44ffbacf58e8e6f893f82eb", [
      "formal-neighborhood:9dcb1c4ecbdde47cfa361be7ef8202b51b6f4507c44ffbacf58e8e6f893f82eb"
  ]),
  ("formal-neighborhood:1492329fbbbc1c1b090fbfabab642df8c088d1c8942cd3baa1aa777a938d2372", "formal-neighborhood:b2717d27ab29a21a6e4335fcbea2e7b51f2569bdcb10ee191ed8a31bfabe2e5d", [
      "formal-neighborhood:b2717d27ab29a21a6e4335fcbea2e7b51f2569bdcb10ee191ed8a31bfabe2e5d"
  ]),
  ("formal-neighborhood:14a15b3a29d6d27ddff88c2173b16cb9b4284a358d8dacccb5922e34c16bc9ea", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:14c0534872c5708317b6092ffaecf75e11fe8614d127a0878cdc6c03c8fb9298", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:14c66ee567adeca6b587cee5fb8186bfade6385c631287e0133e0a36f1b79e7c", "formal-neighborhood:6ca385528799e6af0a096338e93ee2ade36b7909ff6e9fdb6933fd44b4919dc1", [
      "formal-neighborhood:6ca385528799e6af0a096338e93ee2ade36b7909ff6e9fdb6933fd44b4919dc1"
  ]),
  ("formal-neighborhood:14caf7f40517a06b356334fc51edbd0aa8390fef67644a04150060c45625f45f", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:14dcb1003484b15d916bbd3df71b550bd9db513903ab07e838fbf093cffbf793", "formal-neighborhood:9518bfd5a87145ab3f9bf941dd78bb35bc48e986636765a03c320a29ff7c873d", [
      "formal-neighborhood:9518bfd5a87145ab3f9bf941dd78bb35bc48e986636765a03c320a29ff7c873d"
  ]),
  ("formal-neighborhood:14ddf68b77103c14d0e05fbe374d08b6c27c9195de43b9095942bef19b103fd2", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:14e0cda6d7cfbfec6fb6ef8d1f845ff4c19f42dbce11a1d95f12761587417ce0", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:150a78471f608628a43c58f2423f0a57174194ea76ed5e8e47004f88c6146bfb", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:150dbef48d3f3313fc9a1a70f6b8d9d9912be82d5ca364799109bfc9df37d778", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:15336492bd437c0d3c9c9d62e290c7d40611e8de90a3ee134dd55cadabc96106", "formal-neighborhood:23903cfc932d4ee93b866f1d63c0896132a9a43b15c83e2f0b672a6467d45684", [
      "formal-neighborhood:23903cfc932d4ee93b866f1d63c0896132a9a43b15c83e2f0b672a6467d45684"
  ]),
  ("formal-neighborhood:1556182a1aefb4fbd6c807eaa1b23be738d7a2424def3b080955b193e507964b", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:1574069ac88a1a15825f91bc9c1c1cf562549cd4b375529eecb74125d181b42a", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:15a169749e92d441d63d060a8c4159eeb59407cee62170065758b37d794a4282", "formal-neighborhood:fe158ec9621c8804d6fffab90957736e58486d3fab5abb064e8e61db87516f29", [
      "formal-neighborhood:fe158ec9621c8804d6fffab90957736e58486d3fab5abb064e8e61db87516f29"
  ]),
  ("formal-neighborhood:15aca70e49e6538cb385838fac36cc6a597f0ed4214a94357c3859d9ebc988c3", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:15b066d755ecdb319912c2691c414db7e98e9ce4f282e5d84841c49c8b13ca7d", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:15ddef2402597f0ddc38d3baa2ace77e5a20718f979a134f736e7d799b1666aa", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:15dfb597c1618625ee5639b8b370404fabe5fb82d37c58746b4114b77522d1ea", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:15ec19d92f77356a6567cefa4a5426d75f9fbd84578fdd0d5009ff6020d44cc5", "formal-neighborhood:edc1585ffa6c35c3f9972e6fbe38f53544e031faedf00f10e2b180e4f385e20d", [
      "formal-neighborhood:edc1585ffa6c35c3f9972e6fbe38f53544e031faedf00f10e2b180e4f385e20d"
  ]),
  ("formal-neighborhood:15f5848db29c50b54f023476cac3eaf06f589d53c26edae3a76ccdcc4bad25b9", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:1622dff0ada8d3decbd59d8f3cf5a0cd9cc5bffc20af0f8f4f59fb45fac0325e", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:1634561efdddcd6987cd3210e810db09313f99534c3444f200fb624af937085e", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:165c3e16081bd8a82b2f2e4350c344b6e217a8a9fcde2198ee7711c88b41397f", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:16687ff53a8a05f970d09f4db86dc7b3c24e09952257e21631e8eacbb8e5dfa5", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:169781016e1edadda1215cc02c3044f6dc1a9fbaef85dbd3fd07a6def6fff386", "formal-neighborhood:b379aef469502f299db8484a001143f6459cbe430bd9c6f2ccdf049ae0297138", [
      "formal-neighborhood:b379aef469502f299db8484a001143f6459cbe430bd9c6f2ccdf049ae0297138"
  ]),
  ("formal-neighborhood:16bd97e406d1be21b54b659820a7355d479a96e6fb82812c652d103a9af88100", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:16cf62670675e4ad04ad088710ec3c4c7b93e07dc6a21f175c08644e5d9c2427", "formal-neighborhood:255133780f3d3f3172676bcc229ac54c60c8c4bd5eb60bceb24c6671ec51b22c", [
      "formal-neighborhood:255133780f3d3f3172676bcc229ac54c60c8c4bd5eb60bceb24c6671ec51b22c"
  ]),
  ("formal-neighborhood:16eeec8d5c50b60f8c618f4414d6805cf81ed315f0d1ebf50ca18499bca30787", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:1719f0ae54666f268262380decba1759638f1be92fef9fe7b87eca4682562ae2", "formal-neighborhood:ee9563e021a1ef09817abd2409c79d336c6edd74701914595558746607326441", [
      "formal-neighborhood:ee9563e021a1ef09817abd2409c79d336c6edd74701914595558746607326441"
  ]),
  ("formal-neighborhood:1724e900e55ab4477938d34d3abaee41dad6f06aad48c0ba41983b465be6c4ec", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:1751f10831ef27c29ea59ebaef71e38eb0221aeeb8758cb210a07fabd2e080c0", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:17581e3d54ce3a7eff7f924d8819810ebe7421fd7a4781adc5a39ee60c069a73", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:17622c3a6ad7139e30f9e40d464cab577aeb020a3a2c4696c7d82ffb4081b42b", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:17ceb3413daaff5c64c8508e22d34467736d043058820ebf89ffea5c957ab834", "formal-neighborhood:3240e8737ea9f5c516a8f1c498474c93ca146ef50ec95beea6a344b1e110f00d", [
      "formal-neighborhood:3240e8737ea9f5c516a8f1c498474c93ca146ef50ec95beea6a344b1e110f00d"
  ]),
  ("formal-neighborhood:17d890c871bc23c77dbd1997c3da9a71e24716cbadc6a6bd89ac087824ba85f4", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:17dca32df5d0ba33557b02630c7ff012ed1ee8bb9ce7b7387db10e95109a583d", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L131487).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
