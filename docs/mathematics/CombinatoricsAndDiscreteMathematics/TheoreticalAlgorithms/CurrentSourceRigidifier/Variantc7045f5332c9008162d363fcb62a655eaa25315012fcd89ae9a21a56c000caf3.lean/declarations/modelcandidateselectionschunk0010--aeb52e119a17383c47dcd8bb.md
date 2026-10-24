# modelCandidateSelectionsChunk0010

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4ac11f23ea06717dcf13ec5a71ea2291de556f1b7a812307219914be402bdd45",
  "kind": "def",
  "lexical_name": "modelCandidateSelectionsChunk0010",
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
  "slug": "modelcandidateselectionschunk0010--aeb52e119a17383c47dcd8bb",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58086,
    "line": 57763,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aeb52e119a17383c47dcd8bb4713250da375a7a14b6e823ccd9c46c713b26b90",
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

Occurrence: `declaration:4ac11f23ea06717dcf13ec5a71ea2291de556f1b7a812307219914be402bdd45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57763–58086.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def modelCandidateSelectionsChunk0010 : List (String × List String) :=
[
  ("name-candidate:2c94a9371cd1ee8e33c783b8cf3b4815bf61648807737bdb49ab1f5a5f01a5d5", [
      "name-candidate:2c94a9371cd1ee8e33c783b8cf3b4815bf61648807737bdb49ab1f5a5f01a5d5",
      "name-candidate:9666d1f35ea37a166ab09420fd5ccc1fbda65f3814be30d247da9ff0e1b15a4c",
      "name-candidate:a15a609719d4f210876eb5e92cc8964be027beb306cc752c506df6e2453a79d9"
  ]),
  ("name-candidate:01e10c3599c3e90d4d05068601030dfd420d7299012933cdca668915c811f89d", [
      "name-candidate:01e10c3599c3e90d4d05068601030dfd420d7299012933cdca668915c811f89d",
      "name-candidate:0a13e1dc6e168455c1f50255ffa6129a9198d0fc71bf394b4298c61eb0e1812a",
      "name-candidate:bc2802a48b70586b235ccae1ded168aec59c9226f80d3dc270e6e9295736ffb5"
  ]),
  ("name-candidate:a18305297200ca056c39f73a07540debc99b48338e6d53f971e6c591f7f5aae1", [
      "name-candidate:7c271ad62c15c3342086808eac78abb01d4c2284e6af8523826a660dfe142c22",
      "name-candidate:8ed13ae1a4b9544216a6327e58bdfb48a923f2af288dc75f904aaaed9a23ede2",
      "name-candidate:a18305297200ca056c39f73a07540debc99b48338e6d53f971e6c591f7f5aae1"
  ]),
  ("name-candidate:be3c0eed74b14e7cc865b53730e2aedd2005ea55afb4584e1ec30ae517693a1d", [
      "name-candidate:4a3144c603d3df55fea85b1c51b1cfd607881fad249c6513f2b64cbc65133590",
      "name-candidate:ad2b6e7d298c1fe964f304258dd89e94a459bc87fe149170b2db6bd7b3ddd867",
      "name-candidate:be3c0eed74b14e7cc865b53730e2aedd2005ea55afb4584e1ec30ae517693a1d"
  ]),
  ("name-candidate:466aa9275e0f916f1cfaff7fdc3d5b377941fa5887f394cbb49ee8d78a09a70e", [
      "name-candidate:466aa9275e0f916f1cfaff7fdc3d5b377941fa5887f394cbb49ee8d78a09a70e",
      "name-candidate:5b96dadd85c053f00bd0aecabe498663bc13b64648af123b359d39ab8c446012",
      "name-candidate:98b5257a274d69290e31c4048cc47ce7dc53ca49c92e0845c4b60c710086a637"
  ]),
  ("name-candidate:d7bdcfb5110583fd6baa442735ca8b16f1a6fc82575afbcac059f6f03cbc70d1", [
      "name-candidate:1fbb6de0e751b1ab735b58260bb64f07a2932139a163efef59ca282bcbed5c50",
      "name-candidate:abd28637b08273c84a885dea1f0b09f72276eb31ab13cee653e835a9052f9882",
      "name-candidate:d7bdcfb5110583fd6baa442735ca8b16f1a6fc82575afbcac059f6f03cbc70d1"
  ]),
  ("name-candidate:c1bec47ef8d76c7574be740f667c90a8cba7667e7107e3d7c17293ec66282996", [
      "name-candidate:72b9b8b88164f1115c816f5bcf250d8af8ca8498bfb2475e1cad8825f5bd450f",
      "name-candidate:c1bec47ef8d76c7574be740f667c90a8cba7667e7107e3d7c17293ec66282996",
      "name-candidate:ce79ab120ac090984bf79b130861d908748119da7159d20f6843deb4a80c5c8b"
  ]),
  ("name-candidate:14dd2e8082460d960372da37673aaab18432464e3c74aa003a82b372b6eb9523", [
      "name-candidate:14dd2e8082460d960372da37673aaab18432464e3c74aa003a82b372b6eb9523",
      "name-candidate:5e62799cf6860a7de81c02215db15f1b372185c079fd998204889d07dff1cfb7",
      "name-candidate:ba57fb5c4842d2c902ca819b86d8e391968e706f70356d0a25117a47461367a9"
  ]),
  ("name-candidate:4bc81f260ba038ebf3c3a1d5974d4cc0f7b16c1efcffd181de2fff055685e00a", [
      "name-candidate:3abdd9294c48f5be3289078fa13acdb0afe10421955578ec430ec0a015b31d99",
      "name-candidate:4bc81f260ba038ebf3c3a1d5974d4cc0f7b16c1efcffd181de2fff055685e00a",
      "name-candidate:a13dff1c49083d8d68676bdde26a35b4fa75e4f50c0a53e05fa3e2d6147cc5ae"
  ]),
  ("name-candidate:fa7c87d7479e41ef79867410c2591d2abac7cfd54d227460f75b69a73b962d0b", [
      "name-candidate:1266e564d150095b5f12b75cfd6ce85a0df79807392724d4d8c36b52e88c2eba",
      "name-candidate:9e94e655357c8b417736087536cf8ce636220e681b3c6c36c2175cc4d1723254",
      "name-candidate:fa7c87d7479e41ef79867410c2591d2abac7cfd54d227460f75b69a73b962d0b"
  ]),
  ("name-candidate:9197e723a2cfef9c081ce8d6747aca5eac47b21fe27f05f6e369d54afea58942", [
      "name-candidate:9197e723a2cfef9c081ce8d6747aca5eac47b21fe27f05f6e369d54afea58942",
      "name-candidate:de13271200f5f6cc0c8be5d357b653bc658ac5f63c1f623783daaa3b9356cf13",
      "name-candidate:e58f0ca8c54c8582f738a8062466213c4a6c5d525e7a82f4e414ec28bd76a25e"
  ]),
  ("name-candidate:220d558a2b6e462aab831ed5d9a9eefcfaa1b436058eec8d5b1232698e3fc71d", [
      "name-candidate:220d558a2b6e462aab831ed5d9a9eefcfaa1b436058eec8d5b1232698e3fc71d",
      "name-candidate:8d5c6e4c7ded0bd5f65ea8f1f64024968ff629c9c2b61d7a349aa161414c975b",
      "name-candidate:dc0dd78c7a67e0d0ca6b301fd91b508d1278b33f1b4d343f5a561a3c9646c89f"
  ]),
  ("name-candidate:139e8d98eceab7ec9ddea9fec36e46e51646f27f03aea1b98fd78f4e53ed2f57", [
      "name-candidate:139e8d98eceab7ec9ddea9fec36e46e51646f27f03aea1b98fd78f4e53ed2f57",
      "name-candidate:9841ea94cc6b073c5bf9aeff026178b65a8f02b083e94202e7f63233b1f1d264",
      "name-candidate:9e174b05867b874da960725979273316eaa645f8a5330e8a0eb4babfad4d3a53"
  ]),
  ("name-candidate:90539030e01a13f1540bbd5a824c016bc7cb00753d50f58972c4b6e99d1574f9", [
      "name-candidate:7fcdc6f998a0c8c3bded878a384113ffc5981cc0be3b814a59ef7384d6072edf",
      "name-candidate:90539030e01a13f1540bbd5a824c016bc7cb00753d50f58972c4b6e99d1574f9",
      "name-candidate:e5098dfbb6e60def29566c73775841be74008b1fb122f50087e1f8e6836a5e73"
  ]),
  ("name-candidate:8f8d15f2d70b9b2c3911d3435e732b5785ab514d893ac54535de3fea8da3948d", [
      "name-candidate:38d65b17b193e855212dec4c2a9725c979fd84d9c1be962b3c724822b7a204ef",
      "name-candidate:4f938039c98042e9d81ed3a6259f036fd0e6b755d162df7bece781e86ce54c13",
      "name-candidate:8f8d15f2d70b9b2c3911d3435e732b5785ab514d893ac54535de3fea8da3948d"
  ]),
  ("name-candidate:ad6ebecdd80dae2f2b021266c2fb3d389e27173bc080bb9678a911ec0fb31383", [
      "name-candidate:441d79799a3431d3fe55400b9faf09f45b4b3e17ce2025d7782f05750d037202",
      "name-candidate:ad6ebecdd80dae2f2b021266c2fb3d389e27173bc080bb9678a911ec0fb31383",
      "name-candidate:ca33a92313b3fa5155f7587c18a618070eda444149332e544d47ae7ea83525a2"
  ]),
  ("name-candidate:59ceef2277c85d99383f06adf7f981517b5f63504ae5f8f2d41992dd643c575a", [
      "name-candidate:2903f4abb48385e38263541f9451321f651269b03cbace29c6440456fc677117",
      "name-candidate:59ceef2277c85d99383f06adf7f981517b5f63504ae5f8f2d41992dd643c575a",
      "name-candidate:8a4cc4b4d9bc72b10b6d931afdf0cd0c14e3cf74d6c3f392c00eec038774621f"
  ]),
  ("name-candidate:b2f547aa8df6b532fa3688412766a827283512b78f732af84ddb0ce956096421", [
      "name-candidate:282245ce42f94c77582d7004a0f7001b3ae31277e7a963a3cf6f05438dd7bfb7",
      "name-candidate:627350d54d45e19b19c8164f6185244372124fe6986130e0dca1cba976d34c99",
      "name-candidate:b2f547aa8df6b532fa3688412766a827283512b78f732af84ddb0ce956096421"
  ]),
  ("name-candidate:24ef88852cb17827ddac861eb725e8cdbe1b24f672fcf1df0077039e36244eb5", [
      "name-candidate:18cc76ef62d19b40bcb506d28e0e8a5b1794b1188b32bdb72bd4055c5e701bae",
      "name-candidate:24ef88852cb17827ddac861eb725e8cdbe1b24f672fcf1df0077039e36244eb5",
      "name-candidate:fb31f9d0b6fc35ee265caca2e768f8ba77ab36314f96e87842a4019efcad302b"
  ]),
  ("name-candidate:76413e5636941dd5adbf8e30f355ff8dfa33efe5bd28a862e019c7ce4b6d3bb2", [
      "name-candidate:76413e5636941dd5adbf8e30f355ff8dfa33efe5bd28a862e019c7ce4b6d3bb2",
      "name-candidate:7d91a12cd9b044da53befb9f576c4e8f5fa371ccab87dc9c47a22498b7356944",
      "name-candidate:b27b87e5254ac934c3f1d1de03e56e8c9034377f54900afd34702d1a71856515"
  ]),
  ("name-candidate:017a17121052595d71d5ee79fcfacb5b416d2f0adee05a66270f0d470e696641", [
      "name-candidate:017a17121052595d71d5ee79fcfacb5b416d2f0adee05a66270f0d470e696641",
      "name-candidate:5a214b4a5515891fe2df284250c3bc008d256ff53bf6a31e34e1b74012490246",
      "name-candidate:e8c09003b18eae6c69363fcac895b4c9bedb7cbf71571cd2571b70176ad75cb1"
  ]),
  ("name-candidate:d4391427fc03346b7e28af55085095d71b2314e0e917d7671a16c35aaccbfb35", [
      "name-candidate:10321975f5e8b37c928f7a51e7b792946cbd277699bb35621f880406b609c9f8",
      "name-candidate:d4391427fc03346b7e28af55085095d71b2314e0e917d7671a16c35aaccbfb35",
      "name-candidate:f254948c78b1f9e8880639f81c55e732561ca89fdd9f56fdcabd00dfeea59c59"
  ]),
  ("name-candidate:d4be583ed321af0d693c1b8319e722c28cc5fdf08c75978e6b38c215fac6e003", [
      "name-candidate:82ebd10dfaf36577bb9188fd29356f92fa0f12714b41e338e684b7dbafd99313",
      "name-candidate:af372739b5b3aff17d368a17582c41eebb7d7621b310dbea320eea2110bc7597",
      "name-candidate:d4be583ed321af0d693c1b8319e722c28cc5fdf08c75978e6b38c215fac6e003"
  ]),
  ("name-candidate:0ac2deae6168451e7485b27addbf6adb92c1740649b38ba56bff5c72802ed8a5", [
      "name-candidate:0ac2deae6168451e7485b27addbf6adb92c1740649b38ba56bff5c72802ed8a5",
      "name-candidate:28dd16d45103cebb57cb39269f1c58dac127242883d62a90142ae4fbf6d989a4",
      "name-candidate:727a82c93ccdc8cbc82732241fe6ddebc239775d7962795f5bc142823098422b"
  ]),
  ("name-candidate:cf0a7572621d2d520eb22c12f884da7e15d20eb02ba97a16cdced9eab521da3f", [
      "name-candidate:b0ab4781a994e1eacc2425c95a14b5c4304f3285c7b7f7cdd4334b3138b9738a",
      "name-candidate:cf0a7572621d2d520eb22c12f884da7e15d20eb02ba97a16cdced9eab521da3f",
      "name-candidate:efd71dc3afbfff385220d628eab9f029c7a73f17b53e44271381bfe2977f610c"
  ]),
  ("name-candidate:fb300b6e1db0e42b288cabde667990ac2c1e76ddb898837e1fd2d5338c6c863c", [
      "name-candidate:2097c2a409a2988702798dd4b871a3b83d135387710736e8981d0b97b5b57324",
      "name-candidate:bad1f6a7f9d180a86bb08ab71423e008ce2a620becbb4400ba34c6301e5ec7b7",
      "name-candidate:fb300b6e1db0e42b288cabde667990ac2c1e76ddb898837e1fd2d5338c6c863c"
  ]),
  ("name-candidate:0a2643a3ae4c62dd9b903c1e5d5733252834d1a51ae80207785f9eacc7747d63", [
      "name-candidate:0a2643a3ae4c62dd9b903c1e5d5733252834d1a51ae80207785f9eacc7747d63",
      "name-candidate:37af231994438db5f7727bdc888dc02cf99355efbd1cef0c9313b0742ca2ed67",
      "name-candidate:daa4f8a429f1dae277a71ab32d4e1c75eb5623ddf6c588421eb6f2639a58b1bf"
  ]),
  ("name-candidate:dbc0469d246a3b0e464a2e968a03eeeacf84e63c19bd9fcd5a4bfc96ae0c14b6", [
      "name-candidate:57ef9a2b343678cf272b4b7f3eaa119c9f56f6442be8f8112912cdd5a7e708c2",
      "name-candidate:91c429872fb7d85e70aff02f4f85b88065b770ebcfe23b970cbece2e7c778053",
      "name-candidate:dbc0469d246a3b0e464a2e968a03eeeacf84e63c19bd9fcd5a4bfc96ae0c14b6"
  ]),
  ("name-candidate:fcbe8741be19faaf6069c149012ba908818115245b867455cabe004ed9216bdc", [
      "name-candidate:38fe191b34f789b21df6f1f8b7c0dc7c44f662537f849760c6053c970335f808",
      "name-candidate:5c8571ca41530c70e37c6be28c6051295d145dbe99e5fd021c55b8a95a07b28f",
      "name-candidate:fcbe8741be19faaf6069c149012ba908818115245b867455cabe004ed9216bdc"
  ]),
  ("name-candidate:385d8eb540d3ee26f3358968b80328f9b9e51793f1ac71701e9bda7cdd83b266", [
      "name-candidate:385d8eb540d3ee26f3358968b80328f9b9e51793f1ac71701e9bda7cdd83b266",
      "name-candidate:55e6a522899051e8b535fb8db7e00d7e9e854e936b17b57b314bb4aa8186a10e",
      "name-candidate:c8f63eb177cbb1b0f482204a235740d0afdb788a3df7a894607e8bd93dc86c5b"
  ]),
  ("name-candidate:00c68115b6880c19e1d62c9bfb21bc51e8bab77944b71f01f822c8cf76ebbbf2", [
      "name-candidate:00c68115b6880c19e1d62c9bfb21bc51e8bab77944b71f01f822c8cf76ebbbf2",
      "name-candidate:0abb07577d269b2a8c7ef4ae15303d23273fd984c454f9d45496f902fd816c6f",
      "name-candidate:532ef9ba0b16383f965ea246b221eff41c40cb4bd28be908c0e69cdae098b641"
  ]),
  ("name-candidate:1aa21675dd8526a1b21af1586a37cec567f291ae646ae63cd0c14a63891c9df1", [
      "name-candidate:1aa21675dd8526a1b21af1586a37cec567f291ae646ae63cd0c14a63891c9df1",
      "name-candidate:7f548e721ffb7d536ebd33519cc1e692fe1231a0fa37974c8cade25525c574c1",
      "name-candidate:dd1005e8df1c1449365077e27258e285292da902995489493b65a03840214966"
  ]),
  ("name-candidate:3f94263ec66608da9f0a96b7adcde5aae53e05c8bd2f27bb302edf62d450c4ac", [
      "name-candidate:3f94263ec66608da9f0a96b7adcde5aae53e05c8bd2f27bb302edf62d450c4ac",
      "name-candidate:776dc698012f40da0e9fec91a30c31b8b716c1c9a06deac4f3e8e507b368e6d6",
      "name-candidate:83bc735c5028af21ab5917afa4f9307d6321bfcfba1c4d0eeb97c69be4a23d88"
  ]),
  ("name-candidate:cb31c6d5982471c771abc250c761e54464d8cdc930bb3d7eb3f2168575017523", [
      "name-candidate:4d613bc86faa6cc3d1b4380b0d7cb1b7e646f15903ffa5d74bd3f312658a5f15",
      "name-candidate:cb31c6d5982471c771abc250c761e54464d8cdc930bb3d7eb3f2168575017523",
      "name-candidate:d791b476e0469141a43c720d69e717a0bce8b2249de3d72e257c02748a6701eb"
  ]),
  ("name-candidate:8ada4e42f34ce6f46ef45417a4bceea64e54c9a4da3726b1149ae29a6ec6ffbb", [
      "name-candidate:8ada4e42f34ce6f46ef45417a4bceea64e54c9a4da3726b1149ae29a6ec6ffbb",
      "name-candidate:9c104c53a469ce97cddd1ade91339805c316371947e6694edfe059fe224f589d",
      "name-candidate:ee79a7ce0e0855447572c595cc2bed8d6acef6f3f657b6639fe33cd921822c39"
  ]),
  ("name-candidate:8521a4ebcd80f1049b3b844c0120da0861aafa27041e6f83ecba4d14deea031c", [
      "name-candidate:8521a4ebcd80f1049b3b844c0120da0861aafa27041e6f83ecba4d14deea031c",
      "name-candidate:a067d7a3ccbd216ae42787203a33fb41fd8780db17e8ea48b936d2e9fe2abbad",
      "name-candidate:b5e10731276e3a90fac712ef9305a34298bee7beddab33fdc669754b4587052b"
  ]),
  ("name-candidate:48b04ddc797bab73402b27fa40fcfb0d035a110c489ce7850d1b3fa811908dfb", [
      "name-candidate:136eb3905cff48f984335500c36fa10ded1ad04d54347e08580f021347c1d539",
      "name-candidate:48b04ddc797bab73402b27fa40fcfb0d035a110c489ce7850d1b3fa811908dfb",
      "name-candidate:89b905c0173c49419f33969e9cb5230d3c2e0ea1810aabf9d6a632e0a4b98234"
  ]),
  ("name-candidate:7fe440a3eca85c0b254852c3da9712ca616be390310ab88f852ecec3aa2a4ab1", [
      "name-candidate:7fe440a3eca85c0b254852c3da9712ca616be390310ab88f852ecec3aa2a4ab1",
      "name-candidate:a070662b8db73ff506718790718c00953ce3d46cff2a02d5fc8d3f873eb17d9e",
      "name-candidate:bbf47dbda7b69a57a2c2a5848d14ed0ad008b707d13ff7daaef656c10232649a"
  ]),
  ("name-candidate:b41faad2db30ca5fcb96684a0b4215536620aa8e681483784076648dbe61c9d3", [
      "name-candidate:0f0cae7b519bf56072dc200e1022a053ab421cbf825773768de80d318c9c9b19",
      "name-candidate:b41faad2db30ca5fcb96684a0b4215536620aa8e681483784076648dbe61c9d3",
      "name-candidate:c276869df7ea8ab02a7329c0b81e7c1af75b32b7c9b674d77560f08d0c131afc"
  ]),
  ("name-candidate:3cb6fe642b3b7d647a4bdb4f02056cdac41cae6a0a1f164d5311333c385d13c9", [
      "name-candidate:3cb6fe642b3b7d647a4bdb4f02056cdac41cae6a0a1f164d5311333c385d13c9",
      "name-candidate:87a2410d3d20508987bf8b2a105c460dff492b5dfcb561edf79fce098a362337",
      "name-candidate:edf379eb0e4f078e5807141eb9bc5b7438b028acc4678f3ae41c8d6e576e27ce"
  ]),
  ("name-candidate:29a9d47bb55d78074481cfdab4650a58353815b988b4fe0cdaff7ce84d92205a", [
      "name-candidate:29a9d47bb55d78074481cfdab4650a58353815b988b4fe0cdaff7ce84d92205a",
      "name-candidate:6663a4f67d17a05d93f0a99c67cb9569ca0b6c27d4d62ffcf4dcb049f867c4f4",
      "name-candidate:cb79d655960f3972db4c446e1e69825abb13b89b84d8129cc6335c8fe591cd0a"
  ]),
  ("name-candidate:d625e1f337841dac73349f469246c40bd18504ecf7b350e850e1f453b233831c", [
      "name-candidate:cde09f6816c10e2ccc0696c430096e68d0029f55933974b082284d206d76f171",
      "name-candidate:d625e1f337841dac73349f469246c40bd18504ecf7b350e850e1f453b233831c",
      "name-candidate:fe885ee8cd682bf3c0b290a2adf88e5b770713cd823f1f49a5bff2ce42468efa"
  ]),
  ("name-candidate:1f008f15b4b5c0f3368da055daeff8b8edd855444ed5f27bb1d96f1ca4f3c569", [
      "name-candidate:1f008f15b4b5c0f3368da055daeff8b8edd855444ed5f27bb1d96f1ca4f3c569",
      "name-candidate:2d63df60e18907971b52e017811a14c2046643c0838989e53c14faeef08c8469",
      "name-candidate:cf560db0d45df95a3cacac66edb51c39dbf533ba3c4009b21c9b116ca69c5990"
  ]),
  ("name-candidate:f8094b3621d68bae3d99ee143f5354eebdc9cc13b1836a4471246c5653b041ce", [
      "name-candidate:4b4a530f48463996a1cd07816437eddca70187722ab2dca77e196ae60117a560",
      "name-candidate:e075d501421b346859ba5ae6bb1033e618e25bd2162ffc6b1532272f07774175",
      "name-candidate:f8094b3621d68bae3d99ee143f5354eebdc9cc13b1836a4471246c5653b041ce"
  ]),
  ("name-candidate:588a00f72327f2553ac608fe7b9051655f62e6cb99741ae5b9f09249b4a41338", [
      "name-candidate:2dfcfa3bb54811090d4afcbeab9718e97d9c9ab06d60a03f4c99f92e80de3c6c",
      "name-candidate:588a00f72327f2553ac608fe7b9051655f62e6cb99741ae5b9f09249b4a41338",
      "name-candidate:9be4f8960b48ca595df832845200aef561b42c8bf556eff182f79c04822a3913"
  ]),
  ("name-candidate:04d45a92147bd89c4278256344a8def246b0fd05aba8df4cf8d62f97a155a1a0", [
      "name-candidate:04d45a92147bd89c4278256344a8def246b0fd05aba8df4cf8d62f97a155a1a0",
      "name-candidate:b5d67c625c5bf7ab0d0e5714a218b4fbd108a5f18a0b6f49a86de6d7c069e896",
      "name-candidate:fb1fbd3fd66bb485929c1cc59d8df1eed63acf00e68e5f419683b1c3fbc0a033"
  ]),
  ("name-candidate:0d8dd507b3e5a3b16865bca105d9765fc2318e63e5fd6166c63c5b9c47a7b059", [
      "name-candidate:0d8dd507b3e5a3b16865bca105d9765fc2318e63e5fd6166c63c5b9c47a7b059",
      "name-candidate:9c9bd4d66dffce4dcf17ddb48cdbb1feb7f327aa266b6f1a1271711dafdad90a",
      "name-candidate:b92a61e9ea591a3e8054193e8967baa0fd4346390e1b70ba20a97430e8386a2e"
  ]),
  ("name-candidate:2fa5a7e948a444229955b8f46291eaa8fc58f405f697cabf3c85cdd7e59987e5", [
      "name-candidate:2fa5a7e948a444229955b8f46291eaa8fc58f405f697cabf3c85cdd7e59987e5",
      "name-candidate:9b25d3bc45246c82a76d09d488ae1d2b82c0229c39d581e56094a6f1a89a843a",
      "name-candidate:e969e89b69a5d6c724b2eb7e60b75d7f57b2e04f30f6d99b21174c836f011f54"
  ]),
  ("name-candidate:e029268a45b70ab2a13a1d55be918a2eff46b906cac4727c1c564966855bbc32", [
      "name-candidate:1217ba1d714ddf1b1ee1d7e8ac54305d2b307633df7fb7e10ec6ce2cd2560a2c",
      "name-candidate:4452098f0a0f6ce31e72cba46f1defc300c505e8bc904b0e53ebe61b1487d5a9",
      "name-candidate:e029268a45b70ab2a13a1d55be918a2eff46b906cac4727c1c564966855bbc32"
  ]),
  ("name-candidate:fc841b8d4911f383844b0d611adaafea88350f475af92321846302c14f2b0d3d", [
      "name-candidate:687e6f0fb7a8021d01e57dadf1306d44d31e122bd91bb8b8dc27de8555f444b6",
      "name-candidate:d6705f7d2db7ad20c867c9867c6fde43807a61dd35a155c7bcd641e7d399dba7",
      "name-candidate:fc841b8d4911f383844b0d611adaafea88350f475af92321846302c14f2b0d3d"
  ]),
  ("name-candidate:e6874c0b5630c1d7107483f67b3cc8b13d498968c2867cce814ee592b680e836", [
      "name-candidate:0d4fa90c2861b497c1b258aa9528b4c5cc6d4baa8b56706bfac038018dff31c9",
      "name-candidate:e6874c0b5630c1d7107483f67b3cc8b13d498968c2867cce814ee592b680e836",
      "name-candidate:efd19f9ac788e49d795c1ebd60185bc32e04dfafc90610cc730e61dae73b30ea"
  ]),
  ("name-candidate:5469e462e08177fac26cd0b766b6d1b641a4d842fc3d473a00b78395accd4aa5", [
      "name-candidate:05d1d93824239bee0a90772b9fcb4542ec53c381e66cf10ca370ff00ef25068e",
      "name-candidate:5469e462e08177fac26cd0b766b6d1b641a4d842fc3d473a00b78395accd4aa5",
      "name-candidate:b76af0c647d776afc9fc2b9027166cac42c79cc7a9e512f3797a6713bd40b7d3"
  ]),
  ("name-candidate:16307434de5f1b574ecc9b9db7b2e2964692dd2d22c9523dec2afb7335d73159", [
      "name-candidate:16307434de5f1b574ecc9b9db7b2e2964692dd2d22c9523dec2afb7335d73159",
      "name-candidate:2f6cc049ab0c3009b1ffb9683599c49f1af1d6e85a85c0dc9416c4274c0745ce",
      "name-candidate:6d1719ac141bcb36ca8d911d23615ae6e08a6c1c92e411fd0eb408b3c5bac04a"
  ]),
  ("name-candidate:247f6065a9fd26f128df0a90808d6b1fe24274ba1d31a0610e8160c0450bf694", [
      "name-candidate:247f6065a9fd26f128df0a90808d6b1fe24274ba1d31a0610e8160c0450bf694",
      "name-candidate:313ae261eb10a61f6f7cac3b0df48257804c6666777ee0f66f312168793644c3",
      "name-candidate:d1a6ffdcd6177f59cd65d8d06d2e14c00fcc56916076fa6518354b66d362080a"
  ]),
  ("name-candidate:311006ccc20ad06f922a86193d2f5fa7679cef0a4426619ca8d1b76cff4f5f7e", [
      "name-candidate:311006ccc20ad06f922a86193d2f5fa7679cef0a4426619ca8d1b76cff4f5f7e",
      "name-candidate:9464dd6a0231f001ce75f03c72e0ca5db4f006b73a068af0bd576db642ac3749",
      "name-candidate:ad1f4ab4a662ff39fb06f8436cd9c2cac5726b6f4af02bc88c78d08a819a1483"
  ]),
  ("name-candidate:b6b5592fc01294e9ed0db63698ebc11ea1b9fac34b19584233460a977bb495c0", [
      "name-candidate:595c2ee952320834941e405a0eb37456baabc8af17f94ddbb940e80d57cdad9f",
      "name-candidate:b6b5592fc01294e9ed0db63698ebc11ea1b9fac34b19584233460a977bb495c0",
      "name-candidate:e1630bc73bb7f7760f40281f57d374d7c1cf0a99e91c449c4a49cf6032dc8be1"
  ]),
  ("name-candidate:d85f64738358e1f7e72c1b45a897202ba0bb1a4a0075d58795aeb0403a060979", [
      "name-candidate:6c985818d263d0d2b696305c9ed0c3301a6def792623d0e2e681b3f88d298d3a",
      "name-candidate:d75d7e320109e8b770b7ed5075e31743cf770a6dd43502438f2fcbc1b08af96c",
      "name-candidate:d85f64738358e1f7e72c1b45a897202ba0bb1a4a0075d58795aeb0403a060979"
  ]),
  ("name-candidate:f6bf2d26b7c415fcc28175fdd1e681c86ce139fac04480366fccabe1f38fd505", [
      "name-candidate:150547386312269229cbd3ac7bb8e64a75c488c5cbeb6591bc4854e8b85f8e69",
      "name-candidate:bc825d0a7c3dbe669dc31ccca829cbb1f614ee4fe6ba0b742001b36762075368",
      "name-candidate:f6bf2d26b7c415fcc28175fdd1e681c86ce139fac04480366fccabe1f38fd505"
  ]),
  ("name-candidate:c49c60e4f03cab90a681402a5613b3da0ce297f1e01e022213e3c2857a35ac17", [
      "name-candidate:2cdb067e19784868d293587023be9da643fb9022ec5378bef21775395ff896f8",
      "name-candidate:86e34819264bd530833359863212f5839d4f5924625441dfc1086226c7d809e4",
      "name-candidate:c49c60e4f03cab90a681402a5613b3da0ce297f1e01e022213e3c2857a35ac17"
  ]),
  ("name-candidate:71fe675d698dc107512e99e1d98f34dda4f3e34769ef8cd7dd037d561ce783fb", [
      "name-candidate:00e031375da1b170d2c12549972dda05f612dbb6b35089861a13ef4e80336bcf",
      "name-candidate:4ad3777050876f09276c6cf2107870b3e97872b42119c35dd75e88597957e3ac",
      "name-candidate:71fe675d698dc107512e99e1d98f34dda4f3e34769ef8cd7dd037d561ce783fb"
  ]),
  ("name-candidate:418e32d015ebceb8cef0890ed5430c3c194e0e2aad33d35da41b2897e35cf253", [
      "name-candidate:418e32d015ebceb8cef0890ed5430c3c194e0e2aad33d35da41b2897e35cf253",
      "name-candidate:cddb555049fbe706408771d522d43c0c128e4b89f5249deec5a43bf69580cd41",
      "name-candidate:e9a975c61b3663b661f2e736be0de50f289b9d266aa73c3d567cd166380eff9e"
  ]),
  ("name-candidate:b19e9b54e9b0184c9adef122b52d44812bc0ec8c9dbbcacd2a71428ab629d90b", [
      "name-candidate:51780da1cbcb2200385e7880809781f8d99ac232f2b70116f49837733452d33c",
      "name-candidate:b19e9b54e9b0184c9adef122b52d44812bc0ec8c9dbbcacd2a71428ab629d90b",
      "name-candidate:b529e6b4e584f55bfccee583ebb07c69c6da7d33512dde1e3e79ff2b3fe302aa"
  ]),
  ("name-candidate:1c840b4492ad1cd0752ef8cb6f27a52636365a4d77223b279015acdb49941f17", [
      "name-candidate:1c840b4492ad1cd0752ef8cb6f27a52636365a4d77223b279015acdb49941f17",
      "name-candidate:a75aff1a520ca38165f5f09087560f0265c8447ef4af9887ca7239af97163199",
      "name-candidate:cb47210f205b662031e0895243e7ce1f23695540549e90f50290fae8af460088"
  ]),
  ("name-candidate:6a59680b1074be684ea9847a9aaf80dfd153a0d86731b4031d7975a662325ac7", [
      "name-candidate:6a59680b1074be684ea9847a9aaf80dfd153a0d86731b4031d7975a662325ac7",
      "name-candidate:6f0e2d2f621e5c916631cea9d4a3511ef1f4099c03a72d7313e320433055596d",
      "name-candidate:9ea86b7feb65e622c812eeab38bcac8c1261ba1064a2eff52ab4417d7fd40f1e"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L57763).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
