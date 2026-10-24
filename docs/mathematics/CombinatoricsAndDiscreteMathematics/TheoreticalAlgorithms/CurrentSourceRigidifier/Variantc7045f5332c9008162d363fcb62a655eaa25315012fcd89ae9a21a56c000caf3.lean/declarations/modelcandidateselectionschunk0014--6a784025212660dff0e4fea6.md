# modelCandidateSelectionsChunk0014

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d433e3506e80bd4eaf593003246028fc39032b00d5f75429c672d6262fb7befe",
  "kind": "def",
  "lexical_name": "modelCandidateSelectionsChunk0014",
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
  "slug": "modelcandidateselectionschunk0014--6a784025212660dff0e4fea6",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59380,
    "line": 59057,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6a784025212660dff0e4fea6d9585331214504a9f218d97c009a8d30144f23c5",
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

Occurrence: `declaration:d433e3506e80bd4eaf593003246028fc39032b00d5f75429c672d6262fb7befe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59057–59380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def modelCandidateSelectionsChunk0014 : List (String × List String) :=
[
  ("name-candidate:da5c6ab7a9b1ee588c6f2606d99e4b3a549ce0354d9864a6f8f6277d1d3b7bf5", [
      "name-candidate:6722bebf5ec6d6616a03f0c40c032476e3eb9e66894016a1837c5df0ba8cf06d",
      "name-candidate:b7ffe0b675205279bcec5873c8e6a99a71ba91a7c4f80f14ec99eae3c61cd51e",
      "name-candidate:da5c6ab7a9b1ee588c6f2606d99e4b3a549ce0354d9864a6f8f6277d1d3b7bf5"
  ]),
  ("name-candidate:34f0abc4f231899e1df87ae3ae93a5f34f31e8097f6fdab1aadb46dbe1489349", [
      "name-candidate:34f0abc4f231899e1df87ae3ae93a5f34f31e8097f6fdab1aadb46dbe1489349",
      "name-candidate:4e1a16ea85fe854803d44cc5900cd6a05c681619900ade52f51c69611fbaf71e",
      "name-candidate:84caba57b5b674dd0a8adc0094ea05d615c494ae290798794922f272cb38367b"
  ]),
  ("name-candidate:2b721845d4c5250aa32086c4b36b5f9238252afef91557891c4607613a4fff66", [
      "name-candidate:2b721845d4c5250aa32086c4b36b5f9238252afef91557891c4607613a4fff66",
      "name-candidate:7d8acb44fdf84decec17e29224eb5baaf7586ca78d55d644487697e7c30b8eaf",
      "name-candidate:cb59d1ed3d7ba0872b3d0b5fbdd0ccdce1675465f366111e28863833f656f57a"
  ]),
  ("name-candidate:76db960c94974731dba471a4a55da6321ca780bed55cbb0f2e4827a9b3257f0a", [
      "name-candidate:76db960c94974731dba471a4a55da6321ca780bed55cbb0f2e4827a9b3257f0a",
      "name-candidate:fc3c8f982b0863a0e5e6f26f82fa10707c297ba17d84cde86653a9ea2aefe0bf",
      "name-candidate:fd36f941e0572a4a3bfbe813f4470dfb9c2973c31703cff9040f589b308b41a2"
  ]),
  ("name-candidate:039da94d140f0870be3fa39b0ac80ef4a628f1cd02f37cfd9fa1890bfce62116", [
      "name-candidate:039da94d140f0870be3fa39b0ac80ef4a628f1cd02f37cfd9fa1890bfce62116",
      "name-candidate:14c8c4bfb1aa6269ee3dfd0e4a48fdccb3a12dee936b0ef6eefd0e0e1bfaa081",
      "name-candidate:bb60a7f027372257f3431bb0a9a442b74cca59d5449c46fac8c7395d1e99be8d"
  ]),
  ("name-candidate:23dcfd505ad1f724c2e13db280dba65b9589dfb4523547596328ff79f25d5003", [
      "name-candidate:23dcfd505ad1f724c2e13db280dba65b9589dfb4523547596328ff79f25d5003",
      "name-candidate:4f2f2c8f5571991dfde4ecbeb1cd4b70c73a89d626d5bb43b495087a1b949996",
      "name-candidate:9bbab4fa696a77ebaec33b2d13ddc53b7a2d330d2a3742e58babfa70c046aa5e"
  ]),
  ("name-candidate:51026d5d2bdbe1cf93f5f5e064295c3db3a930e052336f53f51bc85037b5d3b7", [
      "name-candidate:059491f3bc65265eb59a961a79132bdfda54f361660e50d96d5251d80c5c6f27",
      "name-candidate:51026d5d2bdbe1cf93f5f5e064295c3db3a930e052336f53f51bc85037b5d3b7",
      "name-candidate:bb4c9dda1a7cd06d43c2e2f8acf5c6c94e7446d699c1455f54b9a73fc13219c4"
  ]),
  ("name-candidate:a3e9ad7752b92b25023a0993ab248258b4ecac3886d43a47096d12baf45e9e50", [
      "name-candidate:097c0345f6ab56875a94cab77b15f7ff244d37b62800e4a9a1115ce8cea46ddc",
      "name-candidate:a3e9ad7752b92b25023a0993ab248258b4ecac3886d43a47096d12baf45e9e50",
      "name-candidate:fd87b64346cb31964332671fc7ee26632489484cf11f5ebcae2cc43e92bda571"
  ]),
  ("name-candidate:2e654b0192f55a7be259c99b1983fc0329facf3bc7323bcb9521a87c79947f1d", [
      "name-candidate:2e654b0192f55a7be259c99b1983fc0329facf3bc7323bcb9521a87c79947f1d",
      "name-candidate:53cc4d8b7439a043b5c0976c658be98ea03f9c1f556b54789fe9b553d0f489ff",
      "name-candidate:d7574160d7fb3aed647c4fffb88a2d383b97d7001f26c84d3916345a2abfb9a1"
  ]),
  ("name-candidate:8a5f877bf1c40ed6cbdad3b8963a2d21644e799fbbea87067bd09ed26f729c27", [
      "name-candidate:6213de213375664b51cab8f62b5e5e8974d99d665e5624639dcf599186c7cfbb",
      "name-candidate:8a5f877bf1c40ed6cbdad3b8963a2d21644e799fbbea87067bd09ed26f729c27",
      "name-candidate:ec24505c8be59ac667ffebc4d37cebad51db56258dc4b26d19204e9355916e46"
  ]),
  ("name-candidate:22427cabea8e88793060660e78f0b6fa2dafc891aae95efaabcf46514f8bc99a", [
      "name-candidate:22427cabea8e88793060660e78f0b6fa2dafc891aae95efaabcf46514f8bc99a",
      "name-candidate:733a0ee8aba62d124fa709457d72758fdee8c88b63480704ddb84565c7dcaf62",
      "name-candidate:7a5bee54b5d47605ea646c41508f7bd15321628c3ec9f706b6cc05e262a4c92e"
  ]),
  ("name-candidate:37b5d5fae19f5791d3c171401700d5c57d807df82a9cf470f8d9a0b4eab08472", [
      "name-candidate:313da5f24dbd882ab90337411e8a991bf4c945d2762155dd86c840202011077c",
      "name-candidate:37b5d5fae19f5791d3c171401700d5c57d807df82a9cf470f8d9a0b4eab08472",
      "name-candidate:67203c0ce9623b005a653f2cc6fd2367ef68f417ccd7e0bae65f83b2838889c5"
  ]),
  ("name-candidate:cf3c5619c4dfa44a12b52b8e399b377eb9ee4a9ba2b043412fe0f9e199ec45b5", [
      "name-candidate:84b2f57b27b766c866cdff41753f4715ae0b310a89275cff058cea1bd899695f",
      "name-candidate:cf3c5619c4dfa44a12b52b8e399b377eb9ee4a9ba2b043412fe0f9e199ec45b5",
      "name-candidate:da47ad632e7be91f513dfd6be6adec6c5608203b5eec4f177e26869fe6fec81f"
  ]),
  ("name-candidate:e28204d1f2fc7f07494492e6f944118d008cc53897c0fc097c74e6a7f83e8374", [
      "name-candidate:5373d7f136898c4374641d817eff2fc067d2dcf18dfac7086af7416a6a056dd4",
      "name-candidate:7ea287b1d1666e23e25d7254cbc3fc4ecbe3150d04827df8e752a21ef01f66d9",
      "name-candidate:e28204d1f2fc7f07494492e6f944118d008cc53897c0fc097c74e6a7f83e8374"
  ]),
  ("name-candidate:db6b0a18f3142cd72b00cdcf5236a151f6211190bf003089ec45a9f43e933fb0", [
      "name-candidate:7728df8f89aa8d047ff9be5a35a3ea6e08017587f51f0439f9ab47cd51260bb8",
      "name-candidate:db6b0a18f3142cd72b00cdcf5236a151f6211190bf003089ec45a9f43e933fb0",
      "name-candidate:de41f13abe59714c04a4cd01a9ce22dac31e7b85b6a9ff00e15e09a91d962180"
  ]),
  ("name-candidate:30529977418f7c8a497be8104c2155fec3069249508b78ff3e69ac09b36ef198", [
      "name-candidate:30529977418f7c8a497be8104c2155fec3069249508b78ff3e69ac09b36ef198",
      "name-candidate:ee87d82944fbf4ff8be37252b542762ac19b2b0408cf52d1aff470d6339d5c4d",
      "name-candidate:fbf9b6778fc878e30e08cb65cddc53244061baf5969885b9a7ad48d3c790dfb1"
  ]),
  ("name-candidate:0f6519d9470e927b7611f4b658a6cd6c2fe99227e4b3bcee4358ce5e21b338fc", [
      "name-candidate:0f6519d9470e927b7611f4b658a6cd6c2fe99227e4b3bcee4358ce5e21b338fc",
      "name-candidate:46b6d1a0e668d44dc97f1f5ccfd7cacfd7f712f02932a7e090e0d51c3c4256d5",
      "name-candidate:517afd9a3ea721210f87e6d5ae4f32020b073a4d536e96d47dbd0f42b48122dc"
  ]),
  ("name-candidate:c00c4356a18bcf82e3293dc4427459388776f62fcad15282f3e9f9477d25d771", [
      "name-candidate:2dafd5fde7fa2a842ffef18089b44cb03666531711f57647c724e39bdb5ba912",
      "name-candidate:c00c4356a18bcf82e3293dc4427459388776f62fcad15282f3e9f9477d25d771",
      "name-candidate:ed8effc6eff2fb2ac0bc19365bf00712800541a3d1a2440caa23eb0af0b1a267"
  ]),
  ("name-candidate:c8fe99e2963a9a6dd78469fe5e75ffc8943340db71857c14b5071f684ff1ecab", [
      "name-candidate:983ca563da537a95d339fd0d7c5f1e718ad50dd36fb7e2c14b3acafb09347955",
      "name-candidate:c8fe99e2963a9a6dd78469fe5e75ffc8943340db71857c14b5071f684ff1ecab",
      "name-candidate:da088935ea6a2a5d49ad5491c5149d603c4dc0675c4f622876036f9f674ed81e"
  ]),
  ("name-candidate:a70c3e442f0ead41255cc5a01be3509795eaa4275af737119672a5902c240709", [
      "name-candidate:a70c3e442f0ead41255cc5a01be3509795eaa4275af737119672a5902c240709",
      "name-candidate:eb6187e68890c8cc67d300693e768a0072d549ab7b3fe8bed9a3e459488fd7a0",
      "name-candidate:f4552d0045600f32dab7b930a6ec066b51c743885f33ce22e89ed272b6af978b"
  ]),
  ("name-candidate:26d11408f0468a8842982fa17ff586cfd9d5089e22f7ea283b4aba960b864da7", [
      "name-candidate:26d11408f0468a8842982fa17ff586cfd9d5089e22f7ea283b4aba960b864da7",
      "name-candidate:c9d14851d3a590aaed66f4126d99b7677f4818e4315e7727580fca6781cd1a5e",
      "name-candidate:ca9600f1aeeb76709c16201b01e066e8ff17e8b5439f8e36456dbb59dcbd1745"
  ]),
  ("name-candidate:4ae9b1d4e8b24705df1b0ac7d93c14dc95aa52fa66fa1b7237a650e3602996b6", [
      "name-candidate:4ae9b1d4e8b24705df1b0ac7d93c14dc95aa52fa66fa1b7237a650e3602996b6",
      "name-candidate:99d2aa68493b855cca57425b02454e4757b7832d0ef25115ec9029802c80e041",
      "name-candidate:d05062456aa050656d57e3d1099191028aafb70b97bd938f3614a84d94c7d9e6"
  ]),
  ("name-candidate:7738af08a4f91d82d77d19557312aea7f8d80f1a78a60a9452ef1f5d80bd4b62", [
      "name-candidate:7738af08a4f91d82d77d19557312aea7f8d80f1a78a60a9452ef1f5d80bd4b62",
      "name-candidate:9f96c570802dedac85475010addc722fa9d52c463131d8cbac6fa5a42cae16ab",
      "name-candidate:be8730488b249b456d73f7866daa413988378c03020acbf8e67f4ea12ce293e0"
  ]),
  ("name-candidate:1156660f99ec333ed690ad740b9a80413440f4b7163990a7338cb58d81a13123", [
      "name-candidate:1156660f99ec333ed690ad740b9a80413440f4b7163990a7338cb58d81a13123",
      "name-candidate:8e0a0bdd4bc5c76d4050130189b6401fba09e7276d265b781c607cf482eff15e",
      "name-candidate:bdecfac3fd31e1b2f7bc76d8395f4a90da18259712695f2cc0bd9baf8c0500d7"
  ]),
  ("name-candidate:cd9bc9131ec3bddd4fd5b7aaa85dbbca3ab06bef9d3a4cd9db78a5e0360bc1d8", [
      "name-candidate:9e731f7c4d818e3f6d255cf8208c0b6821b88497bcb307c029fa152def05bfda",
      "name-candidate:b9fdf41750a3772c8e0bf6f341ba7ad84a87749535c374b19092b5b9d6ff673d",
      "name-candidate:cd9bc9131ec3bddd4fd5b7aaa85dbbca3ab06bef9d3a4cd9db78a5e0360bc1d8"
  ]),
  ("name-candidate:28a1f81fa7a6bc889db3bbc6c96405eea5ed6c90c3865752c3acffc7fe104bc9", [
      "name-candidate:0d4dbafdab667836d8ff7816e3fc8683e35cf9fd45958f85a28edf58d2c5c24e",
      "name-candidate:28a1f81fa7a6bc889db3bbc6c96405eea5ed6c90c3865752c3acffc7fe104bc9",
      "name-candidate:cfa00e6447cc921e91148c5c0036b2a3561dc4eee393261c1b4cd111f2bb9a95"
  ]),
  ("name-candidate:509f43a6a15b7b6dda3671c2906e2c6d335bab5c2f46c2b6bbb27d6d677861b8", [
      "name-candidate:509f43a6a15b7b6dda3671c2906e2c6d335bab5c2f46c2b6bbb27d6d677861b8",
      "name-candidate:5b86500718dd1282623d330f63404390cc7bb76d3770d3741d3602ec087374bd",
      "name-candidate:e08aac7792016f35fafde87560af50ed55fe1e7e8cbd4dbd5b505fffb44a4768"
  ]),
  ("name-candidate:9c4d63ff33cc335f165c8a9f7e3eb3d7eeb8676f850760942d165792bdaacea1", [
      "name-candidate:559962dbaaef75832a9668bcc50bf493f39a1a9eaf5d5a4573fb7cda91adfaac",
      "name-candidate:9c4d63ff33cc335f165c8a9f7e3eb3d7eeb8676f850760942d165792bdaacea1",
      "name-candidate:ca60669f2d1bb6ae7466667a846a2673807d4bd73dd548a8b5547fac8ed6ef76"
  ]),
  ("name-candidate:6599f4d8d419f4bf23306c2ecc54b8b6ef7f80162f4d19df454800c26622c4bc", [
      "name-candidate:6599f4d8d419f4bf23306c2ecc54b8b6ef7f80162f4d19df454800c26622c4bc",
      "name-candidate:bfb5ae882aa2cf9f4d2f0da8eb54ef9719c6a5354e8aebfadc7dce925e1fab88",
      "name-candidate:d69644a60aabc14204acc833e640057562d191bafac161f235535519924c411c"
  ]),
  ("name-candidate:394f0d2a5165612ebdb41bc600b88fdbb1c958e242a96e472d4c8ac1a98ad985", [
      "name-candidate:3810f027a96f8730fbb991b26a1159ef493d428cb99340088e01046ad506afe7",
      "name-candidate:394f0d2a5165612ebdb41bc600b88fdbb1c958e242a96e472d4c8ac1a98ad985",
      "name-candidate:68fcac4a3f9a5019f2c07820286498a4b812d818e2ef4b46f63f3220c2acc903"
  ]),
  ("name-candidate:c32540e7a429780c3e113d5592fafd91b65746356ca14cabc22163256aa4e770", [
      "name-candidate:2628c9c66b1fece930b014a554826e707fad1fe61417530fd6af0e477ae372fc",
      "name-candidate:77f0b05d3f5cf829136ac0476676167d3b2c2e636e53163ee63c4afa3c28350d",
      "name-candidate:c32540e7a429780c3e113d5592fafd91b65746356ca14cabc22163256aa4e770"
  ]),
  ("name-candidate:772d12037dbbd95645383dc7e414e9f4c4ce2754f7b4e14c32f1187955dd9b63", [
      "name-candidate:149be72388381f89e7b2c05e93ea13783b8cca5e982f9bdb9cc0c6d9075d8563",
      "name-candidate:772d12037dbbd95645383dc7e414e9f4c4ce2754f7b4e14c32f1187955dd9b63",
      "name-candidate:8f3f67db8bf1ac7b633fe1d136750d013d5c6c0456418d1a131bd73599456a7a"
  ]),
  ("name-candidate:1382b22d77dccda9dedf22aaddff09c003670b2cbc49fa9b840f8f327af2ba94", [
      "name-candidate:1382b22d77dccda9dedf22aaddff09c003670b2cbc49fa9b840f8f327af2ba94",
      "name-candidate:2f863942f85be5d9f168bb152da564391e2d0845316489a040b3f5077fceadf8",
      "name-candidate:f0de2288d7b99154139b74dc6852b95161f8d98962bbcb0985979e14bf054f93"
  ]),
  ("name-candidate:9f8c89c97f00356716767410e586849ad39fb1c9656821f1b264d95b24b3538e", [
      "name-candidate:9f8c89c97f00356716767410e586849ad39fb1c9656821f1b264d95b24b3538e",
      "name-candidate:d194b96f398ef42f7187cb085b488d94747d6bef2dcd43fb303d729c6cb13328",
      "name-candidate:f85b5b9574ab28405a6ca2e1c3b72775ac2698b93885a06b5dc9c15839b0f7aa"
  ]),
  ("name-candidate:d15a94a29c392b496db3828c1bad5f9d7084445434dda25d33bfcea118300398", [
      "name-candidate:7e3cfb69bdae30f1aeb9380c88f53a7ba5d1f896d8d9fbd866618b92d42962f8",
      "name-candidate:cd7e33cc48f0b87074379ad348584d107d68094b705c9b753051ec09fa16c9ff",
      "name-candidate:d15a94a29c392b496db3828c1bad5f9d7084445434dda25d33bfcea118300398"
  ]),
  ("name-candidate:26eb9a17697529d07b5f1c98c84fa3effedfa86ce9ecb0e61ab92236cf067d21", [
      "name-candidate:26eb9a17697529d07b5f1c98c84fa3effedfa86ce9ecb0e61ab92236cf067d21",
      "name-candidate:464599ebc1c2c9ff9cb7a6ee14dbbecfc97adc10045a1e96fc38f7e20f35ec94",
      "name-candidate:5b12d54fd8b6a6d3e4702023026d8511f21bf3b2139b1536eff6dcca16729bb5"
  ]),
  ("name-candidate:58a1f29fcf828acf7c6d41e25dbdcfbffc6ed4f2dfd6e90d8734f77d676df6fe", [
      "name-candidate:58a1f29fcf828acf7c6d41e25dbdcfbffc6ed4f2dfd6e90d8734f77d676df6fe",
      "name-candidate:bb930832765afe764bcb70cc6d2a18893a8365e4265a5853a0c0f51b0a9ec3c0",
      "name-candidate:d8ec1b05ed15c00769f38f5fa9d4816ec45b9ae879f2bfb211c1ee6052aa0c58"
  ]),
  ("name-candidate:7da91e8ab791174c1175779a53c53afb45415fc5fac0be6c93951d43e1cdf72f", [
      "name-candidate:7da91e8ab791174c1175779a53c53afb45415fc5fac0be6c93951d43e1cdf72f",
      "name-candidate:b981e2bc53e2ed9ac4d7e25ebe8570cb9539309849b132408f68884929b7e5b1",
      "name-candidate:dc15005a79bbf13463d5ac8758b0cb8288d762e7ef79e3cea1e0f5a013c505f9"
  ]),
  ("name-candidate:630cd32cf31c376126973c19429ec74c7ef63d79fdf739746f99b2fb0142a02e", [
      "name-candidate:4b30c3a58d8ab7a05fa0c260d6fe0810b55a811c8d5b184b8bd3005623f072b9",
      "name-candidate:630cd32cf31c376126973c19429ec74c7ef63d79fdf739746f99b2fb0142a02e",
      "name-candidate:9b40e874c518bedc49f2d6c272423f4b895df2dc8dd12f684c22604d83007baf"
  ]),
  ("name-candidate:c79cc64dce11a77279a182053acab734bfb57fc28083027c8ea3f8311b9cb63f", [
      "name-candidate:9faba17e414ac48e82d27d01598b80e539250d15beb1de1b10316c8d8266f7ea",
      "name-candidate:c79cc64dce11a77279a182053acab734bfb57fc28083027c8ea3f8311b9cb63f",
      "name-candidate:f5d4cd541c5c4cbfae208809e22930bd15bd58383a6f632df1e5c2ff80e5804a"
  ]),
  ("name-candidate:7514f1c1bac9df77c84668016018bd53affbd09b4ee07a5cd71ed65f3632d4b3", [
      "name-candidate:0fab1f9b53ef8040b04df558056c22bb1ecde9b04e5d02679cd1d4daf57ed627",
      "name-candidate:7514f1c1bac9df77c84668016018bd53affbd09b4ee07a5cd71ed65f3632d4b3",
      "name-candidate:fd22383a904a41b9c3eb880237772d6b9e383b10c1b92a667ec2730a8d26b512"
  ]),
  ("name-candidate:9e7b0edc8b11d23892a972d206e9d9a67ef10d78808d1cce22a393c8e162ac12", [
      "name-candidate:83c14f3c9192aee07ed08a8da26e7efe356f27a6eb821683a493d119f7fdab24",
      "name-candidate:9e7b0edc8b11d23892a972d206e9d9a67ef10d78808d1cce22a393c8e162ac12",
      "name-candidate:ad87e4ce8d742d0b290f89a44ea96487465bb4b710b052653e7ff080f57e3959"
  ]),
  ("name-candidate:0781290782780cc2f5b68edf7c277d52ff1d2b2842e3d93f34cdd4076e9152e0", [
      "name-candidate:056dc0ba6ac63bb8a440e2481f4eb8f347e54795a2f97fc02b4e3d8bf7f38f25",
      "name-candidate:0781290782780cc2f5b68edf7c277d52ff1d2b2842e3d93f34cdd4076e9152e0",
      "name-candidate:7f5fe6ff75136551cdd2a5d8717554bb3c0967b2c5da7241b2cd0237004965e4"
  ]),
  ("name-candidate:5a6c5f31b39608f4e4b86f87bdedc54e60bbcf8893157ebfa4f5a7fb18cbe467", [
      "name-candidate:5a6c5f31b39608f4e4b86f87bdedc54e60bbcf8893157ebfa4f5a7fb18cbe467",
      "name-candidate:d19cffa9ace608edd2010f669b025713fd0662b623f9d86b0a5ef6a67e15614b",
      "name-candidate:f6d93634fa0d526d56a526d0cdc0bac672d5f55d5393bf32406293ccf4fd3491"
  ]),
  ("name-candidate:20a09751147c99d792544d31ce393f4c51a3a96c6e0a1a805e9f419b03a681ba", [
      "name-candidate:1d753825395dafd44a2de42ded016edd8852307e349836f1f330e3afe8a93782",
      "name-candidate:20a09751147c99d792544d31ce393f4c51a3a96c6e0a1a805e9f419b03a681ba",
      "name-candidate:7644b477536de6ae7b6cf3317c441ac6ebf15974380bd7ebf09a8d3875e45b32"
  ]),
  ("name-candidate:0b44017de446dac15bb02e027c57f2b331367ca3339a7a89cb32509fa49a342f", [
      "name-candidate:0b44017de446dac15bb02e027c57f2b331367ca3339a7a89cb32509fa49a342f",
      "name-candidate:244bc9a4e703610e239fffb1ffbf23d5041f89eb33b980a23e938942499a5b0f",
      "name-candidate:69b6d134568be77dabbf586a7c8129736c44b26f875674e16d249000afb242af"
  ]),
  ("name-candidate:67fbc81fef69294eace1f29e3023e610acdf81799fe4ba978c4c301b4247f705", [
      "name-candidate:3c3b00852cc4ff5561ebb3600164901d47b33321136ad3061a105f03de9dae9f",
      "name-candidate:67fbc81fef69294eace1f29e3023e610acdf81799fe4ba978c4c301b4247f705",
      "name-candidate:d99d40165c4bdf7af059aec1928fc42c06fe17b7c30834139b8aeea420e46fa0"
  ]),
  ("name-candidate:1588c56a9f90912c8147d8fc68bca687aece34f3917f2ffc71d09b3a6e2176d3", [
      "name-candidate:1588c56a9f90912c8147d8fc68bca687aece34f3917f2ffc71d09b3a6e2176d3",
      "name-candidate:be8b8aae9f20385cd3c109976311f708e7db788f44e9a8a83f87bf9c9b38622a",
      "name-candidate:cd2f3b62673df290fe2cda9da59bd0886231193bbd1dea490885897f14c27798"
  ]),
  ("name-candidate:9825cef69d5612be4f7bb8014f612287d0611738a338e681ff8d1173dc7f0835", [
      "name-candidate:6f6b8150e0b0800a4457e8abb595f6b1edd1b292443bc0a869d050253989c144",
      "name-candidate:9825cef69d5612be4f7bb8014f612287d0611738a338e681ff8d1173dc7f0835",
      "name-candidate:98c1976d6bb2a50640b61f61656da1c4849ced3cde9cd1eb3d650dc5d171e33e"
  ]),
  ("name-candidate:96389a7d55b1136bcb22525fefdbda30101354f3503a4841df052af0a6fe8b4e", [
      "name-candidate:3a709c18ead0a3522ef6063b0dfef9ec32dd1e37e33f99ba2ac00a090f64afb9",
      "name-candidate:895f865db9ade8712f3f1fc20fcef69346966efa919a70c6c2bb9048073519ac",
      "name-candidate:96389a7d55b1136bcb22525fefdbda30101354f3503a4841df052af0a6fe8b4e"
  ]),
  ("name-candidate:ef849f5bb369121a1678d8ade75a9aecdbf5450028474c9b418f3bdf3333f010", [
      "name-candidate:3342fb0ce3facd718922c18056c67dc72e512e6ff9739c451870cb3dcb6b4d89",
      "name-candidate:6a85139fb4d2f7afad4d2aa76621560bf7b5483fe9aa280b81d5ebf5602b319e",
      "name-candidate:ef849f5bb369121a1678d8ade75a9aecdbf5450028474c9b418f3bdf3333f010"
  ]),
  ("name-candidate:a85355d4c489bbf96c92c8557fab01d5d53208196036081c739d627d92f48881", [
      "name-candidate:9a16c51b81ae905efbcb47c9472a3458040bb46c825af10c37b8311901360a4d",
      "name-candidate:a85355d4c489bbf96c92c8557fab01d5d53208196036081c739d627d92f48881",
      "name-candidate:bc69b43a0750d52a11ab3e91239d9bacd81f0030336f4497f51e1c970683765c"
  ]),
  ("name-candidate:4b7e3b979f2cf885a065a141a6503e5d5136204de795287deb3bc7e5fcd28f33", [
      "name-candidate:4b7e3b979f2cf885a065a141a6503e5d5136204de795287deb3bc7e5fcd28f33",
      "name-candidate:87c820c6b2cca823b4961627fd238d78b7fe449b6999372cb6ba120d2e5bce38",
      "name-candidate:e613848abdfb182ee70ee7b58d22709a22a73d3911059433170b38e2c36af6b6"
  ]),
  ("name-candidate:b7b3f7b24e428354cd5c219656e0b25339e1de7e1d4823510984b7bcf826d9e8", [
      "name-candidate:1feda83409d954bee4639a56cdc87669aa2f8340c10e6298e2307a3e43824b93",
      "name-candidate:77ba3f4773ef4674e583e26a7beca141a5fe1539ed64b657c189b748201e14cf",
      "name-candidate:b7b3f7b24e428354cd5c219656e0b25339e1de7e1d4823510984b7bcf826d9e8"
  ]),
  ("name-candidate:2e2196bb56296bbadd3625d7088b63f9f702613e33ee9885fdc21db355bf8eef", [
      "name-candidate:29a4448177d27d86017614309535de39521ebe236b3b4539ee8866a0d9027ead",
      "name-candidate:2e2196bb56296bbadd3625d7088b63f9f702613e33ee9885fdc21db355bf8eef",
      "name-candidate:8162987f8f254a2cfb808637ffce35b01663212158d8066cc7b0360cc286ba4b"
  ]),
  ("name-candidate:5ca8bef3c65b7ae551f4558897499614823f7f0b0f475bf172daf83226f5386b", [
      "name-candidate:1976cc238ace554f2cb3d3f05dad55a7f6583e3b8be5c111e280be2b9a851508",
      "name-candidate:5a067ac48b293f5fdb052169e1ce836a81441d6a48e6ae85ad48a41e542c6ffc",
      "name-candidate:5ca8bef3c65b7ae551f4558897499614823f7f0b0f475bf172daf83226f5386b"
  ]),
  ("name-candidate:6e0e44ea1cd8509e78b09c408a26fea6e6099488c7a1fbebee6c82f429161e7a", [
      "name-candidate:1a2a333352d7fc3bad7da66074a8ac88fd3da8491521936b9e10a7f601c33d87",
      "name-candidate:6e0e44ea1cd8509e78b09c408a26fea6e6099488c7a1fbebee6c82f429161e7a",
      "name-candidate:9b140fed4071266a62ee9cfe58ce9f1469cfac5797e381ec9cb6c678366a0872"
  ]),
  ("name-candidate:f6156d3d64791fdd737b2b1fcd4883e914aa8e9c477e0d07df51ddc6eb193250", [
      "name-candidate:24461d994fea044f55d0b59b23cf0041309b3c6df3119e9b152af5a9c4902285",
      "name-candidate:990598e107fe6b1aa6589af696f050928534df39bc32902922ca13364cf46e7d",
      "name-candidate:f6156d3d64791fdd737b2b1fcd4883e914aa8e9c477e0d07df51ddc6eb193250"
  ]),
  ("name-candidate:67d585360bb2c58f8502901269504f18aa8b2cca053db2632e7f3e19122b1460", [
      "name-candidate:05a4f255b04da3fa9ac6f54bbc87e8b12262047fe5a2b9dff953c34da0f7b53d",
      "name-candidate:67d585360bb2c58f8502901269504f18aa8b2cca053db2632e7f3e19122b1460",
      "name-candidate:cdb1cf44a697d61366c9c6d2fc891ffad2b9b0050d629835f94a87f8b68c1e71"
  ]),
  ("name-candidate:847c29daff71c9f2143c6cc2fc9b6bd505831c0a4951e5f53a6dbf4b43728647", [
      "name-candidate:275c123e247367cecd44f1a5390cd26c9cf070c6bb7ce7147680f3e4e6eb99ec",
      "name-candidate:847c29daff71c9f2143c6cc2fc9b6bd505831c0a4951e5f53a6dbf4b43728647",
      "name-candidate:86488cdb550606ab82a62a70f8c05cb79a22a9f631f01160174e034f95768ee3"
  ]),
  ("name-candidate:3a2ee3453966e188552322275ad391b741d11db64e000221f5dfd506f970fdfe", [
      "name-candidate:0367542b19f7aa19684f0ecd4cd39ac7601e420b415cb71cd0cd27bf30001e13",
      "name-candidate:3a2ee3453966e188552322275ad391b741d11db64e000221f5dfd506f970fdfe",
      "name-candidate:db22a8d6cfcf6a1177a8360bd479e9453ed28c261af586a28eef482e840d85a6"
  ]),
  ("name-candidate:c8961cce0c938b2b12ec1972cf7367d7b353b5f3b3b886c9a8284410561aba1d", [
      "name-candidate:08c04a9228f22cc4f50f2815112020ab39219fc4f785ab06bb4459c4b3c77323",
      "name-candidate:44e208bafed872b7ade9a19e655b9a02d025d3662e7fb320c69caf91aac405f8",
      "name-candidate:c8961cce0c938b2b12ec1972cf7367d7b353b5f3b3b886c9a8284410561aba1d"
  ]),
  ("name-candidate:371dcd3e82511e5f4061dd3bcca311eac8af59852350894ddde1bf4036df137c", [
      "name-candidate:371dcd3e82511e5f4061dd3bcca311eac8af59852350894ddde1bf4036df137c",
      "name-candidate:9df481c4837b7292d3eaba30df079c942e9e1869dcf909c01a9136d46457a1ce",
      "name-candidate:cd177b71e79e41aadc029ca630d2a0759d662b3c06e7433846ae7a6c023b10a1"
  ]),
  ("name-candidate:343e45736b54d404b989ee7682200e95df80303ff8877e8e561d5719a226c9c5", [
      "name-candidate:343e45736b54d404b989ee7682200e95df80303ff8877e8e561d5719a226c9c5",
      "name-candidate:abe22fedfbc9cef437285021a3f2eca43fb29279de2832a61ad049c86cbc2554",
      "name-candidate:e99018fb5d922059969211c7a62f9bb316aba954d1453d8361427b519c09bd69"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L59057).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
