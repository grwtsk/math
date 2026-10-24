# selectedParentRowsChunk0016

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cd6a7a9952a1e0046c6bd6cadd50c0478e7b426e42e402b73d4584ca3b9de18a",
  "kind": "def",
  "lexical_name": "selectedParentRowsChunk0016",
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
  "slug": "selectedparentrowschunk0016--4ad2a89349b3817ffe5928b2",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135404,
    "line": 135207,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ad2a89349b3817ffe5928b2df1d78241bffdd265a5891f10e0a905e9e25789c",
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

Occurrence: `declaration:cd6a7a9952a1e0046c6bd6cadd50c0478e7b426e42e402b73d4584ca3b9de18a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135207–135404.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedParentRowsChunk0016 : List (String × String × List String) :=
[
  ("formal-neighborhood:7d971dbe35353c0f12ec92696791a9564fba0b3fa4a059523fb49ea85d379ea8", "formal-neighborhood:c56879317db7f83cedcb63b04cb92d8f8d3d085cd2d66c0e6e88f040b85ab93c", [
      "formal-neighborhood:c56879317db7f83cedcb63b04cb92d8f8d3d085cd2d66c0e6e88f040b85ab93c"
  ]),
  ("formal-neighborhood:7d9acd66f5b0daea759a2a07c33ce30a3ebbe85eace2bedff9313003ca80662b", "formal-neighborhood:b505c853fae9be013d5dbd3e0e8be41dc36e76108050e48af60f7880d854dd95", [
      "formal-neighborhood:b505c853fae9be013d5dbd3e0e8be41dc36e76108050e48af60f7880d854dd95"
  ]),
  ("formal-neighborhood:7dc4381f86a33b0fd98a0d9f03a5f3945b69a4b91894c8ae2dec5c62f7be6341", "formal-neighborhood:aa05df4ddb4a38180d5fed3e5ad7b971e513f3ceed2384c16c5ab7820b12aec1", [
      "formal-neighborhood:aa05df4ddb4a38180d5fed3e5ad7b971e513f3ceed2384c16c5ab7820b12aec1"
  ]),
  ("formal-neighborhood:7dce2631d744abde4b69e49f646c402dd0f770fc8f60deba84c739766a25dce3", "formal-neighborhood:dbb3ac5bba53f1f37daf540a8b57f7da7749168bd843e8dcdf8a25c355a1d8e2", [
      "formal-neighborhood:dbb3ac5bba53f1f37daf540a8b57f7da7749168bd843e8dcdf8a25c355a1d8e2"
  ]),
  ("formal-neighborhood:7e0237a94759f582e3aefb476aee245998c7d2fdf2894d2964df21272924bb0a", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:7e40518b1954bca6f6bf4fab80de78e8eea4fd3c34f309d22cd94882509e6f75", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:7e4072f2f2a7e6024fb7cd780f54f81026f2e35afda39a5b3a6d7481bbd5ac05", "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378", [
      "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378"
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
  ("formal-neighborhood:7e64fedf449654b921caa12fcad91792686decbdd0e339f23eb006bc3fb206a1", "formal-neighborhood:232e7a59cdc3444bd036aade9d6ecddde49da84f934c0a9ba94495b6ef888727", [
      "formal-neighborhood:232e7a59cdc3444bd036aade9d6ecddde49da84f934c0a9ba94495b6ef888727"
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
  ("formal-neighborhood:7e9a7fba0f577ece3c372a8ddc7cb7f0abdd99a1553d024ad632e0e989a03df9", "formal-neighborhood:da40cf4500ad5a07503dfa87e3e7a17a99df33fdd64203069c4a86cce77a33ee", [
      "formal-neighborhood:da40cf4500ad5a07503dfa87e3e7a17a99df33fdd64203069c4a86cce77a33ee"
  ]),
  ("formal-neighborhood:7eb4b049e752337f58ff0f813042eeaf10dd5bf74b83c155221f937c9fb53543", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:7ebac01a57551fbec15ed76a61a5f137d6a9de399c433bb305c7c7099a667759", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:7edde05064a4a97d04d8a0982f268bbb4a516b1139b41ae30ff5afdad3cf6a71", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:7eec4738b0a6666e156ba882b4ac69b6beaad4b8e07a1a19548b675697552843", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:7efbca3c0cceba0d8165f305b453dd126eb6952955360b66654dd87937e37950", "formal-neighborhood:fba29b2cfc89703651bea943fec30795329904f40c493cf3ec8581895819c4a2", [
      "formal-neighborhood:fba29b2cfc89703651bea943fec30795329904f40c493cf3ec8581895819c4a2"
  ]),
  ("formal-neighborhood:7f433ce7dd9f58ec342ecf37c0f132f03c6bb3b27f6b4607e014ff092cd3c185", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:7f533cd8f76eadde3e4b45d57f53b7fcbb19a0e1349df8e9acbc32f419cb923a", "formal-neighborhood:732df222b418aaa75f8c317334abcfe51d90c71d829ae02f09336bb2dc41893e", [
      "formal-neighborhood:732df222b418aaa75f8c317334abcfe51d90c71d829ae02f09336bb2dc41893e"
  ]),
  ("formal-neighborhood:7f62abbb56522ce5b274c75b111f5458063cfef47b8cec0589424e81de627474", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:7f9f220a76151d2c47815eb86c33b61c7e8f7a9c4139ebbb3694ed7376508895", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:7f9fc078875f45cb980d614365ecc6f90f8e5087b45635fb476d3bc42c2ac168", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:80223206eb9786e6c0e5e4ccf657659f7d7cceb40cd70394a5bf9a04d4c766d8", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:6254dd15bcf67a39380161653d756e5fd829c6ed9cdeb93e72da2837aa758fe0",
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:80371bb6db19f94174379db046251e30f45a203e5f9ce2d0dbd0f8a315538604", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:8080d9cd9a629982e856b1659012a29f6df37d80f978073d7e7df73b8cc2a23e", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:80834c160727ced1687e0b0397ddaa93fd63e17cef3142777fe9e71d5cb2a5ab", "formal-neighborhood:fa53402ad15f5b7eee02fade8383b612cd02ff439c4da4c60c54f07961ad9030", [
      "formal-neighborhood:bea09f4f8042392cf54e1618159eb6f67d9eb1679efe3be75b7d81df9d5b538c",
      "formal-neighborhood:fa53402ad15f5b7eee02fade8383b612cd02ff439c4da4c60c54f07961ad9030"
  ]),
  ("formal-neighborhood:80a1f0afa54eba8cc89bb225ff71a38e6b26b0679b77ea8521ea37cc62e77a0b", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:80b530a414982df69abb1e3abc80019fef675c2ba40c1e710b38d12e666fe7a9", "formal-neighborhood:edc1585ffa6c35c3f9972e6fbe38f53544e031faedf00f10e2b180e4f385e20d", [
      "formal-neighborhood:edc1585ffa6c35c3f9972e6fbe38f53544e031faedf00f10e2b180e4f385e20d"
  ]),
  ("formal-neighborhood:80ee9fd52b36fdcce24c375f6fb14d6b2d91b6dac30fc2effd67cd2590600655", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:80fe04c0ba8bfb5d880029e24e3b5bae9b1c2eb41a3f14012f066fb855ce66cb", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:8106a080c6628400af2992e27c5f206aa80fa733c56cef2199759b5883a67d7d", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:810ff349559161fe01f0fe64bee9eb58d40ce303fee36b90c11612c60d0e020d", "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378", [
      "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378"
  ]),
  ("formal-neighborhood:81106ffe185cb9372b9b6b1f981f126f633148a1873418aa164235308e2a19ba", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:8112ef1586d6831d0579439ea6f9ffc9c56b03b85344db7d1c99a3a645efd34a", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:81611ef45a91d1aaf37758952278ccec92a1ffd6eca46415d772f518fc52a1f2", "formal-neighborhood:9926c61b70f9581613897ba0c9178560f8aac2f192f81117f7dbb0677ae01270", [
      "formal-neighborhood:9926c61b70f9581613897ba0c9178560f8aac2f192f81117f7dbb0677ae01270"
  ]),
  ("formal-neighborhood:816b0433bd4d261e4d089c2c268ed7176d7d3f5e26619ec97c3564ce18c22cb1", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:8175911b73ca91e3f19a6634767c6cdbe938f5f458e50a561c2a11fa3ed01c6e", "formal-neighborhood:ee76e132d26929f6bb6b324b6a28a04ccf34d480d335df1312b8a6f053e28d27", [
      "formal-neighborhood:ee76e132d26929f6bb6b324b6a28a04ccf34d480d335df1312b8a6f053e28d27"
  ]),
  ("formal-neighborhood:817822d315362476d123f6860f79cf4586547f0d05bee58e03661b2c7cf5f5bd", "formal-neighborhood:06c19ab993811c3a112975fe7a04ca5db7c57b2ff4492815a86fdff58267c6f0", [
      "formal-neighborhood:06c19ab993811c3a112975fe7a04ca5db7c57b2ff4492815a86fdff58267c6f0"
  ]),
  ("formal-neighborhood:817a3458e3b484d5aaf39c05080153bb9d7c0dddb4d056f4a5047e520a7785f8", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:817ef3ae4d3703f832fd6f8bdf2c7f069736f54ef255e52528dd5820ab721f20", "formal-neighborhood:16bd97e406d1be21b54b659820a7355d479a96e6fb82812c652d103a9af88100", [
      "formal-neighborhood:16bd97e406d1be21b54b659820a7355d479a96e6fb82812c652d103a9af88100"
  ]),
  ("formal-neighborhood:818454c7c9170958efb67015b551227968d981d38bd038603a8d5642adc89d37", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:81b5d567e58339b0edb84ebacb98a0a6a16164fa2fcb296b1d7cd65899ef92e6", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:81be858e6168ef5e0189c977ee0dd5d107d918b4eee7a607bd54178fc848f7b0", "formal-neighborhood:232e7a59cdc3444bd036aade9d6ecddde49da84f934c0a9ba94495b6ef888727", [
      "formal-neighborhood:232e7a59cdc3444bd036aade9d6ecddde49da84f934c0a9ba94495b6ef888727"
  ]),
  ("formal-neighborhood:81cd137b3819ae2c01a1bea873e255cde8db9283ee09fe549ef99fbfa888c8a6", "formal-neighborhood:99ca63c61dd07d14f43c94768640688b9ad2f74d9c6ef794153c5d281619a4f5", [
      "formal-neighborhood:99ca63c61dd07d14f43c94768640688b9ad2f74d9c6ef794153c5d281619a4f5"
  ]),
  ("formal-neighborhood:81e56789003ca84724234f9a09e338bb71818cd182099e6ef578533853116bdb", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:82326428f20bfc278183883ad1ebc8728584525af64f86d368844691e885b09c", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:8247b95fa960155e780472001f91ce7dcb66c5220851b6dd4401edd0487dd486", "formal-neighborhood:f9d9bf71e76e7b26c53794e77dc359d8da052984a7261af9798afe0dcf6de8e5", [
      "formal-neighborhood:f9d9bf71e76e7b26c53794e77dc359d8da052984a7261af9798afe0dcf6de8e5"
  ]),
  ("formal-neighborhood:830ad32856468a61cb98eef7357ccd0e64981730862ad0d3531356f91b7b12f9", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:832b30c0935154f81c97f4d77b537a0466d8dfff93cfbb825ae482a1720acffd", "formal-neighborhood:41d573320ae6b9cceed7a0f9f491d4c7aaa27ab7cdc3a97cbc08c8ab2b7e06e8", [
      "formal-neighborhood:41d573320ae6b9cceed7a0f9f491d4c7aaa27ab7cdc3a97cbc08c8ab2b7e06e8"
  ]),
  ("formal-neighborhood:8335b5817c2f368137f34b3cfccf26075845ef83162b9b067e56bba5f60e3ab8", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:834e65814d4b3a52a0007cb21a730e11f47b1c9c67a3688e460b3a2584b4e3c5", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:8368915da309a843bea71d4c9c89e038d2ac833b77a3c637b02b6db9b764a4c8", "formal-neighborhood:1556182a1aefb4fbd6c807eaa1b23be738d7a2424def3b080955b193e507964b", [
      "formal-neighborhood:1556182a1aefb4fbd6c807eaa1b23be738d7a2424def3b080955b193e507964b"
  ]),
  ("formal-neighborhood:83d649121e7a867222e60c098ecdbc2f5d2a450b3a1627c32674f687086a9844", "formal-neighborhood:b379aef469502f299db8484a001143f6459cbe430bd9c6f2ccdf049ae0297138", [
      "formal-neighborhood:b379aef469502f299db8484a001143f6459cbe430bd9c6f2ccdf049ae0297138"
  ]),
  ("formal-neighborhood:83fa8959e843b2459af8370c62d04bd77775dc9b823eea8ba00b9e163ca1781c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:8425a6b227f66b542006230885f7a8f699c7de9d5ebf619dc9120cba57325067", "formal-neighborhood:bbe03a46272c93b5aefa2b7216991f9a6fd0550ad2ad23a5f0e921711fa564e2", [
      "formal-neighborhood:bbe03a46272c93b5aefa2b7216991f9a6fd0550ad2ad23a5f0e921711fa564e2"
  ]),
  ("formal-neighborhood:844098f934b87b4091080f436df7deb5a92122a5019941ac0acfcd50836ddf74", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:8479a2ad5bdbe5370212cb15f00efcc26a6f698152672237862b50af7088d58c", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:848f484719b0d6de3d7be5070745edc8cb62856be46f54e5a91eec33b03303ac", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:84914f66686fb42f92484d59a70b16f47b45bf96eaf6eb73be6823da524050e2", "formal-neighborhood:bbe03a46272c93b5aefa2b7216991f9a6fd0550ad2ad23a5f0e921711fa564e2", [
      "formal-neighborhood:bbe03a46272c93b5aefa2b7216991f9a6fd0550ad2ad23a5f0e921711fa564e2"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L135207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
