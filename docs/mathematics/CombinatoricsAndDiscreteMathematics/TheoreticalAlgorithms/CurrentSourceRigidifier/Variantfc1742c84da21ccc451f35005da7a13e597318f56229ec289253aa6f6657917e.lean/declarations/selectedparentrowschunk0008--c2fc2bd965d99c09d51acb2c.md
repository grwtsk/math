# selectedParentRowsChunk0008

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc66d66572611095a445c28b8a6d4d6f6c15ece01f96b385ec458ad4b0dea4c8",
  "kind": "def",
  "lexical_name": "selectedParentRowsChunk0008",
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
  "slug": "selectedparentrowschunk0008--c2fc2bd965d99c09d51acb2c",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118016,
    "line": 117818,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c2fc2bd965d99c09d51acb2cb6542d38e0d5322b49fc30a35f493ccfe452620b",
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

Occurrence: `declaration:fc66d66572611095a445c28b8a6d4d6f6c15ece01f96b385ec458ad4b0dea4c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117818–118016.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedParentRowsChunk0008 : List (String × String × List String) :=
[
  ("formal-neighborhood:4089344070d43e04e92996d60968edba755183133e14a212fca7a1217e21d2db", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:40ea7b7fbfc10815329987345b643f7dd36c234cffe62d2b6317f4f0b32f9633", "formal-neighborhood:b379aef469502f299db8484a001143f6459cbe430bd9c6f2ccdf049ae0297138", [
      "formal-neighborhood:b379aef469502f299db8484a001143f6459cbe430bd9c6f2ccdf049ae0297138"
  ]),
  ("formal-neighborhood:40f0abedd125a842656577e74d2ee3cb67ce8f630b61775bb41e6f86042e00b1", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:417461d71c7cfa045fb8c9c4ed88ff1665a3a8c54548b2c8a3e549ca03bb159a", "formal-neighborhood:ee76e132d26929f6bb6b324b6a28a04ccf34d480d335df1312b8a6f053e28d27", [
      "formal-neighborhood:ee76e132d26929f6bb6b324b6a28a04ccf34d480d335df1312b8a6f053e28d27"
  ]),
  ("formal-neighborhood:41d573320ae6b9cceed7a0f9f491d4c7aaa27ab7cdc3a97cbc08c8ab2b7e06e8", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:41e168b48dd649ee81f1ad96a7a31c6e908738b0e11e79ef16afe90bd86e2451", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:422f384220a38b93568b14953643dc4a5ecc7a1ae03dad6da25e7507804f9ab5", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:426b17014fe417ea604040a938602506e9cfacdfd8240bbb4755e14c34d37087", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:4273e6beefb7927108f85eedecc43d6904c908ac089929f116ce34c47b52fe9e", "formal-neighborhood:27adde9d85deb808e321547700540aa05496cbff51dd7c28bd15678e36190f8a", [
      "formal-neighborhood:ab3e012f518108452829699ae057cfeaf1dd7d2162ea41cc458ca8f2bfdea214",
      "formal-neighborhood:27adde9d85deb808e321547700540aa05496cbff51dd7c28bd15678e36190f8a"
  ]),
  ("formal-neighborhood:428f3fde6f85cbc6dc0d27d0bff057289fbbbe70ec3a97a08f25a7071de6599d", "formal-neighborhood:686a2a3936f857e069b2000f1d645fab292ab8e3cba8ffc9a6293ecbd734d977", [
      "formal-neighborhood:686a2a3936f857e069b2000f1d645fab292ab8e3cba8ffc9a6293ecbd734d977"
  ]),
  ("formal-neighborhood:42aa33b987351a23cd20746b706a6121f2f2574fb48314db68bb42a418e5903e", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:42acf861b2503b7cc291f292cbfb6bf50f12964c1b0da0c638fa519b21212123", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:42aedfe8b40e4da35ec2c0cca7bbf4e199b0d562ab652a546e57feb18858bfbd", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:42dad5d17b20a0b3c44f02c2dd7be0ed98c99c4e5e11e9ae88d4d1ecbc0c7e7e", "formal-neighborhood:18de0ee2a2b088c54dea1387b37bdb0bc7d883e4ccb6a20ce8de2d3b1b130cde", [
      "formal-neighborhood:18de0ee2a2b088c54dea1387b37bdb0bc7d883e4ccb6a20ce8de2d3b1b130cde"
  ]),
  ("formal-neighborhood:42e29579f86318fe56308c4b98bf3edafeeae91a0fe4c6d0c3df36b4752fe449", "formal-neighborhood:1cac27e5188cd2ffaa0b329631dac1f50fd365a0ab4890db3208673e78f587fb", [
      "formal-neighborhood:1cac27e5188cd2ffaa0b329631dac1f50fd365a0ab4890db3208673e78f587fb"
  ]),
  ("formal-neighborhood:4337814a7cb74aceb64d25a2b93b1f9cbe673d1bf4e75eb7b3bbc6fe7c6b2aff", "formal-neighborhood:80223206eb9786e6c0e5e4ccf657659f7d7cceb40cd70394a5bf9a04d4c766d8", [
      "formal-neighborhood:80223206eb9786e6c0e5e4ccf657659f7d7cceb40cd70394a5bf9a04d4c766d8"
  ]),
  ("formal-neighborhood:433882360942c26013b319388002e9bdaf1fab7e51687eafecf3330dea7661dd", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4347c6c5f4302edc3869cd90a9a4bd99b03dbe723fa327702022426266dae109", "formal-neighborhood:81377228058245a8b3e08c3825f3f68d54581f3918a0fcc8c63bc9e8caee1254", [
      "formal-neighborhood:81377228058245a8b3e08c3825f3f68d54581f3918a0fcc8c63bc9e8caee1254"
  ]),
  ("formal-neighborhood:4378a4318d598cba1e1edd071bb7c0dccceab38547e0b27e2d9c58903108894f", "formal-neighborhood:23903cfc932d4ee93b866f1d63c0896132a9a43b15c83e2f0b672a6467d45684", [
      "formal-neighborhood:23903cfc932d4ee93b866f1d63c0896132a9a43b15c83e2f0b672a6467d45684"
  ]),
  ("formal-neighborhood:43ace013475e43c5d05fd9bbed06055fcb8460b6a32dde35bad5e96b5a64026f", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:43c9aa0d07bcd8328c9043ae7ac4ef7f5add61e220dff64e025515833b28ed62", "formal-neighborhood:9926c61b70f9581613897ba0c9178560f8aac2f192f81117f7dbb0677ae01270", [
      "formal-neighborhood:9926c61b70f9581613897ba0c9178560f8aac2f192f81117f7dbb0677ae01270"
  ]),
  ("formal-neighborhood:43ec704a1cb7c8c5c11122b390edcf4d3ca74bd15b5aea478950d3c6f790a718", "formal-neighborhood:9dcb1c4ecbdde47cfa361be7ef8202b51b6f4507c44ffbacf58e8e6f893f82eb", [
      "formal-neighborhood:9dcb1c4ecbdde47cfa361be7ef8202b51b6f4507c44ffbacf58e8e6f893f82eb"
  ]),
  ("formal-neighborhood:440e4be343f4c890585f781d9782d544a295d14dd10a274498691ed669c098d4", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:44347c957cb51dc00fd1b647ddd5cbd12c6f4e2d83e49333bd44a8b4df33f889", "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6", [
      "formal-neighborhood:0fd2640dee63a2d23fe4c54629a3a77f1c76a970849c2ae05deccb32cce45bd6"
  ]),
  ("formal-neighborhood:444a599d51a0a293cdf3770daf2c845a464656e54210d9b832ae25def619efbd", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:444b453fe21a0d2da39fc0c04aa3e2b5e23f501d4e88e9066f797bce365d029c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4455f8fb5b677b397fff60e419cc473dce53e5cdaad88171fb6bb1f83bf3908e", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:447c22f38e6d8224927af9d47253d46cea23e6850e0a5c33423a8b8ed8ae13be", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:44f41c070636ddbcd0aa6cfc051eb0c2729377b6c58e0627f92cc7a10dcaea01", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4551f1e65983ab0a45ab3e641c9934db8ac7e06a981bace370f9513d96db5b95", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4567488b78f9184840fe22d2b62111f34a387714af57a5baccff7440756acbbc", "formal-neighborhood:3b3ef9591dd4f52b01a6b82029faf2b7ff4bc78212e75451770cf88a86b6450f", [
      "formal-neighborhood:3b3ef9591dd4f52b01a6b82029faf2b7ff4bc78212e75451770cf88a86b6450f"
  ]),
  ("formal-neighborhood:45999b21850e1a9a3e7b3436809d43ac04e3a2713865d8f5f913fcdd9695fa8a", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:45be44443e421891544557b68fd9e6a0c1abfc9ed8e7c36b65d2da4678537d3e", "formal-neighborhood:13286c818d376ce96c289e47e85c5edd94bcad22e44d0668b5ee880d1af46712", [
      "formal-neighborhood:13286c818d376ce96c289e47e85c5edd94bcad22e44d0668b5ee880d1af46712"
  ]),
  ("formal-neighborhood:460d5c5585a9d62d077e73c6b30a7437e594ff660e85a9bcf62582525c48658b", "formal-neighborhood:29350bc1fe248b416d861ba5713edcde8e1ec94a51c2c1e669c0f2256c74a446", [
      "formal-neighborhood:29350bc1fe248b416d861ba5713edcde8e1ec94a51c2c1e669c0f2256c74a446"
  ]),
  ("formal-neighborhood:460dd01dac2478716d3864070771bd8af78664a18d737faf64a2318225723b1f", "formal-neighborhood:377b598359d96a9c19e6e592b40795e9dd2c11436fd136716ffdfde2c1424a30", [
      "formal-neighborhood:377b598359d96a9c19e6e592b40795e9dd2c11436fd136716ffdfde2c1424a30"
  ]),
  ("formal-neighborhood:461592aae7eeb1ff1ecfddfd44393e3d9729aca9328a13042be3f505793eedb9", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:465109867bd87b52f88431cdb6e824189c63807fc0442993283d891bf43ca9fb", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:4688988ea78f6da1ae1ff80fe81881f8a724913c0698e380adf36de306f427cb", "formal-neighborhood:aa05df4ddb4a38180d5fed3e5ad7b971e513f3ceed2384c16c5ab7820b12aec1", [
      "formal-neighborhood:aa05df4ddb4a38180d5fed3e5ad7b971e513f3ceed2384c16c5ab7820b12aec1"
  ]),
  ("formal-neighborhood:46c712349301add5d78dcdcd9fb1823a61eb30025a96b9820c4f544498bffe8d", "formal-neighborhood:10b6337301fd880246f6dbebd2aa5f430c5c382b24054d19a8b3241a815f6d4a", [
      "formal-neighborhood:10b6337301fd880246f6dbebd2aa5f430c5c382b24054d19a8b3241a815f6d4a"
  ]),
  ("formal-neighborhood:46c8b903a0defd72a1d33476fde7edead1eb81c2746e52245588ec7a24d522e5", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:46dc874acd21e57565524871192b4a8ec2087d7291b686e52b57426d7f343ba8", "formal-neighborhood:232e7a59cdc3444bd036aade9d6ecddde49da84f934c0a9ba94495b6ef888727", [
      "formal-neighborhood:232e7a59cdc3444bd036aade9d6ecddde49da84f934c0a9ba94495b6ef888727"
  ]),
  ("formal-neighborhood:471297aa0d9335c267de6877bd5f9b140b2de34d88be1591357f30c28ab3d6a4", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:4720bc422e48c3b41e8786fa4c29b7145575157deaa66c72c8aaacc9eb58e02a", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:6f724a3bd03d2123c52992f49c3e4060f982e30367afd8a07cf8d2a940548ca1",
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:4745f295228aba3db3c8ae55fd5300aa60a7f0d265d9ebaf738590f5359d954a", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:478832b71addd4d2b228dfddfefb3f8f1adfc44c99f0c266e46c003b3823b19c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:47b6aa655c335c10812748912a5d29ab4d8ab9cb2e08b208ebf13c1a8119a913", "formal-neighborhood:e289d5a424266ffdabfaf8857b7d94880067c1d6c8732438d134eaf5f5a2dd83", [
      "formal-neighborhood:e289d5a424266ffdabfaf8857b7d94880067c1d6c8732438d134eaf5f5a2dd83"
  ]),
  ("formal-neighborhood:47cc8413ed41a136088a90d3b8908f2063419bf72bc912c2e9d48f5af52f4c32", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:47d8290773ebb104ce10eb5f4b31953c406281ec90f9d47071be4395f47f53f4", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:481d14c2a3777439eec8e8ef1cbe146cdfc2c9a67cb7f8f3ec1323b1c6ab1b8b", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:48244547f31b9de350d6bba945af91c7121fcfb12682f864fb525daefde21f57", "formal-neighborhood:2a151e0e8527ec5014f4e09c420b4fed4937ee14b63912267cbeccadeadd1c46", [
      "formal-neighborhood:2a151e0e8527ec5014f4e09c420b4fed4937ee14b63912267cbeccadeadd1c46"
  ]),
  ("formal-neighborhood:48449d941f49ec4a058db642fb417bc83736807d637b3727c6cbf29d738ff6ca", "formal-neighborhood:9fbc14b441584bc439422444142f7c9e253f8eb72d81a97e7ac0ec7e1aeb60c1", [
      "formal-neighborhood:9fbc14b441584bc439422444142f7c9e253f8eb72d81a97e7ac0ec7e1aeb60c1",
      "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a"
  ]),
  ("formal-neighborhood:48784e378203e22fc24d4c913c8ce2f1cadce836fa1d619b1dfeaf2f49dde81c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:487c06d8850578101ba77b22728adcddc9446b73816cd0d3f19a315320f086d2", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:487ce8bb2b6763463132837c4cc3267b814a1aa318f7bcab876355d3bd4b7301", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4899cfbffe3fe32ac1910a93829967c51d86be169b2ac33b6776f01ff04e2c98", "formal-neighborhood:be89f7a3d34265d94cf60e2ce20b2c62eb5e0c0dde6bd8895082158ae82b29a3", [
      "formal-neighborhood:be89f7a3d34265d94cf60e2ce20b2c62eb5e0c0dde6bd8895082158ae82b29a3"
  ]),
  ("formal-neighborhood:48a2c4faa4e5158272695bb05a6fbdd4196aec4aadf4d2ba1fbb9554387378b4", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:48ab8422e12180e754489177d11537bd2001a3a712197e70d965a08bcef7fa4e", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:48b8e654208679f2d0c6705044708ad3072026549e8b9776397f59e3584e2971", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:48badc0115b6c01ca0edce134d9e127f8e44e7d7adf4aea267cf6cd18c40f303", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:48bdb3074286b29c64373d3bf924aea5df03e1a32d48b1dff59f8c01149db719", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:48e641b4aca11e954a3c2ff833b172cc00077e53d7db26930d739703a10f5b1f", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:49084944ee554601c961f8dbebbda63c9df14d05f24a50da23dfee3f5c55154d", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:492192954f331af060f96739a78e9ad5da05506a68d45e97493eb8d3ec6c5ba2", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4921c929f0a8bd37d3fe136e3010e16154fb190fa61a3f22f609e38f70beefeb", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L117818).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
