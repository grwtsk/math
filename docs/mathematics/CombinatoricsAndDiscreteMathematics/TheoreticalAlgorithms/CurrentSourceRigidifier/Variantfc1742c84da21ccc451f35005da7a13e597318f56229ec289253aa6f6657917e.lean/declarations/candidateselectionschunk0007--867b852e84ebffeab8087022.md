# candidateSelectionsChunk0007

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9fe99b70ed06ac69df8d72a3fd3d946ba4f22a20d3db73fbf187b0d1dc2603bc",
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
  "slug": "candidateselectionschunk0007--867b852e84ebffeab8087022",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44022,
    "line": 43699,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:867b852e84ebffeab808702223f3dbf6ff1cd2f308b18b9c1e7fe770b4172b94",
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

Occurrence: `declaration:9fe99b70ed06ac69df8d72a3fd3d946ba4f22a20d3db73fbf187b0d1dc2603bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43699–44022.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def candidateSelectionsChunk0007 : List (String × List String) :=
[
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
  ("name-candidate:2961292c4aeac5cf58ff9885b3e0375141b0af5ec170b3ebd679d486330b1b9e", [
      "name-candidate:04cfb40331dbecd3c83ac1969b31ecb5cf6ae38fb9590ab6e09ea47108d523e2",
      "name-candidate:2961292c4aeac5cf58ff9885b3e0375141b0af5ec170b3ebd679d486330b1b9e",
      "name-candidate:49b1f197195466ed5403f549dc19399587fade23100493ebaee53c16a3022d38"
  ]),
  ("name-candidate:2eda4761b25af74366ea6fb8576392fb3590393f757b9683e891036e9685ada3", [
      "name-candidate:2eda4761b25af74366ea6fb8576392fb3590393f757b9683e891036e9685ada3",
      "name-candidate:3409f7c5105fbd7cb886990f8d9e7272e95ea921dbbf9720b3ff2a04a02c5b90",
      "name-candidate:59c796e1ea3f3335c1eff01e42e71098a338df1d424295499d4be28d9cc70198"
  ]),
  ("name-candidate:d859b1e5be8e2315c0f3b6ab528bb3cd74fd253ad764528e25d43728081aeefe", [
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
  ("name-candidate:8bd4f4f166b0a336d74e6926138081f1c72818b5cc9c0ab6c50271a62fb41035", [
      "name-candidate:3c32e286d2501573488ec392ee0171d00e109fbc1275221d99f1269d1d3c682f",
      "name-candidate:8bd4f4f166b0a336d74e6926138081f1c72818b5cc9c0ab6c50271a62fb41035",
      "name-candidate:dfa2b118e084e0e924b4a65421ca7c9f15d4afd6a5fc5d6a3d2e58baab643909"
  ]),
  ("name-candidate:db673ad9dfc51bd2b25376f789cf8f005161c35ccf4bcceb218399df3159107b", [
      "name-candidate:7adcc5a64c1015c906f2d69942e2f63b81fa30ebfbc8c4f6f627428398bb78ef",
      "name-candidate:c7578fe191e5b95b4caf148ec487d4c104952e4b4c56da9a093ed46464cf9c63",
      "name-candidate:db673ad9dfc51bd2b25376f789cf8f005161c35ccf4bcceb218399df3159107b"
  ]),
  ("name-candidate:da94519a2f3d6450484a8d4751e842d69a8956e5605337fbf83e4af2e14a3c87", [
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
  ("name-candidate:9330083f0341876311423a642380a2ae69fada0ba812d339d68538944d567ba4", [
      "name-candidate:26571aaf02a827bd7038a0ca915568dfc3b2402b1a019772bf1608dc8eb69ca0",
      "name-candidate:9330083f0341876311423a642380a2ae69fada0ba812d339d68538944d567ba4",
      "name-candidate:d0ed70b37094dcf0a7c7b61cb9539da2a7975106ee2bcedba0246253a44d5e97"
  ]),
  ("name-candidate:c2ef583d2ab2d7f85a2e47271824857cd9ba37d0bcf7544a5ee7a923caa9cfb4", [
      "name-candidate:2f26fdc2ba40fc74357e48a5bb4f17e16855a02049aeb2dec488421474800f58",
      "name-candidate:38d24fb3805d9dba1f83f76a06fafd393b9f152cbd55b53cc028283c2780e1b1",
      "name-candidate:c2ef583d2ab2d7f85a2e47271824857cd9ba37d0bcf7544a5ee7a923caa9cfb4"
  ]),
  ("name-candidate:9fb011574876abde5cb43e03e0e73ae2c8e822eed5d3f6580777b6a9364b97b2", [
      "name-candidate:9fb011574876abde5cb43e03e0e73ae2c8e822eed5d3f6580777b6a9364b97b2",
      "name-candidate:cbbc853484b0e992e84b159e97100f0924f0c0506f303e7f45dab5a87a4c7a53",
      "name-candidate:f4ac2535ea2ae4084bd32e132e8815215b3aaa43adb861cf628e36906a27e363"
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
  ("name-candidate:584ddf1473eef6a401462130ac65c757cd8fd40f4fdd77a63355f8b8a686ca33", [
      "name-candidate:584ddf1473eef6a401462130ac65c757cd8fd40f4fdd77a63355f8b8a686ca33",
      "name-candidate:7515ff9a4429f5ee6fa1e91c594e3daf97e9faf51d3b5465525b6ac7dc4217f6",
      "name-candidate:ecf788e96689f855271177bf4a5c5336f306139ba37669338b9fad2db4263ddb"
  ]),
  ("name-candidate:d0c0af724941c7e67515c5312d34f785b220caca8e76b84d9efd955a3754967e", [
      "name-candidate:870aebcb65de9993ad2d39c96410cd7c18a2bf4e344814d5030bcf2368819d4d",
      "name-candidate:bd98e2485e2c97c62080ed9a713de75acb98b5adc6246ee5aa8339ffcf2f597c",
      "name-candidate:d0c0af724941c7e67515c5312d34f785b220caca8e76b84d9efd955a3754967e"
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
  ("name-candidate:5680ee09ddd40523d88c53bdd40e1d15e53766c403039fb57b4ee44969a5fee9", [
      "name-candidate:2710d07e6f2f9d43be730a68d4f1202c472b3c2d33763a91b65ee46de3dc30f5",
      "name-candidate:4129968edf187b3076f54235be56e5ee855d29ef2f56ca5144a63dd544bdda6e",
      "name-candidate:5680ee09ddd40523d88c53bdd40e1d15e53766c403039fb57b4ee44969a5fee9"
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
  ("name-candidate:bbe05b84ff7cf558e3664271d1eeb6f99fc464c16d69e18a61203c5ed192a333", [
      "name-candidate:40ba91a95fa1b92a4a09afe78445636f179c0d71099b0e26471070eabb58f97f",
      "name-candidate:bbe05b84ff7cf558e3664271d1eeb6f99fc464c16d69e18a61203c5ed192a333",
      "name-candidate:d4beb48d480890f151ac0df54eb2adba0c3888d174eeccb58eb30bd2e93ccaab"
  ]),
  ("name-candidate:6e0bb18f1fc153f29810f1de8c94e08908d095ae66a70e746980e08836039d94", [
      "name-candidate:6e0bb18f1fc153f29810f1de8c94e08908d095ae66a70e746980e08836039d94",
      "name-candidate:cab329275d103a68fdab8c9bd728164f0090d5bee49da9b51c53bf575adc5a8e",
      "name-candidate:e5bc52bf8760c3eab7324dca45aae33a7d2665e73c303c7eca000fb62962ce8b"
  ]),
  ("name-candidate:380c4bd10dd6952be63711b384cf5e6ef57c7727054299baa20af221d7d64f3d", [
      "name-candidate:380c4bd10dd6952be63711b384cf5e6ef57c7727054299baa20af221d7d64f3d",
      "name-candidate:5224fe4c0238bf1eced3917a494f3c70ff2799e096c72e51061fdb63c898d1c8",
      "name-candidate:6f5f6e7d804a095b7a701d5601eaa1f0a119e3fd7eb56b7036822e794c4a88cc"
  ]),
  ("name-candidate:bb6b3ca0491f00895820b7bab178e803918e340958cbcad37b3bed9359f98552", [
      "name-candidate:6f76568ce164446aa937f10be5bd306a6a373fed6604203081f29f8a5490c222",
      "name-candidate:b7611477afd0500b9f80baedc84f38154d5d2612d01f8b04f542da3f6b1b058e",
      "name-candidate:bb6b3ca0491f00895820b7bab178e803918e340958cbcad37b3bed9359f98552"
  ]),
  ("name-candidate:19ee254a71c77d46c933cb345c241f92fbfbd49eedd7611033abac7368b8c1a6", [
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
  ("name-candidate:2d469e5ec7d1ab190cbabc7d512e2dcbed727642e3672432090c7fd09ac532a3", [
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
  ]),
  ("name-candidate:444a03313876c79573bb1a70882678e56c8ac55237f9e6813fb6e545cfda758d", [
      "name-candidate:419b4e993b4f44529981627d6091bf1611d4bd971beef63e7b1fbd661bbe3d0a",
      "name-candidate:41a0ba1a5bb1c744ab59c152cc708a0b2ad5d1bf0bf4f261190c3b75270fa257",
      "name-candidate:444a03313876c79573bb1a70882678e56c8ac55237f9e6813fb6e545cfda758d"
  ]),
  ("name-candidate:57b211485bea4b8b40ed1b401200acb56691b3c237fe5a31161d2dce80a2ce19", [
      "name-candidate:51b5a8104c112af0b4fdc6eacd59f771e1c5c63bbce0be02ff673eaa8408a51e",
      "name-candidate:57b211485bea4b8b40ed1b401200acb56691b3c237fe5a31161d2dce80a2ce19",
      "name-candidate:581d860b7897543650591ddd6b2d182e749b50fd8fc6a763d939b5d292f8888a"
  ]),
  ("name-candidate:28094869bec0327b70b75abcea15fe4526d9de110d24479f0603745bd08a75df", [
      "name-candidate:28094869bec0327b70b75abcea15fe4526d9de110d24479f0603745bd08a75df",
      "name-candidate:9dd3b91b111877e0c43d05c55dcd268f73601caa108871f44a8334e6257fff1d",
      "name-candidate:c32d0cce6a0a137c605647e32e2c941d3f8a74a68862889aa83e8673897d2eca"
  ]),
  ("name-candidate:ad88e7c367fbab50d58259b903e4828723cd05bd4bd0661c36282bc4e1cd5085", [
      "name-candidate:751573bd8e8dfbf3ba163a6553cb00d0e73a98f4be0a2bf56e41b0ebc98bcbe5",
      "name-candidate:ad88e7c367fbab50d58259b903e4828723cd05bd4bd0661c36282bc4e1cd5085",
      "name-candidate:c12fbdf7a3efa1f04bcc32994b9f6595643b20d625d9e7d7ba36a00ec638fc34"
  ]),
  ("name-candidate:918dcbe09cdba550422230fd4762d5aceebbf114a0687b2abd376664e6272fde", [
      "name-candidate:918dcbe09cdba550422230fd4762d5aceebbf114a0687b2abd376664e6272fde",
      "name-candidate:991554db0023d42d53e4cc4f0ff25ca94292e59f2220b17c6e115966056e9f67",
      "name-candidate:d40cd0c48f628135fd949758c67bea1fd32317f3a754d576d69a880cf64447d2"
  ]),
  ("name-candidate:d7bb3b1f14cfa86a50fbfd0b50ea1e2da82f33e92293051a504308498da77bf8", [
      "name-candidate:a7cab676949a78df8567b45a6a365937e839d0f2271f6d8d38e52f242b669731",
      "name-candidate:d7bb3b1f14cfa86a50fbfd0b50ea1e2da82f33e92293051a504308498da77bf8",
      "name-candidate:ecb2535be8c0b954e8f5b95561950821de14ebde593e913a7e10419878f9577d"
  ]),
  ("name-candidate:5420671c7f67cd0e12c0ed19824a401dc01db7f6b414be21a88658775e78c44d", [
      "name-candidate:35699d3e255ae316ee08e3436c308a674a756df5ffc9947f8c9f7f119c6c795b",
      "name-candidate:5420671c7f67cd0e12c0ed19824a401dc01db7f6b414be21a88658775e78c44d",
      "name-candidate:fbb6aa79c8ed6ac3997c204caa3c866fb0fafd6d402957d52447ac5d9dc60471"
  ]),
  ("name-candidate:8225725a53be8cf5124ad9b4ffe2a0d34974c21207d1398e8b9606fb0f0896ec", [
      "name-candidate:21c3f353fee2ffd7ddde85a119cb47cb0b9297fb4d7dcd7b678ca042835614ea",
      "name-candidate:8225725a53be8cf5124ad9b4ffe2a0d34974c21207d1398e8b9606fb0f0896ec",
      "name-candidate:c2100d7337a32d4a4b6345ee9e0e095c0d2f521499351b37a23ad6cebb8e9dfa"
  ]),
  ("name-candidate:68831ba82e6c9aa6333a90d9c57303c28f1971457eb26589be6ffbbef04c6665", [
      "name-candidate:68831ba82e6c9aa6333a90d9c57303c28f1971457eb26589be6ffbbef04c6665",
      "name-candidate:8f30a223994035f9f2cc2aca7a11fd25c59713d1a55b08c3da9b1448781c326e",
      "name-candidate:9bd01bfbe9c32ea0474c09097fd670d16a0db8ba9f66821ede2b7f8254999924"
  ]),
  ("name-candidate:20ab348bf3431d909de07d4ae65caa03125c3287f17de358ac61912cd6bacf22", [
      "name-candidate:20ab348bf3431d909de07d4ae65caa03125c3287f17de358ac61912cd6bacf22",
      "name-candidate:c8c294dc748af4bdb50d3c6f41eb29e6f69c7aed9f9f3723d3e08f307665ccc5",
      "name-candidate:e5fd1663f54eaf9f2f7ab925ffb4d226657ff9e77a65e4e345b51b1a4ea48ba6"
  ]),
  ("name-candidate:40bbcca0b5380355e1b43b3846bf24114a32cf463e98c005969804746b9eff59", [
      "name-candidate:40bbcca0b5380355e1b43b3846bf24114a32cf463e98c005969804746b9eff59",
      "name-candidate:62414e5a6d7c2df7f87ef67efac59ca8e421d55c0c09af6fd7557618141f8354",
      "name-candidate:aaa477862ba94af5e248cdd963207e7ff10cec4fefcad975ff433ad934eae0c5"
  ]),
  ("name-candidate:5df29640d86cf0ab44d21da107b115f2f0364fea7a2fcadff9d8393ed8aecb8a", [
      "name-candidate:395d1800c8d51993d4b2237fafeb890254def531809848efbbf926cc9e14ba30",
      "name-candidate:5df29640d86cf0ab44d21da107b115f2f0364fea7a2fcadff9d8393ed8aecb8a",
      "name-candidate:795f7d4b2f06220d9733de8ac4ead8c3a8dbc469f429aa8fd1f46ebfa297f463"
  ]),
  ("name-candidate:d26a7cc3f56111bc9e68f8e7d41cc565729ef56d26f540e448c8cf10f19ee001", [
      "name-candidate:0a483f927033a910a52e78b19a1c91bf57575d0f712f4c6036d017a1e6527502",
      "name-candidate:19ef6667f1159a7a7dd4144b00a5f7989b5f2fe8f609a9fc20c170e80ddd2e66",
      "name-candidate:d26a7cc3f56111bc9e68f8e7d41cc565729ef56d26f540e448c8cf10f19ee001"
  ]),
  ("name-candidate:108140c904bfe0a6f6db1ee721096fef476bd26bfd7dc52e0b16d55bb130867a", [
      "name-candidate:108140c904bfe0a6f6db1ee721096fef476bd26bfd7dc52e0b16d55bb130867a",
      "name-candidate:ebcd5127315b2825cf0ffdb017a0209516b5ebbf9dd2d129d389776b7005cf57",
      "name-candidate:f7ee8232178228c933fd9b508b3e30575d38373eb6667bdab1950f0d909ec556"
  ]),
  ("name-candidate:200c702838d7745a2a68545a589b88760f58ff2f279bda1c32307c435344c37d", [
      "name-candidate:200c702838d7745a2a68545a589b88760f58ff2f279bda1c32307c435344c37d",
      "name-candidate:759583229de53a6636e45ffd9d08869c873cfd41167bb2336d58d9ba515855ea",
      "name-candidate:be9da2fb9200c627fad58cc03f7398d5b7e62fdc420bb88832490d882247fb7b"
  ]),
  ("name-candidate:1a0bff3a51fb8c71d9f1e72f7cd7880f586f183163f90b4c7997b6895315fb52", [
      "name-candidate:0d10de5a7fdedf438610e483a206f97cef4c5ed94d636a9991f5495ba2788f0e",
      "name-candidate:1a0bff3a51fb8c71d9f1e72f7cd7880f586f183163f90b4c7997b6895315fb52",
      "name-candidate:796ecd68187ab8612d74aea8dd9649f99381e7888724760301b72033526a7a65"
  ]),
  ("name-candidate:9afd50c4fe883031f67de82f79994bb2db65a19d77b6d3231597824b40603824", [
      "name-candidate:559675b9a80af6e58541de6f4289552f71f5ac1bb42b6753296e1ac210233f1e",
      "name-candidate:707d8e676db8ae5ca756b9644498063db968a618ea46bdc4a18e69deafd4a226",
      "name-candidate:9afd50c4fe883031f67de82f79994bb2db65a19d77b6d3231597824b40603824"
  ]),
  ("name-candidate:038dad9b526853e3e4f69fd1b557165e08e4fe19666c9b01a4d102ef20ac6350", [
      "name-candidate:038dad9b526853e3e4f69fd1b557165e08e4fe19666c9b01a4d102ef20ac6350",
      "name-candidate:248ddb25bf39b444d025894d282a4ca74dd0c7c1c6a38bb3102c6e64c2fa7d4f",
      "name-candidate:2fd8f9c2974e3c014341c1a92438ffe35b6e97dabb9e801b71db585701f18412"
  ]),
  ("name-candidate:1ce942aeb544db1bb1a29c8ee69de86a4921e670e575804ffde8bb2aa521cd35", [
      "name-candidate:1ce942aeb544db1bb1a29c8ee69de86a4921e670e575804ffde8bb2aa521cd35",
      "name-candidate:5d5228bdd951e59a74acd9c4a2149f7423ff15a2c00ff14a9c7889b3d83cf271",
      "name-candidate:87989aaef800eb292854f66225dd2372a6a4a3590dda02abb5f969d5feddac9b"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L43699).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
