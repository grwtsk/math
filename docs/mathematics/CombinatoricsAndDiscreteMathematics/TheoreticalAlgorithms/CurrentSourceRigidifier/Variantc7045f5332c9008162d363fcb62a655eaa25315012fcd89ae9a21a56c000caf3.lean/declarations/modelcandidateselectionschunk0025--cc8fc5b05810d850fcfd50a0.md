# modelCandidateSelectionsChunk0025

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5caa62c04d9026545c5ef532f4b76fc0b4e5aac4487fa1d9ba218fcd50e61356",
  "kind": "def",
  "lexical_name": "modelCandidateSelectionsChunk0025",
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
  "slug": "modelcandidateselectionschunk0025--cc8fc5b05810d850fcfd50a0",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63410,
    "line": 63037,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc8fc5b05810d850fcfd50a0072dd69114e7ebf9a8e4b5088c2ba6f8a7653103",
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

Occurrence: `declaration:5caa62c04d9026545c5ef532f4b76fc0b4e5aac4487fa1d9ba218fcd50e61356`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63037–63410.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def modelCandidateSelectionsChunk0025 : List (String × List String) :=
[
  ("name-candidate:a95b3bd8f6595b6c38abd50d8437e76cc12a0c05b1400217182a1ab97c4de8bd", [
      "name-candidate:153e5cc50eb8db31c215d4040d1b7f8b5d32a5b1a4f5ee70dba2e8551920f836",
      "name-candidate:a95b3bd8f6595b6c38abd50d8437e76cc12a0c05b1400217182a1ab97c4de8bd",
      "name-candidate:c4c30fd955e891b0e35898defa10aad48331781875af27e320abeb79c1b51130",
      "name-candidate:c672c9b61cbcf703932f4f89741ece61eef4b0797afab11c0f3b0e49642eaf13"
  ]),
  ("name-candidate:6d661394199c0cebed1a6a94078d6b51d23e2b95a0a2dc468674819e91427229", [
      "name-candidate:2d4c2e4a708ad45a5fc59cb549dc9bf3f544c8917c776693787cbc20c3a86409",
      "name-candidate:3ae92bfb58b213ef07005d33882dcec1810f542d09309860b42b12339171b83a",
      "name-candidate:6d661394199c0cebed1a6a94078d6b51d23e2b95a0a2dc468674819e91427229",
      "name-candidate:c0594c23406366946bb6523b7c9d27f8bc827042d106ea7b92cda419e4262194"
  ]),
  ("name-candidate:a8bafd9a8abd7e1b977193f88c933534bb03197c5a76ea910a77cacaef1f80ae", [
      "name-candidate:1c1a54db0f1346575769210cfaa3cafc580af34558991a6b211d3454bc559741",
      "name-candidate:5aadda6f9eb8f24883be7480e4cf8a0071ac4d9fbb2d4d978edbefca07161cdf",
      "name-candidate:8171751c7e6fbc1298a603e3af3d622c87cb7be4a66a3957087fce4fa41eb3bf",
      "name-candidate:a8bafd9a8abd7e1b977193f88c933534bb03197c5a76ea910a77cacaef1f80ae"
  ]),
  ("name-candidate:9b699a71c61babbf1f100ed4fda635408375be6b195f0db2b1ed831d20607fdb", [
      "name-candidate:9b699a71c61babbf1f100ed4fda635408375be6b195f0db2b1ed831d20607fdb",
      "name-candidate:d335a1a133469120ade344d7e7d4b5e2db2b7cc1fe3e3be75aff4e12da9cce05",
      "name-candidate:db5949503ca275fbcdd24649729ac57c498ac183d7478d8cb4742e928bd96daf",
      "name-candidate:f8b013b46277a75cb60c6f29551e9aa01bec564209083db0333327c0d35e903d"
  ]),
  ("name-candidate:3314c21a6ae4c09a49cbf69f2111fcedca421fa7a4bf91effbe469f072fc9b5f", [
      "name-candidate:3314c21a6ae4c09a49cbf69f2111fcedca421fa7a4bf91effbe469f072fc9b5f",
      "name-candidate:4deda609c697f8ebc3583f0f1c364003e6e886853f9bd149a13cf432984a44c1",
      "name-candidate:9b6c3e3f42698a1424177633a6b7386c447d6d511e98b7ebc8261d5f6dfb357e",
      "name-candidate:f37f285de80ed7afe6a9c03d6ec767846618fc508151bb98326c51eca361be7b"
  ]),
  ("name-candidate:309d5d019adf192ce2dfcfabb9c115728434793e05cb1af6126e9b5f160bc996", [
      "name-candidate:309d5d019adf192ce2dfcfabb9c115728434793e05cb1af6126e9b5f160bc996",
      "name-candidate:afda6bc92f0894b6b7e8724ecbb9edede5b20a2625e09f3d66d364bfe36f0fd4",
      "name-candidate:b79c5661cd7f7d776a419d8a76b55ff7e65cf0db1b12231dbef778aa3143f442",
      "name-candidate:d96bd026ea541efba022653693d19e5070e485bf4d1719b04667abe0c2ea0aa4"
  ]),
  ("name-candidate:9be0f53bbff395f7e96685fb293620d2f3d98bb9f7102492704d5cd6f57298d0", [
      "name-candidate:02945f43b86ddef5f6bc844402edc133e141baba796bc576a0f67b7006506e61",
      "name-candidate:05ad8e8d8309d79ee8ab5f18b13707f9ab66791f7ad6f8c2ba3349acb46035da",
      "name-candidate:4020c76f276b53dfe5c5f4ec90dcb777f5faa3a20ea48f1f4cb43e909e7a2c37",
      "name-candidate:9be0f53bbff395f7e96685fb293620d2f3d98bb9f7102492704d5cd6f57298d0"
  ]),
  ("name-candidate:6d9588580b950fee702029fcf27ab9bad2fc0df4d588ffaa6fb4d83ba4595ce7", [
      "name-candidate:6d9588580b950fee702029fcf27ab9bad2fc0df4d588ffaa6fb4d83ba4595ce7",
      "name-candidate:78c5516245066420417a225601468d9363eba2dac4d4a23544abde5e43ab9b7e",
      "name-candidate:b865ef31a91d9b0e2e9c154225ea142fcfe17ae90cd672f13118f6a07cd30307"
  ]),
  ("name-candidate:5eafb0079837a7247195f9555de736c5d94f8fa4711b6201e3749a87672efc24", [
      "name-candidate:08b7caafaec62ec5385a4b58fabd9bea9ba0ca1e1b3cd857e5b1e280f8909cd4",
      "name-candidate:5eafb0079837a7247195f9555de736c5d94f8fa4711b6201e3749a87672efc24"
  ]),
  ("name-candidate:7fb6b79202ace108fecc5adffece1e7af5c799221363c4f4b6fc47a6354f1fad", [
      "name-candidate:3290d1a6bc9224996165739d59cfd95e246e5c043383417e10aa5f2331b06f3e",
      "name-candidate:35b6b3f9a047f679ba3e3a0f443515180a29d2f40d8e127b25cbf0002fc67b54",
      "name-candidate:7fb6b79202ace108fecc5adffece1e7af5c799221363c4f4b6fc47a6354f1fad",
      "name-candidate:ca4e2f68d7baf529d08b9a489aa79bd11e4e1c5227e5ce48ffe0924d2277994d"
  ]),
  ("name-candidate:479f97b1795a6646b579bd98b21164d02206ab871bb94ab38fca60cd40c72456", [
      "name-candidate:479f97b1795a6646b579bd98b21164d02206ab871bb94ab38fca60cd40c72456",
      "name-candidate:ee30a193d6361c74fc2d15908ce05b1dfacfdd874c6bcf2f59576d61b33362b0"
  ]),
  ("name-candidate:6565c41abab0d05df487b1c8298d8c03916ba01021edb5b9fe2f21740badbfbc", [
      "name-candidate:54f888df86e5929f4ed3f958c473b1dedc3aec38e7faa5fd571a51ba687efcf8",
      "name-candidate:6565c41abab0d05df487b1c8298d8c03916ba01021edb5b9fe2f21740badbfbc"
  ]),
  ("name-candidate:23ec025cc508f44e077566bd8647481f4e1d6084127627293d46ed2969433678", [
      "name-candidate:23ec025cc508f44e077566bd8647481f4e1d6084127627293d46ed2969433678",
      "name-candidate:684b818bedd74ce5ac6ba5e5c739c445131bde50764473a8d4e4b73bbef53dd1",
      "name-candidate:6f9222c2d03d2083813ea96d9743e948214df982462830f0b7ad1c7c47e04af1"
  ]),
  ("name-candidate:6b8a4092a0d16d98736e215aeb38d39bca44c6adee7e13bd7429ac97e05dcb8a", [
      "name-candidate:0d95a09a2b9b46b542cf02e74be99b7fa70a407fb4664bb44b06ee53200985d8",
      "name-candidate:6b8a4092a0d16d98736e215aeb38d39bca44c6adee7e13bd7429ac97e05dcb8a",
      "name-candidate:7615dc0a14d080f90c6f09b8bf9f7c37b94f70ee7dd6d7254df3f6ee2662a835",
      "name-candidate:ed62d64dd7e60a95ed43ce53713e302fa2e19d14ca08afa7ebae631c2dbb4e1b"
  ]),
  ("name-candidate:87f409f30e75014fb0b3d43a337ddd081ab8d03b52b53a59e3eb8dce6319c1b4", [
      "name-candidate:87f409f30e75014fb0b3d43a337ddd081ab8d03b52b53a59e3eb8dce6319c1b4",
      "name-candidate:a938fde6db02bb7bca4c8d2d69a0e0b14f0da157f0780fab0aa2e6fe6e8e0af2",
      "name-candidate:bf8d2a17b8805563806b0b5cddb674e265997c1540cfed7782e54c46936750b2",
      "name-candidate:dcab31e68801324331ef7f2265451c8a64f3574f6a876f8b8caaca310d865094"
  ]),
  ("name-candidate:e124d87e661dedcbedbaff95a9235abf6f666cf77b9d3f1b6b6c10eeabe362e3", [
      "name-candidate:34dcc450cf65c3a8490237012c84803ac318b6478258e7f1923b8ef6ee09e132",
      "name-candidate:53d7dedf192c5ba054af862bf84ca02639e55a0d22b39c34d245cd8712f75e7f",
      "name-candidate:b2d566bf0181a62ae3b69c803b819dfae19f920cd9317f35b07736780254a98c",
      "name-candidate:e124d87e661dedcbedbaff95a9235abf6f666cf77b9d3f1b6b6c10eeabe362e3"
  ]),
  ("name-candidate:da161f1a0f226dcf8c7888a0f62f7f7f2b0e42aba9765e099080155c2c203408", [
      "name-candidate:0c02b182275260d945ae911fb277c0c5abe4fba69e9e465c9fd4f5e5b78818ff",
      "name-candidate:6d3aa1bf51fd4a7e957bb160cdd9baf9ca47301d60f6ea64b38cb6cf1ac5650a",
      "name-candidate:a066cfab7442f42a9a860bdb65b90345b26167b420a2501b086d4fd5ad99d8c3",
      "name-candidate:da161f1a0f226dcf8c7888a0f62f7f7f2b0e42aba9765e099080155c2c203408"
  ]),
  ("name-candidate:8df5feb4f02501f2e115bef6353c9927b6d298de22876e87c3bc275b33139a68", [
      "name-candidate:3b39502986d6b1a4408de3844f533f69b272aa8a80af72067e67bf74bb8af3af",
      "name-candidate:8df5feb4f02501f2e115bef6353c9927b6d298de22876e87c3bc275b33139a68",
      "name-candidate:ac7b279c764586033c5c21aedf6a2401bd75fcae4f1f467945e5038366b0ede8",
      "name-candidate:c50ae9811c53816cf0fe81f539feca766a2879e2abced0363a75b9126af0606c"
  ]),
  ("name-candidate:9c7888c849d8486d8c65aa0ab062a89ce268b207938982e327ec3fceebbd3ad7", [
      "name-candidate:451804c0e01ab2838490de39c1c61590e0788690475d41a4fcb5178cf89827db",
      "name-candidate:45c6dcf3348a11cbcd652d72f9de12967c0d20d673d4b8798fa431f730940d92",
      "name-candidate:4f108a72cd327a46354348d8ebd4dc2e587353cd8c59acb0e13b71d8e5c33149",
      "name-candidate:9c7888c849d8486d8c65aa0ab062a89ce268b207938982e327ec3fceebbd3ad7"
  ]),
  ("name-candidate:f26e5ce9c4eea6449d6751bad45662b1512b15524cd06506859f7ff8566eb2e5", [
      "name-candidate:d145fe8faa806389a699cce9c3e7945ad7b64c3f77140d24c9a2abdd0667679c",
      "name-candidate:dd4a8068e2f90d103e50d2f3b3bdc9c412b695599337c73f543455a69a7ac320",
      "name-candidate:f26e5ce9c4eea6449d6751bad45662b1512b15524cd06506859f7ff8566eb2e5",
      "name-candidate:f7c591abddc1bfe4f4f99dbfff82f6327bff89e429b8469261ffd59215ba4e5b"
  ]),
  ("name-candidate:559affd2ae8cac453be5286c544066ef9775b4bdae5dfd8ea833cf0b7f32109d", [
      "name-candidate:08c2602e110ec2f16699e7b4f8b3b98756127566c4d33a31c6efa1b3288495f8",
      "name-candidate:19b02f4bad6ee3211f2d55ed10f99708cfe67aed1496ae7bdbc4d8363dbb03e3",
      "name-candidate:559affd2ae8cac453be5286c544066ef9775b4bdae5dfd8ea833cf0b7f32109d",
      "name-candidate:7f1dcbae55eb0d81decdf23d81b0b2b09d3de29ba2cb479f0b211e73ccd10a84"
  ]),
  ("name-candidate:f101d73067f54d12f205d1d7d13500dde9d0392cd8a10e53351490952448834d", [
      "name-candidate:4e1005d7a6cd5b00487b1ff34212838a4017c1e8e9f051941989883593166961",
      "name-candidate:919b9145f6bbf4bac745ca12010802fdfb699126a1c43f0b3519f48fe45010ba",
      "name-candidate:f101d73067f54d12f205d1d7d13500dde9d0392cd8a10e53351490952448834d",
      "name-candidate:fce5ab65442fa0b5a7a28737e031fff2865f08dafa1de02a2483cc64367c41f9"
  ]),
  ("name-candidate:f88314e0720fc72e168b9ae7c39ffe7c6d3c1011fe0f01281af4ac5fd34cf075", [
      "name-candidate:4504fb6540446bd19260b417125250997e44e0e276f5ea4bd41f3e5f6dce4ce3",
      "name-candidate:4f3e1071b8678c9cbf54e6322ccfefa79e4c3ff8da69a9dd459f206cd76a1a26",
      "name-candidate:ab11d0c420c437be4b81c4746e7a739732db858b7593008af70c918ab04dc41c",
      "name-candidate:f88314e0720fc72e168b9ae7c39ffe7c6d3c1011fe0f01281af4ac5fd34cf075"
  ]),
  ("name-candidate:7ff46c6e55b2bb71e2eaed814f719a4c2f40b69a8744e630d581287b98b8b7a3", [
      "name-candidate:560f2f795ff1e09aa4d92e71d15799369281c56265c642cb5ca00151fab0e22d",
      "name-candidate:7ff46c6e55b2bb71e2eaed814f719a4c2f40b69a8744e630d581287b98b8b7a3",
      "name-candidate:efaa93dba8336b72191a7e0ae07f9f5c8b322b3e6de8c3ffb01e297f0b725923",
      "name-candidate:f08c403313912754ad047a8405b6b12ed7557ac32395b2ecf6e85a44edcc15c5"
  ]),
  ("name-candidate:e2b1ab85dd3246dd09cab3495a5f5d29326dfcb4222e1ea1c7a9928ab49a5d9d", [
      "name-candidate:03b00461eabb33161ac73c916fa298895cc70044341ecaf004999f3a3f85d123",
      "name-candidate:787f24254042695964632473b63d18a91f8f4e97ec3a0acbc8f51bafcb9b1fad",
      "name-candidate:e2b1ab85dd3246dd09cab3495a5f5d29326dfcb4222e1ea1c7a9928ab49a5d9d",
      "name-candidate:ffae2dd7c76a732d355307569a971a8ac18df2e0f285671a8647963c772a7d9f"
  ]),
  ("name-candidate:771fc6721142d39ef0fbd35cbd488b35a86cf1999278b34680a53bf3fcec5f5c", [
      "name-candidate:771fc6721142d39ef0fbd35cbd488b35a86cf1999278b34680a53bf3fcec5f5c",
      "name-candidate:8d799d978f080e1cb44d5b949e9400f92af4212242bcd2add0ee0e1a8f0c94e8",
      "name-candidate:acb777f36f7cc907354ad5f9d4d813b337106b290121a013384ff1ecba10ed8e",
      "name-candidate:bb17a57213a214662fb0111fa3c4102ab14e87f7d315a69206badce0d101cc2b"
  ]),
  ("name-candidate:d3052e9b5f838b4b79dac1e98dd698ee9f96d1dd68f17007d74f885fde3b31f9", [
      "name-candidate:3a89d196853127b95bdc75018051f27b7c252a356623fcae3a891f6c58f4738c",
      "name-candidate:60b421393e8730ee630f8b7cb5617eb2b0367641274810757fe2da6042fd9e61",
      "name-candidate:d3052e9b5f838b4b79dac1e98dd698ee9f96d1dd68f17007d74f885fde3b31f9",
      "name-candidate:fd7d558e17d68da0d8c50ae067fff5c52dd4113253a162d7d22efab1437cb642"
  ]),
  ("name-candidate:fdc8231e965872a43d260d41c49700358dade8b6bb047dddf91c1e0e01af170c", [
      "name-candidate:74f515a97134b8ba622e4b2971f39c63539d0e60701672a2d5ec1733b08b2781",
      "name-candidate:f0713680bdc6b86fabc0efc77a7acd738ed4b3e9377ba8503c0f72ed099de502",
      "name-candidate:fdc8231e965872a43d260d41c49700358dade8b6bb047dddf91c1e0e01af170c"
  ]),
  ("name-candidate:dbca5d07414ea107d41360aeca658a96e3f7942902d218304518b28f1e8ff3fe", [
      "name-candidate:1078c2589e93f80465f05dc61ebd42bc895bd6833cd363aea83837cdd7ce1ce5",
      "name-candidate:dbca5d07414ea107d41360aeca658a96e3f7942902d218304518b28f1e8ff3fe",
      "name-candidate:eef2998800ef5a808f73a733d10b29dcd490c3536db8479a2184e407c36342a8",
      "name-candidate:ef6d867fd287396bfb0c14a602f480806a612782924f7c19c28f585b9933fd6e"
  ]),
  ("name-candidate:5e3a098188d6f64b4d1c7f74afe02de133fa34cc4a16eeed7a60e4e5a1b05b3d", [
      "name-candidate:2a81f9d8107fd875e92e301cac7d3248143010ae79f4f001a99d2d8bb2b30b60",
      "name-candidate:5e3a098188d6f64b4d1c7f74afe02de133fa34cc4a16eeed7a60e4e5a1b05b3d",
      "name-candidate:a8c471a066b6852b145b9f417ee4b7034c218ffe1a53d2ada5d8a9b29e5b9109",
      "name-candidate:df58c1bb3045b9e45efcf37d95e5b7203101d7996b3950c370a255742d828f3d"
  ]),
  ("name-candidate:2dde881d932efe0fd17caabe48da211f2e968217c1d0440aff1ece3a75d1ceba", [
      "name-candidate:0255904265046fc6e949da04fc51ac545b8f25eef58cb22bc9e205f5146f25e3",
      "name-candidate:2dde881d932efe0fd17caabe48da211f2e968217c1d0440aff1ece3a75d1ceba",
      "name-candidate:a77b4db3a0af348211d414a938a58c270b4889513c0f594ad8125808ab83a555"
  ]),
  ("name-candidate:f90bb9de86cb6257f2976c30722bb32102e1475d993b93a0d8d39f1ac44a1cff", [
      "name-candidate:936c0eb0ffd93c0aa98ccf244e9553abcd835eca58e986fad1d20dfd00c23561",
      "name-candidate:a14f89f2e891cd6b448f0abda3afdf4d68d25ca7cd43639b008fd6268db1cc79",
      "name-candidate:c94016bef7f7e56892b73be314c95a9d1459714b2bf382a1b2ae4e02c90d1200",
      "name-candidate:f90bb9de86cb6257f2976c30722bb32102e1475d993b93a0d8d39f1ac44a1cff"
  ]),
  ("name-candidate:c274f8b521a16376f86a9c2e4443c4734802a1a771e0df906d86e98d4fd0568b", [
      "name-candidate:0d21d8e205cf6c9413d2582cf32d71777b7721d01042b58b0bcbecde61d4fa4b",
      "name-candidate:588a7681d7f6e3c3cd1731c9b190fb6c89740a3f7d0054c25d42e43f641a9d4c",
      "name-candidate:771854924b918bfed9315bd6dbdac8124332b01a12488adb0b1de490a26ef6d4",
      "name-candidate:c274f8b521a16376f86a9c2e4443c4734802a1a771e0df906d86e98d4fd0568b"
  ]),
  ("name-candidate:22cd8ead57aa967117ed8555b25f49227c52dcc811b79784179e7be8ea4d9f91", [
      "name-candidate:22cd8ead57aa967117ed8555b25f49227c52dcc811b79784179e7be8ea4d9f91",
      "name-candidate:2430b8d7fcd0543e259bb56daebc4d7c0dcc645e9b91dbbde6a630a7f1c8f553",
      "name-candidate:d876a08c9553cc51bd7cb68baa576f0e4ef540b261037b80d45d285dde0a377a",
      "name-candidate:fabf6b065936345c72864744a83584563468839f38d20bfda02b34aa31575c1c"
  ]),
  ("name-candidate:64d84c1d3631e63145c42349666a142ba9849590eac5a22c4710a4410b50948d", [
      "name-candidate:64d84c1d3631e63145c42349666a142ba9849590eac5a22c4710a4410b50948d",
      "name-candidate:6c8da16d442c4c120b4c86b7b8197e7504b0e0f0ae013c135328c9df188bfcaf",
      "name-candidate:88d5c0e0d8070ee93710d11403f44282f34f81a7b7bb91bd1cd5b3a2232802c8",
      "name-candidate:f736f297c49d904eff061bddb92698ec7ec979aec6116c57f80daf219d6fe034"
  ]),
  ("name-candidate:304f408d8d546ad6411eaa1571acf5e8aad8adc7fbe409209cba8900f0521b29", [
      "name-candidate:304f408d8d546ad6411eaa1571acf5e8aad8adc7fbe409209cba8900f0521b29",
      "name-candidate:4c87e3bd645cbb1312402a87fc0a5fc7d087e23a83f75402777152b4c7dde166",
      "name-candidate:544d42600fb748229f4bf194ad1a7b932b5c53342378c75ea8ba3a3d84f19eec"
  ]),
  ("name-candidate:8cd5cabc6e9419dcadee7c56641bd7a27e3d123f979a49dd9c9641a8acaa1be3", [
      "name-candidate:1cf3297174459009e8ef18f37b12e6a8ceee4b3cfba8b4f5c64418003482bb2d",
      "name-candidate:1ffda8dbbcb3a6b31b748b4773e0af1c1765a492d415c5b1629da48318507446",
      "name-candidate:86e9b31432def8681d4f6912f637bd2e3dd69f29ff7058533322d7ce24825f3b",
      "name-candidate:8cd5cabc6e9419dcadee7c56641bd7a27e3d123f979a49dd9c9641a8acaa1be3"
  ]),
  ("name-candidate:8ecda995f2dbe44b126cba50162f65a7454c02cc0ed86d4bade2dc38d06a43ea", [
      "name-candidate:25bc22fb191f7573e17ce4a8e7880ff92a5af61358075c1d735ce57249c81316",
      "name-candidate:5d4c1324df57a156dd82061693d6c4ae33bee2bf1f7a4b60094af4e57cb77ca7",
      "name-candidate:8ecda995f2dbe44b126cba50162f65a7454c02cc0ed86d4bade2dc38d06a43ea",
      "name-candidate:91bedcb5a79d806da3ee983790b587684b8d79e49e1363093cbdf8d4172f286b"
  ]),
  ("name-candidate:7894dfc18c59fa86837031ed5a73d8aff0a1d4f222288afad7ece9173e87777d", [
      "name-candidate:0ff05afd9665f10331c5a3bf6a7e5b84a40f23443f4cd611b14d83119ad222fc",
      "name-candidate:3b07eb4c31974601720a7d1a4421f950548ddbb2ec814d11a5e26c9c99d4443a",
      "name-candidate:7894dfc18c59fa86837031ed5a73d8aff0a1d4f222288afad7ece9173e87777d",
      "name-candidate:eb6bb7123cd308325e51a3dfead610101393c2afe1443f59f987ae87438d3eda"
  ]),
  ("name-candidate:a657bb8517647f6c3bd52ca2e9502836000ac05a13555eb8e51bc9df2f3a0587", [
      "name-candidate:8aafb0a00a3497adea554f868dbc029ff7e8789b1bd68e85f8b7a640fa23ed79",
      "name-candidate:a657bb8517647f6c3bd52ca2e9502836000ac05a13555eb8e51bc9df2f3a0587"
  ]),
  ("name-candidate:ac15841ba34180acc1a0305fdb5b150a7afb7b1fdd4d43f92fb4eacd15b2e983", [
      "name-candidate:39679715dcc277ef5e2f8087f0d62628ce87843554b3baa44675c0f8b747e0aa",
      "name-candidate:430804ce049d219b0775f785e7398f02a2ef19295d51eb264557d13c8862cdb1",
      "name-candidate:ac15841ba34180acc1a0305fdb5b150a7afb7b1fdd4d43f92fb4eacd15b2e983",
      "name-candidate:d8e8c17c05d4c1f3a63ab2935ef0af207c749b6fa151a4920970945563669243"
  ]),
  ("name-candidate:a6e4b7c1679df2bc9b0cb14d4e34428a35bccfa79a809ebe02b7a454154192c7", [
      "name-candidate:30723dcacc3ad78e58629549b84d3b6188082ee9244b595d2cc4a80a7d3cbab3",
      "name-candidate:5185fc98ffad63d078cc779f8e9cf00672377757d8b253fd935b46cd88c60321",
      "name-candidate:6cfb5150a6550b00f56e44f110fe156c3e6f6c1699c9439d2a7d795424dffbb6",
      "name-candidate:a6e4b7c1679df2bc9b0cb14d4e34428a35bccfa79a809ebe02b7a454154192c7"
  ]),
  ("name-candidate:cbf0d77e1ce7b84b8d428b17a74d6d0ba35198066627afa4416b68653cbf5954", [
      "name-candidate:23359165978ea5c15517884e9a368b46ddde2f595556a545e064531580032c9b",
      "name-candidate:96656209854443d99dd1e0fe2093393a10a497d4361db10cd1c7575c6ff42db6",
      "name-candidate:a43a2055a3f25e1aef7afbcff1621fa213caadd110ad8ee8a4bdf7369f80acac",
      "name-candidate:cbf0d77e1ce7b84b8d428b17a74d6d0ba35198066627afa4416b68653cbf5954"
  ]),
  ("name-candidate:bf61ed33f631eb33a86f14c9259814593d7b21491c8a6f9df3be058822648f95", [
      "name-candidate:0ed69fe5da689e63d576e9b201f6a1c389109d95aa2c08dbff5acbcc2a4ceb3f",
      "name-candidate:28eea7459d20edc5a5d687e2b819208632859eaffe54ca5a1d970c1b7920e90c",
      "name-candidate:5501625d618a78a2e35ef3e47035aad1b5952d7388b696ebfcb97742b620b7da",
      "name-candidate:bf61ed33f631eb33a86f14c9259814593d7b21491c8a6f9df3be058822648f95"
  ]),
  ("name-candidate:1e6856464bed14789b09aa56ccc2cb23c4494271f99f7e125fb0f258787fedcf", [
      "name-candidate:1e6856464bed14789b09aa56ccc2cb23c4494271f99f7e125fb0f258787fedcf",
      "name-candidate:2e8a6ccf3964036ec1f41a99efee0064a3d4c9006d49fd6c7e1c1e1c1a532bec",
      "name-candidate:439bafd276829530b51ce0ada82d845f476bf00bddf58c41cdf7707a9052462a",
      "name-candidate:aeb5fce726de419026222702eefacc9f84a6d50c943d52722711a1063561c0d9"
  ]),
  ("name-candidate:0ffadd50204a5306c2b70efe526105482b6219dc0b89c1bd0109ae84a33855f7", [
      "name-candidate:0ffadd50204a5306c2b70efe526105482b6219dc0b89c1bd0109ae84a33855f7",
      "name-candidate:47a663d4fc92d08b1e745cf9e66b3d04d6823efc4a9c5cbe145a94fc138c4f7c",
      "name-candidate:9f6aadd4c450b921186bb34132a3e999e1cc45b307a1086a67436fa07da6b773",
      "name-candidate:c34ac29312b988670dcca49551190e262a827d50305a298e937d3e1f8e17d7a7"
  ]),
  ("name-candidate:5311d05ca3e2f8965a1016843768548092081d21ff35d78f21ff7ea1c74dadf0", [
      "name-candidate:5311d05ca3e2f8965a1016843768548092081d21ff35d78f21ff7ea1c74dadf0",
      "name-candidate:7fc84854ddfbe9e048e55b1f1832918c72b5b08461547a0db7c0b979e82cd4e1",
      "name-candidate:96923aff6cb3aa68c30d75c06cf6cfaf86d1f2df6f69e25bca0c259f4669aa32",
      "name-candidate:ef09928d3385af453ba6c392d04d9a4fb91ae64aadf7f40bd3fce7d9f837aed1"
  ]),
  ("name-candidate:d63ba5ace5ba802efaa3a9013da1594366ace493357a12ced1f09bbdcaa66be7", [
      "name-candidate:5896f4f596fa0385c70f0a08695738d649370f92448f2c19c748f75b1910bcc6",
      "name-candidate:5c419ee4fd71de39e2e0cdee729c997fd82eb04ca1db0ff04f1ce105d4d650c6",
      "name-candidate:d6210b8628bde190dfc31a34bc03c1c791b9dd76b9a81736b7a77b0c220fe981",
      "name-candidate:d63ba5ace5ba802efaa3a9013da1594366ace493357a12ced1f09bbdcaa66be7"
  ]),
  ("name-candidate:2bf012e1c9150d53470ddce5022380f64e3a170b71e3a6b70bc1a8687811d50a", [
      "name-candidate:2bf012e1c9150d53470ddce5022380f64e3a170b71e3a6b70bc1a8687811d50a",
      "name-candidate:8e15f9bff50c9d9857b92c91907506d2977096bd54ea386eff51846aa3243c08",
      "name-candidate:a13bce84521cd79e9c172d7bd3b20bea6564319046ef691f928bf69f8dea6170",
      "name-candidate:f86a3d4c40d0f91ae9aa0c87c718b7b914b84f8c4625df6c3e6faf8da439294d"
  ]),
  ("name-candidate:c9ff6c0fa545835474fb9090646855fea1afd589870ab1cc672f78a2ead6fdeb", [
      "name-candidate:834c80fec225c1be4e4f80fb733aacdaca1fc70f3fa6b96c016fd3987d5edbcf",
      "name-candidate:c9ff6c0fa545835474fb9090646855fea1afd589870ab1cc672f78a2ead6fdeb",
      "name-candidate:dfb7a0c0cf57cc3e0f67bfe935e7d2728bcd903ab30e37cc1b385fd4f7bf61fc"
  ]),
  ("name-candidate:592b7ddb2cffc29b3639a69522d78be0d3dbeb31e28b5e5dcc81d56bcc6f64c3", [
      "name-candidate:3588d75c7483f783c108ef2c4937572a5e1a739bf85e66c22ed1a7f6032cf9f7",
      "name-candidate:592b7ddb2cffc29b3639a69522d78be0d3dbeb31e28b5e5dcc81d56bcc6f64c3",
      "name-candidate:e4fc2b1e68f9ce1664f7e7ea384073afba44bdd3acb61f68855962d011d30519",
      "name-candidate:f9e56a79f388d847dce3205e57f7e638e09c2200f3f02b98edf96e4e90878aed"
  ]),
  ("name-candidate:873549191cf23d8c0df49fa45ee888d72eb3a2eeb52cb327ed287299c878e33f", [
      "name-candidate:59eccf4a97e2219aebbdf94601e2948e29732b813abaaab10b637e0dfce82420",
      "name-candidate:873549191cf23d8c0df49fa45ee888d72eb3a2eeb52cb327ed287299c878e33f",
      "name-candidate:a0aa73ce24d43df9099027d82ad580c292f56756d3901d35ea67eedebd07d662",
      "name-candidate:c8f4ab776e0ac0d098cfacc447498e84ccbc850c68ee29d06a1bfe5514e097e8"
  ]),
  ("name-candidate:4a89ef8816ab2a1b0e25ffba3e77371614197a33301bdbdf23fbf43fd2c258c6", [
      "name-candidate:21f7a9c379966631e06d6b1064898667e3143ec224bb70fd691f5bebcbaa52fd",
      "name-candidate:3180c0ad3cb155ead1b001c008eac70950fec9aa70385de042aec5ae55cf699e",
      "name-candidate:4a89ef8816ab2a1b0e25ffba3e77371614197a33301bdbdf23fbf43fd2c258c6",
      "name-candidate:b27b0381f04ef5cf77d49ec9371f1cd49dfe2d08b651d1ca1f6897a186406252"
  ]),
  ("name-candidate:bbab3956f3181fbed471ecec7f00940c49d78695f3bbfcf463b5cc87016cbd2f", [
      "name-candidate:0e7cacf1d3616690d0df765f692880d29bd4ed8585479e18e0f6d632715a557c",
      "name-candidate:3d8c4b4e181fe038b7f6dc11d604e0cb5a54143d6126f6dc0f64c22945778678",
      "name-candidate:a2c7aab8ca8e6fae5d5990584eb30a5dffb5642f15ff8db7b3d3a7e93292b714",
      "name-candidate:bbab3956f3181fbed471ecec7f00940c49d78695f3bbfcf463b5cc87016cbd2f"
  ]),
  ("name-candidate:6e764949efb3f9bdb6bd22b8b5b900ba88ec6186d288fd54de906c200ed272f3", [
      "name-candidate:186daf22a8e0259dca5728149273cc6adb996134b979abeb25f929d6c4e3b532",
      "name-candidate:1d90a3ba18974cbc7e2e9cf7caa430451c230414555ea8b8473cc0ceb9ff86ae",
      "name-candidate:6e764949efb3f9bdb6bd22b8b5b900ba88ec6186d288fd54de906c200ed272f3",
      "name-candidate:dc77dc42d3ac39a22409dd959568404000cc682d1ecbed8ec4235fed70e50d5b"
  ]),
  ("name-candidate:0de45266054007358bfb2205b64af44cbad2fea68e590512b4c9fa2ab43de5f5", [
      "name-candidate:0de45266054007358bfb2205b64af44cbad2fea68e590512b4c9fa2ab43de5f5",
      "name-candidate:2ba2518f94fba3db700dc1cb9acaca1697ffec215bdb4dc0c9c8b9f21685f536",
      "name-candidate:4e89332d8e5eef84d8e5a3502093d90fb0cde4b2b6a2e702fba8e978da9b603a",
      "name-candidate:90803cfd6df3ab208e041418d2cd25b4112d672e868ab41d7971e70457c37bed"
  ]),
  ("name-candidate:3021f250ad050928c50f0924f3689d038c1a4283d137def886ae7bc5beabebc3", [
      "name-candidate:238e024d8fcc8510cc567df93166f0a85445b59d1cf1b376ca1ed4290011b389",
      "name-candidate:2c2548e69873a0921f1682c12652fe0cddc8c62cb62fa9a50ffed57884584a77",
      "name-candidate:3021f250ad050928c50f0924f3689d038c1a4283d137def886ae7bc5beabebc3",
      "name-candidate:cccbd4127fe7740c71328872a70e645b606e11b3a4874ec512b14eed41633d2e"
  ]),
  ("name-candidate:7db728fe776e6a737f7f6098f593b9ee31d8749a480ffd9710f1dbefdb8ba8e7", [
      "name-candidate:2448aaf317ae8b002260cc06c2b60a63f25d39ea394523d51c2ebb087dcd94b0",
      "name-candidate:7db728fe776e6a737f7f6098f593b9ee31d8749a480ffd9710f1dbefdb8ba8e7",
      "name-candidate:ac2089462b292d7fec347b3d7f40efc17814344fa964a8fad5a1e8725b029fdf",
      "name-candidate:b4ecd99d822ac0caf15afe4332862f1f779ea1e8a7ec10a233ce8de726690816"
  ]),
  ("name-candidate:68fcf12b43ae84cdf6b836eb46cf0a39183f61e0458cab8d3bf8f00d09e6b003", [
      "name-candidate:39cd81217db481095ba17b4abc6dbfdb4a488c36fa8085dea7176887aab627a3",
      "name-candidate:4f9141540044149e44c8bbb715bb123456931de7872a9b1ddecf258458e20a1c",
      "name-candidate:63df7dc9a1ed2cf5aaaf49459dea5cae83873fd57d4e9ae9e772d5a44d9a2340",
      "name-candidate:68fcf12b43ae84cdf6b836eb46cf0a39183f61e0458cab8d3bf8f00d09e6b003"
  ]),
  ("name-candidate:4c051dbbbd064698827c4e47f886556114b4bb2ee7aa83c850d9c8048817e4ce", [
      "name-candidate:3107b7b07013d1d98fc8bfd3b0c2d5123a658119b382a667aa17d50c4eb88650",
      "name-candidate:4c051dbbbd064698827c4e47f886556114b4bb2ee7aa83c850d9c8048817e4ce",
      "name-candidate:749fdf9d98a5abd1d5ea97c688068bc2ae24465453c83d964e65f85c5b52fe19",
      "name-candidate:d1224f110fa09cff47f420b7e27cf532b68ae0189da505a39d7130d99ac6c8da"
  ]),
  ("name-candidate:42fb8a92843a5c55b40752a48d1e73168ad803a2d756716e469ca2638509e397", [
      "name-candidate:2fdf44995cad9dcec1549edb00430ba0e0c4f9a8979cdc147fb937ad75cfb405",
      "name-candidate:42fb8a92843a5c55b40752a48d1e73168ad803a2d756716e469ca2638509e397",
      "name-candidate:5faa004392fd3fdb88e7f53c1a3a0771a8b5fdebd092eb8196f6fbee77b8ff5b",
      "name-candidate:89140ce4560cccd80bce29a730f22e1e8b92b44aec0b1ddf9ba0d0c288860283"
  ]),
  ("name-candidate:94af1293fc8c0e92d389839164a85a99d65238dbf556ff5741158a6a382b7060", [
      "name-candidate:0f0f4b142e07d4c57db28ed407a3fccd810ac1474723b4b76ae8a7ed24773dae",
      "name-candidate:94af1293fc8c0e92d389839164a85a99d65238dbf556ff5741158a6a382b7060",
      "name-candidate:b3a96d6ef26170b33ad6c632aaab1bd128847e6e8dbdc90c3e1803a390c084a6",
      "name-candidate:b9ee527dfba4b2615086022e73b06993b55030e2ff81c2fd7701041c5ee278b0"
  ]),
  ("name-candidate:80e1c47266e0d3cf530f39183330ffdd9e49ca2d6e8ccf95efaeb31a2bab3d35", [
      "name-candidate:09ece5247cb508f55aec36554fe8ccb82d310881019cbad12a20f4b4c83f4fd6",
      "name-candidate:4ea6230c05ee20068922fa714cbf738e7ff5c82ccaf90646d9f3366a08df109c",
      "name-candidate:80e1c47266e0d3cf530f39183330ffdd9e49ca2d6e8ccf95efaeb31a2bab3d35",
      "name-candidate:d50ab37e7c3c6c1d8ac24e79f3ac1c962af708ca3cd19a812ad766dcb14b1347"
  ]),
  ("name-candidate:2e2fe024927218ab0dd87a9672a3b9278a693e492a8e612cf007a360361a27d1", [
      "name-candidate:0810e89c67fcc4602a9dc09d3733b7f0509b4038bc9de9c58e2fdae006e7442b",
      "name-candidate:13ff6576e62e049cfc71b66826fefdd95a4df6e4ba4c83f08995e696c1ca59d1",
      "name-candidate:2e2fe024927218ab0dd87a9672a3b9278a693e492a8e612cf007a360361a27d1",
      "name-candidate:754cd4c7f4988312c23ea10ace4b5f8b6f9a51bc841e84286f7ce2b1bf6f96cb"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L63037).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
