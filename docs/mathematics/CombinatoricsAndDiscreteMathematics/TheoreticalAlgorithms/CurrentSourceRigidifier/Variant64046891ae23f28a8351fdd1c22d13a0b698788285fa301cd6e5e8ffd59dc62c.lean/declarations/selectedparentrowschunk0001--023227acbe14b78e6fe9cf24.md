# selectedParentRowsChunk0001

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:869e2fbfbec27fd72044221f0006ec870df508e9e5684c3efddc7d299101a730",
  "kind": "def",
  "lexical_name": "selectedParentRowsChunk0001",
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
  "slug": "selectedparentrowschunk0001--023227acbe14b78e6fe9cf24",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131478,
    "line": 131278,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:023227acbe14b78e6fe9cf24fe33d95e6f4140dbfd2f9e3fe4283063f754b579",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:869e2fbfbec27fd72044221f0006ec870df508e9e5684c3efddc7d299101a730`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131278–131478.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedParentRowsChunk0001 : List (String × String × List String) :=
[
  ("formal-neighborhood:08c2d5f9dbab1264d58ac21432727ac315ea939647e36ef6d54201c8e80ec4ec", "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378", [
      "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378"
  ]),
  ("formal-neighborhood:090ca0b3cbe84411b4247f736b3bdabf8e4298e9d6f8c76f2a81b5d0ffbe11b7", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:090cbb1cd470b05c7e4a450e54c486a72511150bd2aa8ccbeda9d05fb6aadf11", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:98a846e635df5c0e4e475a32e68f18f9d967701fb65659d51a5f36527aaf54be",
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:09175d27eadd6c44fd09abff3358754fdaa090664ce49430cfd1f3699cdc22cc", "formal-neighborhood:13a131c2cd2c46a2b05f82e4127814101498e3a9dc28f95fb0266e030a6708c1", [
      "formal-neighborhood:13a131c2cd2c46a2b05f82e4127814101498e3a9dc28f95fb0266e030a6708c1"
  ]),
  ("formal-neighborhood:093706a674154c0df686891c0f0c6c4416ee63633aa810ef4734a937c8bd7a37", "formal-neighborhood:16bd97e406d1be21b54b659820a7355d479a96e6fb82812c652d103a9af88100", [
      "formal-neighborhood:16bd97e406d1be21b54b659820a7355d479a96e6fb82812c652d103a9af88100"
  ]),
  ("formal-neighborhood:0985cf544352615bf4c6542c61027456811ec2cb6c882f4a65e8c83fad015da0", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:099f3e43369930fcfb842ea389508bfad77eb4ecdac3e9cd33c6e65066b32852", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:09a5dbb396726b1b37679ed68ff281c1868eb42d6326350bdf10f92bd8b5b0a3", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:09c4a3af37f9ffa5c8d1ebf8efb4c0bfdbae642fea7269608f353a096f9f8029", "formal-neighborhood:125c36571e6c8e08671cc3a07899c40b1f2820c0c0768f4cc6bd9dd7a692717e", [
      "formal-neighborhood:125c36571e6c8e08671cc3a07899c40b1f2820c0c0768f4cc6bd9dd7a692717e"
  ]),
  ("formal-neighborhood:0a37da5a2c58552dfe234431cde4a61ba491ebf9a2a849fea254b9f522bae5f9", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:0ab0d0bc01ac47e10edb7188a11bb9bc4ab259a656048f2fe1c32b40b7c316c1", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:0ab515f3691a5f38f5e08f9905d34ab351a59c899465057405aa93f1a4c88965", "formal-neighborhood:1d8bb2af7f758203e7062c2ce241877061395f916e8e1e7da1985c7d22489391", [
      "formal-neighborhood:1d8bb2af7f758203e7062c2ce241877061395f916e8e1e7da1985c7d22489391"
  ]),
  ("formal-neighborhood:0abad9410bc4fd15fcef8c83cf54f20f21410d1fb7aa64e41f5db3ed0f1daa98", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:0aee5836b6554da123afd60af10af6007d259ddb40acd9ea2182dd94c95a023e", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:0af56eb39af2493ac63f858cf0bb92b82171641e198c4b09446b816b38c4f67c", "formal-neighborhood:f269dab0cdf3143b9820920be11ba8f99ec1125b8e0ab3d9789288da9ff6b07c", [
      "formal-neighborhood:f269dab0cdf3143b9820920be11ba8f99ec1125b8e0ab3d9789288da9ff6b07c"
  ]),
  ("formal-neighborhood:0b161f5ab240dd2bf9aa6679bf1a36345d570e12fc4058f276e215907424b9ca", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:0b7948b3adcffaa681397120038f40efb49591568de29a2aa1f4ae7315c2c79f", "formal-neighborhood:aa965215f0dddc1c50dec93543f4a80b801d5c40fa07b040ca44451dc7843344", [
      "formal-neighborhood:aa965215f0dddc1c50dec93543f4a80b801d5c40fa07b040ca44451dc7843344"
  ]),
  ("formal-neighborhood:0b92d451f61cf442291559fafb2970b7c99138b9570e68a6a0020207e207b313", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:0ba1e2c19c9e6ff5e00c02af5ba4a94a53a5040a24da843eb88383ebf12a2592", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:0bc06fc0f43d374e7a67a4c93221c5f307ebe05f9378da99217836e9ef778cbe", "formal-neighborhood:23903cfc932d4ee93b866f1d63c0896132a9a43b15c83e2f0b672a6467d45684", [
      "formal-neighborhood:23903cfc932d4ee93b866f1d63c0896132a9a43b15c83e2f0b672a6467d45684"
  ]),
  ("formal-neighborhood:0bdd888536fcfe4adf2ac4341ee3d69e50296152c8e25c32b364aea07f1a6ccd", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:0be4fa98ebc9666985cee61b817df19bdf497a91529629c7af8790c008ff75d8", "formal-neighborhood:6f1f38c9cc94d1ee4fe60e9d81a419d8202b4815dfda99acd3fd4d52a2a1bd0f", [
      "formal-neighborhood:6f1f38c9cc94d1ee4fe60e9d81a419d8202b4815dfda99acd3fd4d52a2a1bd0f"
  ]),
  ("formal-neighborhood:0c06727d3ea756fe5722230156dd5621455b6f6f1366ca0163987699ae9dcdf5", "formal-neighborhood:7e40518b1954bca6f6bf4fab80de78e8eea4fd3c34f309d22cd94882509e6f75", [
      "formal-neighborhood:e715575969a98c46aa47725dec5e5221254b669521b37bf9c6a8850d08cce3a6",
      "formal-neighborhood:7e40518b1954bca6f6bf4fab80de78e8eea4fd3c34f309d22cd94882509e6f75"
  ]),
  ("formal-neighborhood:0c3669f60140addb392e2ff5b8d625d1913f618ac61aa7f6466294afcad2e513", "formal-neighborhood:9926c61b70f9581613897ba0c9178560f8aac2f192f81117f7dbb0677ae01270", [
      "formal-neighborhood:9926c61b70f9581613897ba0c9178560f8aac2f192f81117f7dbb0677ae01270"
  ]),
  ("formal-neighborhood:0c4b629d98b5e130adbb8bbcef25c73076c43aa874d11e16360ee3aeeb3b6bdf", "formal-neighborhood:23903cfc932d4ee93b866f1d63c0896132a9a43b15c83e2f0b672a6467d45684", [
      "formal-neighborhood:23903cfc932d4ee93b866f1d63c0896132a9a43b15c83e2f0b672a6467d45684"
  ]),
  ("formal-neighborhood:0c6d72d7d7e6ca454643cc76e186fa702eee3a2abfe93f6dd2ec7766534575da", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:fcaf27c2b4e0a3bbaf4d403d0a2756d059ad6ff27d1245d696b4914578850859",
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:0c70f3740a0e74cd7599912e01e279d7895d99c318edcf064b40e17e85c2ac5a", "formal-neighborhood:fa53402ad15f5b7eee02fade8383b612cd02ff439c4da4c60c54f07961ad9030", [
      "formal-neighborhood:0c6d72d7d7e6ca454643cc76e186fa702eee3a2abfe93f6dd2ec7766534575da",
      "formal-neighborhood:fa53402ad15f5b7eee02fade8383b612cd02ff439c4da4c60c54f07961ad9030"
  ]),
  ("formal-neighborhood:0c762d57a65122fec0ce09b1670bbb1884d5c61b249187d466bbcb79e4b0ba95", "formal-neighborhood:22b2651c161a88ad9b8c68dd45f83d504288d8255f7ac3928987f2517d94d81c", [
      "formal-neighborhood:22b2651c161a88ad9b8c68dd45f83d504288d8255f7ac3928987f2517d94d81c"
  ]),
  ("formal-neighborhood:0c8dd821238d8d9f7300e0b2a1a32dcb2239e24773f35e7d3b01f5cb9c9606e5", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:0c9d4396f86caa42fc4554513db953ff8cfaced1a2a4467aa13d233eb84a67d5", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:0ca35e8e1286da8bc6137e54935bf0b144aba6c4bd8e2d6f9b38a6e30d92a4bc", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:0cc1fa74866b3d515c4fcdf94ba7fef2e1429d1efd9882894f4a619bb59f15f7", "formal-neighborhood:68443baa8b726b6ac9734eb9c2ebbfcdfc8a8b11a70686d9e23f0366c59ceda1", [
      "formal-neighborhood:68443baa8b726b6ac9734eb9c2ebbfcdfc8a8b11a70686d9e23f0366c59ceda1"
  ]),
  ("formal-neighborhood:0ccdc80bd326968deef91fab9c8bfd76dfe8da9272155d21fce72a35eea6a389", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:0cfe361e0582988f1a573430aa9c99f6bc6901f2ecd144ea75321f873c7c0e88", "formal-neighborhood:1ded26350e0e84792831164ed6546b746a36f376ad6c857a97f199c557936e54", [
      "formal-neighborhood:1ded26350e0e84792831164ed6546b746a36f376ad6c857a97f199c557936e54",
      "formal-neighborhood:232e7a59cdc3444bd036aade9d6ecddde49da84f934c0a9ba94495b6ef888727"
  ]),
  ("formal-neighborhood:0d421ca5642b064f7c7016bc637d1a81b1a2f728a5165aa102c4dd9ac66d50d8", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:0d561baf697fa9a54f5cb87e9c7e85e6c4bac889dde91946243a5c7cc1eb4547", "formal-neighborhood:1cac27e5188cd2ffaa0b329631dac1f50fd365a0ab4890db3208673e78f587fb", [
      "formal-neighborhood:1cac27e5188cd2ffaa0b329631dac1f50fd365a0ab4890db3208673e78f587fb"
  ]),
  ("formal-neighborhood:0d598b01be358e075c72e5ee445d30ccfb168bed0021d63c007acc95e9138eff", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:0d5f26bf66738799189e75a33ae91c258b345ab0a1a71924c15b34e2df8cd762", "formal-neighborhood:b379aef469502f299db8484a001143f6459cbe430bd9c6f2ccdf049ae0297138", [
      "formal-neighborhood:b379aef469502f299db8484a001143f6459cbe430bd9c6f2ccdf049ae0297138"
  ]),
  ("formal-neighborhood:0dd3fe407d8d9badcb151a25b512ab2b943a10cd3985d1fa0a81e942b4454ff8", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:0de1a37b8ded2203912827741d4de748b9934ad99b05e760fd677448088f2876", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:0de480d40f230f6f75bd204213fe2f9ddfd4db477c3fac01e310ca0a8ec54fa1", "formal-neighborhood:b379aef469502f299db8484a001143f6459cbe430bd9c6f2ccdf049ae0297138", [
      "formal-neighborhood:b379aef469502f299db8484a001143f6459cbe430bd9c6f2ccdf049ae0297138"
  ]),
  ("formal-neighborhood:0e101c931bdf3aff319853d4c999494b407d3bc8f2fc6ef25600e4c14eb147f3", "formal-neighborhood:b5a00a6767d5f4f0ffe69f96458a770f234d4621bfe9dbf0c67f38cbbb952d1c", [
      "formal-neighborhood:b5a00a6767d5f4f0ffe69f96458a770f234d4621bfe9dbf0c67f38cbbb952d1c"
  ]),
  ("formal-neighborhood:0e56708b5ca84473f35e4f2a3c46f502d2fed8bff5e90e7a64411f0e3a73704f", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:0e9c85c1b2c20bad43c11c67020384b8820d91f565ed235220eba257bcff8374", "formal-neighborhood:b2717d27ab29a21a6e4335fcbea2e7b51f2569bdcb10ee191ed8a31bfabe2e5d", [
      "formal-neighborhood:b2717d27ab29a21a6e4335fcbea2e7b51f2569bdcb10ee191ed8a31bfabe2e5d",
      "formal-neighborhood:9974e0eb7b3514c52de76d4342389baaacc3e7aa6afddeb9180684ed683fcd20"
  ]),
  ("formal-neighborhood:0ecee53e06e00014d9a22f16559c6648ee2b9ed134db74a7e2176473ad24561c", "formal-neighborhood:cb744f31bf42f89245f03084e7bd9f53649295a493d24a83adb700a6e54e5690", [
      "formal-neighborhood:cb744f31bf42f89245f03084e7bd9f53649295a493d24a83adb700a6e54e5690"
  ]),
  ("formal-neighborhood:0ed6e9da14d90a40e82cdcfc8a73c37579f5253132e5d915eec0647b8a4e0327", "formal-neighborhood:28cf91897753d2b6cb579e32bdf1019ee43d50b4c9bf158d17810a687ba94dd6", [
      "formal-neighborhood:28cf91897753d2b6cb579e32bdf1019ee43d50b4c9bf158d17810a687ba94dd6"
  ]),
  ("formal-neighborhood:0f03ce5a06b413f5ef4b09502f4453147794a983e203709cf73347004d135359", "formal-neighborhood:1cac27e5188cd2ffaa0b329631dac1f50fd365a0ab4890db3208673e78f587fb", [
      "formal-neighborhood:1cac27e5188cd2ffaa0b329631dac1f50fd365a0ab4890db3208673e78f587fb"
  ]),
  ("formal-neighborhood:0f60c7577823a719696972150168b1155705a602d31177b789c0623a54451a37", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:0f64db12c79c2f41e61961ba51ac10ae29a02d2f09573ac22fcc24fc0043abf2", "formal-neighborhood:c6577fd46fcc6ac9abdf2a00d1f3a40e68c8e10f015c985be97dfde63d434b9a", [
      "formal-neighborhood:c6577fd46fcc6ac9abdf2a00d1f3a40e68c8e10f015c985be97dfde63d434b9a"
  ]),
  ("formal-neighborhood:0fa093b8bc2b8be3fcd5e1adcd3185907fb62daeccab5a5c5ef7c5baaf4ff9d4", "formal-neighborhood:da40cf4500ad5a07503dfa87e3e7a17a99df33fdd64203069c4a86cce77a33ee", [
      "formal-neighborhood:da40cf4500ad5a07503dfa87e3e7a17a99df33fdd64203069c4a86cce77a33ee"
  ]),
  ("formal-neighborhood:0fcdac3654ea646206972b5c3bf9d1d551c73868650334783841b94850c8fa97", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6", "", []),
  ("formal-neighborhood:0fd87bc212d06b11dde0fa6aa63b02e1f79acd6144e97fca1cfffa2df4eb38f6", "formal-neighborhood:903d25208285b5f43f5b6083c0487ae2e9544da16c202f722df53460f0aa7596", [
      "formal-neighborhood:903d25208285b5f43f5b6083c0487ae2e9544da16c202f722df53460f0aa7596"
  ]),
  ("formal-neighborhood:101061d43205b79374a3e121d448a873ca664f51253965d06a212e4b43fbff0e", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:1016e3308c2732084262f06f5f4cb165fce4f163571b52cb94633f243084036e", "formal-neighborhood:686a2a3936f857e069b2000f1d645fab292ab8e3cba8ffc9a6293ecbd734d977", [
      "formal-neighborhood:686a2a3936f857e069b2000f1d645fab292ab8e3cba8ffc9a6293ecbd734d977"
  ]),
  ("formal-neighborhood:1037312673e8ef764f81ba60e71ca957b799820bbeab8134bf83b0120cc3ced5", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:103f09fc9b9b02b692f3b068fefb386089136cb196f944fffad39878c5fcad0e", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:1080bd6e2632cdb2f22cf7273a2cdb554097f500d596477f23e7cee04f6f35f2", "formal-neighborhood:aa965215f0dddc1c50dec93543f4a80b801d5c40fa07b040ca44451dc7843344", [
      "formal-neighborhood:aa965215f0dddc1c50dec93543f4a80b801d5c40fa07b040ca44451dc7843344"
  ]),
  ("formal-neighborhood:108ae3db822bfb0d96b898f7cb6fd2304cda3aafbf71287b9c5ffcd84fa15709", "formal-neighborhood:03119b8b9a163fb1f7b01d512938a4c0a3954a0d9f28bd3740c7a2a24faa7377", [
      "formal-neighborhood:03119b8b9a163fb1f7b01d512938a4c0a3954a0d9f28bd3740c7a2a24faa7377",
      "formal-neighborhood:a87a66d8aa4c658903ebd0376bf84494b7ed23a23290d9aab236a30cc1432637"
  ]),
  ("formal-neighborhood:109964b8485a135c1001d4d472bc2c2b2a839deea44eda307ee12cf5ff8a0158", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:10a7749a32850e654a1eb4bd196c2bdfc19efc97d41dffb9da3553e78a400941", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:10b6337301fd880246f6dbebd2aa5f430c5c382b24054d19a8b3241a815f6d4a", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:10bd71589746ae3a1a7f1b1cc70d505228b05548a06a3caee09cc1aba53f64bb", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:10df30505a11183f493570089b0808147dbcb86933ce38d0629c47a4dba134f7", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ])
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L131278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
