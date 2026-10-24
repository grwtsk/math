# candidateSelectionsChunk0005

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50527759c5cda67a52a5d876002f91fa178981e15d6740fcc10aae3d2591b51f",
  "kind": "def",
  "lexical_name": "candidateSelectionsChunk0005",
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
  "slug": "candidateselectionschunk0005--46ab57b8ed2bddb45a0947b5",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46004,
    "line": 45681,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46ab57b8ed2bddb45a0947b59c3890a06e2a94983b761bf449307a0eaab7a9b6",
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

Occurrence: `declaration:50527759c5cda67a52a5d876002f91fa178981e15d6740fcc10aae3d2591b51f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45681–46004.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def candidateSelectionsChunk0005 : List (String × List String) :=
[
  ("name-candidate:fa47a36fcc028dfa7e68f9e8ac6447ecc1a92017e4f704bdaf2761f7693d8258", [
      "name-candidate:025f82a65bb811631ee0d611355765768c76e9f111dfd5750db4a0d65cc1d2da",
      "name-candidate:b98b5d8fff591e136b3985df979632842969233c36bea81dc635c8e50420d72e",
      "name-candidate:fa47a36fcc028dfa7e68f9e8ac6447ecc1a92017e4f704bdaf2761f7693d8258"
  ]),
  ("name-candidate:bb5cec6cd5eacd45f7c6aabca19136c8310664eb21309bf5c33f15399819d68f", [
      "name-candidate:650d290bdf193658861ce8917fb1826b4717f8ffb685394832f65ab5ec0f37b7",
      "name-candidate:7c1f208cbb234a4b999b32b1697aba4870c972bcb75489e73e969d8be27c0613",
      "name-candidate:bb5cec6cd5eacd45f7c6aabca19136c8310664eb21309bf5c33f15399819d68f"
  ]),
  ("name-candidate:20ecebe3e16dbb254060bbbcee5a771c54184b452a194cc0642013dc70abcc3a", [
      "name-candidate:20ecebe3e16dbb254060bbbcee5a771c54184b452a194cc0642013dc70abcc3a",
      "name-candidate:9058f61df105df9dee3efaf776b0e6382083211c13cbe591426fee11d09900f9",
      "name-candidate:9fea4deb170e2c16c50445645a792f72e25b05a4f8a0a369b18546aebbf4822c"
  ]),
  ("name-candidate:03648bbf2eb3d4e0435bb7a24a00ac7434cfcf7dede5dd62c5a99646d8ef982a", [
      "name-candidate:03648bbf2eb3d4e0435bb7a24a00ac7434cfcf7dede5dd62c5a99646d8ef982a",
      "name-candidate:8d97ccf191f1ee0385660f501bc61bf60dd54568a0f6f8f775651f54f351c331",
      "name-candidate:f10980a3c1c2af72d5e8d8985d3d3edac3d3ae0817e70a313a5329cc50b6569d"
  ]),
  ("name-candidate:e47e9e79fa9873c8d4d01576aa66e710df7bcb782772db032811e616e8838904", [
      "name-candidate:788b97bbe8f385c9b2366ae81329f4e77bdc0146eec7d380f9322f979c38c649",
      "name-candidate:bc49621e0970d4b535052f71ca01b1fe15ae69b276cfa17383c8203ee71dcb72",
      "name-candidate:e47e9e79fa9873c8d4d01576aa66e710df7bcb782772db032811e616e8838904"
  ]),
  ("name-candidate:cc2fdb5d0149660ffa73277f2400bea65d807448a26185a1b3a6e372ce5ad5e5", [
      "name-candidate:37ec12a69c69f5c45a786f2e634c7f49f2004a040711be2b5c6b278282c6f095",
      "name-candidate:4de537bb9a8d33d4f7a59cacdc1cc9122df3a85853a6334eb430bdbe5b80b79b",
      "name-candidate:cc2fdb5d0149660ffa73277f2400bea65d807448a26185a1b3a6e372ce5ad5e5"
  ]),
  ("name-candidate:d7f4f3132cefb1ef8ef98b49b125310a7cc3d694cae9b863ff6c659149317d64", [
      "name-candidate:85078ba4766e08f9732b13a3bf87034e5385f72f7e7c0b84d38fb97fbf3e771a",
      "name-candidate:b28abb44ec5ac383138d6c3636fe44e0f546e0116e5b31dc5757cba3641a2504",
      "name-candidate:d7f4f3132cefb1ef8ef98b49b125310a7cc3d694cae9b863ff6c659149317d64"
  ]),
  ("name-candidate:f3998b1df1473565362940721b22d07f615ed25b895efcc506bb2bb5608a1991", [
      "name-candidate:b484058633246fc1acb76e3c339cd96f30ec903ae63b05074894c6fba048bc23",
      "name-candidate:f3998b1df1473565362940721b22d07f615ed25b895efcc506bb2bb5608a1991",
      "name-candidate:f50330c005b28b1ff413d708b83350a4f0847eaa73dab3f24c615d0bc1cb4db9"
  ]),
  ("name-candidate:42d06bbc2aadecc81a85253cbfca88a7996327e8c75f66823dfd644ba692bc87", [
      "name-candidate:239df824986b14dd0a95324d011d84a5c3322d1b816a5d5fc4dbb97091503999",
      "name-candidate:42d06bbc2aadecc81a85253cbfca88a7996327e8c75f66823dfd644ba692bc87",
      "name-candidate:7d4b2779944d465766b6c3c832ab8efd44671c5385129e4e48692f8a739cf2c0"
  ]),
  ("name-candidate:ee612bf85da035f987278a32f10761dc07432b1a15925c6e61df08ccf5457010", [
      "name-candidate:20b88c2f17d3cd4c7d3dd5bb3705ad8a37ce2db76abfc570a1f66481c9499e5d",
      "name-candidate:a6cf04369c6fa1da6cb1cef5a96452605e0d75fcf737b30fcc423240e036e9e9",
      "name-candidate:ee612bf85da035f987278a32f10761dc07432b1a15925c6e61df08ccf5457010"
  ]),
  ("name-candidate:53ab9c8ae604536b8bdc45b625fb848ed2780598cc6bb78ca5ddcb0c6dd49837", [
      "name-candidate:1c26b3c4bae50f2726251723ad7e623e7668711e57086d22260e5033d3988f5f",
      "name-candidate:53ab9c8ae604536b8bdc45b625fb848ed2780598cc6bb78ca5ddcb0c6dd49837",
      "name-candidate:8b3e9088c743ef1f00615eeac9fe52124cfb9fbe37d8d87f0b89e446e65dbce4"
  ]),
  ("name-candidate:05e8263f58236386c8e1fb4f3db3820556e5a111d12221bb9fd3ed6974c14beb", [
      "name-candidate:05e8263f58236386c8e1fb4f3db3820556e5a111d12221bb9fd3ed6974c14beb",
      "name-candidate:439c32e7c38c23c255819fda5fff7106564c81749f0120c8d78c06e520e098f3",
      "name-candidate:c8bdf869e513e638c8619e6ec023ede14ee75bc52ddc3a0b9229ebf0022be9d1"
  ]),
  ("name-candidate:2d96850ca80607252846502350f12eb2be7a6707c9a56d356b5ee0b7437c6821", [
      "name-candidate:2d96850ca80607252846502350f12eb2be7a6707c9a56d356b5ee0b7437c6821",
      "name-candidate:9569ca9492fbfcd21a4b492421b6925241b247efcfb8c568a00615826d7b0652",
      "name-candidate:e9bf6dacf3224cbd05b4762e0cb00c59faa13e1c9a27f63e80655c999ca069cd"
  ]),
  ("name-candidate:418f6d7dd39a0bd0a12b6d6e3bac244ecbe9fe09e48738577f6a7dfb81d281a0", [
      "name-candidate:418f6d7dd39a0bd0a12b6d6e3bac244ecbe9fe09e48738577f6a7dfb81d281a0",
      "name-candidate:5ff37ea35f65fd9ac59935914c9f33ef1ec1e666c0758697f987b02410c6ac56",
      "name-candidate:bf4f19f51dc449232a397b87e8d1f0e28a3581281609f57c2f99b449ebb84300"
  ]),
  ("name-candidate:5d91f965f95c652e6388f4afb4b6b4f3c6d9e5978cb84c39bc3c27e1c928bf9e", [
      "name-candidate:438e05238d5d83b237d69f00c4dfd0bb435d95a9bf365f43716ce0f83d767395",
      "name-candidate:5d91f965f95c652e6388f4afb4b6b4f3c6d9e5978cb84c39bc3c27e1c928bf9e",
      "name-candidate:e2feaa267b3b47f6b12d9aee1e797a7664bdaba39e9e1bfdb32e3110637e265f"
  ]),
  ("name-candidate:937b5acf8ba617043e39e4b3650f72a88a688db0a3b0f2e1a12066701121455b", [
      "name-candidate:0a2f0355575900370dd3a9bbf7987926bb979eca430ebd5606b498a6d4e17548",
      "name-candidate:937b5acf8ba617043e39e4b3650f72a88a688db0a3b0f2e1a12066701121455b",
      "name-candidate:ece27fc7d4a2c0960ae19e64bc10866263540fa1624499c0420239604552c4b4"
  ]),
  ("name-candidate:da528112f55fd9569dcfb299d617660407b267fe9fdc2089f353c3a94afdc696", [
      "name-candidate:6ff610e8a4d98ffe53f6455ad4b90028119133f3bab2f09af9b39df7ae327977",
      "name-candidate:da528112f55fd9569dcfb299d617660407b267fe9fdc2089f353c3a94afdc696",
      "name-candidate:f00667140d39bb0d28bdc4625db8aa8c2f820e5c8e77a311e4cc9dfb1d911881"
  ]),
  ("name-candidate:6ca3bd0c5a4a08d1c8da6c7a320d236efb217fce813344fda440fdf2c564f943", [
      "name-candidate:49bd550a46f3135bf0de3122679c294372f4333410876e7d5c910a550a48f195",
      "name-candidate:6ca3bd0c5a4a08d1c8da6c7a320d236efb217fce813344fda440fdf2c564f943",
      "name-candidate:f6edd2c0ab361d2d63d3818300bba3520f86f74876d721cd91e030f395c77eb9"
  ]),
  ("name-candidate:43462702fcae61fdb55307769485763856abc772764bf5810725005ea26356c9", [
      "name-candidate:10cc22c841bfa67388a4f563ca573d328aa92fbf12e3360bc67cfb0e8e962f49",
      "name-candidate:43462702fcae61fdb55307769485763856abc772764bf5810725005ea26356c9",
      "name-candidate:e17233ee173acae411e06b43b0fd9abdae7cd43d57c9fb8f2d1e66920e49403a"
  ]),
  ("name-candidate:0b04e7746d363eb26ca03d423f2009fd20acba7702c446e395646c4d9cace872", [
      "name-candidate:0b04e7746d363eb26ca03d423f2009fd20acba7702c446e395646c4d9cace872",
      "name-candidate:6747d992e095ffae8a1beabf526b49314df18bc41fbe4dd0d7937a37594aa090",
      "name-candidate:a7c6e57c5eae45aeb6afec722bce8a5fc76cd7f3e2345631cfefc7ae92deee98"
  ]),
  ("name-candidate:8a6a3e7e950f3824267290cbce8b940e1b647f2ee054eaacf092b590fa8fe342", [
      "name-candidate:105cd7954c6a1bd87bc82a2dc7d412b234dae757c3a066374eff40b1ee3d3315",
      "name-candidate:15bcc534bbc9150529c0fa2526a01ce312de1889801dbf58bfe94b5726e496d9",
      "name-candidate:8a6a3e7e950f3824267290cbce8b940e1b647f2ee054eaacf092b590fa8fe342"
  ]),
  ("name-candidate:dd0e9ae89cefb4f5094584dd01554b5f14762b46601ec02625821456c4330afe", [
      "name-candidate:088fca4fd568407aa4eeb30c1f6bdefadc3d07fdb52568fbd28bd85e15245339",
      "name-candidate:cab8f157ad36d323ef99d9ed8d56c163eed531b004726e47efcdd533aebcc055",
      "name-candidate:dd0e9ae89cefb4f5094584dd01554b5f14762b46601ec02625821456c4330afe"
  ]),
  ("name-candidate:cba95277bf130bd840c823510227f01ca56f425c56899e6f6aa85966a43d472e", [
      "name-candidate:42aa05fe6549b91477257143427312227c9bc7148915ddf0146444c7d62fab7d",
      "name-candidate:6d468499fa09b57b6d04789854c32defbc732bb9cf81d5e97be33b10564a6fb0",
      "name-candidate:cba95277bf130bd840c823510227f01ca56f425c56899e6f6aa85966a43d472e"
  ]),
  ("name-candidate:0ee3a57895d592b33518e53a7e9602b1e7515c0a7d5f2eeb629556e655412db0", [
      "name-candidate:0ee3a57895d592b33518e53a7e9602b1e7515c0a7d5f2eeb629556e655412db0",
      "name-candidate:28e3ba3accc24731555903959b69fbbbc123d4a181c17cc50de607cca3a73e2f",
      "name-candidate:4cdb5c4bd9e206417b2cd4d58aaea46fcc946102748359e4ad3bceff93d5743f"
  ]),
  ("name-candidate:4bf9d5aedbf45fc7f29c030d4db7a721e1076ee66effec6fc309bfd08ad45cb1", [
      "name-candidate:18b6944f989c1cb31cd7cd24a063e597b002ceb2fa14bbbd48bf5c85da5f9800",
      "name-candidate:4bf9d5aedbf45fc7f29c030d4db7a721e1076ee66effec6fc309bfd08ad45cb1",
      "name-candidate:a912b0bff29b9584cec2f2beec9b1a624cf5856970af1fb34fa564701179c0bb"
  ]),
  ("name-candidate:1e2f3ac90bfaa2187363abb4e4d73841c4ce2473b5c8049b29a3a131705268e7", [
      "name-candidate:1e2f3ac90bfaa2187363abb4e4d73841c4ce2473b5c8049b29a3a131705268e7",
      "name-candidate:3960d042e0c9ed874352bea0cefced24b92223fb3539b9bf7cd5c9a3cf50d6aa",
      "name-candidate:a3b0a720b6c1e171fba10b61112f4a1e18710c61580ab45efafd0f88ac259509"
  ]),
  ("name-candidate:0ce11cf3045d8f31d92d54afffc6e400e95090c1ec28005d58d5606e88260cd7", [
      "name-candidate:0ce11cf3045d8f31d92d54afffc6e400e95090c1ec28005d58d5606e88260cd7",
      "name-candidate:78792009b1d280543362d9efcef760b42b5370159bd1f0c0ba582977063119d7",
      "name-candidate:fccb436adf48232d8e11b6452098962167c8954f55b0080bf9922267619936cf"
  ]),
  ("name-candidate:ed23c55c8320f476d20fdbebd24df23d5456f5586a8ce53d32ed8fdd6a4be674", [
      "name-candidate:490efc9a341c16f190ea97ecdd85ada3561a5bbcbea6d71adf5b3039beff8c3e",
      "name-candidate:86ca4e915a3679c48573e302b002a71cbd00797dc51d8df633ec905bf065fd0f",
      "name-candidate:ed23c55c8320f476d20fdbebd24df23d5456f5586a8ce53d32ed8fdd6a4be674"
  ]),
  ("name-candidate:f38cc4bf30993e411acf97a8456094143c81f039e283c807a49c4d89f2c3dc9a", [
      "name-candidate:7b1d12b42c8dd77fc114cdf6d7c023f716e36971b58f4f7c9e8b9361cef9f7d4",
      "name-candidate:ee1a3efcbad8f3de3432abc05a8038f84b5806c7069eae70bff4588507332026",
      "name-candidate:f38cc4bf30993e411acf97a8456094143c81f039e283c807a49c4d89f2c3dc9a"
  ]),
  ("name-candidate:07ade4a56fef81da1d1083f8e37de0a0e26b0ca3261d2f95333ff0fac7d3dd52", [
      "name-candidate:07ade4a56fef81da1d1083f8e37de0a0e26b0ca3261d2f95333ff0fac7d3dd52",
      "name-candidate:847d7d409d852ae8f606b62d7c0bbd13a822ab89fd2e81a024de730ddd0e4b99",
      "name-candidate:c1a27697a70dd2bf8b0240b8db123d892d7429b9b21375c5e57e390bc05b9935"
  ]),
  ("name-candidate:c51c8dbed240ccdf3eccebcd10e244b417c39b789bf3fef8d347a7f9293cc44a", [
      "name-candidate:5df90910e426592032ec6022ff5dc7398cdc39b0a90c52c035fec42e87404665",
      "name-candidate:c51c8dbed240ccdf3eccebcd10e244b417c39b789bf3fef8d347a7f9293cc44a",
      "name-candidate:cc9e1088d4a1dcfabc650c2ab57d3cb598ac7526f23c8ccbeccf82324744c285"
  ]),
  ("name-candidate:2d9a7e13291bbdb015d1535ac3013f1e6105aa7c026588458dcd0d4fd4021138", [
      "name-candidate:2d9a7e13291bbdb015d1535ac3013f1e6105aa7c026588458dcd0d4fd4021138",
      "name-candidate:5dec9c4bec94b7439a8090b0cac8a07d42859341ce9fab2456f118613ecb64c9",
      "name-candidate:7a530a4afebc944db70b8b04870b44ba4dce0bbc53b2045ded08fdc5884cbdfd"
  ]),
  ("name-candidate:1a12a759aa8d714c75764424faf6177273a20f48386977c1d2179e8e1c153523", [
      "name-candidate:1a12a759aa8d714c75764424faf6177273a20f48386977c1d2179e8e1c153523",
      "name-candidate:65ca8d5e473b972d1804349f45ebaf1adf16cfbfa247462c720d1c2c20e64697",
      "name-candidate:8b6567dd66243a2606d001ce5628c74bd8f58c909c36675252ddbb8213beb314"
  ]),
  ("name-candidate:b0be2d8c010cd11becd395a3d51ba837504043b2aa6d4c21ca7da92871a86ad4", [
      "name-candidate:75aa7a32846bfe138da009c1dadb9a8e833e76a1a0f5e04dd41e0d6f89393e88",
      "name-candidate:b0be2d8c010cd11becd395a3d51ba837504043b2aa6d4c21ca7da92871a86ad4",
      "name-candidate:f5c3a111ef8cc50abd2e7fe2df229e7db73927933a8a1e47f67554083c49892e"
  ]),
  ("name-candidate:4cd281be9f6494c2146919bd5a107faf49646a394c7ba8d9bb42c64cc4f48fde", [
      "name-candidate:39f5c486ee76348080ce676a490d4ab5f89a3ce495a6421b9034aae3b5ad560f",
      "name-candidate:457dc657194b9812f6a52d12853ca139d2bfa93730f9fb375c35e5e3880752f4",
      "name-candidate:4cd281be9f6494c2146919bd5a107faf49646a394c7ba8d9bb42c64cc4f48fde"
  ]),
  ("name-candidate:1d3f294f2c326e93f6c2fdf9f9565b50ab4d4350c10d8cd805a97fd4614545f7", [
      "name-candidate:087d9fe40b2d486478473422be0819b11ac4dfedfdfaa7a242c68919f3a88af7",
      "name-candidate:1d3f294f2c326e93f6c2fdf9f9565b50ab4d4350c10d8cd805a97fd4614545f7",
      "name-candidate:f0bf214636061e9671919423f307a1254a7a63bec0a02af3c018aee055f10d5f"
  ]),
  ("name-candidate:36d3d4321714e7f7cd1480ba02b275c6accd54f68045296eb7b3b416ff258936", [
      "name-candidate:36d3d4321714e7f7cd1480ba02b275c6accd54f68045296eb7b3b416ff258936",
      "name-candidate:daa7bdf8c963dd19ab8115a606df21a5e45f24957d2e0c5b3c6c2343c7dfdebc",
      "name-candidate:ffbe50ce82e079ff6ff9981dcd3b11d55a6051349a121150746363edf4d42945"
  ]),
  ("name-candidate:39777cd79846a85b2440715ee7ef2f055e65056258ddf1338987e09b5496c56a", [
      "name-candidate:39777cd79846a85b2440715ee7ef2f055e65056258ddf1338987e09b5496c56a",
      "name-candidate:bbac07d63120c9c21547c10416473ee93e9636c34295b8f3bf6d54a0609af035",
      "name-candidate:d41ce23e8d76b115042b883b85dc0180fe91920ccb96d9cd0a5e159bccae3a97"
  ]),
  ("name-candidate:cfe35f5347c0584c000e1c08ed1853a32b10af3a963ab592500049c61d37978f", [
      "name-candidate:0ece421211054f1e496b7159e1a80365583b581430686e8342e72e9dc444a4bf",
      "name-candidate:56f1f11720c438aa1eba7a7379ee9970cedeb047121a4160e362d96325078689",
      "name-candidate:cfe35f5347c0584c000e1c08ed1853a32b10af3a963ab592500049c61d37978f"
  ]),
  ("name-candidate:747bd666879e8a29f2b4be84608136178e3ab5cf1990ce396e8d05d12de16f3f", [
      "name-candidate:01be7515f5a97478fd9e7d558bee74296da075f08496d2b00317d4347c806ce6",
      "name-candidate:747bd666879e8a29f2b4be84608136178e3ab5cf1990ce396e8d05d12de16f3f",
      "name-candidate:b19d7fa731cc4b90648a8a775d702d1b364b3c64b35606b19fe843a10413e850"
  ]),
  ("name-candidate:cb9f33d61b4070381c8f3199f673db051a045862f09580ad18efb03472e08df1", [
      "name-candidate:5dcf7ac03d3d4aa385fe9c0f887f509fd7408813fd21a466f589abcf0baaf2a5",
      "name-candidate:c9eba81c345bffde1e8c9c99e9f4a09349019949df27cf54853640a230049bd0",
      "name-candidate:cb9f33d61b4070381c8f3199f673db051a045862f09580ad18efb03472e08df1"
  ]),
  ("name-candidate:c59c6dd3f929b5c0fe7efeb9d84838e6632ec21c0a6d5ffece825bf4b0cddff4", [
      "name-candidate:537173f9716bb03dd4bf40b8a9e5a7d760f4f76af15272d8f9bee8b4b5941fd4",
      "name-candidate:c59c6dd3f929b5c0fe7efeb9d84838e6632ec21c0a6d5ffece825bf4b0cddff4",
      "name-candidate:ced35c1b2799956163144669dc927339caf13a5f5395b305b83405ef6bb21b73"
  ]),
  ("name-candidate:9630d4f95beabb586df8aaa9678ece7c834c294f02814eb610b6ecd100a1e059", [
      "name-candidate:59a78b88090b95dd831ff8d52c9e3e026b1288543fe65b85e5008531995d0e90",
      "name-candidate:7ff6231937a27892cebdd92e41a9860b33e4e5c130b1fb9f7732bf28d902217c",
      "name-candidate:9630d4f95beabb586df8aaa9678ece7c834c294f02814eb610b6ecd100a1e059"
  ]),
  ("name-candidate:8a1ccb3fe9251094ad3c0da0bdda09f43d6f77b32d0e77f6dbdd3c425e10de6d", [
      "name-candidate:4f87030a3497f4cfa37485911822970b812e7e1ab27b893dfa5b662659348c03",
      "name-candidate:680692ed891eac512fc731a4c5f33ee89367e1ff4015efed28e3dc04fc831b17",
      "name-candidate:8a1ccb3fe9251094ad3c0da0bdda09f43d6f77b32d0e77f6dbdd3c425e10de6d"
  ]),
  ("name-candidate:beb24b4bf45319ac70fe2bbcab367a37a15872fa59ba40ef48d5f19df3e354f0", [
      "name-candidate:8a8c227e3c9388b911a53b7487da9adedd8e77bd9be054d73bd6f01182c02094",
      "name-candidate:beb24b4bf45319ac70fe2bbcab367a37a15872fa59ba40ef48d5f19df3e354f0",
      "name-candidate:f1b45ed73108a92e4089870ea5686c576b9e3220bf55f173423ae93c7f4d789d"
  ]),
  ("name-candidate:7ec7978fcb03a5a363cbe35baa7e49040b4d26e60d5e36aa6f755188fcdbf34c", [
      "name-candidate:1d7f8ee1a839cb59a9256db4286f594e2267461702f8e3a57864f1ab12ad1f41",
      "name-candidate:5be13f7d0f44b44f55f0b769f88e23bce55a2e1f16fb6a5f808d76a7fe55b961",
      "name-candidate:7ec7978fcb03a5a363cbe35baa7e49040b4d26e60d5e36aa6f755188fcdbf34c"
  ]),
  ("name-candidate:e6893a988cc9f4580e08e6be05a4a6a741e3a914b91ee7ea974d03babfc7be36", [
      "name-candidate:2bf22de5b304c73210c4f427d6574bf28dee141e8ccc74d41e0da0c8a17c5ef9",
      "name-candidate:c1e87c2d9f8a1598f7c87783e9abad1072ea54e78f35135643729e5823add443",
      "name-candidate:e6893a988cc9f4580e08e6be05a4a6a741e3a914b91ee7ea974d03babfc7be36"
  ]),
  ("name-candidate:2767e5aac7a9a0370ba050d9deaa212eb16864d7dd210faff3cfb1b82fdc334e", [
      "name-candidate:2767e5aac7a9a0370ba050d9deaa212eb16864d7dd210faff3cfb1b82fdc334e",
      "name-candidate:505a06d3f48029c65347d2eed17ff1e79371b4e4fe52e54b0fed9937b4b2dc47",
      "name-candidate:871e8142d8b4381933086d2404a1c5225a2d24c5295e610227bc3746b83de92a"
  ]),
  ("name-candidate:536af46367705a4e9389194ec4fe1d42688c12c0c056942a59875c1540ec2642", [
      "name-candidate:536af46367705a4e9389194ec4fe1d42688c12c0c056942a59875c1540ec2642",
      "name-candidate:5685820ab1f08dcd69034177452819c8875d942d73714f6e4465184d28e575dd",
      "name-candidate:a8e07cf728faa4bca25f788a386153f8ebfa7f0b3ca55b50e30e31bc081dea67"
  ]),
  ("name-candidate:b985cacc0b58852f6254de0e05ad94a7bc857b92292275c195b1152e98084a54", [
      "name-candidate:a217820e053fe65563f9c7060a78c3a9d6576d7bbbc58796b67be30760973a6e",
      "name-candidate:b304fdbff74d281bc845928215cf6c02bfc0168ebc3497f4f8bdd56ec806e6f6",
      "name-candidate:b985cacc0b58852f6254de0e05ad94a7bc857b92292275c195b1152e98084a54"
  ]),
  ("name-candidate:c07f5481575af7020cc9d212c92cf80bdc1e4ae8684e6e0872e4c402877d79ea", [
      "name-candidate:4cbea9e5cc0ce6a0d86b76b41c787fd8709bd3222ffe3032c5d112020e0d2a06",
      "name-candidate:69e997b71a942e7b9ab7abc7e219147775c3f2a1bd9bbd5123d8d60c1054d0fd",
      "name-candidate:c07f5481575af7020cc9d212c92cf80bdc1e4ae8684e6e0872e4c402877d79ea"
  ]),
  ("name-candidate:49fe19e0dfca9bcba3a1510b4bfa07aa411932ccb3822f9960b331eb51d65c6c", [
      "name-candidate:49fe19e0dfca9bcba3a1510b4bfa07aa411932ccb3822f9960b331eb51d65c6c",
      "name-candidate:6553cbae23c758c7d50dea071c586271a222bbe4edd0dce13154d6c3291d4ea3",
      "name-candidate:e30a1fa0ed0559fc45ea58533b8aacfc4e0f0e7d34eed482c445b1a09d33266c"
  ]),
  ("name-candidate:9615e247a21309d9af756efc4452654218028000743ca349237e56256db3257f", [
      "name-candidate:26c27fa0f0d6a0a9384ec24007c7043e982c2324fba18ed712ad5e900baceba4",
      "name-candidate:6ffb5b691a9549858a74b27eaa598769920e6ca26bd25acce6f9949cf63ce4ec",
      "name-candidate:9615e247a21309d9af756efc4452654218028000743ca349237e56256db3257f"
  ]),
  ("name-candidate:aadfc14f89b2603d812383bcc1f9ad5f7b9b54841162707fb9877197f39c3d81", [
      "name-candidate:a001273d83deac5de0317407617bf115180dee3ef2cc07294888c3f919629182",
      "name-candidate:aadfc14f89b2603d812383bcc1f9ad5f7b9b54841162707fb9877197f39c3d81",
      "name-candidate:ea581a7cfe82b317fcd366df2aa8c5bb44e3d812791a66d6fc2a67153cf3a850"
  ]),
  ("name-candidate:a6a6b3a54a51a5efb083860ab7361a9e53b6d8e989b10b05084e2fc944a0ee42", [
      "name-candidate:0d3e8963e2d83ba8a4deefd6f1774d3b08101d3a722ce0236bd46adea14fe5b0",
      "name-candidate:8f4425e4e7877a934053c15eade05edcecab725fdaf6be8b07b3d16dd8dace62",
      "name-candidate:a6a6b3a54a51a5efb083860ab7361a9e53b6d8e989b10b05084e2fc944a0ee42"
  ]),
  ("name-candidate:40286aa5330b5757e1e02564894b596021ceed0fc96a9653fd00389e7306ca77", [
      "name-candidate:40286aa5330b5757e1e02564894b596021ceed0fc96a9653fd00389e7306ca77",
      "name-candidate:8ba06abc5001144129297f21059721994354c05649cd7483e5f96c8ae18bcde4",
      "name-candidate:a81d197b323b8af35c317556599fa3b7cd65f170afaf1ee787576e036de8ef05"
  ]),
  ("name-candidate:ed5fdb3211d81bc6d7a1a07792a530f943674fb303ec9e180c74ff1446407d10", [
      "name-candidate:19123c94b48727e732fabd0ff55613449cbd66c4d25232c5336338d1f7a7a05b",
      "name-candidate:a93918a8ef1ac8c7a7924a5d12b0e0a240eb9890371eec6378beebe7d34a6cfe",
      "name-candidate:ed5fdb3211d81bc6d7a1a07792a530f943674fb303ec9e180c74ff1446407d10"
  ]),
  ("name-candidate:0f1ab92c480e3136a7d589724f1da7c69ed743f683a79e43bbf6b736479bb961", [
      "name-candidate:0f1ab92c480e3136a7d589724f1da7c69ed743f683a79e43bbf6b736479bb961",
      "name-candidate:45ee21133ed1e7b10bd1a0280e27f2ff17bedb0a64956114deb64fd4f588aa24",
      "name-candidate:592ff308f55035bf902c07951d12913d3fd88f5fb2e236e033adbcc8a51eea8a"
  ]),
  ("name-candidate:ee9b0dd4530321b1fff0b1fa95fbaeb6447ec24d26bee1cf1df1e18276ded0a1", [
      "name-candidate:5340fe835e64fd58f5d1f1b7f69db4a0d036cb1ef334aad19166458dbfb5379a",
      "name-candidate:d8b601f11debd46692a7ad0abb73e2a587b1ae6673ddc74366c5ce026ecdfa35",
      "name-candidate:ee9b0dd4530321b1fff0b1fa95fbaeb6447ec24d26bee1cf1df1e18276ded0a1"
  ]),
  ("name-candidate:b73aa2e6107575170a608b18752c3cb9dd8fb78271a04a7f329dd15f9a530166", [
      "name-candidate:64bcc17b948847f76105f3f247c8073b3dc59ed506abbffcd07ee1059ec6586a",
      "name-candidate:b73aa2e6107575170a608b18752c3cb9dd8fb78271a04a7f329dd15f9a530166",
      "name-candidate:b7a064bf2be49f5b639c09de045e7cb4344f53d900a2785b0b0034a1b3165fac"
  ]),
  ("name-candidate:0e808d2a14e72807921a50836803a2725e1fc670fe701d2145b069b5361926f1", [
      "name-candidate:01bd370be4d6f2bc1b924500180c38f769317f17b63c332a7dd8c1d042c1d1e6",
      "name-candidate:0e808d2a14e72807921a50836803a2725e1fc670fe701d2145b069b5361926f1",
      "name-candidate:6085a0b33a393606c19e03ef6fcb079ac73521aba6c4dfa6b92789692355bfd3"
  ]),
  ("name-candidate:3cc937f9128c606d121977895fa5185b51deda173da29b087ac0cb2f0d89d147", [
      "name-candidate:30bea09ff0146a92cb5f1d921b7c7d6323da3dabdf7fb7ec961072933237a266",
      "name-candidate:3cc937f9128c606d121977895fa5185b51deda173da29b087ac0cb2f0d89d147",
      "name-candidate:9e5d87ab13b3c51e1131e1eb10353a1cdb88d9524176df0f127b2bafae9ebd33"
  ]),
  ("name-candidate:b79dc13006d249dfdaccbff59cfb3cefd492a48a1166730aa8d485caea9ae91e", [
      "name-candidate:b79dc13006d249dfdaccbff59cfb3cefd492a48a1166730aa8d485caea9ae91e",
      "name-candidate:d23112adb7800bda89144fa297e1097193fce24e5d6afd34dfbd74a37dec3e78",
      "name-candidate:f46329afcca2b9321fdd5c7f33a2b726165db38d5367573817c907873f942361"
  ]),
  ("name-candidate:002d488d1fbad2266d5def9383ec1c4f5ff958e4ced2e5c7898cadfbd7684a13", [
      "name-candidate:002d488d1fbad2266d5def9383ec1c4f5ff958e4ced2e5c7898cadfbd7684a13",
      "name-candidate:cf70a1c6cdca1eae4fb54af473abe394f59bf12f0ba545e935403da035bbc06d",
      "name-candidate:ec09f2c3c1ed28f1ad8b39f056c6714c134a147a16e421588f53254122f58ad6"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L45681).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
