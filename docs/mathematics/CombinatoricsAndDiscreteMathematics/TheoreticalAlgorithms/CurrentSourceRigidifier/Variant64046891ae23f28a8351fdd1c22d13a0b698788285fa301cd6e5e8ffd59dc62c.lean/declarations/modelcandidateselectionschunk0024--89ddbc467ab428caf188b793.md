# modelCandidateSelectionsChunk0024

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:acc6f959ca4d1a8e10af6c028af27150924e5c123ec9924b6f8e75418e194c0f",
  "kind": "def",
  "lexical_name": "modelCandidateSelectionsChunk0024",
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
  "slug": "modelcandidateselectionschunk0024--89ddbc467ab428caf188b793",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63028,
    "line": 62659,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:89ddbc467ab428caf188b793481d170f10cde302195fa8b1c2928259cd4c22c6",
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

Occurrence: `declaration:acc6f959ca4d1a8e10af6c028af27150924e5c123ec9924b6f8e75418e194c0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62659–63028.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def modelCandidateSelectionsChunk0024 : List (String × List String) :=
[
  ("name-candidate:9fce55e991f29bfa65a2d78595cf0678a3b29ca29316da30064704aaf9d98ffd", [
      "name-candidate:5fc6d998b15fa7aa6c62fd2b14f2f892c67e217e63625889d444e193db19c6f2",
      "name-candidate:7c34733edd9cccd7b4a5efebd99767df18a4c66f9b99915dec7692bc519f60c3",
      "name-candidate:9fce55e991f29bfa65a2d78595cf0678a3b29ca29316da30064704aaf9d98ffd",
      "name-candidate:c95508691f6a02f24e9c7175d5920800305f296c50ada98cdd7c86e02fa6a786"
  ]),
  ("name-candidate:31365d29f9159c779b8aad919d2d94602c0b920d4bad90ca94456434a27a4cac", [
      "name-candidate:31365d29f9159c779b8aad919d2d94602c0b920d4bad90ca94456434a27a4cac",
      "name-candidate:72c729977048a48a729ae22d82a3a6c33e434ffadb2751936ae8492e911f37d6",
      "name-candidate:b8b5468a98aa3e1eca9aab469bb8a9ff4c7070294f5c1fa38a88e815119796e3",
      "name-candidate:bd000e49ae1b5d5c58393caf5802e5b72f6466322e05ed8bbc29b12c4f2a0e2a"
  ]),
  ("name-candidate:e24cf72f495af8d65db4fb4b9c535e86e0c2533b3169bfdc951e6e970337291a", [
      "name-candidate:2f847b2112c200acb2c370006db37d6e33118af3f51819e467b36aefde510552",
      "name-candidate:655cfba3f0bda62bf667c6cee27cc22153220fd25112d6be172e1e5ec8e85f51",
      "name-candidate:e24cf72f495af8d65db4fb4b9c535e86e0c2533b3169bfdc951e6e970337291a",
      "name-candidate:e91821ee1f86f2f9f24e9f6ba6c0fa7df1338e2202a8a6b214a3376d4e183287"
  ]),
  ("name-candidate:da5fd1266846659ac8fd6d5320e2b7dee5b870b0ffde1e60e0a7a0ac9fea59b8", [
      "name-candidate:2f32ab6630069e2f2ec263f88d1bea469348bb8053914c146d50449797f85d3d",
      "name-candidate:b123345d230b76c6b31d839e836b2456d0a78e0f5aef558c6032a2ed47100d92",
      "name-candidate:b53cf549a16bc66231d3f65cc62febf0919c8d55805ebb19d88d10648c8e4c91",
      "name-candidate:da5fd1266846659ac8fd6d5320e2b7dee5b870b0ffde1e60e0a7a0ac9fea59b8"
  ]),
  ("name-candidate:efaee0bc17b1a3f88ec2f09d3a78d35f0bbd7a4c9133d6419559f720a8db7589", [
      "name-candidate:6ab3b40f9be05166a22c5dec3ef8054f8ab57d064b9cdaa6c7d4e3962e3ade62",
      "name-candidate:a422ff09fbeaf9e88fef2388089885d62380d18591186c51d490fab2d9f1dd4b",
      "name-candidate:c0e0d01c3c618fce85156578bcdc4699da2da5be1285a9492dbbd52669610edb",
      "name-candidate:efaee0bc17b1a3f88ec2f09d3a78d35f0bbd7a4c9133d6419559f720a8db7589"
  ]),
  ("name-candidate:abb547e53b7d09b198fc614a354b424f25410f115d8f8f4fc25b7962c0610b7c", [
      "name-candidate:6317b066c052f7fa6a68886320f491117c03d169aac44e39f3b269b554e967cb",
      "name-candidate:71d04058aa594fe40e6389e39b4a160a4fac603d67f5b3eb70c0990898e3c58f",
      "name-candidate:abb547e53b7d09b198fc614a354b424f25410f115d8f8f4fc25b7962c0610b7c",
      "name-candidate:d17ab64d18b2e3ed8d2e4daf6aebd647ea2f73420fbe7b2000405e2e5769df88"
  ]),
  ("name-candidate:a6eba201893f7522bb2c2dfdf1e894e60678c97845f7305f364fab89d0dbbd6a", [
      "name-candidate:508126e25228999df5aa80bbfe13ddbde6ea04b5be543ff43b447c382cbc2aca",
      "name-candidate:a6eba201893f7522bb2c2dfdf1e894e60678c97845f7305f364fab89d0dbbd6a",
      "name-candidate:b80aa21ccc28e49973b9b79fba9962221483ee0606b8c4573008410fd26b6aa0",
      "name-candidate:e0b4aea2ae9c419d41918fc3ae062966b3461eaf19cdd1ca8b4cc3bf5da1bfc9"
  ]),
  ("name-candidate:be48b90ee6e05f35ff3cbf3f563395e65b26186e9138ec0b5fb4b405076d9e9b", [
      "name-candidate:09df4c15f0390e9f5de231689fb903ebfc1dcac892245c695751831b73851d18",
      "name-candidate:787c89aa570c816fd091a3b3a8133b81b1ccb773cd2e568baca156731536bac6",
      "name-candidate:be48b90ee6e05f35ff3cbf3f563395e65b26186e9138ec0b5fb4b405076d9e9b",
      "name-candidate:c9da50bdfae90c165da63d1512e39c4706cbf3541ab4a0274e2587d88bae9614"
  ]),
  ("name-candidate:7736190d5d34f70b89247e29ddd61720aa8f70f25275b0f4375bf1669320bc48", [
      "name-candidate:31eb78b3dbbe798e96a63bb7864c257d00422ecd3477a27ef8db43f0f2f4078a",
      "name-candidate:593afcc9ffcafad083723bf83537a3e990ba89b6b4c308df4acbf5390d774223",
      "name-candidate:7736190d5d34f70b89247e29ddd61720aa8f70f25275b0f4375bf1669320bc48",
      "name-candidate:fb5d085ebc8e7246cf624392d08c0b9f6bd49a88ddca9e3efd7dbd83ff294e32"
  ]),
  ("name-candidate:f91b6ce2946551ab0515c13ae76be1123a9c47afcc63a62a3e3ca774484ab302", [
      "name-candidate:ecdd6a25e5b5912af653bc2af109cb29eb6b23f9e1b63da5b7d38f11b756c07f",
      "name-candidate:f91b6ce2946551ab0515c13ae76be1123a9c47afcc63a62a3e3ca774484ab302",
      "name-candidate:fe4b88f333425007491a7b0d3006a714089888397266ec6120774536a554f2b5",
      "name-candidate:ff1a9b95835839557622ba032752ff6a07a31b90a7f94cb7127415bad7defa3c"
  ]),
  ("name-candidate:aca857d3bd25aa9a9dbbd7a0aaefb56615b8e4c9f165ffd79196af2db6a2d4c5", [
      "name-candidate:00e099e61231e4536d5cf485055f5b17aeedfc14b9f4b70e8664f28594770876",
      "name-candidate:7fd7675026fc5c92935b6ee649eb273ebada10453980bf7a3e441a608a731a54",
      "name-candidate:aca857d3bd25aa9a9dbbd7a0aaefb56615b8e4c9f165ffd79196af2db6a2d4c5",
      "name-candidate:b923324a0ab594713cc51ff500e0e18523345de3d66e32b037c0804c43347fb2"
  ]),
  ("name-candidate:ad5633dbc37163f8f50ef48b67b187f659bca516c18573cafdd1674ffb7c9c39", [
      "name-candidate:12430c237830886493862bf1a4acffe7181e5d0481e5ed088af8b9f5123b5fa0",
      "name-candidate:23fa926d78b9d94c764f328ebd10ea4aa8bb5e8d0f3c6724995686b83f2b2608",
      "name-candidate:ad5633dbc37163f8f50ef48b67b187f659bca516c18573cafdd1674ffb7c9c39",
      "name-candidate:f321795f316656091926916c8ac2ab338f276d4fa99165837283b0d7afe71c0a"
  ]),
  ("name-candidate:745cffa7aa63056d6b24c4c3d0eac8022140f46cbeab661dbd43d22759e260fe", [
      "name-candidate:419ab26d13af5b43963e82074868661bb37cb35309216495482378584ec8cab8",
      "name-candidate:745cffa7aa63056d6b24c4c3d0eac8022140f46cbeab661dbd43d22759e260fe",
      "name-candidate:81ed5cc117cb6a9b7cfa8bb881ab36b0e6b1bcbcb1c4199d0f2dfeceb344d570",
      "name-candidate:e2b4ceb91b7cd78b15a025d9ebb554baf2e1bff35ec5ad0a07d0dc66241721bc"
  ]),
  ("name-candidate:7325d0dedd03c51223b960c3de834efbc2854aa62490526d6a798ef1eecf9ab7", [
      "name-candidate:2ca3344642113fc14a1cfab054db9c7e5ce42023598de5cf9e2d3c0ccd33a943",
      "name-candidate:61c2f892f8e4d39c4086ab885046d66c582f438b33531225be018926357c6b1c",
      "name-candidate:7325d0dedd03c51223b960c3de834efbc2854aa62490526d6a798ef1eecf9ab7",
      "name-candidate:cb6bbae5735a3bfd3a0b78e01cfcb09c17f3583234e681bbbad7aa2295728d21"
  ]),
  ("name-candidate:65ddb3279f400ae224a9cb88721c06d2838cdaa39c28d82f8a4555156b3bcdd4", [
      "name-candidate:2e182a2825146297bedaea094269b2e04bdd6169a39d24ac4bc812477301696c",
      "name-candidate:652110ab8baa4af98d2762886511f45d3251facb47831ae618ab6760dc8135f5",
      "name-candidate:65ddb3279f400ae224a9cb88721c06d2838cdaa39c28d82f8a4555156b3bcdd4",
      "name-candidate:e6488dd1d1e38eee5435d2a30d7057fb34ad9d9120810da46ac1a05cd1097cee"
  ]),
  ("name-candidate:7f099b8fc059f0bd6aabae91bb084e2594399a8905b2b68ccc65c18d57400ce6", [
      "name-candidate:7f099b8fc059f0bd6aabae91bb084e2594399a8905b2b68ccc65c18d57400ce6",
      "name-candidate:c08a88fb8d51e19952f94a54f9800d4f1d3b7231c3bf9d34f73bdea74564393b",
      "name-candidate:c492965fd5d498d9d0c5bf6bdd976b4803263de8927a91bc5af0c06c2888ef74",
      "name-candidate:ec7b756f9ed7d9ee7eb25534d71bccc7ae3d556edff2be3e471aae2ed6058fb9"
  ]),
  ("name-candidate:aa2bde81a33e6a65f46b91e12fc15c4f824c645a17e1e37f5329e9f14995c228", [
      "name-candidate:313e34740798ab9bd35135c90bf102ef695ff83815b743704ea045d2e55b84e7",
      "name-candidate:890520528a3e1de74f74ceff94559831ea872081d36c391846c4609f1541f82c",
      "name-candidate:aa2bde81a33e6a65f46b91e12fc15c4f824c645a17e1e37f5329e9f14995c228",
      "name-candidate:e31ec97b20219bf63cbd785193fd45628496efcd68f54d729b2dcdde356f25c0"
  ]),
  ("name-candidate:0ba0f678ded37f06508d13c5a01394080981e8fe077e79257406765a50ebd8bf", [
      "name-candidate:0ba0f678ded37f06508d13c5a01394080981e8fe077e79257406765a50ebd8bf",
      "name-candidate:7449a5d855f6db4b07e34dc99c2a8291cc144f2a21c140654f046b97726d0f8c",
      "name-candidate:cd7d0317c1af0286cac062f5cb419f162b2aac5d14fbed8e5308a3414887a309",
      "name-candidate:df40dfb884f59b2abfea4b85865b58e1dcc75c2fdb98843adb0bd4aa36759b5f"
  ]),
  ("name-candidate:7a681e306386ffcc0ee071606883535a3cb05d024046bf3b8c1c2befea14b633", [
      "name-candidate:061154997de70c3586508b3a6739c41f85fee5a0d8f451c5c829455ddbe3b8a5",
      "name-candidate:334c7ef184873c5b5d334702d36f4f3a5b2191b17809c0191cd955354f06bdf8",
      "name-candidate:7a681e306386ffcc0ee071606883535a3cb05d024046bf3b8c1c2befea14b633",
      "name-candidate:c11ca6307a52fe5a6e861cff24118d7f269d476343bdab1711991cc3469fe1f9"
  ]),
  ("name-candidate:37246ebdf1c0c4646d3e714286c19a1d8dbae45cdc9d90f525b83cf8e93768f5", [
      "name-candidate:37246ebdf1c0c4646d3e714286c19a1d8dbae45cdc9d90f525b83cf8e93768f5",
      "name-candidate:db48ace60b8d53eef53e8664ceb7b4c8afde5e13e07387647a3a0174a2151570"
  ]),
  ("name-candidate:858b54604671cfdcb9bfc6b91d03cad897e7ba858e46290446b762cef64b838b", [
      "name-candidate:3132d1a2e9a7e8b54074cff0471ba0bcc660c8774eb3408b55a8dbf277b259f4",
      "name-candidate:6cf80080e2bc73fad9b8e7c9abd62ab9ddf3fbfbd2f6f480e6611a5336f4883b",
      "name-candidate:858b54604671cfdcb9bfc6b91d03cad897e7ba858e46290446b762cef64b838b",
      "name-candidate:e2891f255546cd7a8b4aeb0adfa43944a143af20e09e6550c0a52e8ab091d5a5"
  ]),
  ("name-candidate:5df2d585a4714bd822c1721b4a2458b2d162871f99137c4aa815456cbd5481fd", [
      "name-candidate:5df2d585a4714bd822c1721b4a2458b2d162871f99137c4aa815456cbd5481fd",
      "name-candidate:6ccd2025ca86b98458a72af85503fb583c3df7ecb18511a9d515c13016c2678b"
  ]),
  ("name-candidate:fb2542c396a8cada88fc0ab5519532d64c4cd3e94ce8e346986a5a7d11439ea4", [
      "name-candidate:03764a35e250e3a79ff1d2181b5c3cf8675d64f1dd8e941982efbad645042eb7",
      "name-candidate:6796eeb34ac484137e9240026ba2744e44403f9287273f9c617e348596b59f7a",
      "name-candidate:8e6ca22866229908dea311f423fcbb8932c203b5ba63803c36f001bc6df52790",
      "name-candidate:fb2542c396a8cada88fc0ab5519532d64c4cd3e94ce8e346986a5a7d11439ea4"
  ]),
  ("name-candidate:e02e81e42dbdb2b50293d4af1d1becca13116a5cb9bf5ef10a31e0740517fe69", [
      "name-candidate:014c89f30238776ed1c149d58f94929d4a0695d9e3af09ae5f8f6708ba498fac",
      "name-candidate:1dc8fdc2187fa389afba23f7bd6c88010ba858c71f6f680dd9f4cbc13158cb40",
      "name-candidate:bba66859b75620ad0b93802782d64fa8904c8d2221d022597c5cda4f3b06025d",
      "name-candidate:e02e81e42dbdb2b50293d4af1d1becca13116a5cb9bf5ef10a31e0740517fe69"
  ]),
  ("name-candidate:bfd4831766060f77c74ffaf2bf56ae54ba97763483d4ccaae42fe202a4f9a9c3", [
      "name-candidate:9b8bfd62b95aed0a1b6886adacacff9c08b783ba752b644ad93a668e78d2be55",
      "name-candidate:bfd4831766060f77c74ffaf2bf56ae54ba97763483d4ccaae42fe202a4f9a9c3"
  ]),
  ("name-candidate:cba533fd6a9321bfe9d1ace2391f7b7675cb8d960b8b74bcc3a658d9586917dc", [
      "name-candidate:32cf5b95f70b76a4abf21ef673a68a841b3c69900be325b249b8fb8792db6f8d",
      "name-candidate:33372fb2bedd43f007f70acf657455d794c24f694c0fbf3346c1c88b1e56a2df",
      "name-candidate:3889c0a2e15275dc9b94eef48c00af205ef4a42fb2f4fc6205df0608945e1a70",
      "name-candidate:cba533fd6a9321bfe9d1ace2391f7b7675cb8d960b8b74bcc3a658d9586917dc"
  ]),
  ("name-candidate:0c10ce6e062e07ea091641bf540369af0bdb5c7cbb562df501ef3a4fa4d8133e", [
      "name-candidate:0c10ce6e062e07ea091641bf540369af0bdb5c7cbb562df501ef3a4fa4d8133e",
      "name-candidate:59ed6d8c23ee21138c130854c9595c80c7efc34bc25fc644f49b4104e90f7b14",
      "name-candidate:f28b35303fc62aec3ac280f59ba5e29892b9a968f19143984e686110ed113d16",
      "name-candidate:fa2fc647e51c63dcb108799d988023aad28002979fe791c6bb18f1fe68e7c661"
  ]),
  ("name-candidate:678af261038a3b8caa4db53fb3cf24b426945b076e34dd7ca73459871194d2e8", [
      "name-candidate:38725cfd7e828746dcc0b1f52eb118fe450c6c9eccc9ffca02af5eb47d7e60c3",
      "name-candidate:402790c931046b564d12103f0499d603d2c8cfa8bd8d2f5f3d6f81d1bad3e224",
      "name-candidate:641b55f45b807959de540f588ccdec6853c5e799cb5a9daaf9aeda4b82e89f8b",
      "name-candidate:678af261038a3b8caa4db53fb3cf24b426945b076e34dd7ca73459871194d2e8"
  ]),
  ("name-candidate:d23c5f8dbe175b2543c698e659c6aadb949b6009b29ccc79217422bf35fc5be7", [
      "name-candidate:6788adca2805ead1e385fdcb25ea2e7bbf34be7ad9c092cee5e30143eeef0528",
      "name-candidate:cb04398aab13017cbacfdaff549b23a7cc40f61eddfcf54c9004387af1d5e25c",
      "name-candidate:d23c5f8dbe175b2543c698e659c6aadb949b6009b29ccc79217422bf35fc5be7",
      "name-candidate:e528318e33976b68b2215ec99b546368dde8ad79a142f038fe4531d672f19257"
  ]),
  ("name-candidate:2dd8cc287a3f5d60aa10420abb112db92a68bb6139e73f9b3d8f40b06f81c677", [
      "name-candidate:2dd8cc287a3f5d60aa10420abb112db92a68bb6139e73f9b3d8f40b06f81c677",
      "name-candidate:5d3791ff8d4ba1b1e8ab165329ae5f467cb1efc6a20928e10dfb8877acac52b5",
      "name-candidate:f3bc6424e93ec63b9d500b26410cfa193299a1d9805fe0ab7a13a2f99f468927"
  ]),
  ("name-candidate:8f557a3dfaace4051f086035e5073d364d0f408881da3da039927f2af129b8ab", [
      "name-candidate:37970fbce521dad55d8d5df371540e02e0440ec6978bc26a7332ea7bef5d1eb5",
      "name-candidate:5a5deb4313ddfed7041d17e8602352b27c2135961138707c810cc3487f86032d",
      "name-candidate:8f557a3dfaace4051f086035e5073d364d0f408881da3da039927f2af129b8ab",
      "name-candidate:995e2701f55ce505ae0dce3f50a07a7858fba4723c1f4c34480a2df9b2b725ab"
  ]),
  ("name-candidate:ee93c58f32fe7ae285a432ef9a8326d8c3017866e0154facf138b5e189132856", [
      "name-candidate:43ca31cf5f8f4fdae1f072776a58ec353aa5a67e97380f0dd52f26a635cb6621",
      "name-candidate:77b9657f7fbddccf451a6186d24549389b3f5227ea21eb91a99a998379e0aa2f",
      "name-candidate:a074006a37f86bbd0ce8f1ad595a413edaecda301080c3b6c1bcf92f347710fa",
      "name-candidate:ee93c58f32fe7ae285a432ef9a8326d8c3017866e0154facf138b5e189132856"
  ]),
  ("name-candidate:137a57304ce865fe546dd5e3de6e807bdf9725be82304014d0e48205145126f6", [
      "name-candidate:137a57304ce865fe546dd5e3de6e807bdf9725be82304014d0e48205145126f6",
      "name-candidate:3a1e9ab7cb378b212aa0562e7540eff9366980b04b89f6bb9e893df7054f1de0",
      "name-candidate:b0afc7599e8114be65ec480b292f2da30470144e14fb2849992bda3b7c8849b9",
      "name-candidate:fbd8e72b2f3617b30c2fb24017b1f2add35926b1ef8ae62674eabe7b460d27ee"
  ]),
  ("name-candidate:cc1da05e0ce4b374ebdf200ed483053c278867a0097900e2a6a87465f46bbc14", [
      "name-candidate:64c90c02e9823d2ea4ad678fe356503e6831529bd540c80aacc87ef1106d2a05",
      "name-candidate:940d9a05c0493281fb715413d4efc855259d5126def20dfabb6f0b9a27ca0daa",
      "name-candidate:985503da5544fea8b3ff25e8f8bdc7c11adf77d7a30ce672813ea1be9b2c021e",
      "name-candidate:cc1da05e0ce4b374ebdf200ed483053c278867a0097900e2a6a87465f46bbc14"
  ]),
  ("name-candidate:0a9690b079f0065065b5b4d0fb46c415d2fd281986b22517dfe5d99eaf6d955b", [
      "name-candidate:0a9690b079f0065065b5b4d0fb46c415d2fd281986b22517dfe5d99eaf6d955b",
      "name-candidate:3416ade3afb707e7bb7a5b0af2b6eeecbb720a0b5ac2d18e76af7fabcdbfa393",
      "name-candidate:45d1b83587121b2ba91e3adfec8d4509485e09763f3f50018627a4a277abf074",
      "name-candidate:b3d3e4f15ac3d7fcbd99d51aa2c682099563039b3ea63ed80f1982504c084506"
  ]),
  ("name-candidate:7265da2216df3e9a2a313a5d64c17d460388ec4f194c36b4f7e8eb04e335f9dc", [
      "name-candidate:302458ffb57c208854df21ea44c7971f952e5191135832ceb40314c88e61f82e",
      "name-candidate:610add6886020c31d577e19e7c59f21ae10dd006fde65e74aea4c4def8ab8a6b",
      "name-candidate:7265da2216df3e9a2a313a5d64c17d460388ec4f194c36b4f7e8eb04e335f9dc",
      "name-candidate:76722965efdcc0a2455503e33d382840d75c90cab256bc09ab11411152c6d96a"
  ]),
  ("name-candidate:b646e2fa76ccf6e8b635d620dbee8b7bfc20fafd46eda4b83ad2a337c6afb111", [
      "name-candidate:b646e2fa76ccf6e8b635d620dbee8b7bfc20fafd46eda4b83ad2a337c6afb111",
      "name-candidate:fe7b065b6353b2992f705d1f214ab32c9b07da631aad5271f82b24491b72d129"
  ]),
  ("name-candidate:019c58961a67ac53c8b18ccee1be8a62a7498c758b4f87bfb424ac22d9aaeb55", [
      "name-candidate:019c58961a67ac53c8b18ccee1be8a62a7498c758b4f87bfb424ac22d9aaeb55",
      "name-candidate:0d566201dd617533f198b4d2692cd6e3b77c333c222d930b558b0be88e26a44f",
      "name-candidate:25e2fb88a039551e8c26f0748faa0cdc993f77428be0ca929075b5d31ebfb61a",
      "name-candidate:a30a21233c7c2679b39b9da7f8d95e401e76701fe908f7fed22171f683e6dfed"
  ]),
  ("name-candidate:12e5dd049945450ceabe5fb821bdce89bb6e4b7ac81d9122a757f187d4fbf350", [
      "name-candidate:061f8b6cb2153afcd8710248843c088b3b4480a1c0cb81a82a5b7bae90a45909",
      "name-candidate:12e5dd049945450ceabe5fb821bdce89bb6e4b7ac81d9122a757f187d4fbf350",
      "name-candidate:609b9585fcadcb36b59bd4844f583f302b2cf3e062b9d8695dc636de1e5d9bf4",
      "name-candidate:ef2a8077587578cbff35d7d11356e8af04cb8d7696cf1446a8d522dcc2a4383e"
  ]),
  ("name-candidate:c442b297602e3c6b23192950c6f986347be1687c559c1f52838554d0c31eb63b", [
      "name-candidate:48e3bd13b9ee9b3e285bae5ce62a81c7b4d64aba1cd048a42c6425cd3112608f",
      "name-candidate:87044c361d4e615f73710fe74bbf1131fa3c586a71e4d78e82671886195e5c18",
      "name-candidate:c442b297602e3c6b23192950c6f986347be1687c559c1f52838554d0c31eb63b",
      "name-candidate:e388e099a5143caa4426f8639aba5db18c729efe8ee9c3beb2116763368b6c21"
  ]),
  ("name-candidate:67b8130469740a94b021a92b5c13d35ff69afb05d85654dac6bd48303fee5d7c", [
      "name-candidate:14e84dac59f4f4288c39a222d898d4500a7033610894b0a2a8f037334f884d0a",
      "name-candidate:67b8130469740a94b021a92b5c13d35ff69afb05d85654dac6bd48303fee5d7c",
      "name-candidate:bbf35c9f13e24cc6e085827b7066f5bc575246125b2559972ad8c2c1109f3f1e",
      "name-candidate:e8c34948c95a3adb29fd7f6194c75b6a8056ddf59cf285952ffbefe9706c3f1f"
  ]),
  ("name-candidate:af509f1270ce93152c3448f56d695a260b28de055069fd3fa1bb93d9827122c6", [
      "name-candidate:40897a46abe87000166a578628bfd061d3485a031300385a50171cf67fd6c73a",
      "name-candidate:af509f1270ce93152c3448f56d695a260b28de055069fd3fa1bb93d9827122c6",
      "name-candidate:c68862196d317b5876c4ab6c14178866742d0b39bc14177acda17e003c1cb35f",
      "name-candidate:f3a07a4bd1662283fc40b79e8dc5991764bb171a8a75396bdbd541cac66685d5"
  ]),
  ("name-candidate:4dbd7ca40c6ac40b90afb6e16c42e6589becd589afd245c6c5955a7dc4fe1c1e", [
      "name-candidate:439beaec791a617f8e882c7aa495447f7c8c169b7868406133c6683b404989f4",
      "name-candidate:4dbd7ca40c6ac40b90afb6e16c42e6589becd589afd245c6c5955a7dc4fe1c1e",
      "name-candidate:5aad772e97291d0e815fe4d86d83ccf1d666a72c750e0d77512844da2205752e",
      "name-candidate:5f720f79120c93fc87c89eeb3c6281c9c8aea62aa6b3cf215e142efa9a310282"
  ]),
  ("name-candidate:0e42f89255706d8da77ba43a1f02c9b60f5d74bfba023ac77d33c6deb9576d60", [
      "name-candidate:0e42f89255706d8da77ba43a1f02c9b60f5d74bfba023ac77d33c6deb9576d60",
      "name-candidate:27193aac8db9b7887810069cc76318464f6d8583eb2b6a21845bb0633d838f31",
      "name-candidate:28a1f45aec467d5fdd711b2928b148b00db743cdceedbcac793905eec237f308",
      "name-candidate:4c3fe2cccac5c3d8b38f8783d6b54d12ed591f58d28e1b4e22c62796493060df"
  ]),
  ("name-candidate:37e6e12edb50687a67b7bbdfa4941204b6efb1fe6dbe271cffbab9c4de525cbb", [
      "name-candidate:14ea03ae16569ed73aa1b3cac28df91c44757e15faab31ccefcae5dd5aafcb84",
      "name-candidate:37e6e12edb50687a67b7bbdfa4941204b6efb1fe6dbe271cffbab9c4de525cbb",
      "name-candidate:6aab58925547d40da5d37517114b4b684c7326966fef679267682bac0719155d",
      "name-candidate:881b8841aab920dd1bbc1f6bf9682cc41299f4d6bb3c7d18b905b6312e3739e1"
  ]),
  ("name-candidate:37e45b69c139d005339b27af36f5a78c762e64fbe8a34dc5588fe9655c4d1cad", [
      "name-candidate:30e9a32a05c32258d6ace0bf95943f8ac61868ae55700750ceec83cca15a3b85",
      "name-candidate:37e45b69c139d005339b27af36f5a78c762e64fbe8a34dc5588fe9655c4d1cad"
  ]),
  ("name-candidate:94408c6268283e7e90bf6ae9a61ac1d7fb89b89b11758ca8c5baf73f723449a9", [
      "name-candidate:1fa7af1e938cef72202b6b7a2f0a3f5639e95a3571a3280d464bb89f4d7cc498",
      "name-candidate:25f81ac5aeecb846c5d36b524542a1b2ff53d9bcee79c5af92cb2f860b9119a2",
      "name-candidate:49efa7c2cfef710c12256f4fceab094998869dde3835a31a3c399a3a1d1b2697",
      "name-candidate:94408c6268283e7e90bf6ae9a61ac1d7fb89b89b11758ca8c5baf73f723449a9"
  ]),
  ("name-candidate:b418b4ff422fbcb6fb40f1a4d4228407cd4c98a9bb9c8e741d59edb67bc0feac", [
      "name-candidate:320b14e52bf261a6a320ceed01857381fe87806395ab4285c72ac56bf8b4319b",
      "name-candidate:b418b4ff422fbcb6fb40f1a4d4228407cd4c98a9bb9c8e741d59edb67bc0feac",
      "name-candidate:f8c6606146bdc23e4c745b0f80dcdb961d108fee1db9c7829b17172098db3178"
  ]),
  ("name-candidate:4d773e906b2ed539f7b7cdd84ddfe3615cce5c6d74da696e8aab599c283e33d7", [
      "name-candidate:0afcaa2f448a79740fe41d142e7e0de4f9575c6669f5707d717117a295bfbba2",
      "name-candidate:341687d0b4343b058be50b8c7273630f5eff72d9be66edd9a72f883d3ab22c44",
      "name-candidate:4d773e906b2ed539f7b7cdd84ddfe3615cce5c6d74da696e8aab599c283e33d7",
      "name-candidate:9484c7834771631bab2a78c22f6d4d2a202573601806ed3283f460e3d7e6adba"
  ]),
  ("name-candidate:230b84efc629c761add4dfee6732db0f020c7a9f6572700cd0ebc2aa2519fde0", [
      "name-candidate:230b84efc629c761add4dfee6732db0f020c7a9f6572700cd0ebc2aa2519fde0",
      "name-candidate:6a784b2694a3199a471189e23249ae5658859ef8e9f9009bfa0d04daaf0dd1d9",
      "name-candidate:9ecc325d7fae0e6c9f9856a7ac629fdcfe8f585861d47d255bd4a54215235ae6",
      "name-candidate:a5a88b9ede1ba8793c0c6eb1bd9a8ea7296c3245145aca1de0900966bb5c3d8a"
  ]),
  ("name-candidate:34f42b644810d95960524615dbdccc38d6a455245caaa21734904ef7acc1d5c9", [
      "name-candidate:34f42b644810d95960524615dbdccc38d6a455245caaa21734904ef7acc1d5c9",
      "name-candidate:58621b99ebffdc87ff34c1ce136091080bc84917fc513c7b56c4a1295597f5de",
      "name-candidate:7c6274ed93af1f64e14eace83903bed61a85e6ae7cea3d1b4b4c6ec9bcb99d14",
      "name-candidate:eaeb0edec382b2127e4ce5e01d16d3f628ad14681cdae172bb77e9b21a497b5c"
  ]),
  ("name-candidate:9d4c71ad538aebf829fd8fe76bc8a52a6169ff11279a8c04d3fcd1bca058b4da", [
      "name-candidate:337b7c1811580f45fd751ad605226678c0a00706a7f768a0e3a2c83a43b2556d",
      "name-candidate:9d4c71ad538aebf829fd8fe76bc8a52a6169ff11279a8c04d3fcd1bca058b4da",
      "name-candidate:bc9a41c501ada9e95ea08fdf54a8d3f789a2860358da965cfa34bf9a676debeb"
  ]),
  ("name-candidate:8615a304d64f9799598900654741af05656ef64a5efe08bd6a27e3d72f560b76", [
      "name-candidate:854685e79d76f2875c1b6768207e2317697f8cd9e8520d40b8d4500fb5992961",
      "name-candidate:8615a304d64f9799598900654741af05656ef64a5efe08bd6a27e3d72f560b76",
      "name-candidate:a5ae3c04ad2185a71132bc1a9e9c6d26c04b36b9480f44418a58f52e8076c5b1",
      "name-candidate:d40e15576890dfc41c9a4af1930bae81510c8a66ff314279d9bd51ff6c7819c2"
  ]),
  ("name-candidate:5fad8d7c6402c66c7586e6e4dfff173b17631428939635a707a0eb6ce9987c12", [
      "name-candidate:5fad8d7c6402c66c7586e6e4dfff173b17631428939635a707a0eb6ce9987c12",
      "name-candidate:6d5b7e3867b4e6dbe5a5f6a6ad084744807ea43171a981cf26e1f7ca6267af17"
  ]),
  ("name-candidate:599cc6cb76fd14f6fefcad15e2c7168a70f145bf897a17994f75d21059f3aacc", [
      "name-candidate:599cc6cb76fd14f6fefcad15e2c7168a70f145bf897a17994f75d21059f3aacc",
      "name-candidate:5e292e5a3682810d5a7337fb44a7c60d6ebeae01892fa9a2e7eab303203c55ba",
      "name-candidate:80ef0834cecff44ddeab4009302e6018324e767f62f0452b238347f156c65f68",
      "name-candidate:ab4710aadbf2eb2dacfa00c261e6f94dfb48f4c75bf0d8fef1a5f3091056fbb0"
  ]),
  ("name-candidate:b26c3fe6d5dd956be9e91c426052a038f87c08a13b0d35f7dd2b3c850d8bbd48", [
      "name-candidate:89c975c4b65d00e1c198bebec1aedcf56c964f0de3f6db594e6e739f68b00570",
      "name-candidate:a70248e84b2b5f692a73fd14b508cbef760efe211f9103e09d34affd5692039a",
      "name-candidate:b26c3fe6d5dd956be9e91c426052a038f87c08a13b0d35f7dd2b3c850d8bbd48"
  ]),
  ("name-candidate:436d63b7dc1834a1abe23f6ea2ca3e65dc9ea76e8995efe7ed67f354598736f5", [
      "name-candidate:436d63b7dc1834a1abe23f6ea2ca3e65dc9ea76e8995efe7ed67f354598736f5",
      "name-candidate:59828e112229efd00855f6f14125c7ba19d1a42e18fb5e0a033687ce97e75337",
      "name-candidate:ccd9e6c4ca73e2e84fd20c2916e0a439f35c21b6b1d09f09d6161fc9cad4d734",
      "name-candidate:dde34e7c07b9aafe0d162561efe6c227bf8bac3f8d299b701012bfdf244ed073"
  ]),
  ("name-candidate:8398c24ac7a5322000b2244a9a65fdbdfcb2c47b2099113c6206c7a92386c5f9", [
      "name-candidate:192cefa08a75d0fd018c2231333f069e8e5bd9f4bce2b195f2de28b0de3cdcf0",
      "name-candidate:295c02afa82e0d58537c9a19a1fbf303f465f2717e16fed12ca93ef8b7cd05f3",
      "name-candidate:65724b4ad8b86e27eb4457d5ab2c168b2557910c5e8866860319109e99b0e0c9",
      "name-candidate:8398c24ac7a5322000b2244a9a65fdbdfcb2c47b2099113c6206c7a92386c5f9"
  ]),
  ("name-candidate:eb3322cec08578ed4abc52d492efbda2c71b18deeac41a0005e6764ded7bcc1f", [
      "name-candidate:338a1cb0a7afc01c6301a63b03f4673479f6256098dbe77d3c94653811016d61",
      "name-candidate:9ba6c5266754a792a97d9ad90a769725a94d517607cc101735ac06db8cd360f4",
      "name-candidate:eb3322cec08578ed4abc52d492efbda2c71b18deeac41a0005e6764ded7bcc1f",
      "name-candidate:f0d17fb4f5727f08513f3c63c002fcba996c93b1f186f5ae0aa7ca709d2828c0"
  ]),
  ("name-candidate:a637ca489e4aebf203e138ec7b486d624e3c0453bc610580ea998a81c9d5befa", [
      "name-candidate:a637ca489e4aebf203e138ec7b486d624e3c0453bc610580ea998a81c9d5befa",
      "name-candidate:d4295f08c61f13632a6337ad2ca20b39b9978010cf6cd1c1c6ded27201919f94"
  ]),
  ("name-candidate:7ca2ff610050865fa64131d342e09188c46a8511300ec5ee2fe9d097c91eb49a", [
      "name-candidate:14d731fe7c316e71590db0a926b3fe79129ca2d09f8a5c3dc2f70448638d7140",
      "name-candidate:207dfe21b441a5e64a112762c60b2ec342cfe8f0429422f4bd1047164308e1b7",
      "name-candidate:4b74f54d912428f4eeec82c13972a32d46abd4ed7a66e44ab10f18ec83e6a706",
      "name-candidate:7ca2ff610050865fa64131d342e09188c46a8511300ec5ee2fe9d097c91eb49a"
  ]),
  ("name-candidate:2547fd2f617b0de458bc65060d177b0f230ced8a532730f0b1531a6fa1728542", [
      "name-candidate:2547fd2f617b0de458bc65060d177b0f230ced8a532730f0b1531a6fa1728542",
      "name-candidate:437ef84975760d40efb9918d4cc08f5a04ea8dbaef409713d58264af05a88e60",
      "name-candidate:7857cb0c4e2cf0347368f2773854668e408ad64729f95c0c0304c441b19e5793",
      "name-candidate:daf3244c0e7e9cfcbebd619a60f3db872d9eb044b1f629761054492257613efa"
  ]),
  ("name-candidate:bd6958a24907fe13c9d361ec5ecedf1a1a64b98afc877bef4485f3d8d14c798f", [
      "name-candidate:43800cd7244aa658b4783df0a6a058008473c5750340b633fcedfe859df40c86",
      "name-candidate:735c7d2961ab6a36a86164fa1b2b5666888c296a768aa4ab810b36f03e79807a",
      "name-candidate:7eb39652d792faba6b865a29cac1ad94fb5e2ab82b7de5c044895c9b27f1d1b6",
      "name-candidate:bd6958a24907fe13c9d361ec5ecedf1a1a64b98afc877bef4485f3d8d14c798f"
  ]),
  ("name-candidate:0460e3e79b64147a18585ce426a64b83e29cd312c058968afa2c2b7b5525f1bd", [
      "name-candidate:0460e3e79b64147a18585ce426a64b83e29cd312c058968afa2c2b7b5525f1bd",
      "name-candidate:1f691fe0bc539367df451d8805173dc7a0f7159fcef7ce0ac4e5d4269bd8e854",
      "name-candidate:e09747e9ee661b61adccdf18418f648d9b9de2d145ac30f02fbff4c15ae255ff",
      "name-candidate:ee28a02d1bcc2b5274764ea1a5e9de990bd3adf1e97ca0153e09f678cc403be8"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L62659).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
