# selectedParentRowsChunk0011

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0bcf62568d799e59aaeb4d553504886c82451229580a405342b7cb03542a1ac9",
  "kind": "def",
  "lexical_name": "selectedParentRowsChunk0011",
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
  "slug": "selectedparentrowschunk0011--35a07fd366550d8292efb7f4",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118659,
    "line": 118461,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:35a07fd366550d8292efb7f40ae06e201e4a183c6938bbf87f87c68eba9841ac",
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

Occurrence: `declaration:0bcf62568d799e59aaeb4d553504886c82451229580a405342b7cb03542a1ac9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118461–118659.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedParentRowsChunk0011 : List (String × String × List String) :=
[
  ("formal-neighborhood:59558d85a67aae6ef15e376413d81867276acacfa827df2925b1da30a264c5f5", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:595715b28eb69de228d247e54286491d67628d53d1f47e3812f305430d7496e0", "formal-neighborhood:619e5859944374f1abb94d76d6df852063e8d0d142f36dc7cb4f358e29a6c93b", [
      "formal-neighborhood:619e5859944374f1abb94d76d6df852063e8d0d142f36dc7cb4f358e29a6c93b"
  ]),
  ("formal-neighborhood:5983ef5e6421d9d7558ab37ea5a705e27c8d9fdd8f519fa407dfe4b3b7805280", "formal-neighborhood:10b6337301fd880246f6dbebd2aa5f430c5c382b24054d19a8b3241a815f6d4a", [
      "formal-neighborhood:10b6337301fd880246f6dbebd2aa5f430c5c382b24054d19a8b3241a815f6d4a"
  ]),
  ("formal-neighborhood:59a119827ad90fb5d924df154e1cc686d43e13af9ac706bd83afb1573c591cf2", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:59eaba271215778bf8387c412e11f374f4064cb1c5fc48238032d1e3b1f5d9f6", "formal-neighborhood:10df30505a11183f493570089b0808147dbcb86933ce38d0629c47a4dba134f7", [
      "formal-neighborhood:10df30505a11183f493570089b0808147dbcb86933ce38d0629c47a4dba134f7"
  ]),
  ("formal-neighborhood:5a09052c149f026d31ec93b4da5348bd2aa7cd30415f654f9fa8119565af69a6", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:5a33ce93db92c46bcd718ea5880a477ee225284f4e287490761a8bed1fa5b923", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:5a5361f8ca6524dfc9a196c1ae900b0f0af4d0c452f3361b21e291a1420d59e8", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:5a5962795669a9e4ae1d12cea8301319e4285279eb3b0a5ada0d138151116ced", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:5a8ddd495caea17b092a06a022c2a18fd645980e5733f501dafe6c2b93a3bcd4", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:5ab91f47e125218d0a020d55ea0ea6f9eb4adf2e75e5c5054fad55a1757b2775", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:5adc76236da3d931eca8bdc698c0f47b622de9d6854b692969214a8b41711da6", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:5aee5309ff71ff86e61709d1310de7db7e3de2a34fa12ed19ed46e55c329d55e", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:5af1d96630b50edc7511a6a152d81e8bbfeadc1fb4637c5b52a50e6110dcfb15", "formal-neighborhood:1cac27e5188cd2ffaa0b329631dac1f50fd365a0ab4890db3208673e78f587fb", [
      "formal-neighborhood:1cac27e5188cd2ffaa0b329631dac1f50fd365a0ab4890db3208673e78f587fb"
  ]),
  ("formal-neighborhood:5afd03fc16a19eef3ac7be68783b85fc0c2b44ff4d735670fbd0b5fc4171f3c0", "formal-neighborhood:59a119827ad90fb5d924df154e1cc686d43e13af9ac706bd83afb1573c591cf2", [
      "formal-neighborhood:59a119827ad90fb5d924df154e1cc686d43e13af9ac706bd83afb1573c591cf2"
  ]),
  ("formal-neighborhood:5b3c215e9b6f1fcb124d2413b33de6312b9953144195622264c6d631c08477ad", "formal-neighborhood:95d5e2da90944f8d6a8924fa343fe2ee3ccac6f500d69f0d2bb4df5e9c308606", [
      "formal-neighborhood:95d5e2da90944f8d6a8924fa343fe2ee3ccac6f500d69f0d2bb4df5e9c308606",
      "formal-neighborhood:b66f1b10986eafa89351f87b9e93e9776eafaa641fe86a0b0e412db111d7f515"
  ]),
  ("formal-neighborhood:5b96d81e3dd7fe946960edebcae8ea6103a035f8ac01f5f65b77aee90ab0516c", "formal-neighborhood:4720bc422e48c3b41e8786fa4c29b7145575157deaa66c72c8aaacc9eb58e02a", [
      "formal-neighborhood:4720bc422e48c3b41e8786fa4c29b7145575157deaa66c72c8aaacc9eb58e02a"
  ]),
  ("formal-neighborhood:5bb0f89ada855042bc6f95d682798f6e1534b961549f1e9d3a8238f69477b476", "formal-neighborhood:2a151e0e8527ec5014f4e09c420b4fed4937ee14b63912267cbeccadeadd1c46", [
      "formal-neighborhood:2a151e0e8527ec5014f4e09c420b4fed4937ee14b63912267cbeccadeadd1c46"
  ]),
  ("formal-neighborhood:5bf3b41b2788fbc5e425de33716128f0cb0deeca245471430e0100aeb7248be1", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:5bf6a0cf2771ea3126c660d313d10080e925f350569388a958eca76646b7acd9", "formal-neighborhood:e070761ee1e42f668ba6a0eee955ad7aa5ed203a210899a2aea3e71ef1d3a2f6", [
      "formal-neighborhood:e070761ee1e42f668ba6a0eee955ad7aa5ed203a210899a2aea3e71ef1d3a2f6"
  ]),
  ("formal-neighborhood:5bf76d0a0613306eb29631c8bbdb74f1c4b07ceaf885555e8b676d76194ddd49", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:5c146f043f5a2da872af0f005749327b93e0c96b43557e914aa04044db21a012", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:5c28917d951c01df7733fc92e0f485eb6056adfc37d95e06cc5c0500a6a27e52", "formal-neighborhood:95d5e2da90944f8d6a8924fa343fe2ee3ccac6f500d69f0d2bb4df5e9c308606", [
      "formal-neighborhood:bea09f4f8042392cf54e1618159eb6f67d9eb1679efe3be75b7d81df9d5b538c",
      "formal-neighborhood:95d5e2da90944f8d6a8924fa343fe2ee3ccac6f500d69f0d2bb4df5e9c308606"
  ]),
  ("formal-neighborhood:5c3779744951cb3e7317821b9aca520f3004219141483c91b8aa2f3770b3b131", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:5c3b2ac446a0d63528f0df11e9902a7c506c6088e623f0fb511226adce509819", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:5c6b307b9d7400a5f1e6927bd759b350dbfe540a8d28147f9038eb3c064f0e18", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:5c7c8a1d2399f9118adceb9d329e261f629bd92cbe95dfc16cfefa7fe597c8dd", "formal-neighborhood:4720bc422e48c3b41e8786fa4c29b7145575157deaa66c72c8aaacc9eb58e02a", [
      "formal-neighborhood:4720bc422e48c3b41e8786fa4c29b7145575157deaa66c72c8aaacc9eb58e02a"
  ]),
  ("formal-neighborhood:5c9396aa3cf1a1ee834ce9558dd620cb81a767567c6817cd2e60d29c90afec7f", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:5ca63be6a41fd932562a5c516e0a6238b569aadf16736daf31f1f902e7b33994", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:5cb7e4bfd0782401d6fcc48ff13bfb74d745c692b432a30656022e487ba98a3b", "formal-neighborhood:23903cfc932d4ee93b866f1d63c0896132a9a43b15c83e2f0b672a6467d45684", [
      "formal-neighborhood:23903cfc932d4ee93b866f1d63c0896132a9a43b15c83e2f0b672a6467d45684"
  ]),
  ("formal-neighborhood:5cf4a4baaaa9cb5469d45468fc151141b862f158f09d566f7df6db861323e36e", "formal-neighborhood:1cac27e5188cd2ffaa0b329631dac1f50fd365a0ab4890db3208673e78f587fb", [
      "formal-neighborhood:1cac27e5188cd2ffaa0b329631dac1f50fd365a0ab4890db3208673e78f587fb"
  ]),
  ("formal-neighborhood:5d14161ab0e45370773c9514665898cb85b59e111d8b3e11e8970ab8dc2ac555", "formal-neighborhood:9a347bbd043321dbdeebda67e837c5d8f5daf5361e64bf1b684e756b7b58eeee", [
      "formal-neighborhood:9a347bbd043321dbdeebda67e837c5d8f5daf5361e64bf1b684e756b7b58eeee"
  ]),
  ("formal-neighborhood:5d9fa587855a1a7967a6b17d2564f96e74972d3898a9b1f4f109dded1d09bf42", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:5da529465663d304cb767cf201a8c22999a521b26e3fe8057ed4dfe725034db9", "formal-neighborhood:732df222b418aaa75f8c317334abcfe51d90c71d829ae02f09336bb2dc41893e", [
      "formal-neighborhood:732df222b418aaa75f8c317334abcfe51d90c71d829ae02f09336bb2dc41893e"
  ]),
  ("formal-neighborhood:5deba10c7de76533a48be8715bc92ca0c307b8f1c75a44dc0e3a77cb3dddd193", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:5dec12a7332cc700e2d36e3424c3b7c7b8b003db9d466638e9e29ef3fa6a2638", "formal-neighborhood:71c0a9423f03a2cb8d5124081df7f7ec1306d64edf6d4ceabc7cc5a3f96dd5fb", [
      "formal-neighborhood:71c0a9423f03a2cb8d5124081df7f7ec1306d64edf6d4ceabc7cc5a3f96dd5fb"
  ]),
  ("formal-neighborhood:5e440dc185f89e12e3205b6cb2a83a5509240af590f1a14db6e310d80f0825f0", "formal-neighborhood:eac08d7fb00cc1a72fc481c5da6404d82b0bf777ab56b23e4d748355adad3eaa", [
      "formal-neighborhood:eac08d7fb00cc1a72fc481c5da6404d82b0bf777ab56b23e4d748355adad3eaa"
  ]),
  ("formal-neighborhood:5e707e292707fb36647b50716810895f2f3d49e721598ccd7bbf2b710b4085dc", "formal-neighborhood:eab980bf9161cb3d3cf5df9019245d574d8cba65f444f327397523d0c1c74398", [
      "formal-neighborhood:eab980bf9161cb3d3cf5df9019245d574d8cba65f444f327397523d0c1c74398"
  ]),
  ("formal-neighborhood:5e982f880672c7e7c2d6f5cf6efdaadde4d3e96bb50912d00c0b54c42d80bd0b", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:5f0e79b9a929695c482c89d160ea348cfad6ea747a4f4547ef82e32aae94b176", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:5f3e77404f350c94791f28fad1d17aff847971ed91ac79e4845cd89e0a586568", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:5f576bf1de1f2a5fda65a42b47824a00afd344a78f4e959e5250d15f951b900c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:5f81eb08959e8403e52176704fde22c00a700810fae5dbc990c349bf9fead8ba", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:5f9b542a27b3c864904fd5ce248e014afaae3aa55787305d138a30921c0a9616", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:5fc77da5e1a41faac56c2f26289bdc4c0c49187e02ac15e2039e1f8ad362e23f", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:5fd3ddd5a48de73514d4aaac95887fbf572c38059237ddd61a011df49fd284aa", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:5fe907bbeb2ce310f6cf3166388e66457ac319acca055e23c994b63f5e4ee5fa", "formal-neighborhood:255133780f3d3f3172676bcc229ac54c60c8c4bd5eb60bceb24c6671ec51b22c", [
      "formal-neighborhood:255133780f3d3f3172676bcc229ac54c60c8c4bd5eb60bceb24c6671ec51b22c"
  ]),
  ("formal-neighborhood:602dd9d848cce922a17e7813157574dd32889902b7640d7d0eade7b854a52ca2", "formal-neighborhood:bc4d87524da11f184b63e08a568670bd85881d7a24372aa38bcea8de95adeca0", [
      "formal-neighborhood:bc4d87524da11f184b63e08a568670bd85881d7a24372aa38bcea8de95adeca0"
  ]),
  ("formal-neighborhood:605cdb324b77be117be0349f337b5a1373bcf378295b54f3208affe1970d7351", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:6080c14906b5805b876ca28e87d1224f60ba3eec4044b9213accb9c21ecf2e2f", "formal-neighborhood:e289d5a424266ffdabfaf8857b7d94880067c1d6c8732438d134eaf5f5a2dd83", [
      "formal-neighborhood:e289d5a424266ffdabfaf8857b7d94880067c1d6c8732438d134eaf5f5a2dd83"
  ]),
  ("formal-neighborhood:60ab83bb3939a2742e74f88c9859e41aad01efccf704d2f0d51ba713bdf81a5f", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:60cf519b885f9b100963aad9e184093e6aa758b7850a230f767a8f2ffa6b0026", "formal-neighborhood:3aa0eb82b7cbdcf62e3a1967eed0a9f8520be98f1f7594698be3571c4d9a1dbf", [
      "formal-neighborhood:3aa0eb82b7cbdcf62e3a1967eed0a9f8520be98f1f7594698be3571c4d9a1dbf"
  ]),
  ("formal-neighborhood:60d7da185431020ee2d7e97c7cc8bac3bdc50f4341063fb916ef8d2391b8b818", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:60efb0a29c91f56b8d856bd23c3983aa0a482f8a5dfce3c3cf571b64a0bb6242", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:60fceb5661ce96cc1358460cf88e96b39a71588b713dcb3534cf47d70f040ac8", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:613c61aa2ccfb94bbf2362bd78a3f28e54fbc22490cc20c5e9280e815947a1cd", "formal-neighborhood:41d573320ae6b9cceed7a0f9f491d4c7aaa27ab7cdc3a97cbc08c8ab2b7e06e8", [
      "formal-neighborhood:41d573320ae6b9cceed7a0f9f491d4c7aaa27ab7cdc3a97cbc08c8ab2b7e06e8"
  ]),
  ("formal-neighborhood:614b2b69da18c842064fa23a9143aea0a0e9b969248b7765b523459bf0b073e2", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:fd79f277430a054a091dbe4e773ca6cff622bc3436ebbc162ee0f4c78e72437b",
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:618f466fa311ef6df6f4639f17e8924c2682806b6c3eaa678e5b379e6456c60b", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:619e5859944374f1abb94d76d6df852063e8d0d142f36dc7cb4f358e29a6c93b", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:61f082c900722b4fbdf43cca4833f7996d1b132c96a4befd6a43cd7632984ec5", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:620df8b99f8429a0c43d24b1a6b6427b134f7efac39456397619cbd7d5e82865", "formal-neighborhood:042d587954c58887d90ac83fe959d726370de15dbbc2f1334ab51d2f886eaea4", [
      "formal-neighborhood:042d587954c58887d90ac83fe959d726370de15dbbc2f1334ab51d2f886eaea4"
  ]),
  ("formal-neighborhood:620ecbeb0ddc83523a0fa901d570b38617e0f6836daadd38d038fb253401f990", "formal-neighborhood:1cac27e5188cd2ffaa0b329631dac1f50fd365a0ab4890db3208673e78f587fb", [
      "formal-neighborhood:1cac27e5188cd2ffaa0b329631dac1f50fd365a0ab4890db3208673e78f587fb"
  ]),
  ("formal-neighborhood:62157bbaba1e06afd5ae6cef26425b439b8841dc395578d9d831a5c113d0583f", "formal-neighborhood:a9c1c6487e1a36787b98fd201c202e9a2742f6e9fc4e777bb71f526e7cdf192c", [
      "formal-neighborhood:a9c1c6487e1a36787b98fd201c202e9a2742f6e9fc4e777bb71f526e7cdf192c"
  ]),
  ("formal-neighborhood:6233d32d9675e16fdbdc503a4e6af74616372bd257ffc2d33ff6b25ccaa0348d", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L118461).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
