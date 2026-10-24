# selectedParentRowsChunk0009

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:16e10444b8e7c4570d39c3502c1e9b79411b870ae382e13cfa96d381e10ca458",
  "kind": "def",
  "lexical_name": "selectedParentRowsChunk0009",
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
  "slug": "selectedparentrowschunk0009--6b5329f6005d0b0c6ed55d57",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133969,
    "line": 133770,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6b5329f6005d0b0c6ed55d57a0fbdc748adf267e1f77325e092ba55913177e7a",
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

Occurrence: `declaration:16e10444b8e7c4570d39c3502c1e9b79411b870ae382e13cfa96d381e10ca458`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133770–133969.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedParentRowsChunk0009 : List (String × String × List String) :=
[
  ("formal-neighborhood:44a94317efe9b844eb92335e3224bd86853cf17393e57d1ef63da14dc1acb921", "formal-neighborhood:15dfb597c1618625ee5639b8b370404fabe5fb82d37c58746b4114b77522d1ea", [
      "formal-neighborhood:15dfb597c1618625ee5639b8b370404fabe5fb82d37c58746b4114b77522d1ea"
  ]),
  ("formal-neighborhood:44b1b6432045d823ed899ea13b1a39d72473644344b0d51ed21273537ab45315", "formal-neighborhood:80223206eb9786e6c0e5e4ccf657659f7d7cceb40cd70394a5bf9a04d4c766d8", [
      "formal-neighborhood:80223206eb9786e6c0e5e4ccf657659f7d7cceb40cd70394a5bf9a04d4c766d8"
  ]),
  ("formal-neighborhood:44b2e7df8b0b2eed2cc2fb069a08ad210b0073c00cc84b43861e02bd8fecbb4a", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:44d19bbbaf41496e297c17012c9bbf396c984c8676463b5734587ca0a7b97097", "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a", [
      "formal-neighborhood:565872b1a8f2e23858af42daa2b5daece49158839befdb57203d855e58b155b3",
      "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a"
  ]),
  ("formal-neighborhood:44f41c070636ddbcd0aa6cfc051eb0c2729377b6c58e0627f92cc7a10dcaea01", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4551f1e65983ab0a45ab3e641c9934db8ac7e06a981bace370f9513d96db5b95", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4572ed125fefb9eb88e3bb2ca8b14b387c244a6a8258a204988d20258bb421f6", "formal-neighborhood:4720bc422e48c3b41e8786fa4c29b7145575157deaa66c72c8aaacc9eb58e02a", [
      "formal-neighborhood:4720bc422e48c3b41e8786fa4c29b7145575157deaa66c72c8aaacc9eb58e02a"
  ]),
  ("formal-neighborhood:45999b21850e1a9a3e7b3436809d43ac04e3a2713865d8f5f913fcdd9695fa8a", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:45a805203fc57015fe5aeba2ec46937a2c0fe275b0d784c96cb3ebbae8e9fb0e", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:45ad6965a022e88d5be862106476d2be5222acc301c4bc1ec34e021b72262eb3", "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a", [
      "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a"
  ]),
  ("formal-neighborhood:45be44443e421891544557b68fd9e6a0c1abfc9ed8e7c36b65d2da4678537d3e", "formal-neighborhood:13286c818d376ce96c289e47e85c5edd94bcad22e44d0668b5ee880d1af46712", [
      "formal-neighborhood:13286c818d376ce96c289e47e85c5edd94bcad22e44d0668b5ee880d1af46712"
  ]),
  ("formal-neighborhood:45dc292123381ef1a05fa393d956fc79bde2d564680a9ce4c586a37f1428a285", "formal-neighborhood:23c4bedec07dc9fff0e80eb902166d412c341d4358b304c80125ed55a0fd73ed", [
      "formal-neighborhood:23c4bedec07dc9fff0e80eb902166d412c341d4358b304c80125ed55a0fd73ed"
  ]),
  ("formal-neighborhood:460d5c5585a9d62d077e73c6b30a7437e594ff660e85a9bcf62582525c48658b", "formal-neighborhood:29350bc1fe248b416d861ba5713edcde8e1ec94a51c2c1e669c0f2256c74a446", [
      "formal-neighborhood:29350bc1fe248b416d861ba5713edcde8e1ec94a51c2c1e669c0f2256c74a446"
  ]),
  ("formal-neighborhood:460dd01dac2478716d3864070771bd8af78664a18d737faf64a2318225723b1f", "formal-neighborhood:377b598359d96a9c19e6e592b40795e9dd2c11436fd136716ffdfde2c1424a30", [
      "formal-neighborhood:377b598359d96a9c19e6e592b40795e9dd2c11436fd136716ffdfde2c1424a30"
  ]),
  ("formal-neighborhood:46106b79feff33e5051a96000223b814b166f73f07852afb0db7752e45f7a768", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:461592aae7eeb1ff1ecfddfd44393e3d9729aca9328a13042be3f505793eedb9", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4645abc9c2ae867e2cab7284786159d516447275c844863cdd6365fdf193e034", "formal-neighborhood:481d14c2a3777439eec8e8ef1cbe146cdfc2c9a67cb7f8f3ec1323b1c6ab1b8b", [
      "formal-neighborhood:481d14c2a3777439eec8e8ef1cbe146cdfc2c9a67cb7f8f3ec1323b1c6ab1b8b"
  ]),
  ("formal-neighborhood:46670621055b36bd522024c8a9713879d4827febd6fd360a968ce1e9296a0164", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:46746d150cf3864ff228c49601b4a98ed95c1cd829396e790c0dfc177ca6318c", "formal-neighborhood:9926c61b70f9581613897ba0c9178560f8aac2f192f81117f7dbb0677ae01270", [
      "formal-neighborhood:9974e0eb7b3514c52de76d4342389baaacc3e7aa6afddeb9180684ed683fcd20",
      "formal-neighborhood:9926c61b70f9581613897ba0c9178560f8aac2f192f81117f7dbb0677ae01270"
  ]),
  ("formal-neighborhood:4688988ea78f6da1ae1ff80fe81881f8a724913c0698e380adf36de306f427cb", "formal-neighborhood:aa05df4ddb4a38180d5fed3e5ad7b971e513f3ceed2384c16c5ab7820b12aec1", [
      "formal-neighborhood:aa05df4ddb4a38180d5fed3e5ad7b971e513f3ceed2384c16c5ab7820b12aec1"
  ]),
  ("formal-neighborhood:46b8368c0386a878e7b5146163defdfd8cbb65bd2b75ca7d737f140dbf75ba49", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:46c1e4f0ab3f37245a154a78f5e37cc17c5abc46c91a6b6814b6ef43bf9f1a82", "formal-neighborhood:bfbcfde1ab7603e88f1f64fced086be53c638527f302246314667c75d76142da", [
      "formal-neighborhood:bfbcfde1ab7603e88f1f64fced086be53c638527f302246314667c75d76142da"
  ]),
  ("formal-neighborhood:46e4fd722d8c880fe29f69de0df355aacc40ca151ee878c4d5e27cb28647ae4d", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:46edd2b9cbcb91f07a9fdeba4a7571d479589e4019a98f256895d17799789ecf", "formal-neighborhood:0ccdc80bd326968deef91fab9c8bfd76dfe8da9272155d21fce72a35eea6a389", [
      "formal-neighborhood:0ccdc80bd326968deef91fab9c8bfd76dfe8da9272155d21fce72a35eea6a389"
  ]),
  ("formal-neighborhood:46fe21ac1027ac07b23aeffaf93f60f1d157a2c8cc7ab768ab5a780b70d0b35b", "formal-neighborhood:3240e8737ea9f5c516a8f1c498474c93ca146ef50ec95beea6a344b1e110f00d", [
      "formal-neighborhood:3240e8737ea9f5c516a8f1c498474c93ca146ef50ec95beea6a344b1e110f00d"
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
  ("formal-neighborhood:479ea9bb375897add42cde63900a37b35a450d3bd7c1b5c78608308075766c3a", "formal-neighborhood:1fbae47b3ce53478213d126398d7f2123e881a693dff0cb7b8725d1a0047e970", [
      "formal-neighborhood:1fbae47b3ce53478213d126398d7f2123e881a693dff0cb7b8725d1a0047e970"
  ]),
  ("formal-neighborhood:481d14c2a3777439eec8e8ef1cbe146cdfc2c9a67cb7f8f3ec1323b1c6ab1b8b", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:483ee8208797b21c4adcf64430b5a668eaf8ec9d6db218b2efb1ebe8dd1a122b", "formal-neighborhood:23c4bedec07dc9fff0e80eb902166d412c341d4358b304c80125ed55a0fd73ed", [
      "formal-neighborhood:23c4bedec07dc9fff0e80eb902166d412c341d4358b304c80125ed55a0fd73ed"
  ]),
  ("formal-neighborhood:48784e378203e22fc24d4c913c8ce2f1cadce836fa1d619b1dfeaf2f49dde81c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:487ce8bb2b6763463132837c4cc3267b814a1aa318f7bcab876355d3bd4b7301", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:488da98e0474c0f1b9e44a12e8cfc7eeb070bd7319a8dcf842d57e0df52e1f0e", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:48a2c4faa4e5158272695bb05a6fbdd4196aec4aadf4d2ba1fbb9554387378b4", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:48ab8422e12180e754489177d11537bd2001a3a712197e70d965a08bcef7fa4e", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:48badc0115b6c01ca0edce134d9e127f8e44e7d7adf4aea267cf6cd18c40f303", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:48bd33ad33234f7812b29c5af3c6fdbff155c9e000a0f85170be44c0f46d845b", "formal-neighborhood:255133780f3d3f3172676bcc229ac54c60c8c4bd5eb60bceb24c6671ec51b22c", [
      "formal-neighborhood:255133780f3d3f3172676bcc229ac54c60c8c4bd5eb60bceb24c6671ec51b22c"
  ]),
  ("formal-neighborhood:492192954f331af060f96739a78e9ad5da05506a68d45e97493eb8d3ec6c5ba2", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:495f953de5764037d810f4b8604975c4704064bfcd8f77da298b28af56746fc4", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:499c8727ae164debcc16d31582d534f8468a3746c07f9247a7676580c4d5269f", "formal-neighborhood:6cda5aab5a336b82481ba4210de8551709e5dd07f824300a182e0b68ff428825", [
      "formal-neighborhood:6cda5aab5a336b82481ba4210de8551709e5dd07f824300a182e0b68ff428825"
  ]),
  ("formal-neighborhood:49c2ece485f3e081ecaddd224a2200e402512b0dddee766f066676538fcd8868", "formal-neighborhood:07f2c3a9d990b17e5bdbeecfa1ac1f10c17431aebbaf9d2d7ad8f82465ce79b6", [
      "formal-neighborhood:fed4d3d4e96e32edf94744db129a08a36fd509ba6c7251a305fda41b7cefbbd7",
      "formal-neighborhood:07f2c3a9d990b17e5bdbeecfa1ac1f10c17431aebbaf9d2d7ad8f82465ce79b6"
  ]),
  ("formal-neighborhood:49f709d8c7efd304ee78a882658f867babab897974a1ddd64bc9c5e14c80fffa", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:49fdb330d5fe0c4b97514f0dbbe917bb18ceda1ba041c567f17079de662e41a6", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:4a360e3d5cf4fa4efc786749ae057811ad3dbcd1f2813c2efc49b077b2fb6d4e", "formal-neighborhood:da40cf4500ad5a07503dfa87e3e7a17a99df33fdd64203069c4a86cce77a33ee", [
      "formal-neighborhood:da40cf4500ad5a07503dfa87e3e7a17a99df33fdd64203069c4a86cce77a33ee"
  ]),
  ("formal-neighborhood:4a5067565044eefcb437ff9b257a502f457adf583a4cde1b5ff641443cd9349d", "formal-neighborhood:686a2a3936f857e069b2000f1d645fab292ab8e3cba8ffc9a6293ecbd734d977", [
      "formal-neighborhood:686a2a3936f857e069b2000f1d645fab292ab8e3cba8ffc9a6293ecbd734d977"
  ]),
  ("formal-neighborhood:4a78139855b24539202092ca01d095e8fe9a4f759f03921f1f11b709bb658f73", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:4aaadf767eeba3e6af90635f82d2654441d72fc520780432552bdfab4b675466", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:4aad956f72b2a884d395d45deb3c9784caad5b3218a054fd666e3d6b4257c957", "formal-neighborhood:bbe03a46272c93b5aefa2b7216991f9a6fd0550ad2ad23a5f0e921711fa564e2", [
      "formal-neighborhood:bbe03a46272c93b5aefa2b7216991f9a6fd0550ad2ad23a5f0e921711fa564e2"
  ]),
  ("formal-neighborhood:4ac148bdad9eaabb9271856f13ec85ab0ddb3388eb47c55d72303e9c6d4681dd", "formal-neighborhood:fe158ec9621c8804d6fffab90957736e58486d3fab5abb064e8e61db87516f29", [
      "formal-neighborhood:fe158ec9621c8804d6fffab90957736e58486d3fab5abb064e8e61db87516f29"
  ]),
  ("formal-neighborhood:4af1fa5ee2f982c54169de5163fa60137aaeaed9bf3916ed6a21009bedbb8a08", "formal-neighborhood:10df30505a11183f493570089b0808147dbcb86933ce38d0629c47a4dba134f7", [
      "formal-neighborhood:10df30505a11183f493570089b0808147dbcb86933ce38d0629c47a4dba134f7"
  ]),
  ("formal-neighborhood:4b075b384d4a367b8c9ddc94950cd18e793f602a821748bddde8378aa6eadc61", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4b3d2372256971473a56c35f477d98525fd0288ee3a9b791a8502cc8cbe03237", "formal-neighborhood:13286c818d376ce96c289e47e85c5edd94bcad22e44d0668b5ee880d1af46712", [
      "formal-neighborhood:13286c818d376ce96c289e47e85c5edd94bcad22e44d0668b5ee880d1af46712"
  ]),
  ("formal-neighborhood:4b50f3a1f3da775fb59214024e06bac9e6204e61fb13cfae1e0d5cb55a3b389c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4b78977d97fe967d08822aa6c6d4a1871510e1007cae9cb6a89df55029ea6f2d", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4b8e66ae273e1fcd7c3e3e62271b425058af496b00341329f6df0e2eb41f56fc", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4bb8b186c306ed200e1e21198aafa136df76bdefb748eb8ba1b3f8d0d15883f6", "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378", [
      "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378"
  ]),
  ("formal-neighborhood:4c0a12b7f5972867752580babf521a589b9a364abfea6ca8cb9f335bbc4f3ebd", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4c2c8afa12e56b6240c70f0cf5f151e9d3f9a7d49f65429a30d2c6d215c6e209", "formal-neighborhood:18de0ee2a2b088c54dea1387b37bdb0bc7d883e4ccb6a20ce8de2d3b1b130cde", [
      "formal-neighborhood:18de0ee2a2b088c54dea1387b37bdb0bc7d883e4ccb6a20ce8de2d3b1b130cde"
  ]),
  ("formal-neighborhood:4c50760dd0a040f14adb6f9cd05aad9a75bf695aaaa9d57bda2f3658ae38e1a4", "formal-neighborhood:bdaa31c9842e1bd4f9ad9b6f6e9adcdd0b99dfaa499de478a4a10ea8ff8342fd", [
      "formal-neighborhood:bdaa31c9842e1bd4f9ad9b6f6e9adcdd0b99dfaa499de478a4a10ea8ff8342fd"
  ]),
  ("formal-neighborhood:4cad355a20bfaae7656914d093f26af6d4528d89c0e5ecae5615f3c813bc5083", "formal-neighborhood:af2c0242a0ec82004560ff1d0899192b9e4660b3f518a4a9d4e962cec1459797", [
      "formal-neighborhood:af2c0242a0ec82004560ff1d0899192b9e4660b3f518a4a9d4e962cec1459797"
  ]),
  ("formal-neighborhood:4cae19cc0e0c92502065ad8ea7ffa3a84023a16c8c620994c376d962f344b30c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:4cc73a448feee92ff91f1c1b1cf28f32ce10f0ae06c811fcc7aaef2d4973baf6", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:4cd76440037af01696289970fed8ec43bab2894849f5a49591d3afa8481640b7", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L133770).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
