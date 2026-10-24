# candidateSelectionsChunk0026

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:875f890510882e8ab2b946f7f0400ad3624b99be686891569a5ef093584d3bee",
  "kind": "def",
  "lexical_name": "candidateSelectionsChunk0026",
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
  "slug": "candidateselectionschunk0026--8a6f0af371bd235eb6b68aad",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53317,
    "line": 52949,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a6f0af371bd235eb6b68aadd3946e9e011e4e1bc9c969cfbd814d56a458d4c7",
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

Occurrence: `declaration:875f890510882e8ab2b946f7f0400ad3624b99be686891569a5ef093584d3bee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52949–53317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def candidateSelectionsChunk0026 : List (String × List String) :=
[
  ("name-candidate:9d311482c3fd2d6abe7d983613183978ecb73b19458e395d329c2133067f5bea", [
      "name-candidate:59d422c40eb88b3c0c2b6e15011fc84d0259e45c8375d519f74d8402328adbda",
      "name-candidate:723a813ddf5a40b3a2922581c91d2733e08bd694ac7c2c1099c87739d70d7e93",
      "name-candidate:9d311482c3fd2d6abe7d983613183978ecb73b19458e395d329c2133067f5bea",
      "name-candidate:a47a7c10b366d67738fef50401e12fe3d85a281db332999745de5145866708ac"
  ]),
  ("name-candidate:27370b5c26d1a851013196e262a0aa9bb1f75403f8e5a7f27e6e88c9cf8ccdf3", [
      "name-candidate:27370b5c26d1a851013196e262a0aa9bb1f75403f8e5a7f27e6e88c9cf8ccdf3",
      "name-candidate:4a471ed80d8884d1fa8e07e6073953b88b6fa49dde49708cef86ebf247e30212",
      "name-candidate:745d9e957abd3ecdcb3826e05fa0ddc85cffcff0261512cdf97374141dc0c736"
  ]),
  ("name-candidate:75b7afbd05d714aea1e4d2e1dec8fbfc09906a2db4343e13e5fbc3d199bb948f", [
      "name-candidate:33051d6678b6314269407c8a5d9bd64383cf703f8c9ddb7a4349ba0002e2353b",
      "name-candidate:75b7afbd05d714aea1e4d2e1dec8fbfc09906a2db4343e13e5fbc3d199bb948f",
      "name-candidate:9820ea9171ad5eb335dbbba0b016d0eac58e9efd39301cfd05e5c63ca22872a4",
      "name-candidate:a69e4de7f77077bfe6bf45cd88aa02c2ceb3a30b690a7d670679374b276b269e"
  ]),
  ("name-candidate:57c19c0b7895ed7f3424652a8cf19a62b2bc8ccb41746a83d744daa373e26188", [
      "name-candidate:45af58f290008cf704a847391f930dfdfdc2d99b3c77a5d5086679c62ce9eda8",
      "name-candidate:57c19c0b7895ed7f3424652a8cf19a62b2bc8ccb41746a83d744daa373e26188",
      "name-candidate:8a3372ea0130c326864b90bfed136c57d92dd0f84e1dd6535b1252e81178485e",
      "name-candidate:d20998db8852bfd96fe66ce8e8c564dba630d82c40e06f6b8d8f430132241b24"
  ]),
  ("name-candidate:db91a4e4025e9dce118ccaef2853823e415961f677dcaa430e692bb2d7d5e493", [
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
  ("name-candidate:423f10f95fb114d4a665727c75b95741f1700f38b5fc17481e9c813ca52ae606", [
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
  ("name-candidate:01e7ae26227b24607d235645920bb73c065c50f22577cbf276998bfe35579482", [
      "name-candidate:01e7ae26227b24607d235645920bb73c065c50f22577cbf276998bfe35579482",
      "name-candidate:e1e1724d72c97d194652911ed787d1ca6e65699d3ecde6b82990456777d973b2",
      "name-candidate:f71de932f36714bcdb2fdc71f410ee872ac738ec17b375549ccecb0caaf34aea",
      "name-candidate:fea30270f7fc251c7d78fe76bdc9e18133b637111def49eab1d3bd31d4d37c99"
  ]),
  ("name-candidate:2e11bba084a59c616f4111fa054a212e208f1f7ab2fc66b99f41ad8088115450", [
      "name-candidate:2e11bba084a59c616f4111fa054a212e208f1f7ab2fc66b99f41ad8088115450",
      "name-candidate:5b6eb657e2d4e9319dc8b1bf4c41ba2f29a8b433928057e965baa375e73bc704",
      "name-candidate:8030ae5b253861733e54fa41b7943ba800af11d8baf5afb3ed4d36e077f1b067",
      "name-candidate:ac97f5da3f986359ecfe44a65929548326f4867191940d5f541531a418dd8d75"
  ]),
  ("name-candidate:af9c9714d8dd3abcb8cddc1fe8482c2fc1bedf9b5aeef096470dc597882d789e", [
      "name-candidate:271194a594a17b9e4d9ceab3cd51ee918ab2e17e1bb2f4537c6e464845997643",
      "name-candidate:360282cd093f29fe442383241db143f5a1e0465e441e8a5651519e37358770b0",
      "name-candidate:af9c9714d8dd3abcb8cddc1fe8482c2fc1bedf9b5aeef096470dc597882d789e",
      "name-candidate:b66e3976c222476505172d1c8c05421bc5745cfd9906307d6569093432cb729b"
  ]),
  ("name-candidate:c0d34a5d1f2012386fc78a2b595abfb1cd3c63abda91211d56acb38e85f22bb5", [
      "name-candidate:9d48927d0c509b96535bb09131f37e0e29a446bb4d9b3dd5a7997584237fa3d3",
      "name-candidate:c0d34a5d1f2012386fc78a2b595abfb1cd3c63abda91211d56acb38e85f22bb5",
      "name-candidate:f1f25f219c397d007449696b5e4b7f5f687bcd58a079c1c94d44eb7fdebda916",
      "name-candidate:f395687ef60cf5ff4e515f920e26da94a88932772f413e16ca18c78fd80c8644"
  ]),
  ("name-candidate:4b552f3f2f921c47465bd9ea706eeb053deb1c674606216946fe684a1f0136f6", [
      "name-candidate:4b552f3f2f921c47465bd9ea706eeb053deb1c674606216946fe684a1f0136f6",
      "name-candidate:98dbb4e0590be61d882b054d8193a101411d8d1ff5a0daa6a465dc11b0e83105",
      "name-candidate:b56e56e296cf318b7f6625d1b992c06fe698f2280a086b7c149447dd34eb135e",
      "name-candidate:e83df14aab2226e5206f7076af2dcbbe396398d5900975db3162c426e4973303"
  ]),
  ("name-candidate:81b592b309cc3fb07b6a14eab5d0d7895298faabf5a6885ea4635d02817f5e48", [
      "name-candidate:28c4c8042a269aecb35604dc5ddcb9e6657900a4cb52a0b7b746aeb99090c9ee",
      "name-candidate:5a85d256824681bbcb55c6ee15541a99c7911e2e9b50cc02707e666d1cdc9785",
      "name-candidate:81b592b309cc3fb07b6a14eab5d0d7895298faabf5a6885ea4635d02817f5e48",
      "name-candidate:f27ca026c63d32b1dcb2e70058a522569d7237a80fe8bc36b78fe92435ddc80c"
  ]),
  ("name-candidate:2bacd5df9a18ef321166a87a55655a4fad972d48720772630a7d2dc3885d4db3", [
      "name-candidate:2bacd5df9a18ef321166a87a55655a4fad972d48720772630a7d2dc3885d4db3",
      "name-candidate:4ca3e6ec5165343c75c15b9790678bf3ac5ad7221bd869ecf7f4b295661a2b92",
      "name-candidate:775aedf487f94d51c0c76138f1830e86d18729e5d4f0c6bb6a33979ea4cc69fc",
      "name-candidate:a52a53fc342a0bbcc6609ee3cc7d762849b9076c127057ef23634b2c55cf99af"
  ]),
  ("name-candidate:45d753ad6137841e74331c908cade6ef53a5f3e2488cf108d96318429c1d22c2", [
      "name-candidate:189ba14711960f8c276cc908b81576bee978227c4bcb8c8dcc33db9358648fb4",
      "name-candidate:2cd3d2e2b727db1d525ba495640efc3ce14e9ba40cb3d957bf67704701983c89",
      "name-candidate:3c72a9c05604ef0b238ac302049943fddf8035deb5a2aa7e3f324743862c3ab5",
      "name-candidate:45d753ad6137841e74331c908cade6ef53a5f3e2488cf108d96318429c1d22c2"
  ]),
  ("name-candidate:90ac5d34faec67a4470770f63a728bbb32dbafe5f44d1646888127c9f622eba3", [
      "name-candidate:276badc95dbc9471dac53d2a5451743fd5d0ff680c43062a1a6bb75c5e7f2210",
      "name-candidate:745731f83af277ca94629c16f8eeec3a1f0588dc06634ab35c2fb6787ece102a",
      "name-candidate:90ac5d34faec67a4470770f63a728bbb32dbafe5f44d1646888127c9f622eba3",
      "name-candidate:b7e42581d0a55122d0f99af3891da76f395289646f3ede6010c05dc2828f741a"
  ]),
  ("name-candidate:ce182ff041b7cc5761ebbb9d5c6d8071715d071489136a09f5daab43b1976a65", [
      "name-candidate:26e6f6b35c0a559262ea518d9b257b97bb0a729818c5da831daa789c4e7c229c",
      "name-candidate:554fceea23a133264c1c414b31129bbb75db493a9c9ba7850b305692f96c8fc9",
      "name-candidate:60c1ee72365433686761d093cb60b68640a24024292f0b7042c6c0c3e0ae1472",
      "name-candidate:ce182ff041b7cc5761ebbb9d5c6d8071715d071489136a09f5daab43b1976a65"
  ]),
  ("name-candidate:7f8a4b5055eb8aec33ffbaf4caf9fe0fe4e72e6321524eed83972ec3e284e50d", [
      "name-candidate:3cca1d4d2442bc6fa6458ab32d9a651596b9216754252038ad118f0173006f9b",
      "name-candidate:7f8a4b5055eb8aec33ffbaf4caf9fe0fe4e72e6321524eed83972ec3e284e50d",
      "name-candidate:94c955435b63451db17d8e89b4c2a8c69f4a06b25a777f326ea4f4be2fe41695",
      "name-candidate:d16c4cdd295753ecd6d15799000861b6bf3d5ec40d14569e6370db863f73ed8d"
  ]),
  ("name-candidate:ad9946e7e77c9b990bfe8a98a851ed0e09dc9e0f1ccffd30ba373523cfd6df24", [
      "name-candidate:1fa0475d6c5522ec47428ef55f2c960dc7cc950d857775276c9b598d21e19976",
      "name-candidate:3ef94543fde4adc965a31b5b51fee0d6749060e8a9dfe8a01266629e3820e539",
      "name-candidate:ad9946e7e77c9b990bfe8a98a851ed0e09dc9e0f1ccffd30ba373523cfd6df24",
      "name-candidate:b5cae2ada04adc4ccfec824618d5088bfa3a0e8f0491d9a3e42e28494fb54907"
  ]),
  ("name-candidate:e107b36d003c59466bbd4ee5e741af0f30ed961884453f637556bcf33035192f", [
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
  ("name-candidate:ed29b64e2530a83ed06bcf4d7ed42640be11ddba4ea138d38da4f90269e872f1", [
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
  ("name-candidate:80511fdabf6dd8a759d876c77e787b23238ba1d158ecf7d4fef2cde18296efec", [
      "name-candidate:0b29036d72b0408739e204e2209298cf6e19912ed2cc4a54f1e4c7494c03f3ee",
      "name-candidate:80511fdabf6dd8a759d876c77e787b23238ba1d158ecf7d4fef2cde18296efec",
      "name-candidate:93eb341f9ff92aa2fb12a1bfb01249e211b0a76108b312e9ba803fe8bb14de38",
      "name-candidate:a2e17574e64fc588936cfe75f040ec4bca2efa679ebcfb8e8c1c30d72509d748"
  ]),
  ("name-candidate:0d2092d7ccc3c5defc6ec7249d4ceef6d125b1e41e51d33742d6a081a4c2feae", [
      "name-candidate:01d9c0a13e727516f64732e5145389d75d92285f5a81f4064f85a8be4e2e1cb6",
      "name-candidate:0d2092d7ccc3c5defc6ec7249d4ceef6d125b1e41e51d33742d6a081a4c2feae",
      "name-candidate:8f5089d311d6e4644b699bb5275df700cf619170e6036badcb0854bbbbcff2a4",
      "name-candidate:c2c7eef7deb56b58c0f02f441978e5c82f7de4ea9231f493c3cb03cd24dc3c94"
  ]),
  ("name-candidate:b3c40155c6aeccfe0bbcdf14494d425c4a3142748687ce833d6dbcea9d7da3a7", [
      "name-candidate:2600c4223b227e6713a9739bdbef46047074ec0dbd895b12fa355ad6ae523a76",
      "name-candidate:452ace6abb4abca8368b6592eeced468e2c50f99692836060b074fbe15b08912",
      "name-candidate:b3c40155c6aeccfe0bbcdf14494d425c4a3142748687ce833d6dbcea9d7da3a7",
      "name-candidate:cad7cc9d3ffbf8efa9b023381e7ac106282282efd7b03e07d7cac805d5cd622a"
  ]),
  ("name-candidate:3b948d353638e7990fcae3bf2f5a9181ac4a36981c711b7eeb4af166be06bd04", [
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
  ("name-candidate:c8f86163db63fb4b01aafb1f55d00c13d0a1bfb7297bc9867e876af7b8f31434", [
      "name-candidate:181acfa2ea838d2006a04174889f2ae05bae23d95c335d3fa995455c6bb42493",
      "name-candidate:c8f86163db63fb4b01aafb1f55d00c13d0a1bfb7297bc9867e876af7b8f31434",
      "name-candidate:e9e50257372bbfb92a8f4f3426c0dc32b6ec3d69b7d63adc07365da53ad2ac76",
      "name-candidate:f37c270ae42ffbb168f6636e72795545bbb47f7a33be841df32dddc4128f11a6"
  ]),
  ("name-candidate:fd8903003c45b6e426d00ae6ad624cb245a5924d662d454683c0aa63a0a84bcc", [
      "name-candidate:4df3b70954c679b5b6df060439888dd769693bacb3f881677f2135f5948b7077",
      "name-candidate:fd8903003c45b6e426d00ae6ad624cb245a5924d662d454683c0aa63a0a84bcc"
  ]),
  ("name-candidate:2d45339bcf6d30229d624d1f162f8573727be9ef277b3a0ee3c79e9ad3ee8ec1", [
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
  ("name-candidate:c3c239d333c72f7f053ca5565cddced3e9619a7e15980305160f412a0cb6cccb", [
      "name-candidate:3505cd512ba397868cf57d756a2d1c4a42db8d6d4273819985d94576ef940dc7",
      "name-candidate:3e97a4844186c35d06129fda819bfb9a470be40e5ca0209689dfe2835fd6d5d9",
      "name-candidate:48b34319a7ad7f96af97d43ab00888706348a1799fbf0c41ac99054b50ea71be",
      "name-candidate:c3c239d333c72f7f053ca5565cddced3e9619a7e15980305160f412a0cb6cccb"
  ]),
  ("name-candidate:cca13d7fd5c89705d05c077d99087201ee09fc310951816d90f1cdbf47c13506", [
      "name-candidate:005a0074b72d4f4fe0fbd0334b09277915069a0431e080b90effae49daca388c",
      "name-candidate:cca13d7fd5c89705d05c077d99087201ee09fc310951816d90f1cdbf47c13506",
      "name-candidate:f69d92a5dd306259e4ea3783cf99d28ad266c53171354bddac688044de979d80",
      "name-candidate:fdecc49ce231a09f0f2ec4f1b605f4ef3f9d3f30689e750b3b7894bb47a44449"
  ]),
  ("name-candidate:334c7eb523b062f67809ebece06fe53385149e873e4ee5452bf9f974222548cc", [
      "name-candidate:16b24fbef558d5b5529f9a3c5784b91873ea474e1ac7f26ffbc47ca3c585bae9",
      "name-candidate:334c7eb523b062f67809ebece06fe53385149e873e4ee5452bf9f974222548cc",
      "name-candidate:9ac97fdb5a85ce47743b7b80caa686c62e21fa5a0374b0674c1b06a750e0cbea"
  ]),
  ("name-candidate:769801bd53f5f382a220274a902130d2d244cd0e98a793cc283f731754ec5964", [
      "name-candidate:26a20672b8703d38db33a039c3c8b6c59f786863b0c234f817374e619168b1ee",
      "name-candidate:5815592d71f1d92c8e5a527cb69f1ec69a6ca90a04291d81d5d9cfedade5498f",
      "name-candidate:769801bd53f5f382a220274a902130d2d244cd0e98a793cc283f731754ec5964",
      "name-candidate:c8753c8a6ea570ecb9211a5e91203ecde538d614b5804d950977c1de505f8b85"
  ]),
  ("name-candidate:be18980703474063c09be048ce8cbfaa1e8d12929c61f9a9e447ddc92e23ff27", [
      "name-candidate:3b4a050b33d7a105e2160df9a788cce399ecfe101a306f26590e210e78eae574",
      "name-candidate:72ee6b1fd9a631e72c0855e20f637d9adeda5a6c18b08eb7aca53262bbc2e883",
      "name-candidate:78ed43cffa67a20ab82228312b1db3bfa4a3b3fd5f30d1cd9794421311285b97",
      "name-candidate:be18980703474063c09be048ce8cbfaa1e8d12929c61f9a9e447ddc92e23ff27"
  ]),
  ("name-candidate:d390e43b0d24491496614455f959bdc4ee250458961227e00af6a11c1b5f3bac", [
      "name-candidate:712689ee585a60fb4b54e0f62d90735fa6816534759d9c4960b08b3e2de89bb4",
      "name-candidate:b7c5076b596caaf70219bea787ce9f62fc6cc1c3d4c008ec9f62b327e56b82d9",
      "name-candidate:d390e43b0d24491496614455f959bdc4ee250458961227e00af6a11c1b5f3bac",
      "name-candidate:ddde5359ea6ffeb60414e4aad75aa197de7161105b1a2d9dee33afec07280b51"
  ]),
  ("name-candidate:055c072976d808f97e8ce34af638a5dafea74413b6d9c9a192ba83a63024354e", [
      "name-candidate:055c072976d808f97e8ce34af638a5dafea74413b6d9c9a192ba83a63024354e",
      "name-candidate:5000a1f521a3f4989a6304f07bc81b5f598cc7b1a463707e9388c3149ed85600",
      "name-candidate:9cc8ad59e6a902a56bcf23a6bc7c6ccd6696cfefaaa33c17c34d35361319958c",
      "name-candidate:fca550667ffbdad0efb4220a642be68c0a181edea485bab1e8aa0005a85735e9"
  ]),
  ("name-candidate:e251a5e7235538026a9b2096b94cd7f5e21bc91a892522b84eea0f1b82e11c6b", [
      "name-candidate:1002f6dc243e2f1e95fdd3c3fd6a9fad5210c91d4e460515d8e6c06fb9b894cd",
      "name-candidate:429fef9ebc68427fd10752f82ac1a4656612c93b0160fb4f07a6feb26da7071a",
      "name-candidate:8511082f2c4ec92b44739f5ec8f23a6764201ca99e1e3d9a50dee11b615a7ff8",
      "name-candidate:e251a5e7235538026a9b2096b94cd7f5e21bc91a892522b84eea0f1b82e11c6b"
  ]),
  ("name-candidate:d8b645ca9ab91202458f8795949d5f73d247ee1767242d73ed870734fdf421b1", [
      "name-candidate:423dd8161698f3871cf997887f18766189b64428988e087e2100eb4d9868176e",
      "name-candidate:a11b196e7e342989ddf7ab47dca8f25c72a97f57e5152b5ba45bd7521a035161",
      "name-candidate:d8b645ca9ab91202458f8795949d5f73d247ee1767242d73ed870734fdf421b1",
      "name-candidate:e95862a386c261176ca403a02814900bf91c65263fcbca59c43d684cfd4b3663"
  ]),
  ("name-candidate:6eee0427cca3d81942ea5d956d875024bda9f02b0ef917b2b2e1f2496c98dd9b", [
      "name-candidate:3d98a7f0c175ca086a3dd9dc59c679303ae16cbccdad441a8a3b08b1d5f13afd",
      "name-candidate:68e91806ebc23dbdbc41690581ecbb70e45b25c35c26dd765c65f70d41659b23",
      "name-candidate:6eee0427cca3d81942ea5d956d875024bda9f02b0ef917b2b2e1f2496c98dd9b",
      "name-candidate:d7905b73bb36c9252b854ca0213fa8adaf62aed612feee95f1437ad6feb2715f"
  ]),
  ("name-candidate:1fd37878426421434540c4d10358f522b73567aa352e13f24018117f319e5fdb", [
      "name-candidate:1fd37878426421434540c4d10358f522b73567aa352e13f24018117f319e5fdb",
      "name-candidate:3934194f6907bd84241b00cf1d440cf9e6edc974884f40fb02dc6d98d37796d0",
      "name-candidate:7ce9098378d9b19c41f1f0c1fcff9de64271b28d4f9ec99a41494342c2eeddcf",
      "name-candidate:ae6c52af91e85e76b25992af59d9732f785b07409d9da49eeb27fc1224994d66"
  ]),
  ("name-candidate:59f7e2673fb4a69d51f756bad5d9959845cd29095d3be5e46f7dac49b7933aa7", [
      "name-candidate:00327a53cd2196cf994269184643dbb3146edc75a45eb991560b0439dc22fdb1",
      "name-candidate:59f7e2673fb4a69d51f756bad5d9959845cd29095d3be5e46f7dac49b7933aa7",
      "name-candidate:5f390c32a7cb88f215e114c734cd9202369171cf081e41d1d703db423123be09",
      "name-candidate:8dbc9eb3c2b3f1d4f8f38bf9d86578a4b147f41d656f0315d5a910e10b1d38fa"
  ]),
  ("name-candidate:0f428f18063281b41f7666654f742e99741b64bcc426c321b5445eb3f2227b50", [
      "name-candidate:075294656de0029032df4c7b8583f6fadc6dbc3f2525ce7370ba633f201c9ccf",
      "name-candidate:0f428f18063281b41f7666654f742e99741b64bcc426c321b5445eb3f2227b50",
      "name-candidate:3f417a8626c9ce79caef0fa586de8d902b2f66cae11e5fe66434d45d06317aa7",
      "name-candidate:47247e3f801fa722a6c028c26b201aeddf0e98f0da12e4fb99b7e094e585f4b5"
  ]),
  ("name-candidate:a4a443fdd308464741b29d731789e95baf3cf32102efacabbab49f4c463439fc", [
      "name-candidate:a03b19bd8fbd7dbdaba13b96bb58ae3d429f2e5f35f98b9e4528d78f8ca0af85",
      "name-candidate:a4a443fdd308464741b29d731789e95baf3cf32102efacabbab49f4c463439fc"
  ]),
  ("name-candidate:acf9d5af3439e570d21247e06fedb4ee0ddc05b5fc23681dc17782a21c11180e", [
      "name-candidate:29209d9b4f1034c8c0140c14ce668aeb0692e6b703d8b376e909056a91771dc4",
      "name-candidate:acf9d5af3439e570d21247e06fedb4ee0ddc05b5fc23681dc17782a21c11180e",
      "name-candidate:cbb41853fb0901921f92b4a4550e647d2f20d68d0981f22fb190720a821bea7e",
      "name-candidate:fafbd2f61205e57fc5c47b906c3da89c3cd93354c58679932128785f0c53b2d0"
  ]),
  ("name-candidate:07d3537eee1e150fa96f13ae601c04b3a7a26f12a93f7e64ce0bfa3bce2f5dcc", [
      "name-candidate:07d3537eee1e150fa96f13ae601c04b3a7a26f12a93f7e64ce0bfa3bce2f5dcc",
      "name-candidate:3c444a3c1ba93ca7a5ecfa5747da9272d373a2e9f8f6b62edebd3cf590b7d172",
      "name-candidate:77b459b9072b78473642574c68e689b4a631267ef1ec7ed68a667fbacbb70033",
      "name-candidate:c9181297394f8d04c866199f62f8de3fa83c94e1c15778c8cdcf09ef5ee3057b"
  ]),
  ("name-candidate:f1f76d58af4615a0ada4129a0083cdfd46c83dbf59cae4fa52dceb8dc7e7a4f2", [
      "name-candidate:635fd7b3810aae28b8b5becabc7bb71df43d881c4338771f0cdbd9ed73ace910",
      "name-candidate:92e8309618c2446c0d54b2c968d8ee7b99bde30968402c5f6da82439a2ba71ac",
      "name-candidate:9c4430651e0550b219d34be10c7b1581a1ca49addb8a5bcc0c5acce8af52b233",
      "name-candidate:f1f76d58af4615a0ada4129a0083cdfd46c83dbf59cae4fa52dceb8dc7e7a4f2"
  ]),
  ("name-candidate:08750c90ccde86fdd175c0923db37a72d6b6bbc0ba0dd830f60145b6f0e1d390", [
      "name-candidate:08750c90ccde86fdd175c0923db37a72d6b6bbc0ba0dd830f60145b6f0e1d390",
      "name-candidate:3623156a546fd0664a8fdc4ad3d3ce7a6a24c7b97d8833f98d04f17115dba662",
      "name-candidate:494d1615a7099ce60b0e23e6d5496cbeca8731351d6cd7037a5253df05d52ca6",
      "name-candidate:ff9912079f0ab80b3901217921b33eb5e652d58ee511a07af8d873729b92dc78"
  ]),
  ("name-candidate:91c7dfa09813020218468ac8851fc62ffb4b344e5c73b4e69dbbc869e190765d", [
      "name-candidate:66ce6eed5e572f99d7a8dd14d6afaeb4692272825f8474f6d144e3c687293f68",
      "name-candidate:91c7dfa09813020218468ac8851fc62ffb4b344e5c73b4e69dbbc869e190765d",
      "name-candidate:9b5e9bcb6ee4d109a965aedcc38f511413af23110977b9b6b5674d44cf3b6ff0",
      "name-candidate:c4e4e1f42924e72ffb471a03e27f1a2a0816990726b56b8ad5c971e2cce0b657"
  ]),
  ("name-candidate:00b42fe31f3169a98add002e9e4c13fb0fb276b456261fecc1acecf7f839d7e3", [
      "name-candidate:00b42fe31f3169a98add002e9e4c13fb0fb276b456261fecc1acecf7f839d7e3",
      "name-candidate:bc69cd4153e3e0e5804ca5da22fdaa9b87857b381f12faa7d428de728d091cd6",
      "name-candidate:bec466910c89086f58dfe6b62f24593870934eda02be46f247c5e0b63e21c96e",
      "name-candidate:d01918da5bc8d782bbef6f650684279df1080b1ba1c6b2a404998c6302756905"
  ]),
  ("name-candidate:656901b3d55799a8f865a2435e6125f7912d09dd5ea3694a06a1e1b53e3e3ba7", [
      "name-candidate:656901b3d55799a8f865a2435e6125f7912d09dd5ea3694a06a1e1b53e3e3ba7",
      "name-candidate:a72db6c32b3d822873d747efe6417123249db9e7aa324b6feabb63af748f0eba",
      "name-candidate:de0646109a5bfb3529fbd90745be9f83e57bb256e8a82c8f2dbc71880a2934a5"
  ]),
  ("name-candidate:3dc6dea3749ae61f8c43357b23a5a943a2547c2a48834e40eace39bc288b1723", [
      "name-candidate:254dc956988ac8ad7758b6f3f816324a0c894ab4978f1edd18a5d25412303a0b",
      "name-candidate:3dc6dea3749ae61f8c43357b23a5a943a2547c2a48834e40eace39bc288b1723",
      "name-candidate:d0471300a1c376e96033ebfaf96e8cf00c732b507b099e1cc7e8337dae099f6b",
      "name-candidate:e25312339d3d82c751c3739337a44536f279dace673b650491270b688bceb9cc"
  ]),
  ("name-candidate:09d21f9dc344b22a9a490afdad0075243743d7f7c13d6dc958fce04d533e7390", [
      "name-candidate:09d21f9dc344b22a9a490afdad0075243743d7f7c13d6dc958fce04d533e7390",
      "name-candidate:80c34816dbde637d6df373af1fe144f6ca27d1eb89b48f3fc1a37411a522c127",
      "name-candidate:84e8cdacf68a3699b3d8627f11e78363bcb667a8b7afbb2862fde9efbaf39c03",
      "name-candidate:df02a39c41499eb49093afe125dd9de7de182b191faa1514f7c554de87e431fe"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L52949).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
