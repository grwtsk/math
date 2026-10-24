# selectedParentRowsChunk0013

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb21be126b7d9075677b2db706b241b3f7db8f83ca4b36e89e7270c854e36937",
  "kind": "def",
  "lexical_name": "selectedParentRowsChunk0013",
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
  "slug": "selectedparentrowschunk0013--f53c0115fe292f8336f4bf88",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134809,
    "line": 134611,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f53c0115fe292f8336f4bf88ef98f241e8dae21a38b606f8a986a2299f5f8372",
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

Occurrence: `declaration:fb21be126b7d9075677b2db706b241b3f7db8f83ca4b36e89e7270c854e36937`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134611–134809.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedParentRowsChunk0013 : List (String × String × List String) :=
[
  ("formal-neighborhood:662d8c075b9a4c3a33a559eb8757e5ee27d6b2cf308fcac814bd77900fa03593", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:6680e42495ed2a34e92acc3b6b6d9aa7b00b3fbdf679e3b59a9af57ec895c14b", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:66fce6ffd69e5db0f30677e50cc2c21315d76c3af016a3d247614b6472cf88a0", "formal-neighborhood:10df30505a11183f493570089b0808147dbcb86933ce38d0629c47a4dba134f7", [
      "formal-neighborhood:10df30505a11183f493570089b0808147dbcb86933ce38d0629c47a4dba134f7"
  ]),
  ("formal-neighborhood:671a764f517edeb00689ae6097f050e2c552a4b787825fa55271e7d11fded031", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:671fc159368137ccabee78ed35219fa59b2d308b7a656ecdd7faa40b06edf282", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:672484ca4e43206b42642fa84ae253c9a3b89a375e589c6a06640cb69c13ec02", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:67b0f4194b02645cfe8310b38ac4da714241f4cd83e056622614ab822001fc3e", "formal-neighborhood:faa763dca853bc9b756bce2fe236668e733cd9a039803ae53672ba149b7d21c4", [
      "formal-neighborhood:faa763dca853bc9b756bce2fe236668e733cd9a039803ae53672ba149b7d21c4"
  ]),
  ("formal-neighborhood:67da0957eb13a7686aefedfa54d4d5048bccebd8ace09d279ee7579c95b88ad3", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:67ede135abce206b79289bf804ba017de15ba639067715fadc464a6f6192f162", "formal-neighborhood:434c4ab2972c562cb3af44b023a0101b7380f59d258f8239dcd623b8bffddd70", [
      "formal-neighborhood:434c4ab2972c562cb3af44b023a0101b7380f59d258f8239dcd623b8bffddd70",
      "formal-neighborhood:232e7a59cdc3444bd036aade9d6ecddde49da84f934c0a9ba94495b6ef888727"
  ]),
  ("formal-neighborhood:680e5b4c4f49cb641b34ea679ce26169377cba38876b13b9a11f021f75627d22", "formal-neighborhood:6f597c085b221e68b44e86e90a1afe5490768799f24e76513e6722adc5ba7ed0", [
      "formal-neighborhood:6f597c085b221e68b44e86e90a1afe5490768799f24e76513e6722adc5ba7ed0"
  ]),
  ("formal-neighborhood:68443baa8b726b6ac9734eb9c2ebbfcdfc8a8b11a70686d9e23f0366c59ceda1", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:6844764efa15371962a0bca73f07e26e6e4ba92ba4027a9012a652554db3b744", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:686890ecf0894ae8a8e6971d376b3c5805466549b663b98107dda9be51bde0aa", "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a", [
      "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a"
  ]),
  ("formal-neighborhood:686a2a3936f857e069b2000f1d645fab292ab8e3cba8ffc9a6293ecbd734d977", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:689c210698ed3c221582082258a747f0f3731965f127ed93da525332c8673427", "formal-neighborhood:31fc8ff5368e18e1518380110c88ff620c841b1d89ecd9a7316cf3f0d6c73539", [
      "formal-neighborhood:31fc8ff5368e18e1518380110c88ff620c841b1d89ecd9a7316cf3f0d6c73539"
  ]),
  ("formal-neighborhood:68e43d61928bb8a588fca9ed5a9fd4d3b844e088d4743a2a5a9931e87a1c36bc", "formal-neighborhood:232e7a59cdc3444bd036aade9d6ecddde49da84f934c0a9ba94495b6ef888727", [
      "formal-neighborhood:232e7a59cdc3444bd036aade9d6ecddde49da84f934c0a9ba94495b6ef888727"
  ]),
  ("formal-neighborhood:68e783eb9cc96475bedf90b9f33c712e042bec7034b0e7aba3998f3c462733bc", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:69367dadccad952ab3517c6ee311c7c708984204cccfdc337a3e0d6635e1d1a1", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:693703135543b6870887c181b26b94250c4a6eb366d158974e40e3607dae5043", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:69414c12d153404d6b87a5fe58a9bd99a8d03a2d2edc314b77ec7d847e75ce62", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:695c54f1c2778ced7f02f1209a5958b387806537cc914c973e5ee479d4dfca85", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:6977776376948ee45ced7cceaa66135596c30a6d16acffe4fb9accf1d9c24ac5", "formal-neighborhood:24cfc33c923666ed51552eefeea631c9c0f47438ff326b5c086da920abe7f1d1", [
      "formal-neighborhood:24cfc33c923666ed51552eefeea631c9c0f47438ff326b5c086da920abe7f1d1"
  ]),
  ("formal-neighborhood:69a0d8b777a3db6b9c0773d26d8655924d36ca3f6882ae8ad12aa02a357e47bb", "formal-neighborhood:232e7a59cdc3444bd036aade9d6ecddde49da84f934c0a9ba94495b6ef888727", [
      "formal-neighborhood:232e7a59cdc3444bd036aade9d6ecddde49da84f934c0a9ba94495b6ef888727"
  ]),
  ("formal-neighborhood:69e27219495ef28a7a3f0ddf2282d0c569a06c33ab4db02f215900f1e5330182", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:69f8cb5a7896f61a5c1abec905e9dd3a7de7ba4471faaa6790e443541ccc4835", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:6a0778b43277259a5b71efe4f2bfd88b9ff18ac32d215a0d9fdf290b31f45aa3", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:6a2f2062fc711d1396d5d4f1de268983b04e0b3d2eed71a9077f11a04704fea6", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:6a59f637eec4c7bad57245e217e3ee77dba001bc53071604fec73e6c0d010ed0", "formal-neighborhood:ce0e3eda72d86f39e4e7e073b8d61830e2823fb8d066c3516303e3e6bf4b287e", [
      "formal-neighborhood:ce0e3eda72d86f39e4e7e073b8d61830e2823fb8d066c3516303e3e6bf4b287e"
  ]),
  ("formal-neighborhood:6a645ac600a57ab58830f93d75e92ee2b2a3b1ce8c4cdf0564c624b0309ef00c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:6a6fbd335e59eb025bd3de9f3071e28e0f62a71ae32094eb8c826d3a3a2ecb01", "formal-neighborhood:7806e65b097986b5d12556f55ec7eda2dd5407530af279f9bc298b7b1a38556f", [
      "formal-neighborhood:7806e65b097986b5d12556f55ec7eda2dd5407530af279f9bc298b7b1a38556f"
  ]),
  ("formal-neighborhood:6a767060dad09f9717e2466ba5ce80f2420c0a177fca116657a899dee71fd638", "formal-neighborhood:13a131c2cd2c46a2b05f82e4127814101498e3a9dc28f95fb0266e030a6708c1", [
      "formal-neighborhood:13a131c2cd2c46a2b05f82e4127814101498e3a9dc28f95fb0266e030a6708c1"
  ]),
  ("formal-neighborhood:6a772e61b157dcdcdf68d3fc9ba1cf702b2018355b3b8b3c6fae957be83dc244", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:6a9f6e4d31606730eb2f01d85a2d25b328151ef9845de6119444c73f8865d47b", "formal-neighborhood:dc5c35e938710e2d85c13651a27a08720c459b40824b0bf0f172e751402119a0", [
      "formal-neighborhood:dc5c35e938710e2d85c13651a27a08720c459b40824b0bf0f172e751402119a0"
  ]),
  ("formal-neighborhood:6aba8d7386e38102224b6a1efb664d4807e5a249583626a70ffe490b4b6a0deb", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:6ada5935d2306e77c1e7c21db950f31e384aa3921f7313828450e8517898a7dc", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:6b2b1b87ab0e45d120eea7b94e688536d6a51958af3e7f554651cb2e86d796fa", "formal-neighborhood:19077cda15fb227f903e41af19ed9034270b1c6faedaa25d9dd5dcc2de69fb0f", [
      "formal-neighborhood:19077cda15fb227f903e41af19ed9034270b1c6faedaa25d9dd5dcc2de69fb0f"
  ]),
  ("formal-neighborhood:6b3f54387fc92b3dfa54e15580c0c35b0c612f13f8e4b6c91c9abf932934f727", "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6", [
      "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6"
  ]),
  ("formal-neighborhood:6b46b42f8f05334913f2a59d670b721a7f0cf21b9518e418406a74c2708461e3", "formal-neighborhood:9dcb1c4ecbdde47cfa361be7ef8202b51b6f4507c44ffbacf58e8e6f893f82eb", [
      "formal-neighborhood:9dcb1c4ecbdde47cfa361be7ef8202b51b6f4507c44ffbacf58e8e6f893f82eb"
  ]),
  ("formal-neighborhood:6b48825393deef94a731b8d51862d1052b1f1c19aea3b871190599deec2ab585", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:6b4d6f8a1d1507a6e78d3103f15487b1fddb85dc95ad3326fe74290b96664c0c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:6b5aafce8fedbc6120ef967d916651d1ed19007c6624e0d6cfdc09690b539f57", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:6b81f9ed7b09b4599c59a48a959ef12db93346e4f9143c0df861cbf0842878d9", "formal-neighborhood:99ca63c61dd07d14f43c94768640688b9ad2f74d9c6ef794153c5d281619a4f5", [
      "formal-neighborhood:99ca63c61dd07d14f43c94768640688b9ad2f74d9c6ef794153c5d281619a4f5"
  ]),
  ("formal-neighborhood:6baba18f328a32d6bba5020c459201bb64c48b72f8bbda55ab21080fc543b641", "formal-neighborhood:3b3ef9591dd4f52b01a6b82029faf2b7ff4bc78212e75451770cf88a86b6450f", [
      "formal-neighborhood:3b3ef9591dd4f52b01a6b82029faf2b7ff4bc78212e75451770cf88a86b6450f"
  ]),
  ("formal-neighborhood:6bbaa24a2ceaf3364b15b19431ccd22ec7cc2f7708a894da0d25802f9bbe2a08", "formal-neighborhood:125c36571e6c8e08671cc3a07899c40b1f2820c0c0768f4cc6bd9dd7a692717e", [
      "formal-neighborhood:125c36571e6c8e08671cc3a07899c40b1f2820c0c0768f4cc6bd9dd7a692717e"
  ]),
  ("formal-neighborhood:6bc09375943901a7d19c956ec9043036778b8ff8cb556898cccee5feaa52ea71", "formal-neighborhood:dbb3ac5bba53f1f37daf540a8b57f7da7749168bd843e8dcdf8a25c355a1d8e2", [
      "formal-neighborhood:dbb3ac5bba53f1f37daf540a8b57f7da7749168bd843e8dcdf8a25c355a1d8e2"
  ]),
  ("formal-neighborhood:6bdee2989c9f3c0becb999545a7f5e065bfa8d15d923e8f2a833be40393e9505", "formal-neighborhood:19077cda15fb227f903e41af19ed9034270b1c6faedaa25d9dd5dcc2de69fb0f", [
      "formal-neighborhood:19077cda15fb227f903e41af19ed9034270b1c6faedaa25d9dd5dcc2de69fb0f"
  ]),
  ("formal-neighborhood:6bf2424ce59ef78c7402e4a0c220798149410e5fbbd7badd4d2e86a208c4d16c", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:6c02523ab2cdf623bee183aeb4f161e309c922b63cac0e3289ad112950e6976d", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:6c17592f5a9af1b79872b3b4b99acc53d5e7fb3ca648f6a26513227646632b2d", "formal-neighborhood:1556182a1aefb4fbd6c807eaa1b23be738d7a2424def3b080955b193e507964b", [
      "formal-neighborhood:1556182a1aefb4fbd6c807eaa1b23be738d7a2424def3b080955b193e507964b"
  ]),
  ("formal-neighborhood:6c19afc1d71dd56e94089d652e420fef9b349f5836d82093800f84a3e6a6848c", "formal-neighborhood:ee76e132d26929f6bb6b324b6a28a04ccf34d480d335df1312b8a6f053e28d27", [
      "formal-neighborhood:ee76e132d26929f6bb6b324b6a28a04ccf34d480d335df1312b8a6f053e28d27"
  ]),
  ("formal-neighborhood:6c44574df5f108ad16cc845d209629d08019ab4d8a5cc24c75ada6d4d09188a0", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:6c52d61eb59e42a2294fe4379bbd39c3e9c1e59b6dab02acfe66b08861d988e1", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:6c7bd6e85853fa2f4ad5d6ad3f3f391ff63528c83c6b566aff11cbed10a1cac1", "formal-neighborhood:818454c7c9170958efb67015b551227968d981d38bd038603a8d5642adc89d37", [
      "formal-neighborhood:818454c7c9170958efb67015b551227968d981d38bd038603a8d5642adc89d37"
  ]),
  ("formal-neighborhood:6c9539fb072039dc4963a5a5b75e971cb0c359d5a5c82c3f4126c570e88d7e12", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:6c978835c396eb444f4edc3aee53a4a306223a44f08f8d1135170808a8ba8275", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:6ca0ee2fdeaf63f42d27f9463b302d82b22036e111d1f87e9a2e76e2b14ca275", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:6ca385528799e6af0a096338e93ee2ade36b7909ff6e9fdb6933fd44b4919dc1", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:6cb2f60bf398066405f97fcd81dca9797ee707e7928ac835595c80b4fb5eb974", "formal-neighborhood:23903cfc932d4ee93b866f1d63c0896132a9a43b15c83e2f0b672a6467d45684", [
      "formal-neighborhood:23903cfc932d4ee93b866f1d63c0896132a9a43b15c83e2f0b672a6467d45684"
  ]),
  ("formal-neighborhood:6cda5aab5a336b82481ba4210de8551709e5dd07f824300a182e0b68ff428825", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:988a02f2da98e17470d634246a1aef91c8c9b05fd6be2a2faa89cd8e111e3f1d",
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:6d4bcfe1743ba56dd6fc31cf0843d1a4ab580f469350526c83b533d2017aa93f", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:6d54a7a9ea7ece18c1f3e072dd74a337bd5018654547a5c6b494ada19d8b93da", "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420", [
      "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420"
  ]),
  ("formal-neighborhood:6dab67dd7fcfdcef3411db88148c0312b0d6c0536443896f685d5d6ea8666bfe", "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6", [
      "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6"
  ]),
  ("formal-neighborhood:6dae2ddef1f306061ac3094fec014408417a78f1cd07628037b11062ccb7c085", "formal-neighborhood:96f0e0b9df08a7b7e0643a7bc10f3da68ba1cffc0cd2880245f2d8635f228500", [
      "formal-neighborhood:cd819d8f52f70cb8b091a65714b4c73d071f48ca3549d194ee0cc4cff33ed7cd",
      "formal-neighborhood:96f0e0b9df08a7b7e0643a7bc10f3da68ba1cffc0cd2880245f2d8635f228500"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L134611).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
