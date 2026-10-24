# candidateSelectionsChunk0024

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:019484fd430c2951307c9f5f041ff405966824d9e465ed052ab00e4069a12049",
  "kind": "def",
  "lexical_name": "candidateSelectionsChunk0024",
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
  "slug": "candidateselectionschunk0024--b11c8e0e463311b8efa1e9dd",
  "source": {
    "blob": "c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49981,
    "line": 49616,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b11c8e0e463311b8efa1e9dd2ff82b9f80bd3b23a6dd60f0cea238da5fbd34d5",
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

Occurrence: `declaration:019484fd430c2951307c9f5f041ff405966824d9e465ed052ab00e4069a12049`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49616–49981.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def candidateSelectionsChunk0024 : List (String × List String) :=
[
  ("name-candidate:5f720f79120c93fc87c89eeb3c6281c9c8aea62aa6b3cf215e142efa9a310282", [
      "name-candidate:439beaec791a617f8e882c7aa495447f7c8c169b7868406133c6683b404989f4",
      "name-candidate:4dbd7ca40c6ac40b90afb6e16c42e6589becd589afd245c6c5955a7dc4fe1c1e",
      "name-candidate:5aad772e97291d0e815fe4d86d83ccf1d666a72c750e0d77512844da2205752e",
      "name-candidate:5f720f79120c93fc87c89eeb3c6281c9c8aea62aa6b3cf215e142efa9a310282"
  ]),
  ("name-candidate:4c3fe2cccac5c3d8b38f8783d6b54d12ed591f58d28e1b4e22c62796493060df", [
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
  ("name-candidate:49efa7c2cfef710c12256f4fceab094998869dde3835a31a3c399a3a1d1b2697", [
      "name-candidate:1fa7af1e938cef72202b6b7a2f0a3f5639e95a3571a3280d464bb89f4d7cc498",
      "name-candidate:25f81ac5aeecb846c5d36b524542a1b2ff53d9bcee79c5af92cb2f860b9119a2",
      "name-candidate:49efa7c2cfef710c12256f4fceab094998869dde3835a31a3c399a3a1d1b2697",
      "name-candidate:94408c6268283e7e90bf6ae9a61ac1d7fb89b89b11758ca8c5baf73f723449a9"
  ]),
  ("name-candidate:320b14e52bf261a6a320ceed01857381fe87806395ab4285c72ac56bf8b4319b", [
      "name-candidate:320b14e52bf261a6a320ceed01857381fe87806395ab4285c72ac56bf8b4319b",
      "name-candidate:b418b4ff422fbcb6fb40f1a4d4228407cd4c98a9bb9c8e741d59edb67bc0feac",
      "name-candidate:f8c6606146bdc23e4c745b0f80dcdb961d108fee1db9c7829b17172098db3178"
  ]),
  ("name-candidate:9484c7834771631bab2a78c22f6d4d2a202573601806ed3283f460e3d7e6adba", [
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
  ("name-candidate:337b7c1811580f45fd751ad605226678c0a00706a7f768a0e3a2c83a43b2556d", [
      "name-candidate:337b7c1811580f45fd751ad605226678c0a00706a7f768a0e3a2c83a43b2556d",
      "name-candidate:9d4c71ad538aebf829fd8fe76bc8a52a6169ff11279a8c04d3fcd1bca058b4da",
      "name-candidate:bc9a41c501ada9e95ea08fdf54a8d3f789a2860358da965cfa34bf9a676debeb"
  ]),
  ("name-candidate:854685e79d76f2875c1b6768207e2317697f8cd9e8520d40b8d4500fb5992961", [
      "name-candidate:854685e79d76f2875c1b6768207e2317697f8cd9e8520d40b8d4500fb5992961",
      "name-candidate:8615a304d64f9799598900654741af05656ef64a5efe08bd6a27e3d72f560b76",
      "name-candidate:a5ae3c04ad2185a71132bc1a9e9c6d26c04b36b9480f44418a58f52e8076c5b1",
      "name-candidate:d40e15576890dfc41c9a4af1930bae81510c8a66ff314279d9bd51ff6c7819c2"
  ]),
  ("name-candidate:6d5b7e3867b4e6dbe5a5f6a6ad084744807ea43171a981cf26e1f7ca6267af17", [
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
  ("name-candidate:59828e112229efd00855f6f14125c7ba19d1a42e18fb5e0a033687ce97e75337", [
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
  ("name-candidate:9ba6c5266754a792a97d9ad90a769725a94d517607cc101735ac06db8cd360f4", [
      "name-candidate:338a1cb0a7afc01c6301a63b03f4673479f6256098dbe77d3c94653811016d61",
      "name-candidate:9ba6c5266754a792a97d9ad90a769725a94d517607cc101735ac06db8cd360f4",
      "name-candidate:eb3322cec08578ed4abc52d492efbda2c71b18deeac41a0005e6764ded7bcc1f",
      "name-candidate:f0d17fb4f5727f08513f3c63c002fcba996c93b1f186f5ae0aa7ca709d2828c0"
  ]),
  ("name-candidate:d4295f08c61f13632a6337ad2ca20b39b9978010cf6cd1c1c6ded27201919f94", [
      "name-candidate:a637ca489e4aebf203e138ec7b486d624e3c0453bc610580ea998a81c9d5befa",
      "name-candidate:d4295f08c61f13632a6337ad2ca20b39b9978010cf6cd1c1c6ded27201919f94"
  ]),
  ("name-candidate:14d731fe7c316e71590db0a926b3fe79129ca2d09f8a5c3dc2f70448638d7140", [
      "name-candidate:14d731fe7c316e71590db0a926b3fe79129ca2d09f8a5c3dc2f70448638d7140",
      "name-candidate:207dfe21b441a5e64a112762c60b2ec342cfe8f0429422f4bd1047164308e1b7",
      "name-candidate:4b74f54d912428f4eeec82c13972a32d46abd4ed7a66e44ab10f18ec83e6a706",
      "name-candidate:7ca2ff610050865fa64131d342e09188c46a8511300ec5ee2fe9d097c91eb49a"
  ]),
  ("name-candidate:daf3244c0e7e9cfcbebd619a60f3db872d9eb044b1f629761054492257613efa", [
      "name-candidate:2547fd2f617b0de458bc65060d177b0f230ced8a532730f0b1531a6fa1728542",
      "name-candidate:437ef84975760d40efb9918d4cc08f5a04ea8dbaef409713d58264af05a88e60",
      "name-candidate:7857cb0c4e2cf0347368f2773854668e408ad64729f95c0c0304c441b19e5793",
      "name-candidate:daf3244c0e7e9cfcbebd619a60f3db872d9eb044b1f629761054492257613efa"
  ]),
  ("name-candidate:43800cd7244aa658b4783df0a6a058008473c5750340b633fcedfe859df40c86", [
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
  ]),
  ("name-candidate:c672c9b61cbcf703932f4f89741ece61eef4b0797afab11c0f3b0e49642eaf13", [
      "name-candidate:153e5cc50eb8db31c215d4040d1b7f8b5d32a5b1a4f5ee70dba2e8551920f836",
      "name-candidate:a95b3bd8f6595b6c38abd50d8437e76cc12a0c05b1400217182a1ab97c4de8bd",
      "name-candidate:c4c30fd955e891b0e35898defa10aad48331781875af27e320abeb79c1b51130",
      "name-candidate:c672c9b61cbcf703932f4f89741ece61eef4b0797afab11c0f3b0e49642eaf13"
  ]),
  ("name-candidate:c0594c23406366946bb6523b7c9d27f8bc827042d106ea7b92cda419e4262194", [
      "name-candidate:2d4c2e4a708ad45a5fc59cb549dc9bf3f544c8917c776693787cbc20c3a86409",
      "name-candidate:3ae92bfb58b213ef07005d33882dcec1810f542d09309860b42b12339171b83a",
      "name-candidate:6d661394199c0cebed1a6a94078d6b51d23e2b95a0a2dc468674819e91427229",
      "name-candidate:c0594c23406366946bb6523b7c9d27f8bc827042d106ea7b92cda419e4262194"
  ]),
  ("name-candidate:1c1a54db0f1346575769210cfaa3cafc580af34558991a6b211d3454bc559741", [
      "name-candidate:1c1a54db0f1346575769210cfaa3cafc580af34558991a6b211d3454bc559741",
      "name-candidate:5aadda6f9eb8f24883be7480e4cf8a0071ac4d9fbb2d4d978edbefca07161cdf",
      "name-candidate:8171751c7e6fbc1298a603e3af3d622c87cb7be4a66a3957087fce4fa41eb3bf",
      "name-candidate:a8bafd9a8abd7e1b977193f88c933534bb03197c5a76ea910a77cacaef1f80ae"
  ]),
  ("name-candidate:f8b013b46277a75cb60c6f29551e9aa01bec564209083db0333327c0d35e903d", [
      "name-candidate:9b699a71c61babbf1f100ed4fda635408375be6b195f0db2b1ed831d20607fdb",
      "name-candidate:d335a1a133469120ade344d7e7d4b5e2db2b7cc1fe3e3be75aff4e12da9cce05",
      "name-candidate:db5949503ca275fbcdd24649729ac57c498ac183d7478d8cb4742e928bd96daf",
      "name-candidate:f8b013b46277a75cb60c6f29551e9aa01bec564209083db0333327c0d35e903d"
  ]),
  ("name-candidate:9b6c3e3f42698a1424177633a6b7386c447d6d511e98b7ebc8261d5f6dfb357e", [
      "name-candidate:3314c21a6ae4c09a49cbf69f2111fcedca421fa7a4bf91effbe469f072fc9b5f",
      "name-candidate:4deda609c697f8ebc3583f0f1c364003e6e886853f9bd149a13cf432984a44c1",
      "name-candidate:9b6c3e3f42698a1424177633a6b7386c447d6d511e98b7ebc8261d5f6dfb357e",
      "name-candidate:f37f285de80ed7afe6a9c03d6ec767846618fc508151bb98326c51eca361be7b"
  ]),
  ("name-candidate:afda6bc92f0894b6b7e8724ecbb9edede5b20a2625e09f3d66d364bfe36f0fd4", [
      "name-candidate:309d5d019adf192ce2dfcfabb9c115728434793e05cb1af6126e9b5f160bc996",
      "name-candidate:afda6bc92f0894b6b7e8724ecbb9edede5b20a2625e09f3d66d364bfe36f0fd4",
      "name-candidate:b79c5661cd7f7d776a419d8a76b55ff7e65cf0db1b12231dbef778aa3143f442",
      "name-candidate:d96bd026ea541efba022653693d19e5070e485bf4d1719b04667abe0c2ea0aa4"
  ]),
  ("name-candidate:05ad8e8d8309d79ee8ab5f18b13707f9ab66791f7ad6f8c2ba3349acb46035da", [
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
  ("name-candidate:ca4e2f68d7baf529d08b9a489aa79bd11e4e1c5227e5ce48ffe0924d2277994d", [
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
  ("name-candidate:6f9222c2d03d2083813ea96d9743e948214df982462830f0b7ad1c7c47e04af1", [
      "name-candidate:23ec025cc508f44e077566bd8647481f4e1d6084127627293d46ed2969433678",
      "name-candidate:684b818bedd74ce5ac6ba5e5c739c445131bde50764473a8d4e4b73bbef53dd1",
      "name-candidate:6f9222c2d03d2083813ea96d9743e948214df982462830f0b7ad1c7c47e04af1"
  ]),
  ("name-candidate:7615dc0a14d080f90c6f09b8bf9f7c37b94f70ee7dd6d7254df3f6ee2662a835", [
      "name-candidate:0d95a09a2b9b46b542cf02e74be99b7fa70a407fb4664bb44b06ee53200985d8",
      "name-candidate:6b8a4092a0d16d98736e215aeb38d39bca44c6adee7e13bd7429ac97e05dcb8a",
      "name-candidate:7615dc0a14d080f90c6f09b8bf9f7c37b94f70ee7dd6d7254df3f6ee2662a835",
      "name-candidate:ed62d64dd7e60a95ed43ce53713e302fa2e19d14ca08afa7ebae631c2dbb4e1b"
  ]),
  ("name-candidate:dcab31e68801324331ef7f2265451c8a64f3574f6a876f8b8caaca310d865094", [
      "name-candidate:87f409f30e75014fb0b3d43a337ddd081ab8d03b52b53a59e3eb8dce6319c1b4",
      "name-candidate:a938fde6db02bb7bca4c8d2d69a0e0b14f0da157f0780fab0aa2e6fe6e8e0af2",
      "name-candidate:bf8d2a17b8805563806b0b5cddb674e265997c1540cfed7782e54c46936750b2",
      "name-candidate:dcab31e68801324331ef7f2265451c8a64f3574f6a876f8b8caaca310d865094"
  ]),
  ("name-candidate:34dcc450cf65c3a8490237012c84803ac318b6478258e7f1923b8ef6ee09e132", [
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
  ("name-candidate:451804c0e01ab2838490de39c1c61590e0788690475d41a4fcb5178cf89827db", [
      "name-candidate:451804c0e01ab2838490de39c1c61590e0788690475d41a4fcb5178cf89827db",
      "name-candidate:45c6dcf3348a11cbcd652d72f9de12967c0d20d673d4b8798fa431f730940d92",
      "name-candidate:4f108a72cd327a46354348d8ebd4dc2e587353cd8c59acb0e13b71d8e5c33149",
      "name-candidate:9c7888c849d8486d8c65aa0ab062a89ce268b207938982e327ec3fceebbd3ad7"
  ]),
  ("name-candidate:dd4a8068e2f90d103e50d2f3b3bdc9c412b695599337c73f543455a69a7ac320", [
      "name-candidate:d145fe8faa806389a699cce9c3e7945ad7b64c3f77140d24c9a2abdd0667679c",
      "name-candidate:dd4a8068e2f90d103e50d2f3b3bdc9c412b695599337c73f543455a69a7ac320",
      "name-candidate:f26e5ce9c4eea6449d6751bad45662b1512b15524cd06506859f7ff8566eb2e5",
      "name-candidate:f7c591abddc1bfe4f4f99dbfff82f6327bff89e429b8469261ffd59215ba4e5b"
  ]),
  ("name-candidate:7f1dcbae55eb0d81decdf23d81b0b2b09d3de29ba2cb479f0b211e73ccd10a84", [
      "name-candidate:08c2602e110ec2f16699e7b4f8b3b98756127566c4d33a31c6efa1b3288495f8",
      "name-candidate:19b02f4bad6ee3211f2d55ed10f99708cfe67aed1496ae7bdbc4d8363dbb03e3",
      "name-candidate:559affd2ae8cac453be5286c544066ef9775b4bdae5dfd8ea833cf0b7f32109d",
      "name-candidate:7f1dcbae55eb0d81decdf23d81b0b2b09d3de29ba2cb479f0b211e73ccd10a84"
  ]),
  ("name-candidate:fce5ab65442fa0b5a7a28737e031fff2865f08dafa1de02a2483cc64367c41f9", [
      "name-candidate:4e1005d7a6cd5b00487b1ff34212838a4017c1e8e9f051941989883593166961",
      "name-candidate:919b9145f6bbf4bac745ca12010802fdfb699126a1c43f0b3519f48fe45010ba",
      "name-candidate:f101d73067f54d12f205d1d7d13500dde9d0392cd8a10e53351490952448834d",
      "name-candidate:fce5ab65442fa0b5a7a28737e031fff2865f08dafa1de02a2483cc64367c41f9"
  ]),
  ("name-candidate:4504fb6540446bd19260b417125250997e44e0e276f5ea4bd41f3e5f6dce4ce3", [
      "name-candidate:4504fb6540446bd19260b417125250997e44e0e276f5ea4bd41f3e5f6dce4ce3",
      "name-candidate:4f3e1071b8678c9cbf54e6322ccfefa79e4c3ff8da69a9dd459f206cd76a1a26",
      "name-candidate:ab11d0c420c437be4b81c4746e7a739732db858b7593008af70c918ab04dc41c",
      "name-candidate:f88314e0720fc72e168b9ae7c39ffe7c6d3c1011fe0f01281af4ac5fd34cf075"
  ]),
  ("name-candidate:560f2f795ff1e09aa4d92e71d15799369281c56265c642cb5ca00151fab0e22d", [
      "name-candidate:560f2f795ff1e09aa4d92e71d15799369281c56265c642cb5ca00151fab0e22d",
      "name-candidate:7ff46c6e55b2bb71e2eaed814f719a4c2f40b69a8744e630d581287b98b8b7a3",
      "name-candidate:efaa93dba8336b72191a7e0ae07f9f5c8b322b3e6de8c3ffb01e297f0b725923",
      "name-candidate:f08c403313912754ad047a8405b6b12ed7557ac32395b2ecf6e85a44edcc15c5"
  ]),
  ("name-candidate:ffae2dd7c76a732d355307569a971a8ac18df2e0f285671a8647963c772a7d9f", [
      "name-candidate:03b00461eabb33161ac73c916fa298895cc70044341ecaf004999f3a3f85d123",
      "name-candidate:787f24254042695964632473b63d18a91f8f4e97ec3a0acbc8f51bafcb9b1fad",
      "name-candidate:e2b1ab85dd3246dd09cab3495a5f5d29326dfcb4222e1ea1c7a9928ab49a5d9d",
      "name-candidate:ffae2dd7c76a732d355307569a971a8ac18df2e0f285671a8647963c772a7d9f"
  ]),
  ("name-candidate:bb17a57213a214662fb0111fa3c4102ab14e87f7d315a69206badce0d101cc2b", [
      "name-candidate:771fc6721142d39ef0fbd35cbd488b35a86cf1999278b34680a53bf3fcec5f5c",
      "name-candidate:8d799d978f080e1cb44d5b949e9400f92af4212242bcd2add0ee0e1a8f0c94e8",
      "name-candidate:acb777f36f7cc907354ad5f9d4d813b337106b290121a013384ff1ecba10ed8e",
      "name-candidate:bb17a57213a214662fb0111fa3c4102ab14e87f7d315a69206badce0d101cc2b"
  ]),
  ("name-candidate:60b421393e8730ee630f8b7cb5617eb2b0367641274810757fe2da6042fd9e61", [
      "name-candidate:3a89d196853127b95bdc75018051f27b7c252a356623fcae3a891f6c58f4738c",
      "name-candidate:60b421393e8730ee630f8b7cb5617eb2b0367641274810757fe2da6042fd9e61",
      "name-candidate:d3052e9b5f838b4b79dac1e98dd698ee9f96d1dd68f17007d74f885fde3b31f9",
      "name-candidate:fd7d558e17d68da0d8c50ae067fff5c52dd4113253a162d7d22efab1437cb642"
  ]),
  ("name-candidate:74f515a97134b8ba622e4b2971f39c63539d0e60701672a2d5ec1733b08b2781", [
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
  ("name-candidate:df58c1bb3045b9e45efcf37d95e5b7203101d7996b3950c370a255742d828f3d", [
      "name-candidate:2a81f9d8107fd875e92e301cac7d3248143010ae79f4f001a99d2d8bb2b30b60",
      "name-candidate:5e3a098188d6f64b4d1c7f74afe02de133fa34cc4a16eeed7a60e4e5a1b05b3d",
      "name-candidate:a8c471a066b6852b145b9f417ee4b7034c218ffe1a53d2ada5d8a9b29e5b9109",
      "name-candidate:df58c1bb3045b9e45efcf37d95e5b7203101d7996b3950c370a255742d828f3d"
  ]),
  ("name-candidate:0255904265046fc6e949da04fc51ac545b8f25eef58cb22bc9e205f5146f25e3", [
      "name-candidate:0255904265046fc6e949da04fc51ac545b8f25eef58cb22bc9e205f5146f25e3",
      "name-candidate:2dde881d932efe0fd17caabe48da211f2e968217c1d0440aff1ece3a75d1ceba",
      "name-candidate:a77b4db3a0af348211d414a938a58c270b4889513c0f594ad8125808ab83a555"
  ]),
  ("name-candidate:a14f89f2e891cd6b448f0abda3afdf4d68d25ca7cd43639b008fd6268db1cc79", [
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
  ("name-candidate:fabf6b065936345c72864744a83584563468839f38d20bfda02b34aa31575c1c", [
      "name-candidate:22cd8ead57aa967117ed8555b25f49227c52dcc811b79784179e7be8ea4d9f91",
      "name-candidate:2430b8d7fcd0543e259bb56daebc4d7c0dcc645e9b91dbbde6a630a7f1c8f553",
      "name-candidate:d876a08c9553cc51bd7cb68baa576f0e4ef540b261037b80d45d285dde0a377a",
      "name-candidate:fabf6b065936345c72864744a83584563468839f38d20bfda02b34aa31575c1c"
  ]),
  ("name-candidate:6c8da16d442c4c120b4c86b7b8197e7504b0e0f0ae013c135328c9df188bfcaf", [
      "name-candidate:64d84c1d3631e63145c42349666a142ba9849590eac5a22c4710a4410b50948d",
      "name-candidate:6c8da16d442c4c120b4c86b7b8197e7504b0e0f0ae013c135328c9df188bfcaf",
      "name-candidate:88d5c0e0d8070ee93710d11403f44282f34f81a7b7bb91bd1cd5b3a2232802c8",
      "name-candidate:f736f297c49d904eff061bddb92698ec7ec979aec6116c57f80daf219d6fe034"
  ]),
  ("name-candidate:4c87e3bd645cbb1312402a87fc0a5fc7d087e23a83f75402777152b4c7dde166", [
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
  ("name-candidate:0ff05afd9665f10331c5a3bf6a7e5b84a40f23443f4cd611b14d83119ad222fc", [
      "name-candidate:0ff05afd9665f10331c5a3bf6a7e5b84a40f23443f4cd611b14d83119ad222fc",
      "name-candidate:3b07eb4c31974601720a7d1a4421f950548ddbb2ec814d11a5e26c9c99d4443a",
      "name-candidate:7894dfc18c59fa86837031ed5a73d8aff0a1d4f222288afad7ece9173e87777d",
      "name-candidate:eb6bb7123cd308325e51a3dfead610101393c2afe1443f59f987ae87438d3eda"
  ]),
  ("name-candidate:a657bb8517647f6c3bd52ca2e9502836000ac05a13555eb8e51bc9df2f3a0587", [
      "name-candidate:8aafb0a00a3497adea554f868dbc029ff7e8789b1bd68e85f8b7a640fa23ed79",
      "name-candidate:a657bb8517647f6c3bd52ca2e9502836000ac05a13555eb8e51bc9df2f3a0587"
  ]),
  ("name-candidate:39679715dcc277ef5e2f8087f0d62628ce87843554b3baa44675c0f8b747e0aa", [
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean#L49616).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
