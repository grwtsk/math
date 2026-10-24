# selectedParentRowsChunk0022

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2e0205c23d692895c1dd3f54c6baa98f8c539a61ad2b237e2a63a1955cedd22b",
  "kind": "def",
  "lexical_name": "selectedParentRowsChunk0022",
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
  "slug": "selectedparentrowschunk0022--2864d2072402d609afc2427c",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120859,
    "line": 120662,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2864d2072402d609afc2427c3879683c0b06d7799d291832ed1fc5cf011bc39a",
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

Occurrence: `declaration:2e0205c23d692895c1dd3f54c6baa98f8c539a61ad2b237e2a63a1955cedd22b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120662–120859.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedParentRowsChunk0022 : List (String × String × List String) :=
[
  ("formal-neighborhood:adef690e788352db8e30cdef49a6f2baf1fb370ec2ef641c7cf5cf6d9676f683", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:ae16fdcb99fbd918c5410a33ab021bd2791023b75c828e3866b60e1f5c710de5", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:ae33345ea76a514bff231bd7e6b978c2d4f2f74cc2a59ad32fec4cc518d8cda1", "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420", [
      "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420"
  ]),
  ("formal-neighborhood:ae3831752783913f2144d921786b816d2f1382cb100939ac71df19ce26150895", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:aea1266793685f6e1e5ddaf1959e9323f489029639673702bd548086e622458c", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:aea5bce733fa34f909cc08aaef9b518a7b0e8b476bc05e807cb325ea3274a13f", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:aebfc10558668e2bf63377185c344190a85158bb4aeb18f0e209b000bba1d822", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:aec180979267f9757f2c513b1d08817c10c107169d03484deb2c9b2576a628bd", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:aec7450dc85ae077c8c1b52800662c42e002ad790f1fc05c488e84b297a0c302", "formal-neighborhood:b379aef469502f299db8484a001143f6459cbe430bd9c6f2ccdf049ae0297138", [
      "formal-neighborhood:b379aef469502f299db8484a001143f6459cbe430bd9c6f2ccdf049ae0297138"
  ]),
  ("formal-neighborhood:aed5bd593787903cdb59dc34253b3dc18665779482babd74e5587c7660ce45d7", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:aeff920892db4c9cfb9a135ad8cc0777c25d412eb8aea4e53dd6d3652e43286a", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:af0604f06a0d3332185db786c0167edc765e3acdd5d2634009393a79002944c7", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:af071c9fd7a8c14d2bb6e7418f46f7b85ae971bac320f1d1744f3c990445fc64", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:af2c0242a0ec82004560ff1d0899192b9e4660b3f518a4a9d4e962cec1459797", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:afa29010ec0b075710f103a9726b6e870b649164244c0f9f8a9db32fe8e33405", "formal-neighborhood:6cda5aab5a336b82481ba4210de8551709e5dd07f824300a182e0b68ff428825", [
      "formal-neighborhood:6cda5aab5a336b82481ba4210de8551709e5dd07f824300a182e0b68ff428825"
  ]),
  ("formal-neighborhood:afcb9e6b5268575636ba6723100b179c202ce8ef590194ee5aac904b133610c6", "formal-neighborhood:732df222b418aaa75f8c317334abcfe51d90c71d829ae02f09336bb2dc41893e", [
      "formal-neighborhood:732df222b418aaa75f8c317334abcfe51d90c71d829ae02f09336bb2dc41893e"
  ]),
  ("formal-neighborhood:afe91eee81b3d103d4af3910236b9b99f87b71371ea2a6e384711922a6d818a7", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b00395cb6c087e743d2f06a0736134a9714d2f07d4abbfe7b3615aa602bb4b9d", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b01bab762dbeabb7d5e87b3cda021142813bdd52e239210a49a6097dcd5dbffb", "formal-neighborhood:6c52d61eb59e42a2294fe4379bbd39c3e9c1e59b6dab02acfe66b08861d988e1", [
      "formal-neighborhood:6c52d61eb59e42a2294fe4379bbd39c3e9c1e59b6dab02acfe66b08861d988e1"
  ]),
  ("formal-neighborhood:b01f2285694766d8d01e04224afe388d459e35f5e3f672b04a3549c05668526f", "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420", [
      "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420"
  ]),
  ("formal-neighborhood:b040ea2928c0c68b559bfe4a4ab3cb65b3c1163965550d7eeaa35506774f7828", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b05eb3340c3b277210f0c5c6fba3f06448dea00538d4baeb4905cb683e54e451", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b081ad96f016ca96577fff58382208ec7898bdedbaf1fe9f5e41e60df67cb979", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b087530b673a63fe73e1ee2d08d946d218a35a47aca72eee6c083e7c68fe17f6", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:b096b40a2dd479c7f93a3c1900c95d8e3422baa158e1f2718b538d3bc5b0b8ca", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b0c0e57ac4008635c884dae0c726404988ca6658cb6272e2c554816511caf457", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:b14ce6331346036265592ac4ba01fb6bf060287b931728514ef4afe7edcec443", "formal-neighborhood:e070761ee1e42f668ba6a0eee955ad7aa5ed203a210899a2aea3e71ef1d3a2f6", [
      "formal-neighborhood:e070761ee1e42f668ba6a0eee955ad7aa5ed203a210899a2aea3e71ef1d3a2f6"
  ]),
  ("formal-neighborhood:b15fbcd1ee9f71e02a48b5aa1f788ca7adabfe9b8db4a98f66322ab5ba4d6457", "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a", [
      "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a"
  ]),
  ("formal-neighborhood:b171e49f80a86c8bdb1e307baa33b63eb5637378f71e8e0e66e4a9b197fe3fa3", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b17faf5067e1b109e096e7ae7b698a6b431bcefcd0ddd4f741e020f6399153c4", "formal-neighborhood:11444de477cdbb524a4f3a4d3e08ae249eedcc48698d79545df427c75bacbc19", [
      "formal-neighborhood:11444de477cdbb524a4f3a4d3e08ae249eedcc48698d79545df427c75bacbc19"
  ]),
  ("formal-neighborhood:b188bc35926ca5dc5dba98f5ad3b1f329104cc2a41aa2ba68bfc0ff750a5736f", "formal-neighborhood:7806e65b097986b5d12556f55ec7eda2dd5407530af279f9bc298b7b1a38556f", [
      "formal-neighborhood:7806e65b097986b5d12556f55ec7eda2dd5407530af279f9bc298b7b1a38556f"
  ]),
  ("formal-neighborhood:b1a1f55550ddefb997629d1e1e856dd45056b27be13d1744dd7708e464a3aaf4", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b1a5529baa13ca0ea21059894a6c1b791a8f8f65ebee4896a0f7b24624dd6099", "formal-neighborhood:818454c7c9170958efb67015b551227968d981d38bd038603a8d5642adc89d37", [
      "formal-neighborhood:818454c7c9170958efb67015b551227968d981d38bd038603a8d5642adc89d37"
  ]),
  ("formal-neighborhood:b1d87c93853c4da7f574cb2397e54a5ba65e95a91a2eecc6d844eef4936ebcb1", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:b1ddde551fc0bb53d1d13e14e7b4624cb6e053e3caf53a47485c925b070d58aa", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b1e5e646620bd0addce379a13907ddf641c7ff2de96ff15132458a1a88862cc5", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b1e6d5d330eea82f4c691713799d7e388d8a77e777c4e53e3dbb27dde38d0cac", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:b201171d57471fd63d7342fb943b27c69363cd1ec8ffdbb5cd1fcca20c406ad1", "formal-neighborhood:23903cfc932d4ee93b866f1d63c0896132a9a43b15c83e2f0b672a6467d45684", [
      "formal-neighborhood:23903cfc932d4ee93b866f1d63c0896132a9a43b15c83e2f0b672a6467d45684"
  ]),
  ("formal-neighborhood:b2280b13b73fde4cfc85216cac1d128963df137648ee0c54d283c2be0e18911c", "formal-neighborhood:481d14c2a3777439eec8e8ef1cbe146cdfc2c9a67cb7f8f3ec1323b1c6ab1b8b", [
      "formal-neighborhood:481d14c2a3777439eec8e8ef1cbe146cdfc2c9a67cb7f8f3ec1323b1c6ab1b8b"
  ]),
  ("formal-neighborhood:b2444dc925b31bcb775a1d2cf7d6816cebb682fe776e90c7cd695ee4b81bf5f2", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b253fd6f679587d5e56276d518078f835e800d6b34bf669f3f769d4051c13780", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b2717d27ab29a21a6e4335fcbea2e7b51f2569bdcb10ee191ed8a31bfabe2e5d", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:b2804d7ae57abecf46e4400061209aa7c60eda537ad767bc16e75924166fc73d", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b28b1ffa29a619005caebf0e865fd1c22c482cdcf6ed081f489b8fb25ce45194", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b29da559e05bbeaacaf32943bd9a939b65dec417e4f64fddfde34ec7f565ba88", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:b2c27a9b35a77f6072f397c375714bbe0d2799cac71cc207a7de682b8e6ed9f6", "formal-neighborhood:1bc4dd98895fcec7a2c498da264d6fb2ba53cf167bf9d32684f8a4261285fd00", [
      "formal-neighborhood:1bc4dd98895fcec7a2c498da264d6fb2ba53cf167bf9d32684f8a4261285fd00",
      "formal-neighborhood:5adc76236da3d931eca8bdc698c0f47b622de9d6854b692969214a8b41711da6"
  ]),
  ("formal-neighborhood:b30198ae331dcaeb074720ea0578f73809a3fdce33a86988cfd381b8df529e51", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b32d73dbe4b596847c805cb203b6f1b42c44e89839bca3d6b2674eb82a64acb5", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b34596b04618007801e5db1463737093baed9245f675481d4e76a7786acc8427", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b359b58ec30422aa1f341775c46a49a51e81314cf24b732ade1d26ebb0ad9bf0", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:b3774ab190994830a93163d578d2119dbd89ddd36725d67798f066e2a2af594a", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b379aef469502f299db8484a001143f6459cbe430bd9c6f2ccdf049ae0297138", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:31752f2fb6825be47d1c41c310819b0204799ea0b2a4813b0d5a98c8cd589c5d",
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:b3c75840b4022005be3939584c1a821c6c4d38a7bb24683a1949ab8074e4ed5b", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b3e29c0f371424a51c781bcc086f5a1b4e0daeab4941402fd574fcf080280c7e", "formal-neighborhood:ddb556b255d9188beb00101a2220152781af503b0085e98065fc1537be33a455", [
      "formal-neighborhood:ddb556b255d9188beb00101a2220152781af503b0085e98065fc1537be33a455"
  ]),
  ("formal-neighborhood:b3fe62d2c606b8a3e83de55d9ff011c54ea926993e37f3012629b0e8c6397bb0", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b40621865d9b6a4f234938852911618519bd109473fbffcbdf6ed853cf1b2ec9", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b4235c8fe3f9234485837882af1199d33baee5ef7197cdc33a14e97e80c4e6fe", "formal-neighborhood:80223206eb9786e6c0e5e4ccf657659f7d7cceb40cd70394a5bf9a04d4c766d8", [
      "formal-neighborhood:80223206eb9786e6c0e5e4ccf657659f7d7cceb40cd70394a5bf9a04d4c766d8"
  ]),
  ("formal-neighborhood:b4983d2bbd93a4f290803e97ee12c789dc9e3d4e543c9731747773d2b709806a", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:b49f0b4de414fb5118a72a59066db8a05295ee4bf62a8319bd1fa818dee6f4ca", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b4ad17428cec6315c3c4d34ec95baf522217ed4b225f2ae08b890dc20e827c3a", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b4b8104670e4cf8df8d3236ae0df86f3b48406d80bda5be79a35355b63cc3780", "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420", [
      "formal-neighborhood:a544aea63cf3f0a81dbb727ed0d8561b64ab646854e5ce200c87a20a5e042420"
  ]),
  ("formal-neighborhood:b4ba61c1164aaa945c3503e0fc80cbc6bad6c0284780699c97ea4fe28b40eb3b", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b4badb40aca810131f20f4fce324978a0e8c78ec7da2285583705d356520b4bd", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:b4f71c2dd32e1864efedda2c0dd11465295a85389931d5a3552ad8398fb76cac", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L120662).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
