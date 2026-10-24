# selectedParentRowsChunk0030

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:571d33ddf18f692e3570243b9dc973ff10ea14b10873bcc4580dbbad96f08b21",
  "kind": "def",
  "lexical_name": "selectedParentRowsChunk0030",
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
  "slug": "selectedparentrowschunk0030--cafc879f6170bae75c0afcba",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139167,
    "line": 138967,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cafc879f6170bae75c0afcba11a984d142b75923817f930d6908a2ff2b2b1d2c",
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

Occurrence: `declaration:571d33ddf18f692e3570243b9dc973ff10ea14b10873bcc4580dbbad96f08b21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138967–139167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedParentRowsChunk0030 : List (String × String × List String) :=
[
  ("formal-neighborhood:ea774f662da83eca10c83ecbecd7e2386dc25cb15902c4614065f560d2b9cfc8", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:ea865952514884a0e77d60d7357951e7d2b49c3f07760c20b4830a85a8efa81a", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:eaa9a068927cf88836d6e7f3b584424e5a1da327f758f0178cc3674c368383de", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:eaab6db2f99e4796808b62f9df236a39d09ee56db17c765668c50359ea94c365", "formal-neighborhood:6cda5aab5a336b82481ba4210de8551709e5dd07f824300a182e0b68ff428825", [
      "formal-neighborhood:6cda5aab5a336b82481ba4210de8551709e5dd07f824300a182e0b68ff428825"
  ]),
  ("formal-neighborhood:eaac8a893906222d5c31b5ab8c6f4606dd0755793bd19710e67b62ec2094a1ec", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:eab980bf9161cb3d3cf5df9019245d574d8cba65f444f327397523d0c1c74398", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:eac08d7fb00cc1a72fc481c5da6404d82b0bf777ab56b23e4d748355adad3eaa", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:ead78085bc2d0c0a0f424f7ac713ab97bac10c029cce98b5ef865c224d3dede0", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:eaed13585da5d13d944a79f3cc0a16d63fd0d8cf1a0ef2ed367a2a7d56e1bb26", "formal-neighborhood:22b2651c161a88ad9b8c68dd45f83d504288d8255f7ac3928987f2517d94d81c", [
      "formal-neighborhood:22b2651c161a88ad9b8c68dd45f83d504288d8255f7ac3928987f2517d94d81c"
  ]),
  ("formal-neighborhood:eaf5236bd6885050942f9e5ca7228f862852734a892c5170a79a80d4c67bede1", "formal-neighborhood:80223206eb9786e6c0e5e4ccf657659f7d7cceb40cd70394a5bf9a04d4c766d8", [
      "formal-neighborhood:80223206eb9786e6c0e5e4ccf657659f7d7cceb40cd70394a5bf9a04d4c766d8"
  ]),
  ("formal-neighborhood:eafe74dbc18e62f2a4af5e1df70374d33e3cb55c6bfe7def6dc1074b40e5478f", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:eb0f8297c3bffc1d2983a0603e35008c27b8580e62ec9035737aa2c8f0905c39", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:eb2820be1c77a655c3720d17760aa957f3f6810fc52c5612d60076876fa41cf3", "formal-neighborhood:22b2651c161a88ad9b8c68dd45f83d504288d8255f7ac3928987f2517d94d81c", [
      "formal-neighborhood:22b2651c161a88ad9b8c68dd45f83d504288d8255f7ac3928987f2517d94d81c"
  ]),
  ("formal-neighborhood:eb65dae850359784dc3b699d8d661c2a551ec3ad2409c5aa9787dccc4902cf64", "formal-neighborhood:903d25208285b5f43f5b6083c0487ae2e9544da16c202f722df53460f0aa7596", [
      "formal-neighborhood:903d25208285b5f43f5b6083c0487ae2e9544da16c202f722df53460f0aa7596",
      "formal-neighborhood:b1630910a3f907f4116ae3438edf3d18a7e55194540faf9916a00a6c819ca81e"
  ]),
  ("formal-neighborhood:eb9443b36ea4ee41bb4f6bf6a65d53a9b45885ec913aff052b911aa121516e29", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:eb9c9c88fdc7910d02fd1a75f39677b8b12ba48d14de0d3f06c5937d2b941bc6", "formal-neighborhood:a9c1c6487e1a36787b98fd201c202e9a2742f6e9fc4e777bb71f526e7cdf192c", [
      "formal-neighborhood:a9c1c6487e1a36787b98fd201c202e9a2742f6e9fc4e777bb71f526e7cdf192c"
  ]),
  ("formal-neighborhood:ebd9b5bc73793708e2dbd10e892a0947b640f4891bd993dc1639342bec3a14fc", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:ebddafd1d90fff1c8c432f15951f2121e7c0aade3ed787f4066aac7de03824e1", "formal-neighborhood:dc3cf71cf4730ad1e27b4693fc98589d6e242aa0352f109f1031053629728e37", [
      "formal-neighborhood:dc3cf71cf4730ad1e27b4693fc98589d6e242aa0352f109f1031053629728e37"
  ]),
  ("formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6", [
      "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6"
  ]),
  ("formal-neighborhood:ebfc725d08e2e165ec1152f812beeb377b86f70e8739a94befea6fcbcff9837b", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:ec0a9f73d5bb3e3484735ef2dc47e32db339f511d668be39ff4d4206c5de38f6", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:ec12b563f3ff31407ee7032c5984bcd49c2a2673fdd7dfe02552a055650239cf", "formal-neighborhood:4720bc422e48c3b41e8786fa4c29b7145575157deaa66c72c8aaacc9eb58e02a", [
      "formal-neighborhood:3b2dacf59a414392fe9d705d5cf6f0737d7b3b66776055010814b4a5cfd55dc2",
      "formal-neighborhood:4720bc422e48c3b41e8786fa4c29b7145575157deaa66c72c8aaacc9eb58e02a"
  ]),
  ("formal-neighborhood:ec21b98a877872d64beb7e7c8cce6cfed8cae9aa859aa40a1de9355f3a0a5b01", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:ec3b2914adc4937c2440511ca173fe966f22d93eca45d1fdec7912ab7be96034", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:ec490e08b3aaca5b1f2666edcf5f73113b28b62119af040117ffef8950022adc", "formal-neighborhood:99dcd590e94d19f8c797ffd44302e5f147d5707fa5bca4bd5152bc9786f917d1", [
      "formal-neighborhood:99dcd590e94d19f8c797ffd44302e5f147d5707fa5bca4bd5152bc9786f917d1"
  ]),
  ("formal-neighborhood:ec5b0ad8fd414e8af99383323fd4f6362216b53fe25c68a8e952e6a42c871b21", "formal-neighborhood:04f1f6558a2bbb851618e052e472ef8d25eb03ce21cebcc922f9ad030b1ce104", [
      "formal-neighborhood:04f1f6558a2bbb851618e052e472ef8d25eb03ce21cebcc922f9ad030b1ce104",
      "formal-neighborhood:fe158ec9621c8804d6fffab90957736e58486d3fab5abb064e8e61db87516f29"
  ]),
  ("formal-neighborhood:ed1358f84668fa75b5ae9ca2c2779ee0cd5be747971adc7611e1f333bf793bf6", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:ed2bad7ab3a8d012afa8b534b33d2aeddd5dbb536695f5c091057204ce92f8bf", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:ed3fd62d6daee40b5518605cc72a9f5df586b2f0da6a43cbfc66eb08fb8b3f60", "formal-neighborhood:7806e65b097986b5d12556f55ec7eda2dd5407530af279f9bc298b7b1a38556f", [
      "formal-neighborhood:7806e65b097986b5d12556f55ec7eda2dd5407530af279f9bc298b7b1a38556f"
  ]),
  ("formal-neighborhood:ed6a9f519b0fd4e02f3f8ace3778917328e80b8703f3066de86a0d5a9de9bd32", "formal-neighborhood:31d24d29f67a1e5032212cff1fcc0dedee7e6a2ecd6ab6bbcdf05aa7d137209b", [
      "formal-neighborhood:31d24d29f67a1e5032212cff1fcc0dedee7e6a2ecd6ab6bbcdf05aa7d137209b"
  ]),
  ("formal-neighborhood:ed7efef6245dfb58bbe0651ba5618be07f825214d399750cd3aeb717b5248ec1", "formal-neighborhood:6cda5aab5a336b82481ba4210de8551709e5dd07f824300a182e0b68ff428825", [
      "formal-neighborhood:6cda5aab5a336b82481ba4210de8551709e5dd07f824300a182e0b68ff428825"
  ]),
  ("formal-neighborhood:ed847318a006bb8a481c3dd8a094d712f4246213acc0eefb90d5e8d9ec0cbccb", "formal-neighborhood:5c146f043f5a2da872af0f005749327b93e0c96b43557e914aa04044db21a012", [
      "formal-neighborhood:5c146f043f5a2da872af0f005749327b93e0c96b43557e914aa04044db21a012"
  ]),
  ("formal-neighborhood:ed88c8472a766475b4448375981d5a66d6ebdfabe979cba9bcdc572566eec19d", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:ed897c7d327269c7bef17e77ca937f20b2bab10b0520d435e21e94c2e14a4ff1", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:edbec7532f3bbd56d3df26a92f3f2a7e1fa9f57f5b9df0154cddc7cc95e81e53", "formal-neighborhood:1556182a1aefb4fbd6c807eaa1b23be738d7a2424def3b080955b193e507964b", [
      "formal-neighborhood:1556182a1aefb4fbd6c807eaa1b23be738d7a2424def3b080955b193e507964b"
  ]),
  ("formal-neighborhood:edc1585ffa6c35c3f9972e6fbe38f53544e031faedf00f10e2b180e4f385e20d", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:ede5c5f863194edb570c08e61f0a33337bad62d403ce17f07209b977b5a233a7", "formal-neighborhood:232e7a59cdc3444bd036aade9d6ecddde49da84f934c0a9ba94495b6ef888727", [
      "formal-neighborhood:232e7a59cdc3444bd036aade9d6ecddde49da84f934c0a9ba94495b6ef888727"
  ]),
  ("formal-neighborhood:edfd7b60ed65b6f2d5c04f918002ae3cba924936e5f753432a2f578ebdb60466", "formal-neighborhood:3b3ef9591dd4f52b01a6b82029faf2b7ff4bc78212e75451770cf88a86b6450f", [
      "formal-neighborhood:3b3ef9591dd4f52b01a6b82029faf2b7ff4bc78212e75451770cf88a86b6450f"
  ]),
  ("formal-neighborhood:ee76e132d26929f6bb6b324b6a28a04ccf34d480d335df1312b8a6f053e28d27", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:ee7ec164a3fd7ad0cf71fe6c0c62e669b3aa307f85e9c68a96fdcf20dba03610", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:ee8f018b11eac68e9425ef32e6f7a6df253296dfca6363ad9c2e38eeba403526", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:ee90d93982ef10889e57a95ca1490f01552c2df41ee97bf818a911fefc798444", "formal-neighborhood:232e7a59cdc3444bd036aade9d6ecddde49da84f934c0a9ba94495b6ef888727", [
      "formal-neighborhood:232e7a59cdc3444bd036aade9d6ecddde49da84f934c0a9ba94495b6ef888727"
  ]),
  ("formal-neighborhood:ee9563e021a1ef09817abd2409c79d336c6edd74701914595558746607326441", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:eecf898be1f8d63915129fddb46ca71e4801082f2796a9fdfa3096510d4db256", "formal-neighborhood:648c87db79955f7c76c5a236ebb56be832448a0a0a40a828ba15090e1f1b9a35", [
      "formal-neighborhood:648c87db79955f7c76c5a236ebb56be832448a0a0a40a828ba15090e1f1b9a35"
  ]),
  ("formal-neighborhood:eed3df9210facacadf072344ba7382936be8b660da3f625784401d54fd488d44", "formal-neighborhood:31fc8ff5368e18e1518380110c88ff620c841b1d89ecd9a7316cf3f0d6c73539", [
      "formal-neighborhood:e227f0c6cbe8aa3cd6de9a500e58273b47b24df0cf64a144a6f98a8c9773849d",
      "formal-neighborhood:31fc8ff5368e18e1518380110c88ff620c841b1d89ecd9a7316cf3f0d6c73539"
  ]),
  ("formal-neighborhood:eee196c740608493a92a1b6eba19c8a116eebba9dd32e33e97deb6d2d5044078", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:ef28b996daf6ae5bdd75d96a0b26f1c06038139de697c4b87a58bfc73a43ef7f", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:ef5b2fac0e76b973bf07892fb67fc8658d8c1e238e7908beb8f857a4e970f1cc", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:ef62be48913e179de861ff17a4a0a104d8ec638b3d3fb18621dce39664061a18", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:ef6b3777b0f728ce110b4eeb887cf17e072ebf5547833a9312dafa8ae34192e0", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:ef7bf3d947c05429a93e59e0b67e702dab603b4c3de2a9d963950835a872b9dd", "formal-neighborhood:eac08d7fb00cc1a72fc481c5da6404d82b0bf777ab56b23e4d748355adad3eaa", [
      "formal-neighborhood:eac08d7fb00cc1a72fc481c5da6404d82b0bf777ab56b23e4d748355adad3eaa"
  ]),
  ("formal-neighborhood:ef811ec3520e18a11229a871b3ae1e898843f9f50457d3b6b3e3573057e6e147", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:ef99bd4d3fe8a59cba5fc6296ada12b2350a670ce87d94632196e6d797e614aa", "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378", [
      "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378"
  ]),
  ("formal-neighborhood:efbd8d61d4f5d0cb70b359872ca1a0a8a65c9d2c2d17301f0244a3cd845ec33d", "formal-neighborhood:07f2c3a9d990b17e5bdbeecfa1ac1f10c17431aebbaf9d2d7ad8f82465ce79b6", [
      "formal-neighborhood:07f2c3a9d990b17e5bdbeecfa1ac1f10c17431aebbaf9d2d7ad8f82465ce79b6"
  ]),
  ("formal-neighborhood:efcd0007c38b85774a56ff2d5932de1040bf76991f37f1ff2f9eec60b5f1596d", "formal-neighborhood:24cfc33c923666ed51552eefeea631c9c0f47438ff326b5c086da920abe7f1d1", [
      "formal-neighborhood:24cfc33c923666ed51552eefeea631c9c0f47438ff326b5c086da920abe7f1d1"
  ]),
  ("formal-neighborhood:efcdd4aa195662c711ae0e7a82784dc37cfadcc78c61290f3972cc4ad96b94ee", "formal-neighborhood:eab980bf9161cb3d3cf5df9019245d574d8cba65f444f327397523d0c1c74398", [
      "formal-neighborhood:dbd819141f90bb4720a44b994d9afa2729c0dea552fffc5255d4d91836ff6469",
      "formal-neighborhood:eab980bf9161cb3d3cf5df9019245d574d8cba65f444f327397523d0c1c74398"
  ]),
  ("formal-neighborhood:f018637b7ef799f542b092cb09d1463f919c47b76e7ef6c4842f32b312389ce1", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f01df75a1b6adbf8bff9530f1b82a8b4b4b129e4440ebc46ffae5283dba089a9", "formal-neighborhood:7806e65b097986b5d12556f55ec7eda2dd5407530af279f9bc298b7b1a38556f", [
      "formal-neighborhood:7806e65b097986b5d12556f55ec7eda2dd5407530af279f9bc298b7b1a38556f"
  ]),
  ("formal-neighborhood:f04d5a49885994fbb7cd090560186f3b669b1fde6fbafabb018350de1dffdafa", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f0556333794014f3138da00f0ca87cdda4295700cdb72b72b161fd2a6307b620", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:f0642dd0b9c1f15bf48edc55e53051a891467c1c5a7225209bb07de598b6301c", "formal-neighborhood:24cfc33c923666ed51552eefeea631c9c0f47438ff326b5c086da920abe7f1d1", [
      "formal-neighborhood:24cfc33c923666ed51552eefeea631c9c0f47438ff326b5c086da920abe7f1d1"
  ]),
  ("formal-neighborhood:f064db0f576f96e86763b7e9275f8e681771660d7578352dae7a126e00d2d3cc", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:f0e7a26a43befe215ecf06d809dcbaadf42bf76d2969193f18b1c2a8806167c6", "formal-neighborhood:58a616a5efd4e4c0819ae4269e8a470fb08dbcab976c63e8f933201904b813ca", [
      "formal-neighborhood:58a616a5efd4e4c0819ae4269e8a470fb08dbcab976c63e8f933201904b813ca"
  ]),
  ("formal-neighborhood:f0eec031bcf116a23229ea7f0d7e81adc5cdd9cfe3f9867b490689416849dd93", "formal-neighborhood:41e168b48dd649ee81f1ad96a7a31c6e908738b0e11e79ef16afe90bd86e2451", [
      "formal-neighborhood:41e168b48dd649ee81f1ad96a7a31c6e908738b0e11e79ef16afe90bd86e2451"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L138967).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
