# candidateSelectionsChunk0007

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:94e85e190e15ffb7f54435a6951fd2a181b954f9e750bc04b173b61ab149adb2",
  "kind": "def",
  "lexical_name": "candidateSelectionsChunk0007",
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
  "slug": "candidateselectionschunk0007--f10f8cc3194c5ff3875390f6",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46652,
    "line": 46329,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f10f8cc3194c5ff3875390f6b01211339eec7c7f45a7dae2d036f4ddbf9c7849",
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

Occurrence: `declaration:94e85e190e15ffb7f54435a6951fd2a181b954f9e750bc04b173b61ab149adb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46329–46652.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def candidateSelectionsChunk0007 : List (String × List String) :=
[
  ("name-candidate:b8d13cc041d47e8ea59982b56ca90f7b059f1d0a5735bfd3a3502993d95e0788", [
      "name-candidate:2a2268300e0ac3d135592688236c115e63b0bea3dee570dfb724f930aefce970",
      "name-candidate:61fe020030df671c32e777ad3ebf3e4254a10ecaae2ebf08beac130ffe00a046",
      "name-candidate:b8d13cc041d47e8ea59982b56ca90f7b059f1d0a5735bfd3a3502993d95e0788"
  ]),
  ("name-candidate:0de3072b212035d64500e160531027387a66e8f7f9185a37efec53dda11109fe", [
      "name-candidate:0de3072b212035d64500e160531027387a66e8f7f9185a37efec53dda11109fe",
      "name-candidate:9091c1cbd68d1365aeb4f3a9238c6d1ca3215704bc873c99196cd39932846be4",
      "name-candidate:e0ea1fa17ae31032d80ed1bc1fd8c92d975945c83af2cbec38bfb7d1b2f1ba96"
  ]),
  ("name-candidate:44e484169a901775bbb1c388f35a6244904695df1d57835bdf5719b9caed2021", [
      "name-candidate:3860b2970aed07964600f1b52e711cd2c2b0446025e2812ad22b1d63d9b5a29c",
      "name-candidate:44e484169a901775bbb1c388f35a6244904695df1d57835bdf5719b9caed2021",
      "name-candidate:ce4e34e85f3ada8014b0d1d9df99284a1321ab5be49c434930da790d499aa6ce"
  ]),
  ("name-candidate:a09da12b5390fd88adc779a6bc7df6f0897946e3f836340785c68bcb4b043f39", [
      "name-candidate:74e23d40053a77fe8279d7e54150ec650045c50e594ccab00b771296e405f02c",
      "name-candidate:7a4c70070f0238d6afa787e12133f175689b7bd92343e5cd466d9a1ebb6283f4",
      "name-candidate:a09da12b5390fd88adc779a6bc7df6f0897946e3f836340785c68bcb4b043f39"
  ]),
  ("name-candidate:c00d7a2e638bc10ddfea696125eae172899f7269c94f467a301cb2dbd4de6f62", [
      "name-candidate:3a3baa708bdf38ff7063068c36ed0ab79839d27a689677e7fa9a4ec467613595",
      "name-candidate:c00d7a2e638bc10ddfea696125eae172899f7269c94f467a301cb2dbd4de6f62",
      "name-candidate:fe3f81234aea8338b9d353714bb515d0e8d59771d8df97ee97ca826da3d7b92d"
  ]),
  ("name-candidate:22040e1d06941b0fe523e10ec52f3c9ac58cb70a772ea84a42a08e652b875ed5", [
      "name-candidate:22040e1d06941b0fe523e10ec52f3c9ac58cb70a772ea84a42a08e652b875ed5",
      "name-candidate:bc1ced6b8eb00367451e6bc6530c4881201b28c4f2beabff80c76ee4cd2510d4",
      "name-candidate:e945f8373554cb2c6088e357754984c2fe4deab83f93122de8de2a63e21c010b"
  ]),
  ("name-candidate:0030da8a051d500fc491067cd1b971a6987c91332764c31431c1e78908c29a76", [
      "name-candidate:0030da8a051d500fc491067cd1b971a6987c91332764c31431c1e78908c29a76",
      "name-candidate:7bd5058a4622d0f8c5694eff06e5b8e2ceca832d0669f4c5111ac106bdd0c1d9",
      "name-candidate:f2ad08ff007da65b2b9a1f085dbe45e94e1234711210c703ceba09a949dce02d"
  ]),
  ("name-candidate:ffd59b88062958f59a20d9d75042254c55c4d64ea42991f01ed1b4959787b143", [
      "name-candidate:26711e7f90802815d0833ba81bfb2eb3a80ab6baec19d580ef98cf243c5bfbb6",
      "name-candidate:9afb65f33d0ac9c7f1b5200ad1e82de199256d0106c9763ad778b37932cc843a",
      "name-candidate:ffd59b88062958f59a20d9d75042254c55c4d64ea42991f01ed1b4959787b143"
  ]),
  ("name-candidate:0ea4c9c45dfd6d1b73ee88754190a2fda95f4cd1ed65c0fe269f6ea8ea5a85ce", [
      "name-candidate:0ea4c9c45dfd6d1b73ee88754190a2fda95f4cd1ed65c0fe269f6ea8ea5a85ce",
      "name-candidate:4e0219ca9a5d04bee8b905d48780bab8ae6327e22fb0710d8545a0ab749aea04",
      "name-candidate:73e382cf84196a5df3335935dbef26efad6fe446ce9e2a5b3c72226cb67a38b1"
  ]),
  ("name-candidate:18c6c7daf7a561e92bf1c344ddb73fe3c7afde31295a846259f066fd98043086", [
      "name-candidate:18c6c7daf7a561e92bf1c344ddb73fe3c7afde31295a846259f066fd98043086",
      "name-candidate:898bf229c74c158f409c7d102d2d8981e5d95e370e8101086ba9776242db0b1c",
      "name-candidate:d24d3e7848366995259ea7b7132da263a2e8159843c17a685f2b3da38d9fac22"
  ]),
  ("name-candidate:94414880608c530ca6f9f2a19f0d97bd4d282e65bbe467d6113736bdc8dff3e8", [
      "name-candidate:555a1c9ed658ad6b294cadfe4af84ab469c619bd7e2e8416a6cb778c6e3c9e55",
      "name-candidate:94414880608c530ca6f9f2a19f0d97bd4d282e65bbe467d6113736bdc8dff3e8",
      "name-candidate:d9bb8c08e0475f9bdf53c07e7d025f0a77a04c906ba5cb7aefdf3d8016613ede"
  ]),
  ("name-candidate:e30f59ffc97bc957757bf677d2e0c6dba176218cfb2ee0d38b559deaa94caff8", [
      "name-candidate:51138b0353d8d8cdf063f4794c1e9f0565e650bcfef99c61695411a6b2eab8fa",
      "name-candidate:6b47f5e38682e64149128ec018258696dcecf34b80cefbb737e239167ae03ff6",
      "name-candidate:e30f59ffc97bc957757bf677d2e0c6dba176218cfb2ee0d38b559deaa94caff8"
  ]),
  ("name-candidate:46179e41935e55582a492627179b5d78afc51c3364d059a817382218786825df", [
      "name-candidate:065a17656df940d28efcb5ab00f7613f44e3ca23522ebd08a3b0adf577ec85bf",
      "name-candidate:0b88dd86f03ac6ca33aea0576cb5ad0c4d98f469b3ae5f108324ae278fd8a7d8",
      "name-candidate:46179e41935e55582a492627179b5d78afc51c3364d059a817382218786825df"
  ]),
  ("name-candidate:fe84519b3530b00e96fa6de0506875aea7671edf6fbf893661d3dfb8cabd6977", [
      "name-candidate:d056051955fe9585d1f7d84a6ca6ce0e55cf15ba4b5bb0ffd7e1a8fa84915582",
      "name-candidate:f5137270c0209033341dc5a06e8e36ecdd480a087fa023e4eb0c4e4392296e75",
      "name-candidate:fe84519b3530b00e96fa6de0506875aea7671edf6fbf893661d3dfb8cabd6977"
  ]),
  ("name-candidate:b9790f661bb1bd683cf1a9ca597af21c2abd212801d06b7867c4f96efac27366", [
      "name-candidate:1eaf6e92eaeee332e104cd3d099ed69bb95d4eb17f8c9cdfc1d2b8f44410ecae",
      "name-candidate:46c265f78dd86c7eae4f47101820cc84a2e76d01e3b7ee822256bca01863a0c6",
      "name-candidate:b9790f661bb1bd683cf1a9ca597af21c2abd212801d06b7867c4f96efac27366"
  ]),
  ("name-candidate:cfcacc9a6233e93555061ad050ad77566060e8708f85be81f4c21ad7c37ce364", [
      "name-candidate:7ad8acbf1995ca2bd9cae150c3d75212808f559af1d211e6a94fda9958bf8942",
      "name-candidate:b9d80d5bad721a7422cef360ca3fb793049ca51d1fb18b3bb18e95b2f7705f3f",
      "name-candidate:cfcacc9a6233e93555061ad050ad77566060e8708f85be81f4c21ad7c37ce364"
  ]),
  ("name-candidate:c20593b753318fe223a9858741ac37e6b436b898fea17ac06b728b2d811a58aa", [
      "name-candidate:43f0ab088abbe036eac94d4e24d151e4e3556bd8871f241067b064b5310347ce",
      "name-candidate:4e9bde9c2f424a63ec19775e32f1f809c0584d6448721a7dea882e023fdb5752",
      "name-candidate:c20593b753318fe223a9858741ac37e6b436b898fea17ac06b728b2d811a58aa"
  ]),
  ("name-candidate:c4b48d10279d545777effe6e28cadebd1351bb241ce085538bd7689af8144b7c", [
      "name-candidate:1f68ae3fc77b1e322e88c1341a0562b468adf3643d8345d188c7d9f1e71cc394",
      "name-candidate:37d8a2d0301a41e6ffdd928c9419a6bba3a22f2bae6e698d37bd6f6474aaf307",
      "name-candidate:c4b48d10279d545777effe6e28cadebd1351bb241ce085538bd7689af8144b7c"
  ]),
  ("name-candidate:0cccd3286be779bcc3779a10c75731eccd0c6471e20a2c66f60baee4fb26b61b", [
      "name-candidate:0cccd3286be779bcc3779a10c75731eccd0c6471e20a2c66f60baee4fb26b61b",
      "name-candidate:7acb0a12fb901aac6bae77afef2bc24fbc176dc01abd8d452c9b436b39e467f8",
      "name-candidate:e29261c02ecc52ce98fe38ebff3d53b466d07bdf48ffea464c787ac5aa18ce3e"
  ]),
  ("name-candidate:d03599e232a2080333f870499f3e0fdbeae67b7baeba49e54fbefa4aa6e5ce13", [
      "name-candidate:17e17801dc7c52f85d7a7aca4feb6ba2bf55e5c5e6936709b74f2aafb24f146c",
      "name-candidate:3d8db43a6797b3b9e58b867122483f26bc1a652c7b843824585ae28d536b7640",
      "name-candidate:d03599e232a2080333f870499f3e0fdbeae67b7baeba49e54fbefa4aa6e5ce13"
  ]),
  ("name-candidate:11e795ac0929d9435410f747514c2af328cff124d6b096bba93fb6b4c873927e", [
      "name-candidate:11e795ac0929d9435410f747514c2af328cff124d6b096bba93fb6b4c873927e",
      "name-candidate:b80917b664286ce1ed3f8617316740d6ebbf70432b1b5930c8be6e7e9908e51c",
      "name-candidate:c008bf888c3d9e6c2e2882df75881c2df65ae041b36ff4adf855d2e7820358c0"
  ]),
  ("name-candidate:3409f7c5105fbd7cb886990f8d9e7272e95ea921dbbf9720b3ff2a04a02c5b90", [
      "name-candidate:2eda4761b25af74366ea6fb8576392fb3590393f757b9683e891036e9685ada3",
      "name-candidate:3409f7c5105fbd7cb886990f8d9e7272e95ea921dbbf9720b3ff2a04a02c5b90",
      "name-candidate:59c796e1ea3f3335c1eff01e42e71098a338df1d424295499d4be28d9cc70198"
  ]),
  ("name-candidate:d87b1b988f6e75927531eb92a8411305631d4da458c2d6ebb39894a861cf3097", [
      "name-candidate:c46cde9c4b86de43729c4c0bb9c99e745e707ff8f97e3c6d52a196f3f24f1b96",
      "name-candidate:d1c4c1d98a6cb7fd1566877832248ba236f2117c92941422c8736753b84d2a6c",
      "name-candidate:d87b1b988f6e75927531eb92a8411305631d4da458c2d6ebb39894a861cf3097"
  ]),
  ("name-candidate:d80954000a36e3b60c199008c220bbb0a9a512ffa45891a99e1572433be0c7ec", [
      "name-candidate:abe25a1315ab17a9f132c7f06254af7c0a3f583169440df5f84b0813734667df",
      "name-candidate:d80954000a36e3b60c199008c220bbb0a9a512ffa45891a99e1572433be0c7ec",
      "name-candidate:d859b1e5be8e2315c0f3b6ab528bb3cd74fd253ad764528e25d43728081aeefe"
  ]),
  ("name-candidate:bec80e98027714e0c3f2af32a48d0f4479dcf325310c06fc50d280c8a0d02d9e", [
      "name-candidate:896fbdfc0c3f5ba75cdf903833ed021e1def638b9960e992cfcbcd06a6891065",
      "name-candidate:8cb8282f90512860d98c801a29df3e609d882fffcad888f74d1c4363ca9d901d",
      "name-candidate:bec80e98027714e0c3f2af32a48d0f4479dcf325310c06fc50d280c8a0d02d9e"
  ]),
  ("name-candidate:b967afe9325c8d6b87c234ed67dd7b3f67dc6a1e466a4f95a0bbcb1e6edd806e", [
      "name-candidate:097271b1a3c995bf5109bc2c31c8be7513dd83ae6e6e4454143001dcf49ca4fe",
      "name-candidate:55cc70d2e937123ef11621955164a72209ed566395f85c71f8edc76501003595",
      "name-candidate:b967afe9325c8d6b87c234ed67dd7b3f67dc6a1e466a4f95a0bbcb1e6edd806e"
  ]),
  ("name-candidate:d35e048800fe30a4d28b02f2067ea8a46ba97043a58071ee1fff39bfa8266e46", [
      "name-candidate:a051038d534cc9355701255c7a3d3533f83e11a218e4a0a7e8e1490249b46449",
      "name-candidate:a3792a6d79d9356d35e379e4dcdcd266ed0c92adf004c9ada25792115047f315",
      "name-candidate:d35e048800fe30a4d28b02f2067ea8a46ba97043a58071ee1fff39bfa8266e46"
  ]),
  ("name-candidate:eb33c94c7b593a515f112e7c596b2a61a627bbb53f1210507c9dffdff6a6859d", [
      "name-candidate:51337d44dce4583b7f6814d17a605a6d24d6653ffb1f0cb2696aa1eab28fa880",
      "name-candidate:d5b3ca148ae0159c5203ae8ba367d9e944913ff54a168bc5d7dc66e3d23ad455",
      "name-candidate:eb33c94c7b593a515f112e7c596b2a61a627bbb53f1210507c9dffdff6a6859d"
  ]),
  ("name-candidate:dfa2b118e084e0e924b4a65421ca7c9f15d4afd6a5fc5d6a3d2e58baab643909", [
      "name-candidate:3c32e286d2501573488ec392ee0171d00e109fbc1275221d99f1269d1d3c682f",
      "name-candidate:8bd4f4f166b0a336d74e6926138081f1c72818b5cc9c0ab6c50271a62fb41035",
      "name-candidate:dfa2b118e084e0e924b4a65421ca7c9f15d4afd6a5fc5d6a3d2e58baab643909"
  ]),
  ("name-candidate:c7578fe191e5b95b4caf148ec487d4c104952e4b4c56da9a093ed46464cf9c63", [
      "name-candidate:7adcc5a64c1015c906f2d69942e2f63b81fa30ebfbc8c4f6f627428398bb78ef",
      "name-candidate:c7578fe191e5b95b4caf148ec487d4c104952e4b4c56da9a093ed46464cf9c63",
      "name-candidate:db673ad9dfc51bd2b25376f789cf8f005161c35ccf4bcceb218399df3159107b"
  ]),
  ("name-candidate:c637497090a5e79f5fd07baee5fcbc4dba580c874919d79d1ed5d64d2a35a67f", [
      "name-candidate:19eae258c610da54d9019a2aa04a3a29fdb1a940583960eb9688173428ae8893",
      "name-candidate:c637497090a5e79f5fd07baee5fcbc4dba580c874919d79d1ed5d64d2a35a67f",
      "name-candidate:da94519a2f3d6450484a8d4751e842d69a8956e5605337fbf83e4af2e14a3c87"
  ]),
  ("name-candidate:729ba591111df0c70fe06ec4bd1062b396c516a6cc8aa8ad2c519869c76b3fb4", [
      "name-candidate:363cdfa9262313f5a1a70ee2018fce544197c15cd75971ad6efaaabcd9898de8",
      "name-candidate:36b3d09266fc6a4a03c93230a444c53521031ef2bc8c50af2a0574ebda978549",
      "name-candidate:729ba591111df0c70fe06ec4bd1062b396c516a6cc8aa8ad2c519869c76b3fb4"
  ]),
  ("name-candidate:a6668eab5e012042913ef8f6ab2ce0657c96305df5929c06a7227ad6f217e561", [
      "name-candidate:a6668eab5e012042913ef8f6ab2ce0657c96305df5929c06a7227ad6f217e561",
      "name-candidate:b1d9e00f6417318da0dd01394b1a23fe9550aa343245f0e1bed0c8cac8d7ed61",
      "name-candidate:e7206c6a150309fb0005b72df9890cd4556bbc8860759c4f4c00e4262ddf19ce"
  ]),
  ("name-candidate:26571aaf02a827bd7038a0ca915568dfc3b2402b1a019772bf1608dc8eb69ca0", [
      "name-candidate:26571aaf02a827bd7038a0ca915568dfc3b2402b1a019772bf1608dc8eb69ca0",
      "name-candidate:9330083f0341876311423a642380a2ae69fada0ba812d339d68538944d567ba4",
      "name-candidate:d0ed70b37094dcf0a7c7b61cb9539da2a7975106ee2bcedba0246253a44d5e97"
  ]),
  ("name-candidate:38d24fb3805d9dba1f83f76a06fafd393b9f152cbd55b53cc028283c2780e1b1", [
      "name-candidate:2f26fdc2ba40fc74357e48a5bb4f17e16855a02049aeb2dec488421474800f58",
      "name-candidate:38d24fb3805d9dba1f83f76a06fafd393b9f152cbd55b53cc028283c2780e1b1",
      "name-candidate:c2ef583d2ab2d7f85a2e47271824857cd9ba37d0bcf7544a5ee7a923caa9cfb4"
  ]),
  ("name-candidate:82cfca00d841779f44b129fe689a388275a9a1db732df3fae38820720dcf14bd", [
      "name-candidate:82cfca00d841779f44b129fe689a388275a9a1db732df3fae38820720dcf14bd",
      "name-candidate:ad2f2cd8d55bdcf41ad0f166e68c17f5a18f915b444477225e60ef07c1bf9e7b",
      "name-candidate:f6a455a7e0df7db50985354e297bba6a86b66b8922b86cacb7dd7b22a4ec2839"
  ]),
  ("name-candidate:42483f68275c76e4ca0ca8700624668434c09d9c0bc74d72d90c63b87d30fd26", [
      "name-candidate:42483f68275c76e4ca0ca8700624668434c09d9c0bc74d72d90c63b87d30fd26",
      "name-candidate:5527febbfac5bb48be7c529b69dceb02f27e8f512e018662f51bc93c37d0b51e",
      "name-candidate:caffc8231e5f77a53b6c41f9111135828c96cd63ccd24c678f8241734bdee129"
  ]),
  ("name-candidate:c0aa18aeff406f901ef9cde2838a3d5f379b1a37855436603c000f625741d3b0", [
      "name-candidate:030f0210fdd1215d5f0197983aea915b3d6e17fb52531b6fe0ed65c25c07d5b6",
      "name-candidate:2106238d9d8eec969deb460d8ae00c0a913c3f6c564ac0888dd0a807652468d5",
      "name-candidate:c0aa18aeff406f901ef9cde2838a3d5f379b1a37855436603c000f625741d3b0"
  ]),
  ("name-candidate:0a20b45b4a0b2ec2213a157f208ee49611287f7b1a76c14b8d1d48bf066611df", [
      "name-candidate:0a20b45b4a0b2ec2213a157f208ee49611287f7b1a76c14b8d1d48bf066611df",
      "name-candidate:b23976b82038b7d3dcd005c553377eb272ef3aac529760f3443168124fe84a86",
      "name-candidate:cb7f86ad10b5bdd33ee97cec1f40e62ddc45d5f7f0302f08e6cef8b2c1f3761a"
  ]),
  ("name-candidate:ad51041a4d934468ef8bd3b9830a7f3d78237a4fc490d1d635fbdfd7c9c910dc", [
      "name-candidate:95a4b2782042878444b0dcc32d8f1173c48c66d826d5a1534cdb2dc89b14c418",
      "name-candidate:986d4659353194f2af31905ee19908823e663105478aaf9f37377bc19f6297d1",
      "name-candidate:ad51041a4d934468ef8bd3b9830a7f3d78237a4fc490d1d635fbdfd7c9c910dc"
  ]),
  ("name-candidate:ecf788e96689f855271177bf4a5c5336f306139ba37669338b9fad2db4263ddb", [
      "name-candidate:584ddf1473eef6a401462130ac65c757cd8fd40f4fdd77a63355f8b8a686ca33",
      "name-candidate:7515ff9a4429f5ee6fa1e91c594e3daf97e9faf51d3b5465525b6ac7dc4217f6",
      "name-candidate:ecf788e96689f855271177bf4a5c5336f306139ba37669338b9fad2db4263ddb"
  ]),
  ("name-candidate:66611c00918b6b7277c09538d48849b4aaaa54fa03e0d2ec57f2ff815b76a64e", [
      "name-candidate:66611c00918b6b7277c09538d48849b4aaaa54fa03e0d2ec57f2ff815b76a64e",
      "name-candidate:7591456ebbbfecf901f49be89504e2a86f827a08e01a148cd4500a5f2d99686c",
      "name-candidate:a893e537c0392971b124c40a9b1d82080b14519eaa15ab90941c64608061219b"
  ]),
  ("name-candidate:080349df1ba63c3f3a57e2eac7dcc4dab29276e5f3555cc6cc3d5a4cb6900d03", [
      "name-candidate:080349df1ba63c3f3a57e2eac7dcc4dab29276e5f3555cc6cc3d5a4cb6900d03",
      "name-candidate:29a42e6ff8a064a5e3f02ac5a2a7ccacdaa9ed9e7ace6deb2b21bc0a9d8f5f78",
      "name-candidate:5f5bcf987cfe1143ba551e9f8e1332957d1d3f3b7d24991d47e2f0f894f1a533"
  ]),
  ("name-candidate:4129968edf187b3076f54235be56e5ee855d29ef2f56ca5144a63dd544bdda6e", [
      "name-candidate:2710d07e6f2f9d43be730a68d4f1202c472b3c2d33763a91b65ee46de3dc30f5",
      "name-candidate:4129968edf187b3076f54235be56e5ee855d29ef2f56ca5144a63dd544bdda6e",
      "name-candidate:5680ee09ddd40523d88c53bdd40e1d15e53766c403039fb57b4ee44969a5fee9"
  ]),
  ("name-candidate:d42ebd51b0145029d1b007a877b8508b98c2e9e10ae1da133c1da704d78bd084", [
      "name-candidate:3f434daccfa644e17dadfe621fd83556561f915ffb9e219a89df1f38e4f5f5e2",
      "name-candidate:a2fc0cfde1c1ba156999595fb291620874e83a4018bb5454dbc4595019efb89b",
      "name-candidate:d42ebd51b0145029d1b007a877b8508b98c2e9e10ae1da133c1da704d78bd084"
  ]),
  ("name-candidate:2d59fd7ed6c8002f38957e89f99dfd96a23e2ef3f25e61d840cd3605f195f3dd", [
      "name-candidate:2d59fd7ed6c8002f38957e89f99dfd96a23e2ef3f25e61d840cd3605f195f3dd",
      "name-candidate:356390c126b69f9b9438397901024745b0d32ec83dcab45da2997a191d5e4012",
      "name-candidate:44223ba692c3236d1546ef14abad411f210641188daddbbff59d4b7d0606e11f"
  ]),
  ("name-candidate:7abfbe13ec5a8056364b47246a1adecc190ccc10e634a5fcbbe86884ec598421", [
      "name-candidate:2b9260affc2d565cb1194e8921f6f895f6e61aa803db09136b96165806082057",
      "name-candidate:6aa7d956d60a5090e8f071af091d80a19d64f8c5ed2352841e72fdbbe29d667b",
      "name-candidate:7abfbe13ec5a8056364b47246a1adecc190ccc10e634a5fcbbe86884ec598421"
  ]),
  ("name-candidate:c2a3df7406b5db626b7a487779068edb2dbe52847b5e22e0ed0d83133b352550", [
      "name-candidate:2061fa3999a6912a5e279ebad0995267aae486571d50e7f6732471e18c9b75da",
      "name-candidate:c2a3df7406b5db626b7a487779068edb2dbe52847b5e22e0ed0d83133b352550",
      "name-candidate:d76a5a901b5c608c3bbd7f6d82edb7c764d34c5a8bf53ba5b33b98bb7c268f8e"
  ]),
  ("name-candidate:a0e42f6ec0ff5db93caf83faa25b9d31392e8c0276af96a57828bc62ba9d84d7", [
      "name-candidate:112afd169cad7eed12087d41255a9fb86aeb7492163b3f91a971abeb040cee5f",
      "name-candidate:a0e42f6ec0ff5db93caf83faa25b9d31392e8c0276af96a57828bc62ba9d84d7",
      "name-candidate:c0b5fb8c525e2ee9a3010f54f45814cef8397c7139cdf8d6adb2644bc3cd9fb7"
  ]),
  ("name-candidate:6dce8571ee470434d66c6cb3246bd3891c88c384e3c63ef793ceee9b26c47f6b", [
      "name-candidate:11ecf85874c98df1c938c8146b494146c301f0e7f45abe0ae16dcad8fef7da85",
      "name-candidate:4ad0159ddf33b9494c61f226d907ba2529ce6f6fecfccbd0451b7dec9d977ed4",
      "name-candidate:6dce8571ee470434d66c6cb3246bd3891c88c384e3c63ef793ceee9b26c47f6b"
  ]),
  ("name-candidate:133b68e63a17e51e15777914f8d1320557411fcb8b16ec121248c88d221ad5fb", [
      "name-candidate:133b68e63a17e51e15777914f8d1320557411fcb8b16ec121248c88d221ad5fb",
      "name-candidate:43a267614252a269c2bc924c167fe4737defda53089ec8f79c1bbb387ff994e2",
      "name-candidate:c915a27aadf3a6cf50af89b2ae8bc70f1250a316f900da605eca30505bdec8bd"
  ]),
  ("name-candidate:3f75b34ff8734a03d9631f79734b6999fc2bb0279229487b2077f1918819d6b3", [
      "name-candidate:238ce31d4684564b8d4e27f5473bcd4fc63cedb213db3f1169c3ee48bd027f02",
      "name-candidate:3f75b34ff8734a03d9631f79734b6999fc2bb0279229487b2077f1918819d6b3",
      "name-candidate:c1843c6877da670f82fffb0ab0706c827e9063aeb087e2d614954a252c234de2"
  ]),
  ("name-candidate:a1d0f996577af4cfe9b645d32c4e562115d4ba845e66d94edb9a5458d2e05a8e", [
      "name-candidate:4d2073003dd7980ce1386208685a7d0c5892f1a6630b179a79d8c0e367f64243",
      "name-candidate:a1d0f996577af4cfe9b645d32c4e562115d4ba845e66d94edb9a5458d2e05a8e",
      "name-candidate:beb9ba3b0afb5f96dd976dc240ca481827252164ba247b929a0fd7284be0c85c"
  ]),
  ("name-candidate:0d8b4a872a3f7ab9f5cdd315a2e119dce8a502b72f42c70144d85642113558dd", [
      "name-candidate:0d8b4a872a3f7ab9f5cdd315a2e119dce8a502b72f42c70144d85642113558dd",
      "name-candidate:0fadc0010f7a9732e82c417c6dbdba208eeed18bb19c04520dd7c6234f6fc8a9",
      "name-candidate:aa7bdd948ea96932e4e01c4e44a5b7820935ac4547905b8e95ce3500e7c7ed0e"
  ]),
  ("name-candidate:40ba91a95fa1b92a4a09afe78445636f179c0d71099b0e26471070eabb58f97f", [
      "name-candidate:40ba91a95fa1b92a4a09afe78445636f179c0d71099b0e26471070eabb58f97f",
      "name-candidate:bbe05b84ff7cf558e3664271d1eeb6f99fc464c16d69e18a61203c5ed192a333",
      "name-candidate:d4beb48d480890f151ac0df54eb2adba0c3888d174eeccb58eb30bd2e93ccaab"
  ]),
  ("name-candidate:6e0bb18f1fc153f29810f1de8c94e08908d095ae66a70e746980e08836039d94", [
      "name-candidate:6e0bb18f1fc153f29810f1de8c94e08908d095ae66a70e746980e08836039d94",
      "name-candidate:cab329275d103a68fdab8c9bd728164f0090d5bee49da9b51c53bf575adc5a8e",
      "name-candidate:e5bc52bf8760c3eab7324dca45aae33a7d2665e73c303c7eca000fb62962ce8b"
  ]),
  ("name-candidate:6f5f6e7d804a095b7a701d5601eaa1f0a119e3fd7eb56b7036822e794c4a88cc", [
      "name-candidate:380c4bd10dd6952be63711b384cf5e6ef57c7727054299baa20af221d7d64f3d",
      "name-candidate:5224fe4c0238bf1eced3917a494f3c70ff2799e096c72e51061fdb63c898d1c8",
      "name-candidate:6f5f6e7d804a095b7a701d5601eaa1f0a119e3fd7eb56b7036822e794c4a88cc"
  ]),
  ("name-candidate:6f76568ce164446aa937f10be5bd306a6a373fed6604203081f29f8a5490c222", [
      "name-candidate:6f76568ce164446aa937f10be5bd306a6a373fed6604203081f29f8a5490c222",
      "name-candidate:b7611477afd0500b9f80baedc84f38154d5d2612d01f8b04f542da3f6b1b058e",
      "name-candidate:bb6b3ca0491f00895820b7bab178e803918e340958cbcad37b3bed9359f98552"
  ]),
  ("name-candidate:14ae9a313a7494416f5d81c3561290d1afab3c2509d12d99b54d413a77baf9b1", [
      "name-candidate:14ae9a313a7494416f5d81c3561290d1afab3c2509d12d99b54d413a77baf9b1",
      "name-candidate:19ee254a71c77d46c933cb345c241f92fbfbd49eedd7611033abac7368b8c1a6",
      "name-candidate:e6388acb37ee0dbd12a055f3dd93c6f159eac76b21f83b2e73ca635a5efb7991"
  ]),
  ("name-candidate:85f46ea840790483aeb8f4aefcf37f6eb9bd0d54ee27292355e02778500ccd1a", [
      "name-candidate:46b6bd0bdc039bd3c6cc49422d2f056ce1d55ac602313e8951aa319186db9823",
      "name-candidate:5121979dde2a4e698a4fe872e6782c8577ffde06b04e8919e26630bb14b1c486",
      "name-candidate:85f46ea840790483aeb8f4aefcf37f6eb9bd0d54ee27292355e02778500ccd1a"
  ]),
  ("name-candidate:12344f36288ee336e91db56aeee710e24b4c382317014c407264e0ce4c86379f", [
      "name-candidate:12344f36288ee336e91db56aeee710e24b4c382317014c407264e0ce4c86379f",
      "name-candidate:7c22425bcf80573708f30d174053bdc7e0baf2bfb5f38e68f83f695fab7462fa",
      "name-candidate:a678e05babc93df6d3394be0b1cdb5109ec3bb21c4630adb23593f1eda0610f4"
  ]),
  ("name-candidate:580af31b8e155077aa38075653afc736d9f69b5595dfac2d677d53a4d53ced6b", [
      "name-candidate:2d469e5ec7d1ab190cbabc7d512e2dcbed727642e3672432090c7fd09ac532a3",
      "name-candidate:580af31b8e155077aa38075653afc736d9f69b5595dfac2d677d53a4d53ced6b",
      "name-candidate:6e82e25b6ccaa7456152049c1cbc7f6db034e2c72a255ae830c15fddfb31dec3"
  ]),
  ("name-candidate:156b9fc7ef4dcaf9c1d1e7a0012524e9ed5242e52577ac0fefeac25f119a9e78", [
      "name-candidate:156b9fc7ef4dcaf9c1d1e7a0012524e9ed5242e52577ac0fefeac25f119a9e78",
      "name-candidate:4d7bcc02fc05be39365c922440144aedcaf9b256c4bef05b4d635caee9a2c592",
      "name-candidate:5d79584dc2ea3655c9942eee7508c367a6d86261bbeda11eb2d83819c3547c13"
  ]),
  ("name-candidate:2d48213009ffecdf568e2b4d59e676f69fbf46022bd26eefa15a8b5108a40bbd", [
      "name-candidate:2d48213009ffecdf568e2b4d59e676f69fbf46022bd26eefa15a8b5108a40bbd",
      "name-candidate:d50fe806c4c43fe8c7eceb6ec0100be8280f6698f6d2d708c86ee19a26af0cd6",
      "name-candidate:ddf923eaac79cd9a14e5e831e2213925edf54c4e2ea0bcdb3712bc20dbff26be"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L46329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
