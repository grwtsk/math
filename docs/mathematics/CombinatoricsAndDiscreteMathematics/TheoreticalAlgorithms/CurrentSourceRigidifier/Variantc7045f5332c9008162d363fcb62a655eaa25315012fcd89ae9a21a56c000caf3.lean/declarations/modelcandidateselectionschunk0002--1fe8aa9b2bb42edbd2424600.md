# modelCandidateSelectionsChunk0002

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6cfba955bf1cc90780d75c67abf25f344d8264f5b2db18e838a1560f374d5e01",
  "kind": "def",
  "lexical_name": "modelCandidateSelectionsChunk0002",
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
  "slug": "modelcandidateselectionschunk0002--1fe8aa9b2bb42edbd2424600",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55498,
    "line": 55175,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1fe8aa9b2bb42edbd24246001b16d58f74c3c7106217d5a2b239ef89268b8a26",
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

Occurrence: `declaration:6cfba955bf1cc90780d75c67abf25f344d8264f5b2db18e838a1560f374d5e01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55175–55498.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def modelCandidateSelectionsChunk0002 : List (String × List String) :=
[
  ("name-candidate:2aae03fe9330738633191314d8bfad4fcb98c34d39c79cafef17568e964435a4", [
      "name-candidate:2aae03fe9330738633191314d8bfad4fcb98c34d39c79cafef17568e964435a4",
      "name-candidate:7576e30b3199f9fe78ab6d7499d7e236a5280d716dcbb6ffb4f6fa521e610eea",
      "name-candidate:dcf709c1dfe38fe844789807d18bd45990c488464aae1f357f718029a57903ea"
  ]),
  ("name-candidate:065c05bb919641e84cc499fe78466e8a2d04aadb0fe3a35d51415c35f282341d", [
      "name-candidate:065c05bb919641e84cc499fe78466e8a2d04aadb0fe3a35d51415c35f282341d",
      "name-candidate:17753a7a077e63843ba8d8130fff0ca43b1a875afc24b27a8f982c4be711a46d",
      "name-candidate:e723984df02df9b69b13add98a93bc18ff831cc6baf5bc2c130c95e581f1a773"
  ]),
  ("name-candidate:5327c0d2a3d4de92f279ddcd5e5a369e302d350e984879dbaf16b35840c3a85e", [
      "name-candidate:5327c0d2a3d4de92f279ddcd5e5a369e302d350e984879dbaf16b35840c3a85e",
      "name-candidate:55e51e473054dea7b72a52d39a9961829880585dad5bebd9bc53b1f73dc9f4ba",
      "name-candidate:a958569df54de1a048a73c44d0f07ac7ef5ff7b27ad9e56e5d0a648d379c290d"
  ]),
  ("name-candidate:c7ef7a703f278b1f33fb2f9d46fe31d261be58b86b7f275bd9c3a86e2c0dc7bb", [
      "name-candidate:35eb42c2efbc1fe61533b1b24b4ea98bb9fb075960b26d9e98a0698ce0b83d87",
      "name-candidate:677b853af67fbd038623080e322cf8c1fb9e0c49b727dc64192d38ab987bbe66",
      "name-candidate:c7ef7a703f278b1f33fb2f9d46fe31d261be58b86b7f275bd9c3a86e2c0dc7bb"
  ]),
  ("name-candidate:edb5b2278dad327af93a141a0193d712aed4304537903d6da19d26081f04e7e3", [
      "name-candidate:14dba86e18dd41fc03f32afe80ea31a51e5fc5f95cac61b0f3f9e47084a5b509",
      "name-candidate:99cd11c9bc608679ed3685ef6529cede799fd64b46e0ba409f4d7e236c3ddb29",
      "name-candidate:edb5b2278dad327af93a141a0193d712aed4304537903d6da19d26081f04e7e3"
  ]),
  ("name-candidate:a5073a6d9383561691f6916f21a465ffe2a82eb65aa65296daaf18ec5ed4a832", [
      "name-candidate:1484be4e134e35613733ef36fd1752aa5a1e1088104c77e4706e69eeff3906d5",
      "name-candidate:a5073a6d9383561691f6916f21a465ffe2a82eb65aa65296daaf18ec5ed4a832",
      "name-candidate:fbfa7e1859325c43485c4bee74c87000411748ee59c678aa0d839235336c3924"
  ]),
  ("name-candidate:ae6aa82d4f5804b6a4e184a2d183eda70847419181c8560be43a2b5e57910d64", [
      "name-candidate:4bc112836f914c506b001157d876a8363a7b2a77239b76211b681d2361c1f69f",
      "name-candidate:937f47c25106d487eb3290797d07d803e3842a6d6d09b92e7b9c4f472a32c8d3",
      "name-candidate:ae6aa82d4f5804b6a4e184a2d183eda70847419181c8560be43a2b5e57910d64"
  ]),
  ("name-candidate:8eb0331465592501ae0ae2753d9230d5fd080cdcedf1e8fecdf2acca715bf185", [
      "name-candidate:4abadcfa6070200d03ef7a6ee33530788debac2e1a3f17635bb9014b62387e41",
      "name-candidate:8eb0331465592501ae0ae2753d9230d5fd080cdcedf1e8fecdf2acca715bf185",
      "name-candidate:ae14965142e8ec6cbcdec892810422d4e0ae2ee48f8503f083d6c18d6c30f0be"
  ]),
  ("name-candidate:f883e3847fc9b77cd3d273a0e64a60ddf649067f2a8c535c3642034e567d2242", [
      "name-candidate:c1f00122fa72e2f94fb70e859f86465acf1d825e7b8455476b8b9c8018c199c1",
      "name-candidate:cbc518003070cabeba78da32647e2bc11a0a2b2abee906fd2fde46ecb49f0e47",
      "name-candidate:f883e3847fc9b77cd3d273a0e64a60ddf649067f2a8c535c3642034e567d2242"
  ]),
  ("name-candidate:83126a13eadff30cd4807b75b7efe6e095716104ad683738c421a15b49002b7e", [
      "name-candidate:03413528454400cdfc078f60a223e61f161f938f77ccd0d02eb67076f4e59264",
      "name-candidate:83126a13eadff30cd4807b75b7efe6e095716104ad683738c421a15b49002b7e",
      "name-candidate:9e5e4a81a967c261b57eb473ccc135d86392767f17739e1a0af3d26a6ea6a538"
  ]),
  ("name-candidate:088d708cabc971c222002f0d376490714b9c2afa8675143ca02377ac8c9811f1", [
      "name-candidate:088d708cabc971c222002f0d376490714b9c2afa8675143ca02377ac8c9811f1",
      "name-candidate:9a7b41b04c74bd5c65c6453883ea8a57aec82b5a48c5168980f57adc810957b1",
      "name-candidate:a0744594d627220b372570bdbd242dde104a16799e1fd51e20c9e49e884c3d82"
  ]),
  ("name-candidate:c9ea37f30e17523ee1e34eb68b2cd1afc487973806e09f774313204a16f2f8af", [
      "name-candidate:4a4120d108bf3de3914df40821f70137a54736220565d176fed60fcd5c699622",
      "name-candidate:803194d5fb4fa54b41e334f39c2296270f5c34066da4a6d63e7f07ffbd9519fc",
      "name-candidate:c9ea37f30e17523ee1e34eb68b2cd1afc487973806e09f774313204a16f2f8af"
  ]),
  ("name-candidate:74d30594617c79d4e821a46bd511076a4561e2f3937fffcbe13a7552b9991ed1", [
      "name-candidate:0e2d96a96fbf21215e1f9b5f1930505d9fe49c560ba799a9535ff1b3683a088e",
      "name-candidate:74d30594617c79d4e821a46bd511076a4561e2f3937fffcbe13a7552b9991ed1",
      "name-candidate:8b1be718a6d608dedf9f0506e151cc6a012b1f80df5e06544587466f5ec5df69"
  ]),
  ("name-candidate:daa60984423d0f641010cda00a2ebdaa3fd2736660e57855960ab04fb7993484", [
      "name-candidate:159958acbb24666a4dc408a9a57a12949bd1da79865fb16c7bc9b50c4dc470b5",
      "name-candidate:658be1d526e21527acde1e18f1b414384c68871ec99efc90b4456086dd993fc7",
      "name-candidate:daa60984423d0f641010cda00a2ebdaa3fd2736660e57855960ab04fb7993484"
  ]),
  ("name-candidate:f8080c844d9191452e4c2b0cc5c88adf20822dcf3c3d96b5d6663cdf45e418a1", [
      "name-candidate:9bf86fc4369b278c7181e33ad3bdf1a87f178cc6e66e18c8ed8dae875f8f763d",
      "name-candidate:a8be4a6b5ea80cbc22431c8cf6eb22b5c2f4a745e6c219fe674c8085666ae1f0",
      "name-candidate:f8080c844d9191452e4c2b0cc5c88adf20822dcf3c3d96b5d6663cdf45e418a1"
  ]),
  ("name-candidate:67416558e1c40eba36f4b89ad531a366a889c4213cb23b92670eb07b36474401", [
      "name-candidate:01d1132c4a0c5a24eb59e225beace4949490d026c1d048aa8d979f20f5bd9081",
      "name-candidate:67416558e1c40eba36f4b89ad531a366a889c4213cb23b92670eb07b36474401",
      "name-candidate:c1d42e3a0360a45f20b8c811b4043fa66b57f55531f670a4ef8064f87f7300a2"
  ]),
  ("name-candidate:f78c48b0aa8a62321c208818676b3a0e5586ff84edd253a3892480e54a078fe5", [
      "name-candidate:c85d19d1e14aede8237307e06ae34548c2f77bb02b0278aa6f4c16b84e569d32",
      "name-candidate:d94763e24509eef481419e8183753506af04b483277c10482228b7c1fec7d4ea",
      "name-candidate:f78c48b0aa8a62321c208818676b3a0e5586ff84edd253a3892480e54a078fe5"
  ]),
  ("name-candidate:0f9739bb81db8bdf6b473a23f1805be3942440cd4cf609e96b15ae94182e77c1", [
      "name-candidate:0f9739bb81db8bdf6b473a23f1805be3942440cd4cf609e96b15ae94182e77c1",
      "name-candidate:4b856e60339397c253e9c47b3879bdddfb157e699962a495c0a1265864465679",
      "name-candidate:e8c4f9da5797bc9cf8269c73936af053faa942fe3f54d2bbeea3c145f641185b"
  ]),
  ("name-candidate:9820d80b0769dedbc302cad38e94fcdf3ff246b02da560fdfded5c8456c98690", [
      "name-candidate:2b0697ee64a1f772bbf5f009d85deba0bbe43706f7d4fda3d699dfc2ad4a9be6",
      "name-candidate:9431a6c476f7839e2664bbaf534aa483e7787afd55a7260411a1167a3b5e5b61",
      "name-candidate:9820d80b0769dedbc302cad38e94fcdf3ff246b02da560fdfded5c8456c98690"
  ]),
  ("name-candidate:a1e7a55abc3b01e331f9c84940aa0d0bddc7d08f866563cc1d32171bbc069547", [
      "name-candidate:420e54b7017bb3e1df33c0a0c0249e65a83d9a03a5214aa6de4f72861ae46831",
      "name-candidate:89d09780617c80324aa2854b9a0545cbf76519f7f938f2292f2a6ad9dc07b187",
      "name-candidate:a1e7a55abc3b01e331f9c84940aa0d0bddc7d08f866563cc1d32171bbc069547"
  ]),
  ("name-candidate:fafadb23075251449a9bd8233d09b1ca9a00ede878d81448cd9cae22d66e6bca", [
      "name-candidate:6dcd649fca6bef438a93dc4009eaefb2dad697d7103adee6b73807b282489300",
      "name-candidate:ecb264d12cbb2a5a667f4324c7644c345bc0beb7c963a6ec05b4446fa05552a0",
      "name-candidate:fafadb23075251449a9bd8233d09b1ca9a00ede878d81448cd9cae22d66e6bca"
  ]),
  ("name-candidate:efae66348f52515d87ceaf34ce55fafe7f84e3b89734942b141a90201b46c2da", [
      "name-candidate:0911b913755c30fbbe4b9dd1320f2e46ace749f5721d497bf971e6aa984667d7",
      "name-candidate:5cc88fabf25f9d0317a25f529faceba8059d27130110ca5c36f2e3bf79a78ba1",
      "name-candidate:efae66348f52515d87ceaf34ce55fafe7f84e3b89734942b141a90201b46c2da"
  ]),
  ("name-candidate:e7d9d4c590f68b36980af70151a0dfb4570465a241f4750cec64706d465a7c98", [
      "name-candidate:45438716ab63581b1fd6f4136028c276482229b6a9c444377cff824d4259763f",
      "name-candidate:5bbbcf9aa58f70f12db18285c931a9775b6d8956202cba267cf61eb7d68dc313",
      "name-candidate:e7d9d4c590f68b36980af70151a0dfb4570465a241f4750cec64706d465a7c98"
  ]),
  ("name-candidate:884eba7f20308fe7a346724d19446de441645069d2b8fed0e511064878f15bc2", [
      "name-candidate:378e7fce054c44f1c126465e7700a5d1c03de103896a6aa7ba58273da5fe58b3",
      "name-candidate:53cdb880c28c72c551ef1362734848bba8f045f97bd5b5e4bd728cfdbb92cb3b",
      "name-candidate:884eba7f20308fe7a346724d19446de441645069d2b8fed0e511064878f15bc2"
  ]),
  ("name-candidate:a582d1b93d316bdcddb658dc3d8abf9df1ecee2ae0f209ba6875666536f5e836", [
      "name-candidate:8849ef9288863f4d13e853a3fab2e3409e9483b713001951732133270ea38725",
      "name-candidate:a582d1b93d316bdcddb658dc3d8abf9df1ecee2ae0f209ba6875666536f5e836",
      "name-candidate:b0f3db9b3e48185a7d94bac721eb176c2347fc8463b1cb121ae0274990c1289b"
  ]),
  ("name-candidate:028761c398d5bd57459da961d47a7d50c9f17422b07f56685683637f03564a4d", [
      "name-candidate:028761c398d5bd57459da961d47a7d50c9f17422b07f56685683637f03564a4d",
      "name-candidate:935b223a0b8ae2f9a343913da3df1b321ef4fb9cd90afdb999d9238d570dcce9",
      "name-candidate:e4f091ca5b38ec487570832a859f8234514c1ce3514a27f54cd663bd7c715c54"
  ]),
  ("name-candidate:a7bc17d1986f44d436677d549091087a75d47145f5cae5deac11cbb6944214e0", [
      "name-candidate:a7bc17d1986f44d436677d549091087a75d47145f5cae5deac11cbb6944214e0",
      "name-candidate:b6d9f7e3c729c5d0fcb860cec9e0a10be1eef2d30229d1c0864afc4ff4abab4d",
      "name-candidate:db8073f8e19582ccbd8b72273d525c297ca15a6f86a9bfb6fbff290fa128e2c9"
  ]),
  ("name-candidate:2dc7a319ae6ec508e475a924473f551d71cd64edb242673de0434c4fd6104255", [
      "name-candidate:2dc7a319ae6ec508e475a924473f551d71cd64edb242673de0434c4fd6104255",
      "name-candidate:367b89cccdf652647ecb293d655ea971b5e6e06d537c8f1fbce43061d7f408cf",
      "name-candidate:77698e07191265253c586fc86a625ce786ba02fef5accdd40d5f44edf7c01814"
  ]),
  ("name-candidate:7631b19c920c6b78c90c5f65d98bf3618f01d235b8237a64391d90a227f4a4d1", [
      "name-candidate:6de1584851841c95dbe8f44a5e77a2a93059c35c1774f7e851d41f58d5495891",
      "name-candidate:7631b19c920c6b78c90c5f65d98bf3618f01d235b8237a64391d90a227f4a4d1",
      "name-candidate:9ee0caf6c73bec70494928014c5fde1c14916753fc0eeddc6933e22e6a147ca0"
  ]),
  ("name-candidate:f9fdc957a12155a209def3ed9e0840f37146da3f374ba1087a59ce4b2139ca15", [
      "name-candidate:22e5ce4daa1275b19b647fae53d0d8e886a9e1cfad64171c4b2ba7a00f85f1ed",
      "name-candidate:b47ae73554c0b356feba04234219fe101bdf1f73c4d3a859c9ff92c0d04a3f87",
      "name-candidate:f9fdc957a12155a209def3ed9e0840f37146da3f374ba1087a59ce4b2139ca15"
  ]),
  ("name-candidate:0273f35cdf713ba438263fd9657a7f37535a63e85d8026487c1b6a1b518223e8", [
      "name-candidate:0273f35cdf713ba438263fd9657a7f37535a63e85d8026487c1b6a1b518223e8",
      "name-candidate:40cae331b5e71a7b21ef24497d7cf1772802a9f52ca4e8f7d59c872fbccc02f2",
      "name-candidate:b8653d451c2cbfa2d8701cd772dc84eaeee1a64a42ea24e5a76a01d6b780ffde"
  ]),
  ("name-candidate:83fe8d57ae3cadf925d25a9ab5145d423242a7507ed1e44dd2c901b781435921", [
      "name-candidate:65625108e02b520487cd9251cbdd99d24cfee3c25e7bfa026936627b7bef8ab9",
      "name-candidate:83fe8d57ae3cadf925d25a9ab5145d423242a7507ed1e44dd2c901b781435921",
      "name-candidate:cde065c933f1cbda686283d6eeacfc1969e5e76df64863dfd1dfdf9f37382b29"
  ]),
  ("name-candidate:b18b973991b92eaf9d0379e56f757f44b8d5795634013e9de331cd1736090ce9", [
      "name-candidate:4091878a6cc27b7f825abd8a609b1dbb0423c0e17a5624f6d51983d82d835ed2",
      "name-candidate:b18b973991b92eaf9d0379e56f757f44b8d5795634013e9de331cd1736090ce9",
      "name-candidate:f969161ecf2a26098e277a6c59c73c5ed7aecaae69867727b22a13a0e3aaae31"
  ]),
  ("name-candidate:5c0fd673e12180ac8c4bca285419a0f4c98fe7fc6f1aa1a0f9d1c85c6e18727b", [
      "name-candidate:519cd3b244aa53f1b1286a62998c08db20debfe91fe6d92cc67c9d6c6c218e6a",
      "name-candidate:5c0fd673e12180ac8c4bca285419a0f4c98fe7fc6f1aa1a0f9d1c85c6e18727b",
      "name-candidate:c2bb65ccbe04855aa704dcccda915c43116c25ad4bb97a78ba16ecfd035ae6db"
  ]),
  ("name-candidate:e75f4cc6fa5837d2bb2b4c7313cbdc6e5056db5b7fb86ea9ecbff3bfad7c0f38", [
      "name-candidate:735941992043c0a020cfb93dbe0bf0112614ead8652e4a378b0101a97b6d4207",
      "name-candidate:e75f4cc6fa5837d2bb2b4c7313cbdc6e5056db5b7fb86ea9ecbff3bfad7c0f38",
      "name-candidate:f544e74c76a7f00692636906e39293a77d129d90104b760698dd23c55c1d5ec8"
  ]),
  ("name-candidate:7c849dca8a71ddc125f84a04b050f692b7afabca174721ff787fa9b22a96442e", [
      "name-candidate:264b8968ecc3fae71e1af664fac74dbfd5b7affcccc870daf951c0803aeb09b4",
      "name-candidate:7c849dca8a71ddc125f84a04b050f692b7afabca174721ff787fa9b22a96442e",
      "name-candidate:ac52f801ee7fd8e02b99e8efcc213b103e5ad72f54286a6d605f34a849ee860f"
  ]),
  ("name-candidate:ad7a541719bb3a414d08d63c95b3960a5c3da9c1c030352cb53b25377b489e32", [
      "name-candidate:434c4880081f4d75d6812b2037ddb8e550aeb7401de01f42a489dca4d92accf4",
      "name-candidate:ad7a541719bb3a414d08d63c95b3960a5c3da9c1c030352cb53b25377b489e32",
      "name-candidate:e78e24213d1e658ca3f0a5599a1ab42b92040943cba54c14a4fb0c64e1718a19"
  ]),
  ("name-candidate:c8773d4da5dc1a55d248275207803903a700d4de9288bc7d2786ae8f985165b0", [
      "name-candidate:989f34840165940fd5cdefc383f721fee84ac3a8f6fa5815d1aa2cfc648e878e",
      "name-candidate:c8773d4da5dc1a55d248275207803903a700d4de9288bc7d2786ae8f985165b0",
      "name-candidate:cd7c87944c8185bc6e0ed3a6577670480dbfbfc6b77dc372dacefb41f425e5ac"
  ]),
  ("name-candidate:37e7846266f3749deaa0b7ab43578f7da2baf8403db1a7662ca0b2293e26cd68", [
      "name-candidate:26076f05802786df45bf2a4c2e89bfbb3177ce0331518755bd62d01d55c12088",
      "name-candidate:37e7846266f3749deaa0b7ab43578f7da2baf8403db1a7662ca0b2293e26cd68",
      "name-candidate:d2bdf35d3c5ee79f630a2ca4ec8f96163d4bd1ca15db861c1529c3cd2a836fe3"
  ]),
  ("name-candidate:01b2a51c51d922ce853393e3dc7bce48a09f0f63322612622ce098972b661fd4", [
      "name-candidate:00d74839529e5961bfed17cfd59b278c37e37be7d71632ec46a7d4b0cbcb2183",
      "name-candidate:01b2a51c51d922ce853393e3dc7bce48a09f0f63322612622ce098972b661fd4",
      "name-candidate:cc84f2abe71b48b2a64c22728db9c4eff7b2e8c7383f0021e81525380ce5dd75"
  ]),
  ("name-candidate:3c57848a52294ab0ccb9868f52897ccbb5e84c8cd7a925308283395411222b82", [
      "name-candidate:1a080d5b52efabe8f7f70b99124028982c752f6658e5ef4aa84a9fd703ca00dc",
      "name-candidate:3c57848a52294ab0ccb9868f52897ccbb5e84c8cd7a925308283395411222b82",
      "name-candidate:ac7a692d241cfba92e012444121e87d7986aea2ab1c3090f39e127760e6bc6f1"
  ]),
  ("name-candidate:eceebc0b6066d7dd7508673a1866cac37f4aa7e57c9b290d177d9e46d0f3c29e", [
      "name-candidate:0bae3baef7f29d4e02fe901189e44a1c38257b97f9479abd54f12d79046befc8",
      "name-candidate:5f1420cc5cd7568bc5f16114a25605dd0c800a546dbfd00d3811d0231cd1e21a",
      "name-candidate:eceebc0b6066d7dd7508673a1866cac37f4aa7e57c9b290d177d9e46d0f3c29e"
  ]),
  ("name-candidate:4b4514ca62e803f09bf8289e4c1edfb1bf850a0f4d64016ec885ba720e7c5986", [
      "name-candidate:271ce28cf4e403320597c38204f7649ae979948292817d08157ab0a997c9de29",
      "name-candidate:4b4514ca62e803f09bf8289e4c1edfb1bf850a0f4d64016ec885ba720e7c5986",
      "name-candidate:de06e3ac7012873948167e0ea014a6e44b826423ce82b5a05cc8a8d40ed888de"
  ]),
  ("name-candidate:318274aaada5b137dd8ab6a4372dc1115d4da1a98a090e889151580efe2095bf", [
      "name-candidate:318274aaada5b137dd8ab6a4372dc1115d4da1a98a090e889151580efe2095bf",
      "name-candidate:a2b57fb8cab7417c5c51a159f0a02cee88bdb0ab2ef11b8d1387d6c165578d28",
      "name-candidate:c6cfba6350417c5cbe5e5392453fe391e579d50f1add5b0841fb62908f1f79ac"
  ]),
  ("name-candidate:41ec13f58f2ed8b22970d5cef9999aa283f26f5b23124476e3562b4815acbf9f", [
      "name-candidate:36391845f6649692eec4a81f046f34084744c2cde01042aa8eb35573f4d987b1",
      "name-candidate:41ec13f58f2ed8b22970d5cef9999aa283f26f5b23124476e3562b4815acbf9f",
      "name-candidate:8afbbf04327db27b4d5ecd62d8b418cee42a28478ed68bbe459a271415b2691c"
  ]),
  ("name-candidate:3a4cc256cbe25484160f6d198a1a1d6d73df82f396d2da2822c3e9e3f048c2af", [
      "name-candidate:3a4cc256cbe25484160f6d198a1a1d6d73df82f396d2da2822c3e9e3f048c2af",
      "name-candidate:572eb5b4e89b8af1e5329fc66f70ebc65af41375cf60d4b0bc70e0c1354fa45e",
      "name-candidate:b60f5df35fe1fac3d07338569d25fa7215d8fcf11923e0356ef29b78bfde318c"
  ]),
  ("name-candidate:8482907d202ef13e3788f2d1d2d19c080c3d607cbb1c515f79f24a3203d52c07", [
      "name-candidate:04e12bbc547b6d81964a965fd62df7eebd307a791a223d4ac8bf631f480d15d3",
      "name-candidate:8482907d202ef13e3788f2d1d2d19c080c3d607cbb1c515f79f24a3203d52c07",
      "name-candidate:e1378ea2eee054bb753a12a1753495913315d3cb3f77e46d3b28f10d0f98e005"
  ]),
  ("name-candidate:bbd562a91c3c1ac641d448641c3262fb8a1c41e79904bf608fc075acc7fee28b", [
      "name-candidate:bbd562a91c3c1ac641d448641c3262fb8a1c41e79904bf608fc075acc7fee28b",
      "name-candidate:c3113e5f0e70be82d10b170a3fddea46b0c9355cd8749c5e5659da9e5804c5e4",
      "name-candidate:e0f0dc8152b8b22a3548cd2ca196a2380843d3ed0d81045305e6b532c6db9db0"
  ]),
  ("name-candidate:775c037ee57cf669f3536b1ad6038dd37bbe7d6d81a5cc61f3212e6beaadd17f", [
      "name-candidate:775c037ee57cf669f3536b1ad6038dd37bbe7d6d81a5cc61f3212e6beaadd17f",
      "name-candidate:c28868b34871dc63ada8a0586dfa3805b7af457d396f58fb4898a90c9ca8c7ef",
      "name-candidate:f6199f32907705f25f9041ac4ea20b667b00a4794b5df8fcddc015115fa213cf"
  ]),
  ("name-candidate:2c6c24ebc9e8f2a107b21d99835eb55a609f04c75a95866651ff4cf01276a12d", [
      "name-candidate:2bde2d55792efc34e86abda102959634bd57bdb4712bf59338b91783b036b343",
      "name-candidate:2c6c24ebc9e8f2a107b21d99835eb55a609f04c75a95866651ff4cf01276a12d",
      "name-candidate:4951a201c38c89cc0c40bb327c29c87543a83aad0cb9a7003f053c1a5ca1844c"
  ]),
  ("name-candidate:6d2eed0caa2a853530b9d201aa9a0b21e8308ffa9a5e57fc1d5f008eea8e7c35", [
      "name-candidate:6d2eed0caa2a853530b9d201aa9a0b21e8308ffa9a5e57fc1d5f008eea8e7c35",
      "name-candidate:6da301b069dade67648bafcd933999218accfd918c3746f51b81c46cd4d4221e",
      "name-candidate:d1f1d8475c1fc17cc4da110dbd02b0b171f6df3526d853c7f4849f20e2cef298"
  ]),
  ("name-candidate:5f192aeaf4fd0da041cdfbd198c63011a88d5074219c458be65e371fcbfc08d3", [
      "name-candidate:022cf7ea68be2b4ea50cdc7efd564792ceae4cf75e76be2fec6150dab943d16b",
      "name-candidate:5f192aeaf4fd0da041cdfbd198c63011a88d5074219c458be65e371fcbfc08d3",
      "name-candidate:d2a665093ae05f4554b3f49119592d624b0e116ff8013699a148d20bf197210c"
  ]),
  ("name-candidate:5fa71400b20136273311354911275572cb9b4a5ad5aa54a57db9938422b5d457", [
      "name-candidate:23fd80c696f3e0c3c87b0e1be70e5d2f9acac425489cace524da85cbf49adf00",
      "name-candidate:5fa71400b20136273311354911275572cb9b4a5ad5aa54a57db9938422b5d457",
      "name-candidate:7f51b1783fd8f1b035425b99c49a70854d58653c3f0181cecb0b5b3b1b56d4dd"
  ]),
  ("name-candidate:fc023e08e50a50b261fcf6a02ca150cee51af8091136fc16cc02a7da2fb9cf2b", [
      "name-candidate:4f98de1ece4deb95062ad220b75d31728679e08ae8a046f61e1627964f7a3443",
      "name-candidate:b4f24072d59d05e8e656706d31d526eb99d30c205ce137fe1112b11295922e93",
      "name-candidate:fc023e08e50a50b261fcf6a02ca150cee51af8091136fc16cc02a7da2fb9cf2b"
  ]),
  ("name-candidate:cce745a5baba7f75e6f2c7bd326f648b97c861a03e7aeb087cf32eb0b8e9985e", [
      "name-candidate:0bc0235bca800bfc4d94c57f51519817aa9b24f1e0a8e08c434911b42c0980c0",
      "name-candidate:cce745a5baba7f75e6f2c7bd326f648b97c861a03e7aeb087cf32eb0b8e9985e",
      "name-candidate:f5c0a5ffecdc069afaa3604041ba34e430467c10ae6f60545fe3436c6dde20bf"
  ]),
  ("name-candidate:efd806d549a14f61908980dec9ca5284f62d717b8692da587d785cd0eef9f7d5", [
      "name-candidate:605513f9a95cf59596f0177b9e7cbe1fb0d14cda91300c31dce86562a66959f8",
      "name-candidate:8b2e19cf903fe879114c4f419576f5a6e59c3b31a20ef1756954443510b262b0",
      "name-candidate:efd806d549a14f61908980dec9ca5284f62d717b8692da587d785cd0eef9f7d5"
  ]),
  ("name-candidate:147084de5209ee7125ef661a2f3a55c101d747ebca9bf6a6bbedcc9bf13f092e", [
      "name-candidate:147084de5209ee7125ef661a2f3a55c101d747ebca9bf6a6bbedcc9bf13f092e",
      "name-candidate:a1f5482efe011269e90de8f30d373d984efa340eff0623a608b6fbb148e1f490",
      "name-candidate:d08f69600f7c55aa97fefebb9c936bcadaeaa0c872d67f0a88c02f90bc030632"
  ]),
  ("name-candidate:e684662c938b423fe88d1b266b24d8ba4a6c6d30b9491d53e17dfef449c452c3", [
      "name-candidate:cba535d968f8ac0bca199baa5c581ef135e1f08a931f449a3924051c19f0677c",
      "name-candidate:cdd7a8925c591c14525c2e73dc24ea05b358d3a287977938783f96bd8a1dbdf0",
      "name-candidate:e684662c938b423fe88d1b266b24d8ba4a6c6d30b9491d53e17dfef449c452c3"
  ]),
  ("name-candidate:d47a51b0bb4bf67d862450459de052a804a63d727804411fe74a0f13c999ec90", [
      "name-candidate:a77884f076e9f0c72f250d32c119036b31c8aad93ad66b5eebced1f75a965861",
      "name-candidate:b0309e25cdcc2678e971658b29af4fabb021e8868e6dd2b78d1cf4d1415704c3",
      "name-candidate:d47a51b0bb4bf67d862450459de052a804a63d727804411fe74a0f13c999ec90"
  ]),
  ("name-candidate:a4f0cdaac032d7371dd1c4049b431befa318f098acc5ebfc62792ef57db40894", [
      "name-candidate:9d9b15d16e188742498b45a0b47fd64c72a889a2e6dab8f6d23431e9f35a0b8d",
      "name-candidate:a4f0cdaac032d7371dd1c4049b431befa318f098acc5ebfc62792ef57db40894",
      "name-candidate:c488843e38d4f7e03b2478c1672a625b96e73ed12f7711d3f2b1c30c17a2a5c4"
  ]),
  ("name-candidate:19581996ddb8fcdb5861cfff0a477c53b363f17d6abee6da9dc2201b09a9be64", [
      "name-candidate:04e33c8925194716f040dbcb881f870a3f42d333376657af97f2bb4844729018",
      "name-candidate:19581996ddb8fcdb5861cfff0a477c53b363f17d6abee6da9dc2201b09a9be64",
      "name-candidate:b54944ae6a9a7b9a1a23e197057e1e823deae38743b53cb30f4dd2f05e4a8ecf"
  ]),
  ("name-candidate:056858fc648af4d15bbfc2d4a289ee3373be84e2cc11e9d23ae3056542d71bf3", [
      "name-candidate:056858fc648af4d15bbfc2d4a289ee3373be84e2cc11e9d23ae3056542d71bf3",
      "name-candidate:40c24144d8330e98c1fe2adaf5a3fbf607a8de96d637f722d2607714ea1ccbe6",
      "name-candidate:f38ee58e3671b6d9b667ac6db473d4909c3d4b5b333bce09425027bd8a201ad1"
  ]),
  ("name-candidate:d0ea62b56a9eb966f2fd2cb3b35523194f8efa036a446480add85249056ca8c4", [
      "name-candidate:c52097f68acb4c84c1d0b26071c14a2b848bece8ab7173d78779ec859c615357",
      "name-candidate:d0ea62b56a9eb966f2fd2cb3b35523194f8efa036a446480add85249056ca8c4",
      "name-candidate:d648bf6417c634d3c62ec84c460caafd290377e59f29cbe8258b07f18fc07c87"
  ]),
  ("name-candidate:225a387ae3d4a485396b94dd9b8c9be5ad1dd8830212b73e8ab5c19fb678a3d8", [
      "name-candidate:225a387ae3d4a485396b94dd9b8c9be5ad1dd8830212b73e8ab5c19fb678a3d8",
      "name-candidate:709f8aab237a25e6cd1082f3bf833beedb7114c4916b14bdc756d4e60a9f319d",
      "name-candidate:90464946c856415f442b8dd9ea011d2b00e95f975d8b48cd7503042dadb2b6bb"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L55175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
