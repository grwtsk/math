# selectedParentRowsChunk0025

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:471ea6269f456162e7fffa1c28ca1239945a603a2ae1af03fdb5157515f33385",
  "kind": "def",
  "lexical_name": "selectedParentRowsChunk0025",
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
  "slug": "selectedparentrowschunk0025--5aa0d2bc669d0f8917853fe1",
  "source": {
    "blob": "c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121461,
    "line": 121265,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5aa0d2bc669d0f8917853fe1fb7512d3b704848eadb5e1d4d98a5a98aeb601eb",
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

Occurrence: `declaration:471ea6269f456162e7fffa1c28ca1239945a603a2ae1af03fdb5157515f33385`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121265–121461.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedParentRowsChunk0025 : List (String × String × List String) :=
[
  ("formal-neighborhood:c4fcf444f134f43b66c8fcafa15d0d55318eab6408f819cd24d8d88815d494f3", "formal-neighborhood:dc5c35e938710e2d85c13651a27a08720c459b40824b0bf0f172e751402119a0", [
      "formal-neighborhood:dc5c35e938710e2d85c13651a27a08720c459b40824b0bf0f172e751402119a0"
  ]),
  ("formal-neighborhood:c4fddaa537ba33a3a5145c196fdacfe349b0ebae6e8106d9d6a2c8c005ca54f9", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:c50cee0eb92d4f39e3e2a8ca5bf77e70e985cbb9cd475f10885882104ec7ac0a", "formal-neighborhood:68443baa8b726b6ac9734eb9c2ebbfcdfc8a8b11a70686d9e23f0366c59ceda1", [
      "formal-neighborhood:68443baa8b726b6ac9734eb9c2ebbfcdfc8a8b11a70686d9e23f0366c59ceda1"
  ]),
  ("formal-neighborhood:c51edb1a22f98e7aec43ad49010c211772f55a15d484308c39ca1d2685fc9e5c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:c539e0cbe42e1dfe41c9bcddbe24dd0115bf3e3c697c574dd326efdc65a46b71", "formal-neighborhood:9926c61b70f9581613897ba0c9178560f8aac2f192f81117f7dbb0677ae01270", [
      "formal-neighborhood:9926c61b70f9581613897ba0c9178560f8aac2f192f81117f7dbb0677ae01270"
  ]),
  ("formal-neighborhood:c55fda3126f17b6bac3a338f656e96ad9be7a71bb396a456211195d771addec9", "formal-neighborhood:bfbcfde1ab7603e88f1f64fced086be53c638527f302246314667c75d76142da", [
      "formal-neighborhood:bfbcfde1ab7603e88f1f64fced086be53c638527f302246314667c75d76142da"
  ]),
  ("formal-neighborhood:c56879317db7f83cedcb63b04cb92d8f8d3d085cd2d66c0e6e88f040b85ab93c", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:44347c957cb51dc00fd1b647ddd5cbd12c6f4e2d83e49333bd44a8b4df33f889",
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:c56996ac10b5dec1457b90880d2cf6a83bbaf0aa8bf7c922dc529d70ebeaf2d2", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:c57bd67f2b21b83cb7c04a3c224047868f07fecfff59b5da25e68256dd60f95e", "formal-neighborhood:41e168b48dd649ee81f1ad96a7a31c6e908738b0e11e79ef16afe90bd86e2451", [
      "formal-neighborhood:41e168b48dd649ee81f1ad96a7a31c6e908738b0e11e79ef16afe90bd86e2451"
  ]),
  ("formal-neighborhood:c57c11569d58b8e3aaa4fdb21761bd3f3e676eb6934ea143f790bfa1ba8eede7", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:c5b8a01695fb8ff177bbe441221a5f4984415026479622ac6d3e5ee6223d4974", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:c5ea9d0baeaa2b26217da6b212634d931722cf898a7661bc12be268e6afcbfed", "formal-neighborhood:9dcb1c4ecbdde47cfa361be7ef8202b51b6f4507c44ffbacf58e8e6f893f82eb", [
      "formal-neighborhood:9dcb1c4ecbdde47cfa361be7ef8202b51b6f4507c44ffbacf58e8e6f893f82eb"
  ]),
  ("formal-neighborhood:c62dc54a9f215c67add50c4f6cb22f4dfd700baffd6d5aa40472e0f3c53abe60", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:c65aa2c7ba11c46edcc4b36de764d3491e3a6b140443d9b0082fa10afe86df52", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:c67c04e0b2bcd91012eb2be5f47901c92680eabf150cb241fcbaab6ed309a17a", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:c692864fe15970db0c071a1a907606133a5884441860b1309edba8202bede677", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:c6a19c13f113546ffce5a75b455192c04dd9f6f7ac568d3c4bb5edb1464fe12f", "formal-neighborhood:5c146f043f5a2da872af0f005749327b93e0c96b43557e914aa04044db21a012", [
      "formal-neighborhood:5c146f043f5a2da872af0f005749327b93e0c96b43557e914aa04044db21a012"
  ]),
  ("formal-neighborhood:c6e0fda19530fe62b50ffb18e4a87cbf4b8f2d78579429ff7e902f3e1e7325ad", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:c6f07d403e647d572ef3f1c376834b875af26c36d3220c70ae7c91020659e00a", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:c717cb446ccfba6845bc384c2e63e2c52b08847fecc703cde2bd0df73e87a2f9", "formal-neighborhood:aa05df4ddb4a38180d5fed3e5ad7b971e513f3ceed2384c16c5ab7820b12aec1", [
      "formal-neighborhood:aa05df4ddb4a38180d5fed3e5ad7b971e513f3ceed2384c16c5ab7820b12aec1"
  ]),
  ("formal-neighborhood:c721c7c2523c21e0471ad7d6f52ee14e2fac3a01e5f407b40118a57e06619080", "formal-neighborhood:dbb3ac5bba53f1f37daf540a8b57f7da7749168bd843e8dcdf8a25c355a1d8e2", [
      "formal-neighborhood:dbb3ac5bba53f1f37daf540a8b57f7da7749168bd843e8dcdf8a25c355a1d8e2"
  ]),
  ("formal-neighborhood:c7447b111ede273dc79690a5b4e9aa54eeceb46148eec8c0508f68f782de1635", "formal-neighborhood:648c87db79955f7c76c5a236ebb56be832448a0a0a40a828ba15090e1f1b9a35", [
      "formal-neighborhood:648c87db79955f7c76c5a236ebb56be832448a0a0a40a828ba15090e1f1b9a35"
  ]),
  ("formal-neighborhood:c768255344b0c4df4f25d4d286c732788740b858564b97dfdb9b2c9fd4213f68", "formal-neighborhood:87da7d8d533baa94c298f871020ea7d1ca4a3751108e317cc1b02244e853200f", [
      "formal-neighborhood:87da7d8d533baa94c298f871020ea7d1ca4a3751108e317cc1b02244e853200f"
  ]),
  ("formal-neighborhood:c76f2ea6c00c8a71326cdd4e46d83bbde6fab3d77efc9a4d2e30f336a9929727", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:c77966875044ec9e4dfd85c42355144d8d52bc2efa7134337b853378e74b87c0", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:c799d8d86dbb5ea2f69354e51dd4d8345c82dd5206ed2aaaa1f9c8e996f52b63", "formal-neighborhood:a87a66d8aa4c658903ebd0376bf84494b7ed23a23290d9aab236a30cc1432637", [
      "formal-neighborhood:a87a66d8aa4c658903ebd0376bf84494b7ed23a23290d9aab236a30cc1432637"
  ]),
  ("formal-neighborhood:c7a224adb4214be536ba934c50a9018170b96579b1423c619daa2ef64f84cb46", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:c7c5517317c854bb07ed82b3d8189c4a6f531e63dafce6a4a6b4bad39deb6ff0", "formal-neighborhood:e070761ee1e42f668ba6a0eee955ad7aa5ed203a210899a2aea3e71ef1d3a2f6", [
      "formal-neighborhood:e070761ee1e42f668ba6a0eee955ad7aa5ed203a210899a2aea3e71ef1d3a2f6"
  ]),
  ("formal-neighborhood:c7d210b46154c474fbf00011eef6f37a86f1eb17a6c22e7f49280f4614f052c1", "formal-neighborhood:23903cfc932d4ee93b866f1d63c0896132a9a43b15c83e2f0b672a6467d45684", [
      "formal-neighborhood:23903cfc932d4ee93b866f1d63c0896132a9a43b15c83e2f0b672a6467d45684"
  ]),
  ("formal-neighborhood:c832fc2a6cee729b64fc3f69e67a6efc3f23ad1277e05edecca337c787d037c2", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:c837e7a5fd12268164dfd0bf86f1bf528bcb67bf90c43956b90d57e23bcdcf80", "formal-neighborhood:5deba10c7de76533a48be8715bc92ca0c307b8f1c75a44dc0e3a77cb3dddd193", [
      "formal-neighborhood:5deba10c7de76533a48be8715bc92ca0c307b8f1c75a44dc0e3a77cb3dddd193"
  ]),
  ("formal-neighborhood:c8865e3c547f34b09421327549ce3038163fe77a398304ad3f47e297ca152045", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:c8a6c0954b95287ba8261ab92de8750c8f45ff15675a94768ea0f4d9ad864283", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:c8a7a61332032d3ff11929e8858bd0a134fb334e09cf5a4225213f1148463856", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:c8ac32408aa56d2463c0ce2b49571ad363208fb451b967b181e96a9950474348", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:c8c54fc9f98fdef05d295ff2feebe76afdf4f5dce8835b5d03b2862d77fea96f", "formal-neighborhood:f503c1dcdb2e060f69459c6d2ca85e041f6de2fe0f5cdc2012ef9371a23f047c", [
      "formal-neighborhood:f503c1dcdb2e060f69459c6d2ca85e041f6de2fe0f5cdc2012ef9371a23f047c"
  ]),
  ("formal-neighborhood:c8ca928737672c0c832ba8c8a8971ea8ab57172ad0c8332315b75571c6808872", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:c9405baaabf85cbc328b2c0ad7924d1c92e7dd25f330cff7637c7f9db79edce9", "formal-neighborhood:4720bc422e48c3b41e8786fa4c29b7145575157deaa66c72c8aaacc9eb58e02a", [
      "formal-neighborhood:4720bc422e48c3b41e8786fa4c29b7145575157deaa66c72c8aaacc9eb58e02a"
  ]),
  ("formal-neighborhood:c98b36465d8a1be4ce2685fe1374c3b97e77339ddfd07c98ed4e5f20e0261f41", "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420", [
      "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420"
  ]),
  ("formal-neighborhood:c9c714dcd4d05cb2e2f9b9a9728e088d26c81ebda20d3f6953716428a4012349", "formal-neighborhood:dc5c35e938710e2d85c13651a27a08720c459b40824b0bf0f172e751402119a0", [
      "formal-neighborhood:dc5c35e938710e2d85c13651a27a08720c459b40824b0bf0f172e751402119a0"
  ]),
  ("formal-neighborhood:ca0f401391955b9863ff2c5abd5b6e7b733a3402123044c5cb0a7eecbc9f4f58", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:ca237d655ebb7e2ddd80e496987c7b8d01e7269f3ccdc03a1efa16b9537e18f6", "formal-neighborhood:41d573320ae6b9cceed7a0f9f491d4c7aaa27ab7cdc3a97cbc08c8ab2b7e06e8", [
      "formal-neighborhood:41d573320ae6b9cceed7a0f9f491d4c7aaa27ab7cdc3a97cbc08c8ab2b7e06e8"
  ]),
  ("formal-neighborhood:ca5af27313e4caf537f7766b434f45be9ed401431eff98d77afff1ad36fc868d", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:ca7d7aacfbf7bb3468323bc20b462160fa24aee2cf510d6f86755b68a3e498ce", "formal-neighborhood:ee76e132d26929f6bb6b324b6a28a04ccf34d480d335df1312b8a6f053e28d27", [
      "formal-neighborhood:ee76e132d26929f6bb6b324b6a28a04ccf34d480d335df1312b8a6f053e28d27"
  ]),
  ("formal-neighborhood:ca85785ad178ee9532837d58c9b30735e918b968b519f814d7b7525221e72663", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:ca8da469cee04300af19f81b927a543073c9abeac9b492a04fd05935c68f97b7", "formal-neighborhood:3aa0eb82b7cbdcf62e3a1967eed0a9f8520be98f1f7594698be3571c4d9a1dbf", [
      "formal-neighborhood:3aa0eb82b7cbdcf62e3a1967eed0a9f8520be98f1f7594698be3571c4d9a1dbf"
  ]),
  ("formal-neighborhood:cab28f89f2a612a3e8f8df0099b3182a75f4f33a5d3f357020fad93a8f72e301", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:caf06e9b4c856e5e9faa9b3e8e8fc7173951e604dd3027dbe1036cf323409cbf", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:cb18d32bf4b5a632f811b1ef42aa555c2d27a7668d7f0b49607c6ac2408e5606", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:cb3c6b2990dbc3293d5021f959550575a1ee809e46e36579e37407ff900f646a", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:cb5b2b53ba3f1124c10755e3a433070a6eaf3a52dbf7ca3985b1f2545123c31c", "formal-neighborhood:dc3cf71cf4730ad1e27b4693fc98589d6e242aa0352f109f1031053629728e37", [
      "formal-neighborhood:dc3cf71cf4730ad1e27b4693fc98589d6e242aa0352f109f1031053629728e37"
  ]),
  ("formal-neighborhood:cb744f31bf42f89245f03084e7bd9f53649295a493d24a83adb700a6e54e5690", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:cb81116c2c387785b9b2014d2cfb14afcb7070d9e1b827a0fa7f9279c5a3d344", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:cb9d3567bc07d91d943f672c55655851c09f6e8df0501107a3c4611cd9496fdb", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:cbc90c7a7d7eae75a808c448fb4379bde60c63d3549cfae7e48aa2e979d4a9ee", "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6", [
      "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6"
  ]),
  ("formal-neighborhood:cbcaf65681782529b9799ab2ff354855e9f627e78d139f821c71354165e2580c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:cbda81737638fe19e3a64673febce50dccfefa74987e5fa027e4ab0027f55f4e", "formal-neighborhood:b505c853fae9be013d5dbd3e0e8be41dc36e76108050e48af60f7880d854dd95", [
      "formal-neighborhood:b505c853fae9be013d5dbd3e0e8be41dc36e76108050e48af60f7880d854dd95"
  ]),
  ("formal-neighborhood:cbed699cad7e57f074254fb8c4e53663e31df945c51883d12bad7f9d6be17c68", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:cbf6fa50a9ee2563c7049885cc0240da13d71d92280462ead34139c94c2a79c3", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:cbfb00a3a8fdfd57e4a82294c2fefb1f88b8d92913578062e53022dd10355834", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:cc2b79bf37fd73ff04100ab9014c9ffe2362edf038f06682352b5a483bd4285a", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:cc6bccbe0481c2a6b79cccfa7208e127e465eabbba8a6124634604f52a32554d", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:cc832539cc1671ebf558acadc56a2b11693b2525efc79f66615e2f364d866255", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:ccd4219f77fb40b5caa0fde5293ed579b5f230926f75087432876e81c9b91e71", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean#L121265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
