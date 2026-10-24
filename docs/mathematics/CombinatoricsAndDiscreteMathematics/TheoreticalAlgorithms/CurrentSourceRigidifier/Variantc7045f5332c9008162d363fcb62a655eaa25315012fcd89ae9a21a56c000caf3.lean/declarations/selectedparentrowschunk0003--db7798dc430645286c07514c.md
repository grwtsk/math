# selectedParentRowsChunk0003

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9cb656a257fd1146154cf114bceed714821dd39b12510a51b2868670c95c7547",
  "kind": "def",
  "lexical_name": "selectedParentRowsChunk0003",
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
  "slug": "selectedparentrowschunk0003--db7798dc430645286c07514c",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131880,
    "line": 131683,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db7798dc430645286c07514c363fa98ad08ebb22b9cad26298c081741aa2e1b2",
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

Occurrence: `declaration:9cb656a257fd1146154cf114bceed714821dd39b12510a51b2868670c95c7547`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131683–131880.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedParentRowsChunk0003 : List (String × String × List String) :=
[
  ("formal-neighborhood:17de3a8b71a3177d51076437344a7ca784122ce5bc4c64811679719a18f5e3fa", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:1819b2d07c0bd05601c1a5191c9657b2ff943b99850cb611a22f6caa386d27af", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:182f3b1027376659f75ccb7dd72e05da06f7ce90c3edede1e1917debcf7afb15", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:185bfe6c45b474c855d45ac89f4a3ce4dea8a9b5c01fe52362c3d2e83c4f0f1d", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:18634092e9d345f785ab449ed79a7003e3c64784c71989ef8f3fc860cbd7ef9e", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:1886330d5ffbee0421a80d735148d5d9f5637b0c9cd92ba9987a0aab56a8d940", "formal-neighborhood:23c4bedec07dc9fff0e80eb902166d412c341d4358b304c80125ed55a0fd73ed", [
      "formal-neighborhood:23c4bedec07dc9fff0e80eb902166d412c341d4358b304c80125ed55a0fd73ed"
  ]),
  ("formal-neighborhood:18cdefa12f5e6decda55273b3aa9f49104343b62f82a9806889f19ab3b701475", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:18de0ee2a2b088c54dea1387b37bdb0bc7d883e4ccb6a20ce8de2d3b1b130cde", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:18f5b291c0bb334c004069b5879c5a043729b47b72d42201954393337400a9f7", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:19077cda15fb227f903e41af19ed9034270b1c6faedaa25d9dd5dcc2de69fb0f", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:190cb0262fbf9aac6bd15dbde6f6e9f525d7b28a3fd294d129195855d728e05c", "formal-neighborhood:24cfc33c923666ed51552eefeea631c9c0f47438ff326b5c086da920abe7f1d1", [
      "formal-neighborhood:24cfc33c923666ed51552eefeea631c9c0f47438ff326b5c086da920abe7f1d1"
  ]),
  ("formal-neighborhood:195e24663390d6259efffba1704e6f8d92d3789e4d77c7ddfbfd41672aef5abe", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:196509ec6c16aab85f6bb6227c5e98c9a84d0a5c61f57d412a1701483630913c", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:19752c516ba20838edec17f73d924b663f0317deaee61583e91eda29a19f43d3", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:1983b90fa5fe0ca2dbbc572be887cfe1ab6fc7ee06a824060baa53a1320259e3", "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a", [
      "formal-neighborhood:69f2e4b3b41be23f06d7b3f0286dcb7aad15acf1e7ef2316c149971586a4849a"
  ]),
  ("formal-neighborhood:199213889e5f43722a0e0d931c956267c69f90944afbfb9d5ef035716e10e12d", "formal-neighborhood:864a46ba86eff0b3e4828470517ffa1e5eef8b6d8806b72c48645d6210318ad0", [
      "formal-neighborhood:864a46ba86eff0b3e4828470517ffa1e5eef8b6d8806b72c48645d6210318ad0",
      "formal-neighborhood:27adde9d85deb808e321547700540aa05496cbff51dd7c28bd15678e36190f8a"
  ]),
  ("formal-neighborhood:19bdd0d1eb535e2cb01180a49faafa1e50cadf9b0f1f7f5d45b563e95a2e5e9e", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:19ca791e4395f828ae560a8a41427c6198d981fe3aa572fc6a2d417f60d4d85d", "formal-neighborhood:bfbcfde1ab7603e88f1f64fced086be53c638527f302246314667c75d76142da", [
      "formal-neighborhood:bfbcfde1ab7603e88f1f64fced086be53c638527f302246314667c75d76142da"
  ]),
  ("formal-neighborhood:19ca989300cf8c5c533f04f03087ff81984562168870d976758b874c29ba916c", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:19e1e8636e3bea5bc4889684ffda26b327369d8cc6704579ea1343c59ca4e3d3", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:1a15d2cc4a7e5c09c47ef361022d36c4eb7ebad95788f28fc4f05343b8addf4b", "formal-neighborhood:6cda5aab5a336b82481ba4210de8551709e5dd07f824300a182e0b68ff428825", [
      "formal-neighborhood:6cda5aab5a336b82481ba4210de8551709e5dd07f824300a182e0b68ff428825"
  ]),
  ("formal-neighborhood:1a28c4827405102cb16e41540f583516eaac32bce1e314f220a87710e08be58c", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:1a6ed14456d2c93bc7f1bef37bdfd6f598d6840c8babda3d7c7cf044554c0cdd", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:1a80c49ccfa1cdbc4b2a0606cd49570b9cc0d7e2fb0545f00cb56c18fb7b8d3d", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:1ab34afe48a8292d5f062c0e54ce70b50a6a80432b519ffe6a307fafa4fd70c5", "formal-neighborhood:f383fcd9568153f2ebf58244d99bcaf8947f311b05f7e6a74c87f89f7a16d109", [
      "formal-neighborhood:f383fcd9568153f2ebf58244d99bcaf8947f311b05f7e6a74c87f89f7a16d109"
  ]),
  ("formal-neighborhood:1b251642d46225289f9c249dd1635928c603244c2302f741f2513d7f71094a6b", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:1b31af1c7d11ce20a69ae34396a08860ddb83f3837296da2c0a62379f9e82c88", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:1b57b1ad4e3d54a87e4d9f8189a9d808d8798816d87bd6527c7dc38fe593b103", "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378", [
      "formal-neighborhood:2049f86a7fba252c7a2fd1f3d7237c413f389ab90a4b54c8b93159b3ce40c378"
  ]),
  ("formal-neighborhood:1b5dd2fd515ab33cfedbbc16b0a0628ee64af684189b06aa0cd3c3ab1bff08d2", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:1b6fc76418af9a87a109bf59fcd6b92b52f2caa6e20092d089bdc9c297480f15", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:1b9e382e6c4a397aa029ef69959db6ce466e9a60f76d0c085f1b06ab2c2990d4", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:1b9e4f5a7c4fc38d5cc7dc884d33feab2087c1e9bc519806f07a5ddb1fa30a24", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:1bb9149fa28295445065780313c40182e01137cf34ed186e8c4bad1de022b916", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:1bc4dd98895fcec7a2c498da264d6fb2ba53cf167bf9d32684f8a4261285fd00", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:1bedec56bed64902c98944f6712245077299d718d79ac91530d1857a2ef5ad1b", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:1bf9924ff3843f91ce6d21a3ba71e6c87b607cf7994ae4e6d2f46712370b023f", "formal-neighborhood:6cda5aab5a336b82481ba4210de8551709e5dd07f824300a182e0b68ff428825", [
      "formal-neighborhood:6cda5aab5a336b82481ba4210de8551709e5dd07f824300a182e0b68ff428825"
  ]),
  ("formal-neighborhood:1bfdc4b8186a6bb38145712ebefe85fc5e4309a92367b5c37ff3d5536427b86b", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:1c2a1db97b5c16d422f134ec2af3fe54956d4cde0ca4f23e6ddb9c62f366d2c1", "formal-neighborhood:be89f7a3d34265d94cf60e2ce20b2c62eb5e0c0dde6bd8895082158ae82b29a3", [
      "formal-neighborhood:be89f7a3d34265d94cf60e2ce20b2c62eb5e0c0dde6bd8895082158ae82b29a3"
  ]),
  ("formal-neighborhood:1c37c7a1e7a4551565d093f4648ec0aff79c4d416ee259b849ea3257de0a40fb", "formal-neighborhood:1751f10831ef27c29ea59ebaef71e38eb0221aeeb8758cb210a07fabd2e080c0", [
      "formal-neighborhood:1751f10831ef27c29ea59ebaef71e38eb0221aeeb8758cb210a07fabd2e080c0"
  ]),
  ("formal-neighborhood:1c477f4673adfe7736a9265444d5d00ad9b72e9fc8058240f64c2dee5fa29cb1", "formal-neighborhood:29350bc1fe248b416d861ba5713edcde8e1ec94a51c2c1e669c0f2256c74a446", [
      "formal-neighborhood:29350bc1fe248b416d861ba5713edcde8e1ec94a51c2c1e669c0f2256c74a446"
  ]),
  ("formal-neighborhood:1c9409b052fdb23e68ae6bb3ac9a9f631872df555250eb47982fb8cd7a92ed32", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:1cac27e5188cd2ffaa0b329631dac1f50fd365a0ab4890db3208673e78f587fb", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:1cba23b4af9790cf13e5ee3aae69e29050bc179f05911dc2f38f6fbb6a0d3989", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:1cc034b6943b5d7a34818ee478fec75db8e839ba173814df4a155f37be996f3b", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
  ]),
  ("formal-neighborhood:1d10124c920c67e2c6f020bbb052c25d33b8d21fe6b9b02256db93891b7e21b2", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:1d34a39ef6077cd22c515ba061a778d614bfe7480fceb85f67bed324d8d0b7af", "formal-neighborhood:1404be9403355f071a912c2682915693b8a54f446232621f1cad10b458c86d88", [
      "formal-neighborhood:1404be9403355f071a912c2682915693b8a54f446232621f1cad10b458c86d88"
  ]),
  ("formal-neighborhood:1d4b89f61d5018a7d43e75a2c656d41a4ae806fe84dcf1b5bd060d132bfa362e", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:1d6a80ef2d8e531ca30ed6b9fd01a530b64d6e73cd797f4428df9d64101e001c", "formal-neighborhood:e289d5a424266ffdabfaf8857b7d94880067c1d6c8732438d134eaf5f5a2dd83", [
      "formal-neighborhood:e289d5a424266ffdabfaf8857b7d94880067c1d6c8732438d134eaf5f5a2dd83"
  ]),
  ("formal-neighborhood:1d7a2dea275870d1e38e690a11bc5e11dbdb6a57d060cbf7e93f333c6b5ba2fc", "formal-neighborhood:eab980bf9161cb3d3cf5df9019245d574d8cba65f444f327397523d0c1c74398", [
      "formal-neighborhood:eab980bf9161cb3d3cf5df9019245d574d8cba65f444f327397523d0c1c74398"
  ]),
  ("formal-neighborhood:1d83d0bac209958cc226a9aabaa983535fa5b998b0d44ea206c55bf3576aacd0", "formal-neighborhood:d48edbe69919d0e36a26d000c377ff5b64c39d9f14ad096084a704b617480a50", [
      "formal-neighborhood:d48edbe69919d0e36a26d000c377ff5b64c39d9f14ad096084a704b617480a50"
  ]),
  ("formal-neighborhood:1d8bb2af7f758203e7062c2ce241877061395f916e8e1e7da1985c7d22489391", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:1ded26350e0e84792831164ed6546b746a36f376ad6c857a97f199c557936e54", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:1df4d49931728b540f0b20f34ab6fb9a5925fb4e2280ea2ebe71cc7a9958cb60", "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836", [
      "formal-neighborhood:9bff8176ac511f8f94da929d6d899a4b99a98bfbc4e7e18c4d22cbecfce5f836"
  ]),
  ("formal-neighborhood:1e0af386bcb1678f925bcad9ca7b466002fe1f9fb557075f91a5620d2fb43578", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:1e1013edd3124edc323212feade1aae021d28e6b801c614315821858795eb2a2", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:1e21260472b6f4e10cb9e2b907be4c14c30b73ea3755b9c94051153b518022ea", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:1e259b1a759cb3dc138ef72c6ffe9965844e8ca8c75be143fd878503c554362f", "formal-neighborhood:1cac27e5188cd2ffaa0b329631dac1f50fd365a0ab4890db3208673e78f587fb", [
      "formal-neighborhood:1cac27e5188cd2ffaa0b329631dac1f50fd365a0ab4890db3208673e78f587fb"
  ]),
  ("formal-neighborhood:1e4315d9f97379a5c90e490d52a0d9803801b7902265bf275c0d50fdd9ce39e2", "formal-neighborhood:27adde9d85deb808e321547700540aa05496cbff51dd7c28bd15678e36190f8a", [
      "formal-neighborhood:27adde9d85deb808e321547700540aa05496cbff51dd7c28bd15678e36190f8a"
  ]),
  ("formal-neighborhood:1e495f9019813616bd74352599840338852a3ceabc21465df95afa04b7ac300b", "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9", [
      "formal-neighborhood:9dae3ac991c383084a5d641dc8e72266c1de7bf03f572ce615a4b1cfb05b11f9"
  ]),
  ("formal-neighborhood:1e4a4396d2a7e2f0aa62d58cb05cf5d82fa3f17c66348ab9f292697a26335682", "formal-neighborhood:a18c7e2c39ba0410b67b5b22b07e50f5f1fb3bc49e5e7e4bea0179711b062dd0", [
      "formal-neighborhood:a18c7e2c39ba0410b67b5b22b07e50f5f1fb3bc49e5e7e4bea0179711b062dd0",
      "formal-neighborhood:6cda5aab5a336b82481ba4210de8551709e5dd07f824300a182e0b68ff428825"
  ]),
  ("formal-neighborhood:1e6d151541a85d1aa61b1aa8467373284c4655cab0ce6c7a2cbc60fe3accf13a", "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e", [
      "formal-neighborhood:ebeae6962124eec6ce031b3c89768bc1c7cddf2b23d88d26da16e98c7622ef4e"
  ]),
  ("formal-neighborhood:1e71ab07846acc4f392e2abe2389359e6f9cda1c7f980935c455860afcf5398c", "formal-neighborhood:fefa39290137c0f7c1dd29fa56bb46085a90d89a991bad37d1389a1bf6469756", [
      "formal-neighborhood:fefa39290137c0f7c1dd29fa56bb46085a90d89a991bad37d1389a1bf6469756"
  ]),
  ("formal-neighborhood:1e7e3826d22a19802f86a02786332d70386e89d2524c6a9adb96652daaaa4fb5", "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6", [
      "formal-neighborhood:b57b86db432b6e60ce838c74fd0b53691c9b19cd9809bcc6ad9020fcc681fdd6"
  ]),
  ("formal-neighborhood:1e94fddb85e1857e2f62e8cbd8b6b5513a6f305b2f22acc5899eae2bd6359d6e", "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8", [
      "formal-neighborhood:55f01d6623b22e15aeaa4262f6c1abb28f3b0fec00d45399148f4b362b66b7a8"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L131683).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
