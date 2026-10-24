# candidateSelectionsChunk0025

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e36f778afc1f8c8dabcef4df9178252279d3e3652f01444d4726b88510fda301",
  "kind": "def",
  "lexical_name": "candidateSelectionsChunk0025",
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
  "slug": "candidateselectionschunk0025--1f4d9ee048ac0bfe1a4a7702",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50345,
    "line": 49974,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1f4d9ee048ac0bfe1a4a77027b1b25d87b1b2754cae1818f10e70e5049df2b18",
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

Occurrence: `declaration:e36f778afc1f8c8dabcef4df9178252279d3e3652f01444d4726b88510fda301`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49974–50345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def candidateSelectionsChunk0025 : List (String × List String) :=
[
  ("name-candidate:a43a2055a3f25e1aef7afbcff1621fa213caadd110ad8ee8a4bdf7369f80acac", [
      "name-candidate:23359165978ea5c15517884e9a368b46ddde2f595556a545e064531580032c9b",
      "name-candidate:96656209854443d99dd1e0fe2093393a10a497d4361db10cd1c7575c6ff42db6",
      "name-candidate:a43a2055a3f25e1aef7afbcff1621fa213caadd110ad8ee8a4bdf7369f80acac",
      "name-candidate:cbf0d77e1ce7b84b8d428b17a74d6d0ba35198066627afa4416b68653cbf5954"
  ]),
  ("name-candidate:0ed69fe5da689e63d576e9b201f6a1c389109d95aa2c08dbff5acbcc2a4ceb3f", [
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
  ("name-candidate:c34ac29312b988670dcca49551190e262a827d50305a298e937d3e1f8e17d7a7", [
      "name-candidate:0ffadd50204a5306c2b70efe526105482b6219dc0b89c1bd0109ae84a33855f7",
      "name-candidate:47a663d4fc92d08b1e745cf9e66b3d04d6823efc4a9c5cbe145a94fc138c4f7c",
      "name-candidate:9f6aadd4c450b921186bb34132a3e999e1cc45b307a1086a67436fa07da6b773",
      "name-candidate:c34ac29312b988670dcca49551190e262a827d50305a298e937d3e1f8e17d7a7"
  ]),
  ("name-candidate:7fc84854ddfbe9e048e55b1f1832918c72b5b08461547a0db7c0b979e82cd4e1", [
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
  ("name-candidate:834c80fec225c1be4e4f80fb733aacdaca1fc70f3fa6b96c016fd3987d5edbcf", [
      "name-candidate:834c80fec225c1be4e4f80fb733aacdaca1fc70f3fa6b96c016fd3987d5edbcf",
      "name-candidate:c9ff6c0fa545835474fb9090646855fea1afd589870ab1cc672f78a2ead6fdeb",
      "name-candidate:dfb7a0c0cf57cc3e0f67bfe935e7d2728bcd903ab30e37cc1b385fd4f7bf61fc"
  ]),
  ("name-candidate:e4fc2b1e68f9ce1664f7e7ea384073afba44bdd3acb61f68855962d011d30519", [
      "name-candidate:3588d75c7483f783c108ef2c4937572a5e1a739bf85e66c22ed1a7f6032cf9f7",
      "name-candidate:592b7ddb2cffc29b3639a69522d78be0d3dbeb31e28b5e5dcc81d56bcc6f64c3",
      "name-candidate:e4fc2b1e68f9ce1664f7e7ea384073afba44bdd3acb61f68855962d011d30519",
      "name-candidate:f9e56a79f388d847dce3205e57f7e638e09c2200f3f02b98edf96e4e90878aed"
  ]),
  ("name-candidate:a0aa73ce24d43df9099027d82ad580c292f56756d3901d35ea67eedebd07d662", [
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
  ("name-candidate:3d8c4b4e181fe038b7f6dc11d604e0cb5a54143d6126f6dc0f64c22945778678", [
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
  ("name-candidate:238e024d8fcc8510cc567df93166f0a85445b59d1cf1b376ca1ed4290011b389", [
      "name-candidate:238e024d8fcc8510cc567df93166f0a85445b59d1cf1b376ca1ed4290011b389",
      "name-candidate:2c2548e69873a0921f1682c12652fe0cddc8c62cb62fa9a50ffed57884584a77",
      "name-candidate:3021f250ad050928c50f0924f3689d038c1a4283d137def886ae7bc5beabebc3",
      "name-candidate:cccbd4127fe7740c71328872a70e645b606e11b3a4874ec512b14eed41633d2e"
  ]),
  ("name-candidate:ac2089462b292d7fec347b3d7f40efc17814344fa964a8fad5a1e8725b029fdf", [
      "name-candidate:2448aaf317ae8b002260cc06c2b60a63f25d39ea394523d51c2ebb087dcd94b0",
      "name-candidate:7db728fe776e6a737f7f6098f593b9ee31d8749a480ffd9710f1dbefdb8ba8e7",
      "name-candidate:ac2089462b292d7fec347b3d7f40efc17814344fa964a8fad5a1e8725b029fdf",
      "name-candidate:b4ecd99d822ac0caf15afe4332862f1f779ea1e8a7ec10a233ce8de726690816"
  ]),
  ("name-candidate:4f9141540044149e44c8bbb715bb123456931de7872a9b1ddecf258458e20a1c", [
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
  ("name-candidate:89140ce4560cccd80bce29a730f22e1e8b92b44aec0b1ddf9ba0d0c288860283", [
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
  ("name-candidate:d50ab37e7c3c6c1d8ac24e79f3ac1c962af708ca3cd19a812ad766dcb14b1347", [
      "name-candidate:09ece5247cb508f55aec36554fe8ccb82d310881019cbad12a20f4b4c83f4fd6",
      "name-candidate:4ea6230c05ee20068922fa714cbf738e7ff5c82ccaf90646d9f3366a08df109c",
      "name-candidate:80e1c47266e0d3cf530f39183330ffdd9e49ca2d6e8ccf95efaeb31a2bab3d35",
      "name-candidate:d50ab37e7c3c6c1d8ac24e79f3ac1c962af708ca3cd19a812ad766dcb14b1347"
  ]),
  ("name-candidate:754cd4c7f4988312c23ea10ace4b5f8b6f9a51bc841e84286f7ce2b1bf6f96cb", [
      "name-candidate:0810e89c67fcc4602a9dc09d3733b7f0509b4038bc9de9c58e2fdae006e7442b",
      "name-candidate:13ff6576e62e049cfc71b66826fefdd95a4df6e4ba4c83f08995e696c1ca59d1",
      "name-candidate:2e2fe024927218ab0dd87a9672a3b9278a693e492a8e612cf007a360361a27d1",
      "name-candidate:754cd4c7f4988312c23ea10ace4b5f8b6f9a51bc841e84286f7ce2b1bf6f96cb"
  ]),
  ("name-candidate:a47a7c10b366d67738fef50401e12fe3d85a281db332999745de5145866708ac", [
      "name-candidate:59d422c40eb88b3c0c2b6e15011fc84d0259e45c8375d519f74d8402328adbda",
      "name-candidate:723a813ddf5a40b3a2922581c91d2733e08bd694ac7c2c1099c87739d70d7e93",
      "name-candidate:9d311482c3fd2d6abe7d983613183978ecb73b19458e395d329c2133067f5bea",
      "name-candidate:a47a7c10b366d67738fef50401e12fe3d85a281db332999745de5145866708ac"
  ]),
  ("name-candidate:745d9e957abd3ecdcb3826e05fa0ddc85cffcff0261512cdf97374141dc0c736", [
      "name-candidate:27370b5c26d1a851013196e262a0aa9bb1f75403f8e5a7f27e6e88c9cf8ccdf3",
      "name-candidate:4a471ed80d8884d1fa8e07e6073953b88b6fa49dde49708cef86ebf247e30212",
      "name-candidate:745d9e957abd3ecdcb3826e05fa0ddc85cffcff0261512cdf97374141dc0c736"
  ]),
  ("name-candidate:a69e4de7f77077bfe6bf45cd88aa02c2ceb3a30b690a7d670679374b276b269e", [
      "name-candidate:33051d6678b6314269407c8a5d9bd64383cf703f8c9ddb7a4349ba0002e2353b",
      "name-candidate:75b7afbd05d714aea1e4d2e1dec8fbfc09906a2db4343e13e5fbc3d199bb948f",
      "name-candidate:9820ea9171ad5eb335dbbba0b016d0eac58e9efd39301cfd05e5c63ca22872a4",
      "name-candidate:a69e4de7f77077bfe6bf45cd88aa02c2ceb3a30b690a7d670679374b276b269e"
  ]),
  ("name-candidate:45af58f290008cf704a847391f930dfdfdc2d99b3c77a5d5086679c62ce9eda8", [
      "name-candidate:45af58f290008cf704a847391f930dfdfdc2d99b3c77a5d5086679c62ce9eda8",
      "name-candidate:57c19c0b7895ed7f3424652a8cf19a62b2bc8ccb41746a83d744daa373e26188",
      "name-candidate:8a3372ea0130c326864b90bfed136c57d92dd0f84e1dd6535b1252e81178485e",
      "name-candidate:d20998db8852bfd96fe66ce8e8c564dba630d82c40e06f6b8d8f430132241b24"
  ]),
  ("name-candidate:e53118b73e13806cc0d149cb20df3f965518973f9f8c96ea2ecaea68fc07761a", [
      "name-candidate:4ec7609c3a3bf77eb3365fe11ef76c39ac4d4118139d3ab662b402f6170f5a7b",
      "name-candidate:db91a4e4025e9dce118ccaef2853823e415961f677dcaa430e692bb2d7d5e493",
      "name-candidate:e53118b73e13806cc0d149cb20df3f965518973f9f8c96ea2ecaea68fc07761a",
      "name-candidate:f7bac8128896878a9d0dfa9e0fd7575cbad34f9024ec21110d74ce5dc4c2da5a"
  ]),
  ("name-candidate:28225190a9ba591197f720c6d2916009f0a1de12042af2cfe799497c7c44f0e0", [
      "name-candidate:28225190a9ba591197f720c6d2916009f0a1de12042af2cfe799497c7c44f0e0",
      "name-candidate:5f8b099e5193a52dac3da7436c4790d9e1913f2b337654bc59fbe0dde6cf7af7"
  ]),
  ("name-candidate:ff1ed35f65b36497a1a175e1f0019b38694b279a3e51928379a3b3d88a757ea2", [
      "name-candidate:70c91b62a5948b1ba313f1320dbee5df4d36b61d2cce1e1ac242c305874d19cc",
      "name-candidate:ff1ed35f65b36497a1a175e1f0019b38694b279a3e51928379a3b3d88a757ea2"
  ]),
  ("name-candidate:89b485961116f3cb93f30134ba35e27167593eb9def79d149c8b84777dbdac2e", [
      "name-candidate:68dbadfad9029d8fcd84dd04039c85b18b54d313c1474519faaad5745e4226b8",
      "name-candidate:89b485961116f3cb93f30134ba35e27167593eb9def79d149c8b84777dbdac2e",
      "name-candidate:9b199f22689cd77332e80de511f025c5563c65580e921001f0efd17f9b28a84d"
  ]),
  ("name-candidate:627d48eecad257273882ac0d005500e6d085c95fbc0c47b0b168f97bbe7842f5", [
      "name-candidate:423f10f95fb114d4a665727c75b95741f1700f38b5fc17481e9c813ca52ae606",
      "name-candidate:627d48eecad257273882ac0d005500e6d085c95fbc0c47b0b168f97bbe7842f5",
      "name-candidate:f0867bf5849c1b3d9e2157d82944437897eee117041ebbacf1817d8b50cfeb50",
      "name-candidate:f8941f8f3ced4066f1f7ae674fcf5f9ae18843e470fc26941980a64814155236"
  ]),
  ("name-candidate:f594615c877506dc85382b60b5ac24111b1a3aec15e90faca85426abcaff602c", [
      "name-candidate:2fe4cd731572f6ee9154d59f545bbd647e2cfa6408b9076cb0fc9fdff7873404",
      "name-candidate:6d3ae0b8030a4ecbde89de67dab0592642b770c34ee657c2ef47a6ff9151efa0",
      "name-candidate:b3957459ef85269a37797ef3322096478e489281675267d4c3fbcb419bffe1b1",
      "name-candidate:f594615c877506dc85382b60b5ac24111b1a3aec15e90faca85426abcaff602c"
  ]),
  ("name-candidate:a1359fa8c68ddfb687a6836d59768b8b6ba01d976d1dbb9f9cad2c15f7f2200f", [
      "name-candidate:01426aaa2e8c6657bcc427c3d104c7f207a765f75795520298ad3a5e7fc9c14a",
      "name-candidate:9d9d1b4167ee0eab3997f257759b3105472c9356e42263dd1a352df4320d98d4",
      "name-candidate:a1359fa8c68ddfb687a6836d59768b8b6ba01d976d1dbb9f9cad2c15f7f2200f",
      "name-candidate:fa35ea3b07a65546e459f8ff5b1dc528db8d7c9d92952f9899f2e635be2a44ec"
  ]),
  ("name-candidate:e1e1724d72c97d194652911ed787d1ca6e65699d3ecde6b82990456777d973b2", [
      "name-candidate:01e7ae26227b24607d235645920bb73c065c50f22577cbf276998bfe35579482",
      "name-candidate:e1e1724d72c97d194652911ed787d1ca6e65699d3ecde6b82990456777d973b2",
      "name-candidate:f71de932f36714bcdb2fdc71f410ee872ac738ec17b375549ccecb0caaf34aea",
      "name-candidate:fea30270f7fc251c7d78fe76bdc9e18133b637111def49eab1d3bd31d4d37c99"
  ]),
  ("name-candidate:8030ae5b253861733e54fa41b7943ba800af11d8baf5afb3ed4d36e077f1b067", [
      "name-candidate:2e11bba084a59c616f4111fa054a212e208f1f7ab2fc66b99f41ad8088115450",
      "name-candidate:5b6eb657e2d4e9319dc8b1bf4c41ba2f29a8b433928057e965baa375e73bc704",
      "name-candidate:8030ae5b253861733e54fa41b7943ba800af11d8baf5afb3ed4d36e077f1b067",
      "name-candidate:ac97f5da3f986359ecfe44a65929548326f4867191940d5f541531a418dd8d75"
  ]),
  ("name-candidate:271194a594a17b9e4d9ceab3cd51ee918ab2e17e1bb2f4537c6e464845997643", [
      "name-candidate:271194a594a17b9e4d9ceab3cd51ee918ab2e17e1bb2f4537c6e464845997643",
      "name-candidate:360282cd093f29fe442383241db143f5a1e0465e441e8a5651519e37358770b0",
      "name-candidate:af9c9714d8dd3abcb8cddc1fe8482c2fc1bedf9b5aeef096470dc597882d789e",
      "name-candidate:b66e3976c222476505172d1c8c05421bc5745cfd9906307d6569093432cb729b"
  ]),
  ("name-candidate:f395687ef60cf5ff4e515f920e26da94a88932772f413e16ca18c78fd80c8644", [
      "name-candidate:9d48927d0c509b96535bb09131f37e0e29a446bb4d9b3dd5a7997584237fa3d3",
      "name-candidate:c0d34a5d1f2012386fc78a2b595abfb1cd3c63abda91211d56acb38e85f22bb5",
      "name-candidate:f1f25f219c397d007449696b5e4b7f5f687bcd58a079c1c94d44eb7fdebda916",
      "name-candidate:f395687ef60cf5ff4e515f920e26da94a88932772f413e16ca18c78fd80c8644"
  ]),
  ("name-candidate:b56e56e296cf318b7f6625d1b992c06fe698f2280a086b7c149447dd34eb135e", [
      "name-candidate:4b552f3f2f921c47465bd9ea706eeb053deb1c674606216946fe684a1f0136f6",
      "name-candidate:98dbb4e0590be61d882b054d8193a101411d8d1ff5a0daa6a465dc11b0e83105",
      "name-candidate:b56e56e296cf318b7f6625d1b992c06fe698f2280a086b7c149447dd34eb135e",
      "name-candidate:e83df14aab2226e5206f7076af2dcbbe396398d5900975db3162c426e4973303"
  ]),
  ("name-candidate:f27ca026c63d32b1dcb2e70058a522569d7237a80fe8bc36b78fe92435ddc80c", [
      "name-candidate:28c4c8042a269aecb35604dc5ddcb9e6657900a4cb52a0b7b746aeb99090c9ee",
      "name-candidate:5a85d256824681bbcb55c6ee15541a99c7911e2e9b50cc02707e666d1cdc9785",
      "name-candidate:81b592b309cc3fb07b6a14eab5d0d7895298faabf5a6885ea4635d02817f5e48",
      "name-candidate:f27ca026c63d32b1dcb2e70058a522569d7237a80fe8bc36b78fe92435ddc80c"
  ]),
  ("name-candidate:4ca3e6ec5165343c75c15b9790678bf3ac5ad7221bd869ecf7f4b295661a2b92", [
      "name-candidate:2bacd5df9a18ef321166a87a55655a4fad972d48720772630a7d2dc3885d4db3",
      "name-candidate:4ca3e6ec5165343c75c15b9790678bf3ac5ad7221bd869ecf7f4b295661a2b92",
      "name-candidate:775aedf487f94d51c0c76138f1830e86d18729e5d4f0c6bb6a33979ea4cc69fc",
      "name-candidate:a52a53fc342a0bbcc6609ee3cc7d762849b9076c127057ef23634b2c55cf99af"
  ]),
  ("name-candidate:3c72a9c05604ef0b238ac302049943fddf8035deb5a2aa7e3f324743862c3ab5", [
      "name-candidate:189ba14711960f8c276cc908b81576bee978227c4bcb8c8dcc33db9358648fb4",
      "name-candidate:2cd3d2e2b727db1d525ba495640efc3ce14e9ba40cb3d957bf67704701983c89",
      "name-candidate:3c72a9c05604ef0b238ac302049943fddf8035deb5a2aa7e3f324743862c3ab5",
      "name-candidate:45d753ad6137841e74331c908cade6ef53a5f3e2488cf108d96318429c1d22c2"
  ]),
  ("name-candidate:b7e42581d0a55122d0f99af3891da76f395289646f3ede6010c05dc2828f741a", [
      "name-candidate:276badc95dbc9471dac53d2a5451743fd5d0ff680c43062a1a6bb75c5e7f2210",
      "name-candidate:745731f83af277ca94629c16f8eeec3a1f0588dc06634ab35c2fb6787ece102a",
      "name-candidate:90ac5d34faec67a4470770f63a728bbb32dbafe5f44d1646888127c9f622eba3",
      "name-candidate:b7e42581d0a55122d0f99af3891da76f395289646f3ede6010c05dc2828f741a"
  ]),
  ("name-candidate:60c1ee72365433686761d093cb60b68640a24024292f0b7042c6c0c3e0ae1472", [
      "name-candidate:26e6f6b35c0a559262ea518d9b257b97bb0a729818c5da831daa789c4e7c229c",
      "name-candidate:554fceea23a133264c1c414b31129bbb75db493a9c9ba7850b305692f96c8fc9",
      "name-candidate:60c1ee72365433686761d093cb60b68640a24024292f0b7042c6c0c3e0ae1472",
      "name-candidate:ce182ff041b7cc5761ebbb9d5c6d8071715d071489136a09f5daab43b1976a65"
  ]),
  ("name-candidate:d16c4cdd295753ecd6d15799000861b6bf3d5ec40d14569e6370db863f73ed8d", [
      "name-candidate:3cca1d4d2442bc6fa6458ab32d9a651596b9216754252038ad118f0173006f9b",
      "name-candidate:7f8a4b5055eb8aec33ffbaf4caf9fe0fe4e72e6321524eed83972ec3e284e50d",
      "name-candidate:94c955435b63451db17d8e89b4c2a8c69f4a06b25a777f326ea4f4be2fe41695",
      "name-candidate:d16c4cdd295753ecd6d15799000861b6bf3d5ec40d14569e6370db863f73ed8d"
  ]),
  ("name-candidate:b5cae2ada04adc4ccfec824618d5088bfa3a0e8f0491d9a3e42e28494fb54907", [
      "name-candidate:1fa0475d6c5522ec47428ef55f2c960dc7cc950d857775276c9b598d21e19976",
      "name-candidate:3ef94543fde4adc965a31b5b51fee0d6749060e8a9dfe8a01266629e3820e539",
      "name-candidate:ad9946e7e77c9b990bfe8a98a851ed0e09dc9e0f1ccffd30ba373523cfd6df24",
      "name-candidate:b5cae2ada04adc4ccfec824618d5088bfa3a0e8f0491d9a3e42e28494fb54907"
  ]),
  ("name-candidate:96560d71e7933d0db208944aa2c662425b8b74c757c5600505d2e0d9e40b9feb", [
      "name-candidate:12da293855ead455e369f6bd8217b894cd0ab8f07ead1e3fd71a6370965d6e37",
      "name-candidate:96560d71e7933d0db208944aa2c662425b8b74c757c5600505d2e0d9e40b9feb",
      "name-candidate:9a2f44ce07b9f4872509c9955191263945002ccf95fd4dfe1cd3f695be49c7cb",
      "name-candidate:e107b36d003c59466bbd4ee5e741af0f30ed961884453f637556bcf33035192f"
  ]),
  ("name-candidate:0ce03ac8e75c33c9a105b73dd7066b6c429dd575c70e8434b59d63647d8a3265", [
      "name-candidate:0ce03ac8e75c33c9a105b73dd7066b6c429dd575c70e8434b59d63647d8a3265",
      "name-candidate:1f41674a2f167266931b166cbef5518e4ef37c8240185fdbbfdf11ef7f017664",
      "name-candidate:83a099a6b41d53b2bc60379d997916cc03f24c179c0dac9ad668005da047f1c2",
      "name-candidate:dd3689f41df2260a19eaa05f7c5e94c0fe81bd8e403114e76336b0476901bf59"
  ]),
  ("name-candidate:9a820bcab892818f96c7790b8c4068b0df3cf4eb625ceeaca785e795bf6ffbfc", [
      "name-candidate:9a820bcab892818f96c7790b8c4068b0df3cf4eb625ceeaca785e795bf6ffbfc",
      "name-candidate:af6ed6af8e9eb08167765ade173860996b20bdc1de9ed020770701b03f354d2b",
      "name-candidate:c9c2ebd796fee0ae91762f3d37816fdea05e3027cfae0c994da44ddb0352648d",
      "name-candidate:ed29b64e2530a83ed06bcf4d7ed42640be11ddba4ea138d38da4f90269e872f1"
  ]),
  ("name-candidate:9b3c371e30f61e843f16d9dd13f5b8c7e94a097f18ab89d1b6730b628bb8e7c1", [
      "name-candidate:9b3c371e30f61e843f16d9dd13f5b8c7e94a097f18ab89d1b6730b628bb8e7c1",
      "name-candidate:d455d0b417663d5b5a0640a7037ffde75ca82700a1f144846033ac26b0f9177c"
  ]),
  ("name-candidate:5713bf7f543a1fca52b2daf20baa1d0ed087e564513feac11777b724198cd132", [
      "name-candidate:48cd326a962b75fc20d64b8f9d0181ad28189f21b0e06259ff15d0102f90787f",
      "name-candidate:5713bf7f543a1fca52b2daf20baa1d0ed087e564513feac11777b724198cd132",
      "name-candidate:6493661487a9ade0daedb12474df223d20250adeef32087963f0bc25d6d64b4f",
      "name-candidate:fe672f43ecdba6980b20612cb4f824b007dfa918c4ac18a9730fc52ff94c6de3"
  ]),
  ("name-candidate:38f5437889d00b17f5b8af36710268bb2d03fd6e9f2e8d53150eac38d69bdfc2", [
      "name-candidate:1cc885a6ee557988b82305e68246fc662cf15529860506d028ededf5e5951b91",
      "name-candidate:38f5437889d00b17f5b8af36710268bb2d03fd6e9f2e8d53150eac38d69bdfc2",
      "name-candidate:9768541a38be428b92304f83265edbdb0df6132c1b1a46fe31898485ed171867",
      "name-candidate:b548bfd55b2c9e60a1f8364403d0f015e3767ac2d728b7eb41586653f19159d6"
  ]),
  ("name-candidate:94307445a35eeb0dabea40e68e1550a566664272023fc57c865fc1bcc8e35647", [
      "name-candidate:6f901468f229c567ba1108b4bad3fa3770d11601bbd2933dba4102cae952bfae",
      "name-candidate:94307445a35eeb0dabea40e68e1550a566664272023fc57c865fc1bcc8e35647"
  ]),
  ("name-candidate:b78515233437dba836754758d45e7b0661563eb28433e2e8adf0832c8f00b843", [
      "name-candidate:3d93fd9f16238f37dbbba05aa66e65d684f299b798c336c5610b6080e7698cf3",
      "name-candidate:90679ebabcff6a33679c9090c7f9a39c470b7cbf28cb751aa5f8fc79a7929dbb",
      "name-candidate:aec4e0c491214caeb43892caee7687742475e685e85d3ed68c07cf328508b7bb",
      "name-candidate:b78515233437dba836754758d45e7b0661563eb28433e2e8adf0832c8f00b843"
  ]),
  ("name-candidate:0b29036d72b0408739e204e2209298cf6e19912ed2cc4a54f1e4c7494c03f3ee", [
      "name-candidate:0b29036d72b0408739e204e2209298cf6e19912ed2cc4a54f1e4c7494c03f3ee",
      "name-candidate:80511fdabf6dd8a759d876c77e787b23238ba1d158ecf7d4fef2cde18296efec",
      "name-candidate:93eb341f9ff92aa2fb12a1bfb01249e211b0a76108b312e9ba803fe8bb14de38",
      "name-candidate:a2e17574e64fc588936cfe75f040ec4bca2efa679ebcfb8e8c1c30d72509d748"
  ]),
  ("name-candidate:8f5089d311d6e4644b699bb5275df700cf619170e6036badcb0854bbbbcff2a4", [
      "name-candidate:01d9c0a13e727516f64732e5145389d75d92285f5a81f4064f85a8be4e2e1cb6",
      "name-candidate:0d2092d7ccc3c5defc6ec7249d4ceef6d125b1e41e51d33742d6a081a4c2feae",
      "name-candidate:8f5089d311d6e4644b699bb5275df700cf619170e6036badcb0854bbbbcff2a4",
      "name-candidate:c2c7eef7deb56b58c0f02f441978e5c82f7de4ea9231f493c3cb03cd24dc3c94"
  ]),
  ("name-candidate:cad7cc9d3ffbf8efa9b023381e7ac106282282efd7b03e07d7cac805d5cd622a", [
      "name-candidate:2600c4223b227e6713a9739bdbef46047074ec0dbd895b12fa355ad6ae523a76",
      "name-candidate:452ace6abb4abca8368b6592eeced468e2c50f99692836060b074fbe15b08912",
      "name-candidate:b3c40155c6aeccfe0bbcdf14494d425c4a3142748687ce833d6dbcea9d7da3a7",
      "name-candidate:cad7cc9d3ffbf8efa9b023381e7ac106282282efd7b03e07d7cac805d5cd622a"
  ]),
  ("name-candidate:257f0ea145f0029ee6f0f298793714cf3936c444c0fcb5ce399460a6d134579e", [
      "name-candidate:257f0ea145f0029ee6f0f298793714cf3936c444c0fcb5ce399460a6d134579e",
      "name-candidate:3b948d353638e7990fcae3bf2f5a9181ac4a36981c711b7eeb4af166be06bd04",
      "name-candidate:b8639f2025244ac2e9c5a677f7ef3a0ca930ccd7d0cf086a884eb6e2cf7c73f3",
      "name-candidate:e1fc46a7f2ef0c209b8b27bc954d0461e3d856b38678fd459e981fe3d4be603a"
  ]),
  ("name-candidate:2d31e42de549e7facfc9db9840b6df03065d33795a42a7db093fb3ded0174e35", [
      "name-candidate:2d31e42de549e7facfc9db9840b6df03065d33795a42a7db093fb3ded0174e35",
      "name-candidate:65c38fccbba438db3092ee5bd98f642a7aca3f12a6a34027a1c7275b4ed43892",
      "name-candidate:b25ec707e6c86c123b55a8e14ba37382be67974471e4aa776188c87a9dca974d"
  ]),
  ("name-candidate:e1c52c4a5ede6b18ba54bc6a084a301320254f8383430cf39856626ba5357f21", [
      "name-candidate:746474c4512aacf240572f8d37bbb114bd651f00c93076c3ebca1c3bc2aa6268",
      "name-candidate:e1c52c4a5ede6b18ba54bc6a084a301320254f8383430cf39856626ba5357f21",
      "name-candidate:f25edfc5090270182a99cbefcea57558afa6d93f9f8dc130d78f5ec47a058aeb"
  ]),
  ("name-candidate:181acfa2ea838d2006a04174889f2ae05bae23d95c335d3fa995455c6bb42493", [
      "name-candidate:181acfa2ea838d2006a04174889f2ae05bae23d95c335d3fa995455c6bb42493",
      "name-candidate:c8f86163db63fb4b01aafb1f55d00c13d0a1bfb7297bc9867e876af7b8f31434",
      "name-candidate:e9e50257372bbfb92a8f4f3426c0dc32b6ec3d69b7d63adc07365da53ad2ac76",
      "name-candidate:f37c270ae42ffbb168f6636e72795545bbb47f7a33be841df32dddc4128f11a6"
  ]),
  ("name-candidate:fd8903003c45b6e426d00ae6ad624cb245a5924d662d454683c0aa63a0a84bcc", [
      "name-candidate:4df3b70954c679b5b6df060439888dd769693bacb3f881677f2135f5948b7077",
      "name-candidate:fd8903003c45b6e426d00ae6ad624cb245a5924d662d454683c0aa63a0a84bcc"
  ]),
  ("name-candidate:558192920291feaf6ed0a1cdd3f5e3acd558c3c5fb8b922b4727c1869aedcc69", [
      "name-candidate:2d45339bcf6d30229d624d1f162f8573727be9ef277b3a0ee3c79e9ad3ee8ec1",
      "name-candidate:558192920291feaf6ed0a1cdd3f5e3acd558c3c5fb8b922b4727c1869aedcc69",
      "name-candidate:9dbcbec7060c1cc8c50187d50f18139ab334dd7aecd9cddb3ce1a5a653bb0eb7",
      "name-candidate:fd815391d62d427b4396f3cb5eb5d1d9d948dda40ddb1057a3cfb4f485c20c06"
  ]),
  ("name-candidate:e1bcb167240c398561aef08b154d4f5f16ecaf4344d916fae2fa0b7be4717f65", [
      "name-candidate:1078762aa64f43d1bd1c89c5407b997b5a1ea4379c7ed2a30291e58e3bbe1582",
      "name-candidate:d92b63041462e5bfdc6e6f9006fc3caabbf2f195581cb077141e7c8f39a8bb8e",
      "name-candidate:e1bcb167240c398561aef08b154d4f5f16ecaf4344d916fae2fa0b7be4717f65"
  ]),
  ("name-candidate:3e97a4844186c35d06129fda819bfb9a470be40e5ca0209689dfe2835fd6d5d9", [
      "name-candidate:3505cd512ba397868cf57d756a2d1c4a42db8d6d4273819985d94576ef940dc7",
      "name-candidate:3e97a4844186c35d06129fda819bfb9a470be40e5ca0209689dfe2835fd6d5d9",
      "name-candidate:48b34319a7ad7f96af97d43ab00888706348a1799fbf0c41ac99054b50ea71be",
      "name-candidate:c3c239d333c72f7f053ca5565cddced3e9619a7e15980305160f412a0cb6cccb"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L49974).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
