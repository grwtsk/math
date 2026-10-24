# candidateSelectionsChunk0010

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1af53f6e49a366bdafe48257f0a721d53f864f13ec810d3807339f324ac9539c",
  "kind": "def",
  "lexical_name": "candidateSelectionsChunk0010",
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
  "slug": "candidateselectionschunk0010--cabef3358dbaf16b8a58e8e9",
  "source": {
    "blob": "c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45000,
    "line": 44679,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cabef3358dbaf16b8a58e8e9b16d74f0d879f33170b09b5d10d135c947c6ef9f",
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

Occurrence: `declaration:1af53f6e49a366bdafe48257f0a721d53f864f13ec810d3807339f324ac9539c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44679–45000.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def candidateSelectionsChunk0010 : List (String × List String) :=
[
  ("name-candidate:fb300b6e1db0e42b288cabde667990ac2c1e76ddb898837e1fd2d5338c6c863c", [
      "name-candidate:2097c2a409a2988702798dd4b871a3b83d135387710736e8981d0b97b5b57324",
      "name-candidate:bad1f6a7f9d180a86bb08ab71423e008ce2a620becbb4400ba34c6301e5ec7b7",
      "name-candidate:fb300b6e1db0e42b288cabde667990ac2c1e76ddb898837e1fd2d5338c6c863c"
  ]),
  ("name-candidate:37af231994438db5f7727bdc888dc02cf99355efbd1cef0c9313b0742ca2ed67", [
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
  ("name-candidate:0abb07577d269b2a8c7ef4ae15303d23273fd984c454f9d45496f902fd816c6f", [
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
  ("name-candidate:d791b476e0469141a43c720d69e717a0bce8b2249de3d72e257c02748a6701eb", [
      "name-candidate:4d613bc86faa6cc3d1b4380b0d7cb1b7e646f15903ffa5d74bd3f312658a5f15",
      "name-candidate:cb31c6d5982471c771abc250c761e54464d8cdc930bb3d7eb3f2168575017523",
      "name-candidate:d791b476e0469141a43c720d69e717a0bce8b2249de3d72e257c02748a6701eb"
  ]),
  ("name-candidate:8ada4e42f34ce6f46ef45417a4bceea64e54c9a4da3726b1149ae29a6ec6ffbb", [
      "name-candidate:8ada4e42f34ce6f46ef45417a4bceea64e54c9a4da3726b1149ae29a6ec6ffbb",
      "name-candidate:9c104c53a469ce97cddd1ade91339805c316371947e6694edfe059fe224f589d",
      "name-candidate:ee79a7ce0e0855447572c595cc2bed8d6acef6f3f657b6639fe33cd921822c39"
  ]),
  ("name-candidate:a067d7a3ccbd216ae42787203a33fb41fd8780db17e8ea48b936d2e9fe2abbad", [
      "name-candidate:8521a4ebcd80f1049b3b844c0120da0861aafa27041e6f83ecba4d14deea031c",
      "name-candidate:a067d7a3ccbd216ae42787203a33fb41fd8780db17e8ea48b936d2e9fe2abbad",
      "name-candidate:b5e10731276e3a90fac712ef9305a34298bee7beddab33fdc669754b4587052b"
  ]),
  ("name-candidate:136eb3905cff48f984335500c36fa10ded1ad04d54347e08580f021347c1d539", [
      "name-candidate:136eb3905cff48f984335500c36fa10ded1ad04d54347e08580f021347c1d539",
      "name-candidate:48b04ddc797bab73402b27fa40fcfb0d035a110c489ce7850d1b3fa811908dfb",
      "name-candidate:89b905c0173c49419f33969e9cb5230d3c2e0ea1810aabf9d6a632e0a4b98234"
  ]),
  ("name-candidate:bbf47dbda7b69a57a2c2a5848d14ed0ad008b707d13ff7daaef656c10232649a", [
      "name-candidate:7fe440a3eca85c0b254852c3da9712ca616be390310ab88f852ecec3aa2a4ab1",
      "name-candidate:a070662b8db73ff506718790718c00953ce3d46cff2a02d5fc8d3f873eb17d9e",
      "name-candidate:bbf47dbda7b69a57a2c2a5848d14ed0ad008b707d13ff7daaef656c10232649a"
  ]),
  ("name-candidate:c276869df7ea8ab02a7329c0b81e7c1af75b32b7c9b674d77560f08d0c131afc", [
      "name-candidate:0f0cae7b519bf56072dc200e1022a053ab421cbf825773768de80d318c9c9b19",
      "name-candidate:b41faad2db30ca5fcb96684a0b4215536620aa8e681483784076648dbe61c9d3",
      "name-candidate:c276869df7ea8ab02a7329c0b81e7c1af75b32b7c9b674d77560f08d0c131afc"
  ]),
  ("name-candidate:3cb6fe642b3b7d647a4bdb4f02056cdac41cae6a0a1f164d5311333c385d13c9", [
      "name-candidate:3cb6fe642b3b7d647a4bdb4f02056cdac41cae6a0a1f164d5311333c385d13c9",
      "name-candidate:87a2410d3d20508987bf8b2a105c460dff492b5dfcb561edf79fce098a362337",
      "name-candidate:edf379eb0e4f078e5807141eb9bc5b7438b028acc4678f3ae41c8d6e576e27ce"
  ]),
  ("name-candidate:6663a4f67d17a05d93f0a99c67cb9569ca0b6c27d4d62ffcf4dcb049f867c4f4", [
      "name-candidate:29a9d47bb55d78074481cfdab4650a58353815b988b4fe0cdaff7ce84d92205a",
      "name-candidate:6663a4f67d17a05d93f0a99c67cb9569ca0b6c27d4d62ffcf4dcb049f867c4f4",
      "name-candidate:cb79d655960f3972db4c446e1e69825abb13b89b84d8129cc6335c8fe591cd0a"
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
  ("name-candidate:b5d67c625c5bf7ab0d0e5714a218b4fbd108a5f18a0b6f49a86de6d7c069e896", [
      "name-candidate:04d45a92147bd89c4278256344a8def246b0fd05aba8df4cf8d62f97a155a1a0",
      "name-candidate:b5d67c625c5bf7ab0d0e5714a218b4fbd108a5f18a0b6f49a86de6d7c069e896",
      "name-candidate:fb1fbd3fd66bb485929c1cc59d8df1eed63acf00e68e5f419683b1c3fbc0a033"
  ]),
  ("name-candidate:2fa5a7e948a444229955b8f46291eaa8fc58f405f697cabf3c85cdd7e59987e5", [
      "name-candidate:2fa5a7e948a444229955b8f46291eaa8fc58f405f697cabf3c85cdd7e59987e5",
      "name-candidate:9b25d3bc45246c82a76d09d488ae1d2b82c0229c39d581e56094a6f1a89a843a",
      "name-candidate:e969e89b69a5d6c724b2eb7e60b75d7f57b2e04f30f6d99b21174c836f011f54"
  ]),
  ("name-candidate:4452098f0a0f6ce31e72cba46f1defc300c505e8bc904b0e53ebe61b1487d5a9", [
      "name-candidate:1217ba1d714ddf1b1ee1d7e8ac54305d2b307633df7fb7e10ec6ce2cd2560a2c",
      "name-candidate:4452098f0a0f6ce31e72cba46f1defc300c505e8bc904b0e53ebe61b1487d5a9",
      "name-candidate:e029268a45b70ab2a13a1d55be918a2eff46b906cac4727c1c564966855bbc32"
  ]),
  ("name-candidate:687e6f0fb7a8021d01e57dadf1306d44d31e122bd91bb8b8dc27de8555f444b6", [
      "name-candidate:687e6f0fb7a8021d01e57dadf1306d44d31e122bd91bb8b8dc27de8555f444b6",
      "name-candidate:d6705f7d2db7ad20c867c9867c6fde43807a61dd35a155c7bcd641e7d399dba7",
      "name-candidate:fc841b8d4911f383844b0d611adaafea88350f475af92321846302c14f2b0d3d"
  ]),
  ("name-candidate:0d4fa90c2861b497c1b258aa9528b4c5cc6d4baa8b56706bfac038018dff31c9", [
      "name-candidate:0d4fa90c2861b497c1b258aa9528b4c5cc6d4baa8b56706bfac038018dff31c9",
      "name-candidate:e6874c0b5630c1d7107483f67b3cc8b13d498968c2867cce814ee592b680e836",
      "name-candidate:efd19f9ac788e49d795c1ebd60185bc32e04dfafc90610cc730e61dae73b30ea"
  ]),
  ("name-candidate:b76af0c647d776afc9fc2b9027166cac42c79cc7a9e512f3797a6713bd40b7d3", [
      "name-candidate:05d1d93824239bee0a90772b9fcb4542ec53c381e66cf10ca370ff00ef25068e",
      "name-candidate:5469e462e08177fac26cd0b766b6d1b641a4d842fc3d473a00b78395accd4aa5",
      "name-candidate:b76af0c647d776afc9fc2b9027166cac42c79cc7a9e512f3797a6713bd40b7d3"
  ]),
  ("name-candidate:6d1719ac141bcb36ca8d911d23615ae6e08a6c1c92e411fd0eb408b3c5bac04a", [
      "name-candidate:16307434de5f1b574ecc9b9db7b2e2964692dd2d22c9523dec2afb7335d73159",
      "name-candidate:2f6cc049ab0c3009b1ffb9683599c49f1af1d6e85a85c0dc9416c4274c0745ce",
      "name-candidate:6d1719ac141bcb36ca8d911d23615ae6e08a6c1c92e411fd0eb408b3c5bac04a"
  ]),
  ("name-candidate:d1a6ffdcd6177f59cd65d8d06d2e14c00fcc56916076fa6518354b66d362080a", [
      "name-candidate:247f6065a9fd26f128df0a90808d6b1fe24274ba1d31a0610e8160c0450bf694",
      "name-candidate:313ae261eb10a61f6f7cac3b0df48257804c6666777ee0f66f312168793644c3",
      "name-candidate:d1a6ffdcd6177f59cd65d8d06d2e14c00fcc56916076fa6518354b66d362080a"
  ]),
  ("name-candidate:311006ccc20ad06f922a86193d2f5fa7679cef0a4426619ca8d1b76cff4f5f7e", [
      "name-candidate:311006ccc20ad06f922a86193d2f5fa7679cef0a4426619ca8d1b76cff4f5f7e",
      "name-candidate:9464dd6a0231f001ce75f03c72e0ca5db4f006b73a068af0bd576db642ac3749",
      "name-candidate:ad1f4ab4a662ff39fb06f8436cd9c2cac5726b6f4af02bc88c78d08a819a1483"
  ]),
  ("name-candidate:595c2ee952320834941e405a0eb37456baabc8af17f94ddbb940e80d57cdad9f", [
      "name-candidate:595c2ee952320834941e405a0eb37456baabc8af17f94ddbb940e80d57cdad9f",
      "name-candidate:b6b5592fc01294e9ed0db63698ebc11ea1b9fac34b19584233460a977bb495c0",
      "name-candidate:e1630bc73bb7f7760f40281f57d374d7c1cf0a99e91c449c4a49cf6032dc8be1"
  ]),
  ("name-candidate:6c985818d263d0d2b696305c9ed0c3301a6def792623d0e2e681b3f88d298d3a", [
      "name-candidate:6c985818d263d0d2b696305c9ed0c3301a6def792623d0e2e681b3f88d298d3a",
      "name-candidate:d75d7e320109e8b770b7ed5075e31743cf770a6dd43502438f2fcbc1b08af96c",
      "name-candidate:d85f64738358e1f7e72c1b45a897202ba0bb1a4a0075d58795aeb0403a060979"
  ]),
  ("name-candidate:bc825d0a7c3dbe669dc31ccca829cbb1f614ee4fe6ba0b742001b36762075368", [
      "name-candidate:150547386312269229cbd3ac7bb8e64a75c488c5cbeb6591bc4854e8b85f8e69",
      "name-candidate:bc825d0a7c3dbe669dc31ccca829cbb1f614ee4fe6ba0b742001b36762075368",
      "name-candidate:f6bf2d26b7c415fcc28175fdd1e681c86ce139fac04480366fccabe1f38fd505"
  ]),
  ("name-candidate:c49c60e4f03cab90a681402a5613b3da0ce297f1e01e022213e3c2857a35ac17", [
      "name-candidate:2cdb067e19784868d293587023be9da643fb9022ec5378bef21775395ff896f8",
      "name-candidate:86e34819264bd530833359863212f5839d4f5924625441dfc1086226c7d809e4",
      "name-candidate:c49c60e4f03cab90a681402a5613b3da0ce297f1e01e022213e3c2857a35ac17"
  ]),
  ("name-candidate:00e031375da1b170d2c12549972dda05f612dbb6b35089861a13ef4e80336bcf", [
      "name-candidate:00e031375da1b170d2c12549972dda05f612dbb6b35089861a13ef4e80336bcf",
      "name-candidate:4ad3777050876f09276c6cf2107870b3e97872b42119c35dd75e88597957e3ac",
      "name-candidate:71fe675d698dc107512e99e1d98f34dda4f3e34769ef8cd7dd037d561ce783fb"
  ]),
  ("name-candidate:51780da1cbcb2200385e7880809781f8d99ac232f2b70116f49837733452d33c", [
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
  ]),
  ("name-candidate:3e3fe02bc2ba11309147077ace0f964a31b4fb3491cb34e9d130513a7a13bfc9", [
      "name-candidate:3e3fe02bc2ba11309147077ace0f964a31b4fb3491cb34e9d130513a7a13bfc9",
      "name-candidate:4c62ec2cd8a6ac882e0e01433cb39b9ed5ec61ee4917f8e4ae29640cd1bfd078",
      "name-candidate:bc42fc045ea15f9d72517ed8436d732b40def18a489a9f1338a7c83539a3b618"
  ]),
  ("name-candidate:b352323b0ff06fcf94ba73631c61353462bbe4c8e074bd426dd71b1ba78de673", [
      "name-candidate:2531b0697b394edf9ba6aabd9ba742426a0aaba1dfa0013c9af01fe1931d4edd",
      "name-candidate:988b8b5613fa083c0ff598cf85dcd56b9209cb40b45457ddbf59b3656abca685",
      "name-candidate:b352323b0ff06fcf94ba73631c61353462bbe4c8e074bd426dd71b1ba78de673"
  ]),
  ("name-candidate:9552c0a02c325d874c57cec7a3661828bc6e11dd63d0cc29692573aebccd549c", [
      "name-candidate:51036b7ea74922261d9cef141b1e24d05b031b60ebf0d38bfad7126a6a3de1df",
      "name-candidate:9552c0a02c325d874c57cec7a3661828bc6e11dd63d0cc29692573aebccd549c",
      "name-candidate:bf35f46ae9a05b9b7f43ec9462b3dcb25458ff2bc8ff66fa92e16c0d25b453e2"
  ]),
  ("name-candidate:952874a1680055295360962adae31a61016e863a3ab9baaa9e693edfb8c430d5", [
      "name-candidate:4020fe64528e56276c202277b1c8e40b627a07f13c77c2531c01d7b069adfe45",
      "name-candidate:952874a1680055295360962adae31a61016e863a3ab9baaa9e693edfb8c430d5",
      "name-candidate:f8800080e7a97e4ba347112b04b0d1a5302f63d43c77cb8e4541d5ffee07f48f"
  ]),
  ("name-candidate:47b576039f4043d3d58aa739e78844c869d2462927b8fb565e2a8b7e5b1b949e", [
      "name-candidate:16b88ae168006618ebbf2466dd8fa9bd4089a818c2bfb1e6a90c8b6255e0649b",
      "name-candidate:47b576039f4043d3d58aa739e78844c869d2462927b8fb565e2a8b7e5b1b949e",
      "name-candidate:964df9f45ed1f7f178e065232b4d5f951ec2bd15af7c0d937e5c26fd28be4f08"
  ]),
  ("name-candidate:59fad7970a023d7cf50b3dd27860744cc79d0de571e4d231bfcd5172e1d817de", [
      "name-candidate:158f45fc7eb26d96eea645cbc2eb38f71d2c3533430dba0184ef72794e2e2ca5",
      "name-candidate:59fad7970a023d7cf50b3dd27860744cc79d0de571e4d231bfcd5172e1d817de",
      "name-candidate:d0382d543eebac96eed4eb9762653203cbe799b9da9a1c326085eaa958398037"
  ]),
  ("name-candidate:536a66d52676cc89fb95188798e40570c6e0a91c260ad5172365b614d81f1408", [
      "name-candidate:536a66d52676cc89fb95188798e40570c6e0a91c260ad5172365b614d81f1408",
      "name-candidate:9a1f7c20493f9a2da923f26e7c2e645f27815a5985297328e4101598406e6cd1",
      "name-candidate:d048ce2988e1e38f05f33ad261fc3169a6991c2ee9630b30c8f5c2c08b60e337"
  ]),
  ("name-candidate:d120da175609030983d399d2967b0a7e40e12b1283e200444d96b528ef9c31d7", [
      "name-candidate:a04db7253519b0669868e02b866ef9ba877fc88fe5d1f51b53fc32bac686b62b",
      "name-candidate:d120da175609030983d399d2967b0a7e40e12b1283e200444d96b528ef9c31d7",
      "name-candidate:dd77433c7d2b04e929320ba0bf3e90d0b6db6f513cb3d526201fa0da68b9af95"
  ]),
  ("name-candidate:372f1bfb3c759bde6cd0760738ed23b5e94d192d27c696cd4a4b8cda0566c5f3", [
      "name-candidate:372f1bfb3c759bde6cd0760738ed23b5e94d192d27c696cd4a4b8cda0566c5f3",
      "name-candidate:a30e2fd898ca3b61e0b91cba4671bdbe068a7c6eee364f1f3f6944bb2d8521eb",
      "name-candidate:a48090b49e3352986c2669c807995fd1ac8900324c63c29981747703570db5dd"
  ]),
  ("name-candidate:a784651e80fae5e9e3a50c51c428a02af6a57d92077de693646a067375286608", [
      "name-candidate:a784651e80fae5e9e3a50c51c428a02af6a57d92077de693646a067375286608",
      "name-candidate:b31dbabda7d51ec8d5ad82304ff40f9905c707510f87af1a79bc3715e37e2f07",
      "name-candidate:e991733a2a94320e353498c884b799e2e314e289c0640b4d652eaba8e240efdd"
  ]),
  ("name-candidate:4603b608838ff5e97d6b9fff39730cf106d7fabf2c39457452eaeb3f0bf70a32", [
      "name-candidate:4603b608838ff5e97d6b9fff39730cf106d7fabf2c39457452eaeb3f0bf70a32",
      "name-candidate:6699415d6ccd7555a86872b25946fea465ee41dfe85f7cfc63192db53e974ad9",
      "name-candidate:bf3ec61b1b21761d35cfb57441a07b1f41a52b5832d855db2ac2572b0e167c06"
  ]),
  ("name-candidate:ddf843dffaf684d06a0627f0e0f3173ddd703b10e7161d4bac70aaa75adf8ca1", [
      "name-candidate:ddf843dffaf684d06a0627f0e0f3173ddd703b10e7161d4bac70aaa75adf8ca1"
  ]),
  ("name-candidate:bf66033f5180860780d91e715a80dfcd0d5ee38f6f6c65ae1fb12b8ccaf0481e", [
      "name-candidate:12829181e5b24c9c20b3de07d725965a67a854c7bce73fb61a29817f972d2c9b",
      "name-candidate:574f1e64d9dfa93d6809d5c5a8f0aef3b7879a93bf6a015d12dfdaba3fb6bf0d",
      "name-candidate:bf66033f5180860780d91e715a80dfcd0d5ee38f6f6c65ae1fb12b8ccaf0481e"
  ]),
  ("name-candidate:0975957067c74b698528af0e49dac299709d36d38ff7dab9a34ffb3447fdda50", [
      "name-candidate:0975957067c74b698528af0e49dac299709d36d38ff7dab9a34ffb3447fdda50",
      "name-candidate:6921b69a8705cc7bfbd19e1424927a4f370cad63045cc5c2ad6495650275fec3",
      "name-candidate:889a9f6ffa6be2c01337d85f1c9ceb157080956f71a0961ea82b1cc33bb7ee58"
  ]),
  ("name-candidate:745f5906e7e20bfc2aa980792516ff3d13e89fa5749c6a925edc383b263dacee", [
      "name-candidate:745f5906e7e20bfc2aa980792516ff3d13e89fa5749c6a925edc383b263dacee",
      "name-candidate:c7d18842c19186cd3a48eec86319fb2ae32b0d85cbe3d25ac0681905763cf2bb",
      "name-candidate:ff2bbb327db7d0de8cda5e35af393c5da47178bbbba9ea20f45bfb8b143c866f"
  ]),
  ("name-candidate:164d6ce0c8a82e57dd2fa94a4d80fa52b9fd801f35357770679a377ee6b5ddb2", [
      "name-candidate:05fa0c6edc5aeb8fd8b97988de2fe67f4dd24e671561627f66c0f9ef33ecb165",
      "name-candidate:164d6ce0c8a82e57dd2fa94a4d80fa52b9fd801f35357770679a377ee6b5ddb2",
      "name-candidate:425544f1c6864edaec2186f47021a0123714a11e6ce889ea563287f172ca912a"
  ]),
  ("name-candidate:37a599abed770f83cf883dc3df8ac56f50a2aa7537c511317ea95a21677175fb", [
      "name-candidate:37a599abed770f83cf883dc3df8ac56f50a2aa7537c511317ea95a21677175fb",
      "name-candidate:b6e36c4d3866ebf9fcba16fc6dfc523ec8b2f1464e622ef72d07c7b24b61bef8",
      "name-candidate:f0ac37fcf1db06caa6bfcbc992c7b1194426abee0b8d93ce4268caadff7a6ea4"
  ]),
  ("name-candidate:a19657218526a401c2a1a344e094a71f9b37902ac6d39eef983b320037a4b4b5", [
      "name-candidate:240cda7c254af430131bc06d8dc0fc8c7472b2542d3639a0949078276939268d",
      "name-candidate:6e169849bb9b31cc5b8375bf88887cfc4c121b8775bfc1e7b48dea891afe9a31",
      "name-candidate:a19657218526a401c2a1a344e094a71f9b37902ac6d39eef983b320037a4b4b5"
  ]),
  ("name-candidate:13eae17d67ca3348b9d9a640d3e9d61f42f38ad8b9014eaaeeb8d64aaeb84965", [
      "name-candidate:13eae17d67ca3348b9d9a640d3e9d61f42f38ad8b9014eaaeeb8d64aaeb84965",
      "name-candidate:410a6d6a9dcea23be95cffb435c552cabd51af8d705d325701dc279ad6383401",
      "name-candidate:d6b6692eaadb15d40f158ec3c49965237ea7a127ecfb7911f52ed26132148d6d"
  ]),
  ("name-candidate:dd604e1791f071e0a0c28d5b6e478a1bf16af21669386a367c8fc980e6c8ffb5", [
      "name-candidate:2d9f2b5706a8ab6ec778846b19214cbf84536ddabe016e21e7b0dfec1c49d5e6",
      "name-candidate:7ace74fb8c35fcced6e976e00ff4686dbff8ed8772de3f6242f91d8f9b48fb49",
      "name-candidate:dd604e1791f071e0a0c28d5b6e478a1bf16af21669386a367c8fc980e6c8ffb5"
  ]),
  ("name-candidate:4cdd576d1e5aedae944f57042fc4c0c9418215d52bd013744a9d1d913e186632", [
      "name-candidate:33555d372ce05957063bc30e35c3a85730f9993bd2c08560d2ce1174f930ee46",
      "name-candidate:4cdd576d1e5aedae944f57042fc4c0c9418215d52bd013744a9d1d913e186632",
      "name-candidate:9e63b86bc8468057097acea74fd22dd12bfcabd91d4957354f232ef3a9e4b375"
  ]),
  ("name-candidate:4f98f793fffdc8267e8238f5341c8d0e4a97d396f71df4f8e564a15562ffdb37", [
      "name-candidate:4f98f793fffdc8267e8238f5341c8d0e4a97d396f71df4f8e564a15562ffdb37",
      "name-candidate:f2a8115d5dfd443fbea58db78ff363671b2fd040f0fd5e10756805b8b0503d18",
      "name-candidate:fbd4168f049c1f7ffc0812fd19ab6cac33d4bcee09b0ec1029fd3077d50f8d8b"
  ]),
  ("name-candidate:003c0d0049a78bd571bc99c78d737f845bbc8d893c49a456b1e5e3d6e6685e35", [
      "name-candidate:003c0d0049a78bd571bc99c78d737f845bbc8d893c49a456b1e5e3d6e6685e35",
      "name-candidate:6012bec20e8e8450e4e9c407d68ebc65bb943079c3c9beba9d8376286f7f3a0f",
      "name-candidate:aaf34a8ff3b7c9375484c795e7ba3b3a559ffda06e535596ba1f393b60a795e6"
  ]),
  ("name-candidate:8f140d15a926c405fc46a4be0e225c5544012a8dc541b2498d0466f222e6acb3", [
      "name-candidate:40c891fee1aeb1bd687b54b736e11377ef2026b10fbe5a2004392eb3ca271c21",
      "name-candidate:76ce52d591838b7067676debd79727118fa5fdddfd3420e3ff0944b691cfb3cb",
      "name-candidate:8f140d15a926c405fc46a4be0e225c5544012a8dc541b2498d0466f222e6acb3"
  ]),
  ("name-candidate:813aa94851a67da546b41c3b44e80c1805d8a1bf5b796833d6eb762a654028af", [
      "name-candidate:77119392b9fd75b0cddac73fc7040a6bf557fac8d346cb5c4c2fd922e97aa16a",
      "name-candidate:813aa94851a67da546b41c3b44e80c1805d8a1bf5b796833d6eb762a654028af",
      "name-candidate:b288de6e0baf34dfb8e564f3862acd342e2002a18749a1f9335eef78aa29a6b6"
  ]),
  ("name-candidate:945f2ad68b9170444b6466c264155257163d23e0c52b9dfc44a393093710fcb3", [
      "name-candidate:300f6d693a76d5a90830a4c8d8aaf513f38e6ab2129181133e3844a302b148ee",
      "name-candidate:945f2ad68b9170444b6466c264155257163d23e0c52b9dfc44a393093710fcb3",
      "name-candidate:9f5b7bb8679b6109e074c3c5987018e94031dbe8c2e6579fbf01d178ba6d2765"
  ]),
  ("name-candidate:a2f96894ce8915e79428dbba890d663f376e04a525ebec9ad0fc7a1070ba2a18", [
      "name-candidate:2add06e62491c897763a8092c45a84280c0004bf7ccda7eb4c17ebfea633a866",
      "name-candidate:a2f96894ce8915e79428dbba890d663f376e04a525ebec9ad0fc7a1070ba2a18",
      "name-candidate:d5aaed1ad1ee7f5a57da287e565148d43aa17a86e7cd6fd006e19df81e1ca928"
  ]),
  ("name-candidate:f3724e9ea5c30f279dfa4ded5d51cc6e437987788fae91a79f229fe8c8edfd5b", [
      "name-candidate:42ea8fc1ff1e96ac342500fae81ff89c3d93b4b1c8fd70332d223ca295298055",
      "name-candidate:52ec5aceb45f1cf5bf0e6f309f157566c962cda30fcb7bb81126b402448a6003",
      "name-candidate:f3724e9ea5c30f279dfa4ded5d51cc6e437987788fae91a79f229fe8c8edfd5b"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean#L44679).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
