# modelCandidateSelectionsChunk0006

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:94cc8a6cf9c2cbd1c3950b17c15d5ec1dbb00ce4fb25ba6d14a6cbcb190ae86e",
  "kind": "def",
  "lexical_name": "modelCandidateSelectionsChunk0006",
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
  "slug": "modelcandidateselectionschunk0006--ba98e61c382b532afacafa56",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56790,
    "line": 56467,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba98e61c382b532afacafa56d097cba67591ee312df142336695d7d8e66e73f8",
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

Occurrence: `declaration:94cc8a6cf9c2cbd1c3950b17c15d5ec1dbb00ce4fb25ba6d14a6cbcb190ae86e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56467–56790.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def modelCandidateSelectionsChunk0006 : List (String × List String) :=
[
  ("name-candidate:75851d093430a4fe7959d5c0da7e5060c900d23e4c5b0f85c428a404420151e8", [
      "name-candidate:75851d093430a4fe7959d5c0da7e5060c900d23e4c5b0f85c428a404420151e8",
      "name-candidate:d12fd512065d027a7273a1b87f4262a72f76f38d1ca92ae1042966fc5cfb3855",
      "name-candidate:e33b16112bde58388710fc5a6c1a325eb752cf0d13016664bec621059812884b"
  ]),
  ("name-candidate:81456f6926a0b0c82c7ddf1a9e913ff63d9eb7d9adab3e612596432ba2f4d500", [
      "name-candidate:1c9aad2c30d19578c21244ff292b43c5d35ee64ec838b51b5c87bd10cda80791",
      "name-candidate:38bb1cdefee476ad82c6f6b119bf42a8cef34aad829ee4f54654f8aeefd9587d",
      "name-candidate:81456f6926a0b0c82c7ddf1a9e913ff63d9eb7d9adab3e612596432ba2f4d500"
  ]),
  ("name-candidate:54b900b455d3619721647d9a1ff1cab250019416becee0e83f7d8032e828b111", [
      "name-candidate:54b900b455d3619721647d9a1ff1cab250019416becee0e83f7d8032e828b111",
      "name-candidate:7438975c29e1a6c33216742ef6dcce772f711ce9394c533f6b5f8b45e99d3ce8",
      "name-candidate:b6cbc81d32ee8b84345c339753d983e8ecad99661a74e084acbc1a133de6d547"
  ]),
  ("name-candidate:758b738f4d9a4635742de7b3c0db5d94bd6b84d22c14c132fd5d9a604b015078", [
      "name-candidate:4532f47d6c95469afe08f1b2435904b4a01ee88025dfd1bab79474ad7e55a046",
      "name-candidate:758b738f4d9a4635742de7b3c0db5d94bd6b84d22c14c132fd5d9a604b015078",
      "name-candidate:e3d78cd7a5ae44a07a2f1a30a2456c9d0eefa98b7fbb23e1cd805ddf953de812"
  ]),
  ("name-candidate:287a2c81e8aefa2ee5e3534ce0a6b2d07fc0be739d8baa5641abd48d7c4df3cd", [
      "name-candidate:287a2c81e8aefa2ee5e3534ce0a6b2d07fc0be739d8baa5641abd48d7c4df3cd",
      "name-candidate:932cbb662b89411c18c114cabbe4ab69e04ea71521f1d2ac7b76cd1f9b2ea4d9",
      "name-candidate:e9f88db30256ca31e5d25b781ac8980d9e806867a4f043aa1fcb2ddc70bb7558"
  ]),
  ("name-candidate:78e77aa6edddb33b713ae7e2d562778864fd1c337573ead7025b9ff921712ec0", [
      "name-candidate:78e77aa6edddb33b713ae7e2d562778864fd1c337573ead7025b9ff921712ec0",
      "name-candidate:8d46e5c23817f79c111aa54739b1317546ca375c4ea5c92898d6c0da9dd5cb4f",
      "name-candidate:99708db9fdc5679d1e2b955aa4915aa101ffb758863aa5cb06dfc00c9f5073f0"
  ]),
  ("name-candidate:08537d367ff5b0edf26c134d42ee61490f4897da82d4b340ab0e3fb9026da0dc", [
      "name-candidate:01838afc48347d63b2087ff441401e22c538be374c5a78ad319f1c3258e86342",
      "name-candidate:08537d367ff5b0edf26c134d42ee61490f4897da82d4b340ab0e3fb9026da0dc",
      "name-candidate:82914b8b96d6f08083993b29cdb485d7c058f548311e9d3e5c3b2bfb1250d69a"
  ]),
  ("name-candidate:2fdc1ba071e4ab81ab2e6e5b5e2e7cb25cb62fcf170aa03fdac727b27eb3114c", [
      "name-candidate:2b8fe319d394b6882ebe76bfe45c018eb5d4e5573391a525832876ecf49fcd0a",
      "name-candidate:2fdc1ba071e4ab81ab2e6e5b5e2e7cb25cb62fcf170aa03fdac727b27eb3114c",
      "name-candidate:b182bf3d58bb711b5b33df62eec54744330d414e63f700d57a027227b45d2d26"
  ]),
  ("name-candidate:a2aa7e1ed5676497f027e8e119b68e7724675e4cb3db9d14216af7c3d4a19d35", [
      "name-candidate:a2aa7e1ed5676497f027e8e119b68e7724675e4cb3db9d14216af7c3d4a19d35",
      "name-candidate:be2bc1973fb0c03036434f36ad71e009eda0f0b831cac1bcd68bb659f106db78",
      "name-candidate:fd9d02994b79f0638ba890d589fe30f0ef04c5fb35d2ec232a6007cb7ee93e74"
  ]),
  ("name-candidate:903feb8b0adfe3338ec33eb84111e7811f460c0d3df38cfd1b73a346aafe1221", [
      "name-candidate:4c9c0f4989e3b9c2cb6d91656c4cd22fe07f3ea6eca111e4beadc4cec22ebd5e",
      "name-candidate:903feb8b0adfe3338ec33eb84111e7811f460c0d3df38cfd1b73a346aafe1221",
      "name-candidate:aa471804fcebee16c70b3fd945dd8f17e804d13a77a69eff1159a7dffaef3436"
  ]),
  ("name-candidate:b14519d927c1d5ffb33d6df814bf3ef67ada2c85ff9a704f29d004dbba3c9748", [
      "name-candidate:10f3c349796c84ed03e1a872cbe50128c1813e71be5c95aa69a980eed2d8cf0b",
      "name-candidate:7f7b41abbac1d395c91f4acb8a52b90b828e8e0cc55aa43af3e59593106334e8",
      "name-candidate:b14519d927c1d5ffb33d6df814bf3ef67ada2c85ff9a704f29d004dbba3c9748"
  ]),
  ("name-candidate:0c669351cf4cd44e4cf2494fae9929a34d952912038639221c5f3e6b65ac8359", [
      "name-candidate:0c669351cf4cd44e4cf2494fae9929a34d952912038639221c5f3e6b65ac8359",
      "name-candidate:2b0a6151d960e6d985be759ddd4d1452bcaea9cd8612fdb21240d95fac49c406",
      "name-candidate:91b6f447fe930fd17d5f59ceb2fd43e0f7415c4c7dd27877ece488bcc16b56c9"
  ]),
  ("name-candidate:41dfb956713cd27b0edb44a17ecb80eb95b3303a46d8a36162b3b988f75c9ac3", [
      "name-candidate:2028718a0724839b2d8e8eaca7512d99022526b3291a92a7223223267869c490",
      "name-candidate:41dfb956713cd27b0edb44a17ecb80eb95b3303a46d8a36162b3b988f75c9ac3",
      "name-candidate:81c32c13dbdf95bf58b129fc8dc6fe83e7524c44f35015e82e8353187e25e836"
  ]),
  ("name-candidate:3786d70ad40cf11c05da0036b6c9befef0a11876c7111dfb4944209a7f7a48e6", [
      "name-candidate:3786d70ad40cf11c05da0036b6c9befef0a11876c7111dfb4944209a7f7a48e6",
      "name-candidate:68ffd9cd5efe3b2b3daf9791b527275c902f8ced441f6cdc9c64420ef222e3e9",
      "name-candidate:791fa8cea505896e98a3e8a4d733acc9e74910d0abcac157eecac3c158487c3e"
  ]),
  ("name-candidate:17167ea7a4dc162ce3febff0f3f28f53683e0f6f7fdb2f36dd96278e9ce9246d", [
      "name-candidate:17167ea7a4dc162ce3febff0f3f28f53683e0f6f7fdb2f36dd96278e9ce9246d",
      "name-candidate:70087d66a10c1f20b9ffc8853a78f5cab95e7d85e7cdeec11f0cd17a98383423",
      "name-candidate:754cb86e9b7317c72d8f7f79b3ab0682e313727d6d23f0536ecd674373321ebd"
  ]),
  ("name-candidate:a1c51108212495e938469421b4e14af9f34ad168adfc92cc840d632dbec85880", [
      "name-candidate:044414bf9b6c6140e5eb781f794be924f26286795eaf9e53245657d8cfa48c9a",
      "name-candidate:a1c51108212495e938469421b4e14af9f34ad168adfc92cc840d632dbec85880",
      "name-candidate:a71a51accfed1a5dee5688f91eed377a2a1b06631ad2c557d70411e981ec1d2f"
  ]),
  ("name-candidate:1a1256ff75364125a85074a0573d5f738bb49e26317558ba664f0dfe6901488b", [
      "name-candidate:06d0e4f7e7754ef61dcd4b59589b8fb782d953d786b02369cb30c085c05d02cf",
      "name-candidate:1a1256ff75364125a85074a0573d5f738bb49e26317558ba664f0dfe6901488b",
      "name-candidate:ddf4df03a1f21d2ae6165f9419c819cb76d2a7318c47fab5af4e496a42537b78"
  ]),
  ("name-candidate:fb249ada41e650f88512ae1fb36b94bbd59eeba665fa9130cb6e9c70ab43acbe", [
      "name-candidate:2cff1ecff36d483eacc1751a7a9a87e2f12a1c51edc8204112f34bbfcd9a0561",
      "name-candidate:4b201db6544b878386cba4d32299945da25e2ffb692f91953b0d92ba6f8043f7",
      "name-candidate:fb249ada41e650f88512ae1fb36b94bbd59eeba665fa9130cb6e9c70ab43acbe"
  ]),
  ("name-candidate:af656d74905d0ddb45c6892e4d645629cdfd872957567923fbdc5aa598ba66e0", [
      "name-candidate:af656d74905d0ddb45c6892e4d645629cdfd872957567923fbdc5aa598ba66e0",
      "name-candidate:d3f134e8c56babca951122d5d6bd310252cb0fda39deab4fd8eb56480d5ae68e",
      "name-candidate:f76c15874e30b1e8a8c3ec12933904c1086ee5d6bcf428d1307710106b55c9f9"
  ]),
  ("name-candidate:05ed355e4868bea864e9389a43a686e297f98e110b1f90a72db77b912c3d9117", [
      "name-candidate:05ed355e4868bea864e9389a43a686e297f98e110b1f90a72db77b912c3d9117",
      "name-candidate:43a906698ad8504ad049221fcec8cd8437cd28522eb8a669f5c39ba30455604d",
      "name-candidate:840b71ce1ba3e69ecf077d6e55f4131d5017fd4b3caab8cf48553b3fd90eac8b"
  ]),
  ("name-candidate:cd1dfec75e8e589d4f12ad7da25f66771c2076a1da03685b4975e115147c58f0", [
      "name-candidate:5df06c417fa3bae41775f4decdef64f6de7e2ce054e00e855a25ac56701b7abb",
      "name-candidate:bade85026762706724b152c1fe40a67f8d5596a462e0af3201bc71c24b81d594",
      "name-candidate:cd1dfec75e8e589d4f12ad7da25f66771c2076a1da03685b4975e115147c58f0"
  ]),
  ("name-candidate:d3c05bc880144b7910f9c1eb88707780c5a5f0f98ae6a68a991dba6b3b9aa400", [
      "name-candidate:184fcb6682d575863fcec51efa60d174c76caaff728623033a545fcf3c7b8608",
      "name-candidate:d3c05bc880144b7910f9c1eb88707780c5a5f0f98ae6a68a991dba6b3b9aa400",
      "name-candidate:db2b88779e1175b74d2c7928e1631823775300c61e4960aa54d54801abbb3a66"
  ]),
  ("name-candidate:f66185c93f6ae5155be8846e4678fc3bfba67de40cbbff123721d3e876e97648", [
      "name-candidate:172b28fa1a2bb3340456c5d4de8e4b5e8e8b930afe126e93eeffd9629500676b",
      "name-candidate:a2bc19535bf34cddf8d31056c25fefa17ff1d34c27276270fd75f0ad952b0570",
      "name-candidate:f66185c93f6ae5155be8846e4678fc3bfba67de40cbbff123721d3e876e97648"
  ]),
  ("name-candidate:db1dbd006c772fe33691436dd020c2bec6d87bf337212627da1e26a53fe325b2", [
      "name-candidate:080cfcf0c0fb1d1b1ecd7090c6fabb2d327d056ebee97a798828e5a3ae1bbb54",
      "name-candidate:79ea09eba63822f235de401a3e46e5b497663f8355899f9a56aca51bb4979058",
      "name-candidate:db1dbd006c772fe33691436dd020c2bec6d87bf337212627da1e26a53fe325b2"
  ]),
  ("name-candidate:2be06285c136fd8df77a2617734f94d428df3ec943e7eb3bfeee41290fb9667e", [
      "name-candidate:2be06285c136fd8df77a2617734f94d428df3ec943e7eb3bfeee41290fb9667e",
      "name-candidate:362d56a92fcf12e2b9fc6e76430e20958930f039c665e8e6e970d21ae9a74078",
      "name-candidate:557fab5337ab7d8e0d324ea343e7f71e4b5248759bf6dff9a54fdda9f6ac11a9"
  ]),
  ("name-candidate:ce3e00d60b19a8fbff0d6097f00f2820844b78b89960600d6eafd506b274242b", [
      "name-candidate:a72bc0c2d13e148bddef987129d9135319dafc3d7a629018fe0aaab82935c76f",
      "name-candidate:ce3e00d60b19a8fbff0d6097f00f2820844b78b89960600d6eafd506b274242b",
      "name-candidate:fa05727542cf5721e24906bec8d1e1dc0dc85daf9b5d7f798891a4b7cca5612e"
  ]),
  ("name-candidate:c23398060251fa4cafaf3f39485fac7b366ffd2dc3d228a18cc02a191854a6c0", [
      "name-candidate:2b14d70edce766bfc1966f772334b4879a55dfea246eabaedeb7d1a2e3d3681b",
      "name-candidate:756102ef6474da99e5892f3ff7374fa2660ed0abf182bf4cd1bcf4057a7958ec",
      "name-candidate:c23398060251fa4cafaf3f39485fac7b366ffd2dc3d228a18cc02a191854a6c0"
  ]),
  ("name-candidate:8c0a0cdb0926ebfda972a2771028b9854d3d605801b5c3635238f46567d014d2", [
      "name-candidate:4fa607e50c5083e701f12be5411c944705a62c1c391628342202d4b78c3cfef1",
      "name-candidate:8c0a0cdb0926ebfda972a2771028b9854d3d605801b5c3635238f46567d014d2",
      "name-candidate:961b03ca3dafc95cf65063af9d907da4eba81b356675ddcb0b9e9e30402211f5"
  ]),
  ("name-candidate:cdb28f926bd28a1af14ef977ff2192cfee7aabe25a3597c342491a03fbc9c076", [
      "name-candidate:07db8d6a129bdd613c6f2001f183358acbdd0b0738e90ffdd17b5a8fd09ae01d",
      "name-candidate:76de032600555b0f80175b57319080146105baad0365ef07cd6d96d5eb18a7ca",
      "name-candidate:cdb28f926bd28a1af14ef977ff2192cfee7aabe25a3597c342491a03fbc9c076"
  ]),
  ("name-candidate:4f73907a290bf948e490b690d37c9f75af2e65d706c757c716535d1da55b3ec6", [
      "name-candidate:4f73907a290bf948e490b690d37c9f75af2e65d706c757c716535d1da55b3ec6",
      "name-candidate:b041d11aac17146f04669a0bca08749f3322ada8f0acd97e1053c82731da4fda",
      "name-candidate:b535e5a55beb284e2d4c32c608febcbdf5db220605b8d277370fff0210d82d50"
  ]),
  ("name-candidate:13899f4ef999b83d6113c5dc5f037a9623b9a7ecbd1a15883023eb27112b5184", [
      "name-candidate:13899f4ef999b83d6113c5dc5f037a9623b9a7ecbd1a15883023eb27112b5184",
      "name-candidate:73da966359e813954c030741d2cf120543d7c568b340aacd4ac26e5dd255bbc1",
      "name-candidate:7b8c718e4d35f025d7e1b920333abdce8962af9c969553e07b717484c7ec8479"
  ]),
  ("name-candidate:f0f931d113d9693298c56f6f40bcd546221de81cfe6d35ea90afba4cf88e6160", [
      "name-candidate:8951d5260de3180c3ea11183eddd6016e400c117241d18add6505e3024295855",
      "name-candidate:d51efaf6dfee5112a2a76be7dc6b3e642a913e2d21358b86c4e36e0016f20be5",
      "name-candidate:f0f931d113d9693298c56f6f40bcd546221de81cfe6d35ea90afba4cf88e6160"
  ]),
  ("name-candidate:1e72db9e51da5af2b34e8261365b469b8c03fa71459cee11f236975a1e34271f", [
      "name-candidate:1d48ceea95f8bd17cc2918fbb010ff7d8785abca71250dc1876479001643acc2",
      "name-candidate:1e72db9e51da5af2b34e8261365b469b8c03fa71459cee11f236975a1e34271f",
      "name-candidate:760b3831cc73aa3b51e9bc3f72a66cfceefb02f21c1b73b90d39b3f12dd03d79"
  ]),
  ("name-candidate:09aa5e5f7189427cf6e59723a73b942003ad78c1ad43b47f858c0daa9401530b", [
      "name-candidate:01f873c4ee00d481a022de937186c2073ac6fb82947bf8fe0a9db6a12c414a63",
      "name-candidate:09aa5e5f7189427cf6e59723a73b942003ad78c1ad43b47f858c0daa9401530b",
      "name-candidate:311bb9b65709353ea3391a878ac37a6eb365acb579d21e9c42635868ee478264"
  ]),
  ("name-candidate:89b231d246fcde2464ef6fa0c03188a169dd43a93378b867b46ad897f27b7c9e", [
      "name-candidate:16c50eb2d4b44d498288833c568f3d4759a0c7fe5967157b12c704d8759adbff",
      "name-candidate:89b231d246fcde2464ef6fa0c03188a169dd43a93378b867b46ad897f27b7c9e",
      "name-candidate:b2553509ce8bf76abcd024ae6fd6046af1b453c1b636e2297222c82f9e8ac895"
  ]),
  ("name-candidate:6cd63bc3ee3d83931a417fad0422ced757ef5a4fc495297fa46eb3a0ac481336", [
      "name-candidate:327312cdf39aa470dbbed15589938d87013cde750a97f95b212b6bf5c2635158",
      "name-candidate:6cd63bc3ee3d83931a417fad0422ced757ef5a4fc495297fa46eb3a0ac481336",
      "name-candidate:f3dbc891f636a57005a25711123c3a47580e084ea2e06d4a25233b91d4040e5e"
  ]),
  ("name-candidate:0983d178a51ce04524ab94cc53f1d97a72e3094e05e27c5cb96a661f13035f79", [
      "name-candidate:01b6b62cbf5cae08845f37547208948734a39dc8100721c27e33eb19a1f4d740",
      "name-candidate:0983d178a51ce04524ab94cc53f1d97a72e3094e05e27c5cb96a661f13035f79",
      "name-candidate:e1027fc13d917731c99676ef925aaaaa93aa26c3ba4f2fc592b26ce78a710936"
  ]),
  ("name-candidate:b4c880e5ffc7cc562ba105ed12e7cdf6152a0c930ce8f16934d9e2999bc3e412", [
      "name-candidate:919006e9ce53d56a009a58a009ae991219d032c8993f9d8cf30f6a428dba253a",
      "name-candidate:a45085980dc6c58c1cb895509f31ae1ddbd360821880647d3efe876baec2a161",
      "name-candidate:b4c880e5ffc7cc562ba105ed12e7cdf6152a0c930ce8f16934d9e2999bc3e412"
  ]),
  ("name-candidate:d6e3b3ee7c44ff1c07ef67c6f0d9781b19dd95916bc784bf83de5ee2d0f1feda", [
      "name-candidate:15f3d7a3d9955a19be3eda217829adc92362ef355a0b1a1241b31416b20762f2",
      "name-candidate:d6e3b3ee7c44ff1c07ef67c6f0d9781b19dd95916bc784bf83de5ee2d0f1feda",
      "name-candidate:f4bc81cac1a17e144293d03433df34d94a1685d4a9ba640c31b12eb50a4b63ef"
  ]),
  ("name-candidate:1d6c21aaaa555b2959b35bb8b7cf9a0174312d310c5a9ac6e0c90409e78ebdb0", [
      "name-candidate:0ad0e1f5512ba9978a274d7a1238811fb7ac4982ac5199134d084ab088515a51",
      "name-candidate:18c8c6460de45e1157979ddbad4dc6e02e4070672c6a6baa34943a90fdeb666e",
      "name-candidate:1d6c21aaaa555b2959b35bb8b7cf9a0174312d310c5a9ac6e0c90409e78ebdb0"
  ]),
  ("name-candidate:b6fda83d34b98d51d141fec278437ef1c30a3bf90f7f014d9eed93de881fad0b", [
      "name-candidate:ab67df39aa4f2001e128f3f5dedd83254ae4e1b6dbbb51ffae4e97fc1c4c39e5",
      "name-candidate:b6fda83d34b98d51d141fec278437ef1c30a3bf90f7f014d9eed93de881fad0b",
      "name-candidate:dae0e656cdad8fdb537c1a0dced6306465cbd443b7dd7f2cc3fd5dc803ea5be4"
  ]),
  ("name-candidate:89a84ab25e83ac96e582915e39e5ccc3857bea4c557fbca69d284cb070cecfae", [
      "name-candidate:89a84ab25e83ac96e582915e39e5ccc3857bea4c557fbca69d284cb070cecfae",
      "name-candidate:f0ca5735ddaf9b00ad03f068f2ce7e1752e6283027fc63869d9ab4ed2ef56706",
      "name-candidate:fcbb171b53d83ce6992dda27e6af8a0b2d0db46cededa1ac569167c218f21f15"
  ]),
  ("name-candidate:e35e34e35066b26686c97d035d2ec2236d6fbcedcd6c518ee12cd757818a5538", [
      "name-candidate:175b38c285cdd16dad5a23ba0dab2c93a6aaa912853f70663a736b32bb26ea06",
      "name-candidate:7d7c9a0fea4ab136e48952ee68088f5d73bb1937acb47d0bb55fd21a9ebf1095",
      "name-candidate:e35e34e35066b26686c97d035d2ec2236d6fbcedcd6c518ee12cd757818a5538"
  ]),
  ("name-candidate:2b6e7edf7f486c2d8734313634173572a3d90a574253c98bf59ec53daabed878", [
      "name-candidate:0e59c17806b6c5b044a3ccc5b2bb803c40a523d528306f0e0edcfe6898d1270b",
      "name-candidate:2b6e7edf7f486c2d8734313634173572a3d90a574253c98bf59ec53daabed878",
      "name-candidate:5acaeaf8ec07905d90b761fd727b8e71cf5cb709078ee3b25a639ce01cfd6473"
  ]),
  ("name-candidate:2d8244566e463970e85cf7c0384ac9dff06858cdda848299f2773c5b7b745015", [
      "name-candidate:2d8244566e463970e85cf7c0384ac9dff06858cdda848299f2773c5b7b745015",
      "name-candidate:5cf4ca81759cd3144a0eeef2809c86a7539affd1ffd950f760edcc53ebdcf8bb",
      "name-candidate:cacb2ff1ce4c7c48c643924596b2d72f9986dd21dbc92e539d46e93985fcdb69"
  ]),
  ("name-candidate:35f2c8193a7457e0a000d438aaff95a7ba3c7270c5be60a2c0107a6d2eed40fd", [
      "name-candidate:06e998f4bfb50f5d713a412f218d68a251af0378168ef00978c2267cde5c1433",
      "name-candidate:13fcd7a3684a171c0c5090ed952f981fc0f739ed6ffb5b9ca08974659b526e2d",
      "name-candidate:35f2c8193a7457e0a000d438aaff95a7ba3c7270c5be60a2c0107a6d2eed40fd"
  ]),
  ("name-candidate:bf633433c49c058e0b0f1d1abe29d2e50306484cd1d1643593e11a190fd734b9", [
      "name-candidate:4cedba66579322fcff8259d100a7681a1de5a6a130445dc595cc1a24aa2c0d46",
      "name-candidate:ab3e8b79d939df8a84fb4e17e9ef77effd771ec604e3443fc7ff1c1da24ac382",
      "name-candidate:bf633433c49c058e0b0f1d1abe29d2e50306484cd1d1643593e11a190fd734b9"
  ]),
  ("name-candidate:962b3cf6a032c3582748510d30539b8ed2402fffd801010f38dc4c3d8d1db985", [
      "name-candidate:0a585a0411f531871b02078e708ad4fced23de25d48d4b53dda818099d83a0f7",
      "name-candidate:0e545f353c909a00aec26ce4eb473890caf782c89009aab916b2010f0f4201fa",
      "name-candidate:962b3cf6a032c3582748510d30539b8ed2402fffd801010f38dc4c3d8d1db985"
  ]),
  ("name-candidate:e6d0d5ee0524bf6435eced5d8b890f74e07dadbf4b20e9ee7d43bdd233d29aed", [
      "name-candidate:1558e7407a85d54f2788face6bbaf667cf717841d35d740bf845269a9f6683b2",
      "name-candidate:6c3313d87877ee1ce1bd694e50a4ba3be777332cb6d56c69f8f04fcfa1e0627e",
      "name-candidate:e6d0d5ee0524bf6435eced5d8b890f74e07dadbf4b20e9ee7d43bdd233d29aed"
  ]),
  ("name-candidate:f890c6e7c527de63613c2c0622dc4e972d48167eacea50707fac811284d41784", [
      "name-candidate:467de8f0b0f64846392ceb60d268f3e6f1c3df4b2732490320069bd5cb4cb3cc",
      "name-candidate:67d887662352607275d892c03e8f435d1623ece952d07b14d58bca2aae4245cf",
      "name-candidate:f890c6e7c527de63613c2c0622dc4e972d48167eacea50707fac811284d41784"
  ]),
  ("name-candidate:5c5453fcc0748414314509b4e377b52adc50c8741d20e3805f668ebda06bd76c", [
      "name-candidate:3d8c4b9d9268810f8cfade0c9b782c5c71155bd704dd929194d511f0430dfaed",
      "name-candidate:5c5453fcc0748414314509b4e377b52adc50c8741d20e3805f668ebda06bd76c",
      "name-candidate:8ff4c333fe823ab8fa22ad83030585355d33a333be5607ef7100b7fe6fe2716a"
  ]),
  ("name-candidate:8d39cca22914ad29a04c4794ecdf16f1d3f777d867bb344851204b0e1961a102", [
      "name-candidate:3c4034e21ff2d0247e2eeb94efcdf70ab9be94ba41921116f7cb349d39151435",
      "name-candidate:4b6dafed4fb84774ac7180c02f5ab26f5455164c9418ce3c4dd94d73d02846c9",
      "name-candidate:8d39cca22914ad29a04c4794ecdf16f1d3f777d867bb344851204b0e1961a102"
  ]),
  ("name-candidate:761483db114e3b4ff043ef4816385ba65f22fe94532a639174c82ba448d11b2c", [
      "name-candidate:588869609a592d4d430bea919fc62f4549c35b774595d272b06253c5fc014606",
      "name-candidate:6fd2945fc1c700c078fc7d18e334c3b8bb371d3f7d496c67bdff965f241a3dfd",
      "name-candidate:761483db114e3b4ff043ef4816385ba65f22fe94532a639174c82ba448d11b2c"
  ]),
  ("name-candidate:9634b388f0eedaa5feb99d1925913f22cafd87cbc4321643f440826a81a2cc20", [
      "name-candidate:125d6a07af800a7a9d2d9c93292ed6914fc3bacb028eb4ae208bf2941453f695",
      "name-candidate:9634b388f0eedaa5feb99d1925913f22cafd87cbc4321643f440826a81a2cc20",
      "name-candidate:e5e50a44b43d96433268cb52b8fe68d006a902f9ff8317da08d37c1480c40ac1"
  ]),
  ("name-candidate:f572f745d9bf8d9a3c32712854c811b1f2b356f159f7089be343384d64110245", [
      "name-candidate:6636fb2f55147725950013e769d445d8ac7abe35590c4e5e3e82d54aa7bce5e0",
      "name-candidate:7b69b6538a87304e57fdb9372009a5b2d1e78e36789f132f92d862fc3bc3771a",
      "name-candidate:f572f745d9bf8d9a3c32712854c811b1f2b356f159f7089be343384d64110245"
  ]),
  ("name-candidate:fe81444f9a0673db21fa419bc1fddeefcef05fb31d2524d5deef5ce2cc030a7f", [
      "name-candidate:980c37c805d3bec18dd8fe65e24b9cd794ebf981a92e2dd9bfa82c8fd0b563f0",
      "name-candidate:a2afba5c6687b9fae7dcc637163d95b80e8b2ddb66959611eb3058e79c678a59",
      "name-candidate:fe81444f9a0673db21fa419bc1fddeefcef05fb31d2524d5deef5ce2cc030a7f"
  ]),
  ("name-candidate:5c608be9c3882206e329d43a4f3b30bf98ddb883f6efb4613f196e820b23c7c1", [
      "name-candidate:5c608be9c3882206e329d43a4f3b30bf98ddb883f6efb4613f196e820b23c7c1",
      "name-candidate:7d7fe347bd5e1ecce1682ab307f326bd154100999d460cf6306a1e2e1eb95a4a",
      "name-candidate:e9442f33dd3ba6c9464b990727b48cc1ac7b13db89a8db605984456db23f028d"
  ]),
  ("name-candidate:d5655656a4548067ff31425f8f308bb058684e1150df399ffe6749b5d9d66778", [
      "name-candidate:828d5931d3f991d5b71ac43f0e32703c4505e43142bc1b9b5c8fcebf99a2e6b5",
      "name-candidate:d5655656a4548067ff31425f8f308bb058684e1150df399ffe6749b5d9d66778",
      "name-candidate:ed07f3e8d4628637f0ae25ab18fa022aad1ea27f9d1502b8c07c722d20c058c3"
  ]),
  ("name-candidate:cf1bb548ce2549b2f226a38e6df4d0503c4e41f0c319ccb526cf0b8821d6812c", [
      "name-candidate:cf1bb548ce2549b2f226a38e6df4d0503c4e41f0c319ccb526cf0b8821d6812c",
      "name-candidate:eaed9ca4ddb43c74aff2edd55c3d06ad3327b8d270e5f011bc5c6407ec145c23",
      "name-candidate:f2d1a34d41f408b0c3e94c0552c6f336f860f04bbe5c0ef1a62f2b0d82d1f390"
  ]),
  ("name-candidate:f246352528650bdd30fcca414d3985b380bd42cd300765c10627ebc9047e1aef", [
      "name-candidate:415450eb880b5ad0e12f31db8e18d1904d0bc7f43d7915098600b3b7ebfde2f7",
      "name-candidate:bd87d8eba3cce99207f1471dfbd9b6ac0fdee921c91f249cdc39e02c022eb011",
      "name-candidate:f246352528650bdd30fcca414d3985b380bd42cd300765c10627ebc9047e1aef"
  ]),
  ("name-candidate:13f17fd6ae97f275c014a23a56b25000c1962e63d96db1bad26248bfbdae8769", [
      "name-candidate:13f17fd6ae97f275c014a23a56b25000c1962e63d96db1bad26248bfbdae8769",
      "name-candidate:5960f550d6e9df7554e0b3a90695e69099143a28df7775c88acb402db825ea63",
      "name-candidate:844df9a169c5edf21765ca510a8b772ffcaec86f2725879efe33791fc688aea8"
  ]),
  ("name-candidate:d98e3b348aa09a68948bc2ac65da4f4e00ce613c9cce07843a4e8180172386fa", [
      "name-candidate:a72ba4309a975110c51591179477a69adabec5a5ff470abe4e676a517e3256c5",
      "name-candidate:d12a475b6cdc8ecca80b6e42afafc0126c94d2f2fc7c79a05c1eed3e1cc08858",
      "name-candidate:d98e3b348aa09a68948bc2ac65da4f4e00ce613c9cce07843a4e8180172386fa"
  ]),
  ("name-candidate:e0afcaa55c1e08dfc3b24d8272689e6796375359ba5ef22c308b9a2203ef64e8", [
      "name-candidate:06e88af0a302fb374a34c6b689d4701323aa3fc9bfb276858e4d9b2255fc67aa",
      "name-candidate:752dec02928debe70c2ee1e0c3f087fefc97253a1f217da9122c5be9d242dece",
      "name-candidate:e0afcaa55c1e08dfc3b24d8272689e6796375359ba5ef22c308b9a2203ef64e8"
  ]),
  ("name-candidate:cc55ad5ba9d4b41d43dd858089bea8748bca0291c2592e14ecc0d074751f7c56", [
      "name-candidate:2d957aa3512804a74dd903b27e4e64bdd4d37e4a78d2a4edda62481df0993ba1",
      "name-candidate:8f9da6355e28b9da035fe1fc3da1f84d675a162ff75fce1507bf280102852027",
      "name-candidate:cc55ad5ba9d4b41d43dd858089bea8748bca0291c2592e14ecc0d074751f7c56"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L56467).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
