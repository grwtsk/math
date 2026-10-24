# candidateSelectionsChunk0016

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f12c7bb1ff020ea192cff8589a548ef31c3a0ed7d337b9f675e2d93e2f7162e",
  "kind": "def",
  "lexical_name": "candidateSelectionsChunk0016",
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
  "slug": "candidateselectionschunk0016--60fa6571c83a42f826252fb4",
  "source": {
    "blob": "c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47027,
    "line": 46659,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:60fa6571c83a42f826252fb4b9e10eaa2aa6410472404a27bc9ee88e5502758f",
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

Occurrence: `declaration:1f12c7bb1ff020ea192cff8589a548ef31c3a0ed7d337b9f675e2d93e2f7162e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46659–47027.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def candidateSelectionsChunk0016 : List (String × List String) :=
[
  ("name-candidate:d6bc7d1449b8221a4ccd9ae1cec56a958f9121a91d79a54f4c58b6c305e74b37", [
      "name-candidate:8b6c5c2a4993ac9c91adba7a628d73c1cbcbbb82de4c4092061f7ee7cb4dc420",
      "name-candidate:9e6678ef8f2e13008f395778dc7b6116b1cec64559ce4c38b92e1a36be3b7d89",
      "name-candidate:a4edcb57e22c70c101afe0ac024a17d0b7e269acd6757c8697cb3ac88a7e33a5",
      "name-candidate:d6bc7d1449b8221a4ccd9ae1cec56a958f9121a91d79a54f4c58b6c305e74b37"
  ]),
  ("name-candidate:75ba2da92b9886f585b719de2238c097520b63c795cbe288cee37014380b9dc0", [
      "name-candidate:27a54d668b2d0dbfa659f3b7f733130e6255bb55c3dce153eccbdffca853b0a9",
      "name-candidate:75ba2da92b9886f585b719de2238c097520b63c795cbe288cee37014380b9dc0",
      "name-candidate:ba3650f52b9006fa5f6d6f0120f3a52bae4cf41e1b26efeb06ef4cdc18e6b2e8"
  ]),
  ("name-candidate:095c01dd151e50a05d57285c7d5004c9200c1521e7034c8c7f8a59b79323b116", [
      "name-candidate:095c01dd151e50a05d57285c7d5004c9200c1521e7034c8c7f8a59b79323b116",
      "name-candidate:b99d9a8a3a3320b41d465fe075b3962441d535a6a26ae4c5eb2df0e1c97b1dbe",
      "name-candidate:bb2124d6ac2cf80c790933e8ad49c7997e2549d432fea059a0a1ff3958e1333d",
      "name-candidate:c5d0eb5cf33a5c4fe94a16ff3189dfdea17f9fd7baf5806f718c6153ad9112bd"
  ]),
  ("name-candidate:56551db1802f15f50018be9a5e128211430ec023bd10093d903c7723482eb09c", [
      "name-candidate:56551db1802f15f50018be9a5e128211430ec023bd10093d903c7723482eb09c",
      "name-candidate:5b29a29049dc5313953a5896f0d5030233e9deda27efbc1e0f59c363f0262908",
      "name-candidate:ab8eaba70c47bca36e8eaf04224ce057a3477ee6d4d12fc226e1c99816895797",
      "name-candidate:df649a6ebb199e6aa7f5dc6ad342ecab39e7c8d14b8b202e230ff14b1da4891b"
  ]),
  ("name-candidate:f0907100a88fee2c249ad2727a6bc368922910ef8aea0447872c08e3d7c313bd", [
      "name-candidate:9a31888a88a7bc2ba585859319a67073921096a4d683fa55cf95abf075aa96ec",
      "name-candidate:c0c012c74bfa4a37bf595fed251eb81e1b12d61e9c1ebb267c95414a241f30ed",
      "name-candidate:cab6ec404166b309b9a787f92921235901e9da2ff7bd6fd024d84078688753dd",
      "name-candidate:f0907100a88fee2c249ad2727a6bc368922910ef8aea0447872c08e3d7c313bd"
  ]),
  ("name-candidate:3bddfa182471a1fd087696231d5dedd1ff810933332ebf3ef7ee326e67659a53", [
      "name-candidate:3bddfa182471a1fd087696231d5dedd1ff810933332ebf3ef7ee326e67659a53",
      "name-candidate:abd03f507edc6a97a1ad67bae864cadb014342756d3465975976a7b349d0feb4",
      "name-candidate:c7a8bc89ad6b53649fc70d6703627e7cf48fdbf7b9ee94bdc5d2b3135d404c6d",
      "name-candidate:cab75fc6ede01a6b83583f53153242cfb979ee79c4513a80ac8976bbd67fb894"
  ]),
  ("name-candidate:f3fcaac3dda234e4861e681b08df2be4ff3dfd67576e41ca62d4aee9d6a15c68", [
      "name-candidate:16befac02b65c3c77b96f0eb8f500ef3e0d746b9dd4ca474c00555b92f7a7910",
      "name-candidate:1fb264992a3a450a1d121a6c847be2c8f3868091e6688c210c89d73dbfdc1f2a",
      "name-candidate:d4cc5c3ea9b224940b4c44edbcceafe47ad07bfff571650fc4db6e95b8c230e4",
      "name-candidate:f3fcaac3dda234e4861e681b08df2be4ff3dfd67576e41ca62d4aee9d6a15c68"
  ]),
  ("name-candidate:2d876d558f099d39216519d71c38a1f3d38987d3d698e460c8a03d7792a10c50", [
      "name-candidate:2d876d558f099d39216519d71c38a1f3d38987d3d698e460c8a03d7792a10c50",
      "name-candidate:394331d906e4b04234a76ef125ce1f7b0a46d7e8b32ede2d17bff43e7b65db5c"
  ]),
  ("name-candidate:c7ad8cb23e0ad9694ef1c2d78889b66157d5773a2feafe197a7d54cbe6872b1b", [
      "name-candidate:a4b224eaab14b4dc9b9530df0daabcf0b88b9d9dd5d7322484aa676af7b818b3",
      "name-candidate:c7ad8cb23e0ad9694ef1c2d78889b66157d5773a2feafe197a7d54cbe6872b1b",
      "name-candidate:d946872b02176de70d43eed48e894dde49179f14f020f588be80909d06cca666",
      "name-candidate:ec7779a4db0e33dce48d502698ed58173b1acd8f1bd9e0d58ec6adebd320e672"
  ]),
  ("name-candidate:0dc602d0a00ac16adca870e3be8ca0cfc2561a776cdd7bf50bf3228cd91d8ee5", [
      "name-candidate:0dc602d0a00ac16adca870e3be8ca0cfc2561a776cdd7bf50bf3228cd91d8ee5",
      "name-candidate:7ab8deba0dc4b4f67d9c7ab423728e92e3e4b9fc6b437cc8040fcd8ef138c459",
      "name-candidate:8d797eaf6b114d65fe83e5e17013f3870380284964b19b0bb1511f268af9934e",
      "name-candidate:a4e88eef0a504df7c1005a5762d45d3b8683414f3f75016780e3df658288fd1b"
  ]),
  ("name-candidate:6b1aa0e1fe2a34ebaed049dc9104ef7ede8dc1d647b34cc830e7867a97a36c1c", [
      "name-candidate:3a4c30f35ff53f977ea0ece7e451997cb0f48a45963222585bac4397265940ef",
      "name-candidate:3ac64901cd9081671e4c0a163bdb075295cc4a2a145f8d47ec14ce878c8b379c",
      "name-candidate:6b1aa0e1fe2a34ebaed049dc9104ef7ede8dc1d647b34cc830e7867a97a36c1c",
      "name-candidate:8806296d69938db5f9d2c77b317ed4be33f244e8aa67d335914b82979833272c"
  ]),
  ("name-candidate:7467670c83e193c134103a932e6b158190329a0af7e80516f385d3b392179fbe", [
      "name-candidate:2ab373279b3b9c3bbef72634f71e90370fa41f9e6115df0c248423e7239393cc",
      "name-candidate:40d2e842e015603b7adde4c5d495a0f66e6d0177048a72c3e36787452367d386",
      "name-candidate:5dc56ef5cc2825e955e180ddc7d7e5292d60e70cb6827cf919a5bd2cbfd2fc28",
      "name-candidate:7467670c83e193c134103a932e6b158190329a0af7e80516f385d3b392179fbe"
  ]),
  ("name-candidate:8b5fb651f0b87028c290583b68cd282584f8d91dc047d10b9dc7ffacbe6456c0", [
      "name-candidate:06417e6fe9786752f5b08aab1064ee6bfc755bbb00d435bec64091c245c6b9e6",
      "name-candidate:42c2e4ed4ac2f8215eb90b6bf4fe5c7a697c18f675b8e0c6eed644ce43d4756f",
      "name-candidate:8b5fb651f0b87028c290583b68cd282584f8d91dc047d10b9dc7ffacbe6456c0",
      "name-candidate:b95a74b5fb1880fd2edd077146abb9f13d90a8c0cc54744e1e4fb5cc45072021"
  ]),
  ("name-candidate:3b0f3a526ef06b27b26d8a40f9947c414872dd1587e02fdf2bedaf1648b1ad3f", [
      "name-candidate:23747a40056a2fd037804333b31999eb811c24716c423f4f24a78ce640f04d50",
      "name-candidate:3b0f3a526ef06b27b26d8a40f9947c414872dd1587e02fdf2bedaf1648b1ad3f",
      "name-candidate:a1c27364ec95b9df98c1eaca077b70d5324fd1eaaaa6c1ae33fb60633923e873",
      "name-candidate:d942f32d9793b3455ed3ba47a0327e62f486fceca69e4fcf1214da37ecec05f3"
  ]),
  ("name-candidate:5fdf66264683ea40ee89c599aac86ccfa812444c7f2922b7130649f61b44e7cb", [
      "name-candidate:5fdf66264683ea40ee89c599aac86ccfa812444c7f2922b7130649f61b44e7cb",
      "name-candidate:e419140852e731d12766d1503f735381967a8181f7e55a0ec67b12e47cf0a891",
      "name-candidate:ef8e273e46c5dbb67c766731e943711297335ffbf761bb5bae049b3a9c586c96"
  ]),
  ("name-candidate:762c19f5c4e85d034a805c59484823f24ea78aeb8d4a7967dba69c8208202e32", [
      "name-candidate:762c19f5c4e85d034a805c59484823f24ea78aeb8d4a7967dba69c8208202e32",
      "name-candidate:87892dff3980ab25abaf7b968f6500a525ebcfc479ae50a728d6dbede820ab22",
      "name-candidate:a98877e4736e50dde73efdb1e728742c9cbc2bdfa8977d2a7fcc9bfe8efec529",
      "name-candidate:eefa6cefb16dfc72a2d40464b64cc3bd5e0693af8cbcebad8eb90b34fde0d9ad"
  ]),
  ("name-candidate:0a243a0c393548a16a9087c5c25ea65ab128939fa7ffaa7c905577e535cc7a1f", [
      "name-candidate:0a243a0c393548a16a9087c5c25ea65ab128939fa7ffaa7c905577e535cc7a1f",
      "name-candidate:e543d09a9108c0008d7e35d3131ce595625abfb660d089661bd7dd7cdaed84f6"
  ]),
  ("name-candidate:9407732ea6a6a34b71c97d244462a6ecd690483b7e0ca915ce8f936d8efe9b09", [
      "name-candidate:236d80104fc25ee997549bd3a875d6413004cf16571b62491af8ecf6672175a4",
      "name-candidate:9407732ea6a6a34b71c97d244462a6ecd690483b7e0ca915ce8f936d8efe9b09",
      "name-candidate:bd0500dea3ba20d90d0ae5b5ba348cf67835205c1061d016b1db01d6a0a19e30",
      "name-candidate:fb299bfc25c1a3bf4ff5ea9e87bc38e09da2d7cff486508bcda0f4d310e7764a"
  ]),
  ("name-candidate:3e6e57be79921fbfc504409163cd4077219ac18384836a40c5683ce9a4d35dd1", [
      "name-candidate:008319127d4db50165c06a74369fbf880925ae90d27995a0358b8899f68f0a6e",
      "name-candidate:3e6e57be79921fbfc504409163cd4077219ac18384836a40c5683ce9a4d35dd1",
      "name-candidate:726f7435479858269d4f8ef5da531c3854dc201755db7c57f10ef06294f5cade",
      "name-candidate:b276bfed6d096faf4f8177298974f9fd53c8da2a8be9bcabcebe398ecf22a1b4"
  ]),
  ("name-candidate:14d9c99560b96a0af5d38918febdf8c6db839a2c1cdc5e24f861ebb193ea1451", [
      "name-candidate:14d9c99560b96a0af5d38918febdf8c6db839a2c1cdc5e24f861ebb193ea1451",
      "name-candidate:349799ae89887681901a31982097b5e121910c05ff661861d33c49426b158b60",
      "name-candidate:f0faaf67f2a522af6750d51651b633b338a1d88a037411621b00bd07547a47a9",
      "name-candidate:fe8a461e2a77b17ff80f13fa853b43d34befc0d724d06077f1c56e4a1a385aff"
  ]),
  ("name-candidate:8193d7d1021f0669f95b7a9a9143ca705a53b32fe16861f0d96f9dc032268e2f", [
      "name-candidate:0a15755e5e940da017d8b63892e16aedb17bb2fd6baea4d20b566993382029f4",
      "name-candidate:8193d7d1021f0669f95b7a9a9143ca705a53b32fe16861f0d96f9dc032268e2f",
      "name-candidate:c7b3cce6ad7afcc6930239afc627026c5d081f185ed482cc13b53dee34450e6b",
      "name-candidate:cdace5c10e8b6fc41f1fe88e62e7a8fb5f4d68f63dd2c7a4231cea241dbb6975"
  ]),
  ("name-candidate:f84f5464732779b14a497cfba3c14be2dc414a0634e01dabe93aef5ce3b5d811", [
      "name-candidate:ada343becd9c5effa6105ad683ce33f8dd54b50fb8ef8e701e7a014041112f02",
      "name-candidate:b76cbec125303a9cee3014a3589d4c2f76cf826b910fe6453f7739001c3133db",
      "name-candidate:e85a540666e8688c631cf9cf2ac15b88cd352ca1fe7b1326cd36a27b64ccf7de",
      "name-candidate:f84f5464732779b14a497cfba3c14be2dc414a0634e01dabe93aef5ce3b5d811"
  ]),
  ("name-candidate:ded75d26a8a8c89e8f40033b783697c2c0788092aa2293d6e1a8c5d9fd6df734", [
      "name-candidate:719dec9e7fe2b99e281d002b5301808658085f03039127bbee28c2e11d1bf4cb",
      "name-candidate:b739849e43f1a558d40156f2c05a0f65f71a03df19dcf2c5927862d497595a9e",
      "name-candidate:bbc4334ac9266d9876734f19d96156ff83d08a34c874e42b70b86e3b31c305cc",
      "name-candidate:ded75d26a8a8c89e8f40033b783697c2c0788092aa2293d6e1a8c5d9fd6df734"
  ]),
  ("name-candidate:c5017cd87ab6caea794f31391cb18d39476b4cf4e6b58cf2574904355543b65c", [
      "name-candidate:63243c79927984cdbf7004d21d0a373d50ee02179db82f372f7ac9be2737925b",
      "name-candidate:c5017cd87ab6caea794f31391cb18d39476b4cf4e6b58cf2574904355543b65c",
      "name-candidate:dac926d1fcbfa522b6f2e023d1ef8f574777bc52030c8a4643934ca0161efc8a"
  ]),
  ("name-candidate:7a35f58748894143d66fecc24a88d56a33034460bda2db6e74a4318a1891ff24", [
      "name-candidate:15598b40542a1803b2d40bbc29e01bd7064aef7dd4a53578effcb04ce761e962",
      "name-candidate:65de1d6c4992a8ab912b183a109e9e843b079d783d3b200c466505e51bc2e2e5",
      "name-candidate:7a35f58748894143d66fecc24a88d56a33034460bda2db6e74a4318a1891ff24",
      "name-candidate:b1b5a98ae5addcf0eda8b940893b3be42b0f70a3be58ff4331c3d06b510a7d1a"
  ]),
  ("name-candidate:3c526c8a7f1b0c5ef3b8748a4d669aa203d47014af77a14439cfc3a8fff2887a", [
      "name-candidate:3c526c8a7f1b0c5ef3b8748a4d669aa203d47014af77a14439cfc3a8fff2887a",
      "name-candidate:4c8c7c1048b5d181b47e58bba493bad09e89b54ec03e2dba22ad453a09a8f24d"
  ]),
  ("name-candidate:92805718cbfee7f2f3f70781bb28a47ab4b21993cff08d4791c0d2e9139cc98e", [
      "name-candidate:92805718cbfee7f2f3f70781bb28a47ab4b21993cff08d4791c0d2e9139cc98e",
      "name-candidate:ade58b101119ed98ccbc938595f1e00a4cca1b2fc842f7d3a6093729c6637199",
      "name-candidate:d8449234c0e4dff6339756a91744b33cdf8862f2134af10d6a4807ae9652702e",
      "name-candidate:e5597623e61a4168b69156f3923cf7c8f9a27e2de9b55a23293ed29d4abe579f"
  ]),
  ("name-candidate:3d1d652e9c32086329cd3a5c89559e729f9485d60404ce841748b8fe4e885d7e", [
      "name-candidate:3d1d652e9c32086329cd3a5c89559e729f9485d60404ce841748b8fe4e885d7e",
      "name-candidate:4fe5b877ebdd852499685580563eaf148e818c6bc883f6087ec7540c82132d73",
      "name-candidate:5ddfea294a1d39290c03cb309223ac220132107cde817fb869bcd4d4161c5726",
      "name-candidate:f92bee4ccb10bf922044a48eb7e00075b03c41911d80a0533782e50c5691ab1d"
  ]),
  ("name-candidate:5df60d11b7ded829e7da1e95b3b5013509e7ef177587498d66ed9b12441879ad", [
      "name-candidate:3cc084cdb9c0844f32b809260860a54dee0e577bbf6c61788ef359c71bf1b005",
      "name-candidate:5df60d11b7ded829e7da1e95b3b5013509e7ef177587498d66ed9b12441879ad",
      "name-candidate:cddcff9f64a7c86736c175e1ebb88f811b3011372605815fc8f2d9f69bc8f366",
      "name-candidate:e0f1a7793cc8829361426ec87266383520cdb8268cfc7412d1d89e2c42ff9cbe"
  ]),
  ("name-candidate:51196a88cc3637687cbfda6e9fcddd9d913e73d4efb903dfda9e50ab6c064333", [
      "name-candidate:2dec808721f1cea31cb37918251d161f728faa9029b4862f3e8a18cfb65e6c8a",
      "name-candidate:51196a88cc3637687cbfda6e9fcddd9d913e73d4efb903dfda9e50ab6c064333",
      "name-candidate:94fdd4d58c0f11dc491e6865de902706dcffb56e4aa03cef78f3e02f29b21066",
      "name-candidate:f753f81c0fe8f9cf83afd176bedccad721f21b0b9283b35b1f969b2fcb2ce14d"
  ]),
  ("name-candidate:fff8dbadc05d440ff3461cecab69945afd443d839372355338e6d7eed037112b", [
      "name-candidate:003999cfcfdd0e23762f6c0929dc1af530ad1e3821bf71cddfff9ea3778209b9",
      "name-candidate:2f94ae92544bf86a9c302b066af848daf42ff8e319f0da571ecc5dc2d7ff7c2e",
      "name-candidate:840d195eed4a16bfdb29829f7258853a0eb99b4e6dd36d0d655d0d196c659238",
      "name-candidate:fff8dbadc05d440ff3461cecab69945afd443d839372355338e6d7eed037112b"
  ]),
  ("name-candidate:c2e820562e6da0a1051968f93dc08f818fa0caa9d0915f5f0a34a025ca19e90d", [
      "name-candidate:48099b66be70965acf772464f643fe4e5e77e9c32528dcbb5174cfed46dc9bc8",
      "name-candidate:b210bceddf0cf063d276851b4ddb52cb5866ec924acfd68ed6617a8762b2947c",
      "name-candidate:c2e820562e6da0a1051968f93dc08f818fa0caa9d0915f5f0a34a025ca19e90d",
      "name-candidate:d9f375f495f1abe88dfd0a556ac1ff7f996d521fa962955a5da92d7819a2f913"
  ]),
  ("name-candidate:14afe37702f77964e1e8f9abec5408117e2345fe57b97bde900faf091c1a0825", [
      "name-candidate:14afe37702f77964e1e8f9abec5408117e2345fe57b97bde900faf091c1a0825",
      "name-candidate:73836894a2a3efd5ad3d36f1ce2f7b1d7cd5efb85a6477cafa2a4bbbba4168fc"
  ]),
  ("name-candidate:0ffffe568347f4616dc422c98155d6b9a7b7c95865f7f6cbfbc1193eabfe2dee", [
      "name-candidate:0ffffe568347f4616dc422c98155d6b9a7b7c95865f7f6cbfbc1193eabfe2dee",
      "name-candidate:5c089e460c86e37b15409fc8eac54e10bd05e92c92fe37a2912aa2b7cc889041",
      "name-candidate:bc8dd0b57593c9e7c54879029bba8290e4119815ab2c3d2b6b861346a8199dc4",
      "name-candidate:e11ae4b7d3ffa6f0b71c1064dd6afeff911baf4faac51429aef82fd22177f79b"
  ]),
  ("name-candidate:21020551d83c94c34965ec2e0181ae96d7c38db86f52f16986e9e8ee1e485721", [
      "name-candidate:1e664d302f37ea89f539d231816b7c30a0531604d0b69f0dc1766603c0a19be3",
      "name-candidate:21020551d83c94c34965ec2e0181ae96d7c38db86f52f16986e9e8ee1e485721",
      "name-candidate:9f857cbd1b37987afbf34186792b2b70df615b38ddbde62926780bdd2bcb833a",
      "name-candidate:eb39c23122df534fe91d0d49a03af183ca9e1dea2134603eeda99b1c753f51bf"
  ]),
  ("name-candidate:565fea2e8416729d7ae5630d7622bf428150a0b0868cf79ae552d4c7a6328464", [
      "name-candidate:565fea2e8416729d7ae5630d7622bf428150a0b0868cf79ae552d4c7a6328464",
      "name-candidate:63a36292d58e8afae3bbbdb16cb201ac1f58a7841374903d6e4fffc1a9a35bdf",
      "name-candidate:8b24a7f8afcf2c36af910653cabdaf7758457eddcafa33ef9498ee3c097743bb",
      "name-candidate:c44cbe3011594c1390a6102a454d43e3b1b0dc6b4d40a6fd8c7cec7c86677f1a"
  ]),
  ("name-candidate:44d6f17f55861e48a7b342c94bf080fa86d644f42163f69c7026ea1e14cd1198", [
      "name-candidate:44d6f17f55861e48a7b342c94bf080fa86d644f42163f69c7026ea1e14cd1198",
      "name-candidate:7561b8f500802b39494f2b088cdf127ffda3bd3859aad85ce83cab1404d2d734",
      "name-candidate:e8d03b1d317958de814939b447a237aa121bd93df0c77819448c24ef6056882c",
      "name-candidate:ebf1055fd2145a4600cffdcc9e48df6709c8a5c5948b5099fd16942b1a8f19e7"
  ]),
  ("name-candidate:5d6a16bfb2eabdf912a1ca5f533c1202d1ca41ec6926571a5fa54f5dc98a204b", [
      "name-candidate:5d6a16bfb2eabdf912a1ca5f533c1202d1ca41ec6926571a5fa54f5dc98a204b",
      "name-candidate:b827d9b974658c8ded7568b5b57039137786891f56e440bd407b498ede23d43a",
      "name-candidate:fb83c5dbda7a7a1a6207f73b8d3d6832161e141f150e28485f990ed98c4a49da"
  ]),
  ("name-candidate:6198175ac6dfbc8ef29f27c8c195c11a7a89637e6ccabcb4e65b4ddd7a756924", [
      "name-candidate:6198175ac6dfbc8ef29f27c8c195c11a7a89637e6ccabcb4e65b4ddd7a756924",
      "name-candidate:709b1c6696e879454444b6b16724424cf45536041f4593ea92764fbb99037180",
      "name-candidate:bfffe7775a3d0ee2c802f739a10ea18827788bef63bbd28e3b75c6734648c191",
      "name-candidate:d813f68caeec2d3a285cdc680621d7cf50c04bff71357c242e6dbf6ff29008af"
  ]),
  ("name-candidate:8da3610e1070173adb4d6bba475f93c8ffe8f55437f18eb73b7de141893da7f1", [
      "name-candidate:48e7871fb744736ad541636fb92941fd48a5f2690a42c276894e5ccba5ce7a68",
      "name-candidate:55767a33d12adb6fb4a28018602a3b8c3e9fea2e23966aaf05fb5a87b987193b",
      "name-candidate:8da3610e1070173adb4d6bba475f93c8ffe8f55437f18eb73b7de141893da7f1",
      "name-candidate:d645c5a9df1f6f1599480a1622e328a367ca444cb43a881c149fb7fccbba047b"
  ]),
  ("name-candidate:f1c6e4c05878218da332d1d46f793b87e140f787f8bf6f05e71d62f0a1bcc15d", [
      "name-candidate:2eadb3da4f7fd719ce0a8d1bc7569b549029b4b14a9581987b1057cbdfde2f89",
      "name-candidate:313c27e310372d22b9597813508e97664e0560081e4d6fa733cfa85d1e58e5a0",
      "name-candidate:94a566e7682fb12e3cc55555b975a84d9d3f6df332099ed0a87d6f1a1f9072ea",
      "name-candidate:f1c6e4c05878218da332d1d46f793b87e140f787f8bf6f05e71d62f0a1bcc15d"
  ]),
  ("name-candidate:e6aa1d32e290303e1da1a82a763d98cc366f8b8856723662207b729195c5e855", [
      "name-candidate:e6aa1d32e290303e1da1a82a763d98cc366f8b8856723662207b729195c5e855",
      "name-candidate:e7a760fbb0722f0211b15b4f83db1e3a28d083d95fbb2522651f416313f39b3e"
  ]),
  ("name-candidate:173eb40897c152c56a6a6d0a78f830f8c2d451c91928074184808b301a011931", [
      "name-candidate:166479ac27b62b8236aa06a3648478b9d7ea255eed28006e4f42858e1478baae",
      "name-candidate:173eb40897c152c56a6a6d0a78f830f8c2d451c91928074184808b301a011931",
      "name-candidate:53d74b807476b66d3e0deed7a10ed868e0797d5a5071f0c71673fdaba6ae598d",
      "name-candidate:f295d7c7615ddd6f7f26039063ebfc0c5c4ce967310dbd78f5ed2c87bbd05769"
  ]),
  ("name-candidate:57891fbd8a06900f5cf97b274d223cb58aae0e46dbeb39143257f43cb80b6326", [
      "name-candidate:086ca7e694baf25316214b344c7fc8aa284b68c0dea0706f2fe0c26d83116d1f",
      "name-candidate:3cf42b5f328e50a31568d8589f89c84179d74acf8900126443757f2d899661e7",
      "name-candidate:57891fbd8a06900f5cf97b274d223cb58aae0e46dbeb39143257f43cb80b6326",
      "name-candidate:64380d071b9238674f13724242d1ee77a975577658acec575dbc94e77ea33bcc"
  ]),
  ("name-candidate:a73dd3914d15f6943b6fa2ac261c193339cc8d315c3df7f6be386cd34944f46a", [
      "name-candidate:94c2914f05ea282049a638062656ace91013d6baf7169c3d86a51d5b81b71199",
      "name-candidate:a73dd3914d15f6943b6fa2ac261c193339cc8d315c3df7f6be386cd34944f46a",
      "name-candidate:dbdd479991a255478ec885ffd5ae0c0480dc5592eb856e09523919292d43fa96"
  ]),
  ("name-candidate:665906ebab65d7a467f3102fb61f47b7e6b94477bda2ab22a18a2a93c58cf888", [
      "name-candidate:10bfc7fdb28d3dc36e220abc6e0849336949148f29dac1ab8d52c548505b7d94",
      "name-candidate:665906ebab65d7a467f3102fb61f47b7e6b94477bda2ab22a18a2a93c58cf888",
      "name-candidate:a954d9db242d016c28399f201dc56c8a62f8eb62d7572365dbbce7bec9436c42",
      "name-candidate:bfff03d3ac0236b20b7b3aa5f5ee03835fcfd980adb32d00a13b1e3d5bb65258"
  ]),
  ("name-candidate:f2eda701ec84087378b7565491e19dd610e25fd78556d952477523d62a264026", [
      "name-candidate:5d33a9719b225f8027c3e724c5cb0a46b2c37a27e51bb4dcca5b9558f6089b3f",
      "name-candidate:7f58e78c9a3652967b157fb0a5337afc0f344de718e572f260a901169261a9ed",
      "name-candidate:e894c9a38cc5b117fba3d34b27ebe596f433311e78b2266ce2a053d329b7ea4c",
      "name-candidate:f2eda701ec84087378b7565491e19dd610e25fd78556d952477523d62a264026"
  ]),
  ("name-candidate:0b5bfe17e6b11815aa0209a0f89f58616d65fc599f8fd053cdf4e56afa78e437", [
      "name-candidate:006f3a80eaf18a8dd7495cb2198da1f6c3a59c93d721aa667146921e59c44756",
      "name-candidate:0b5bfe17e6b11815aa0209a0f89f58616d65fc599f8fd053cdf4e56afa78e437",
      "name-candidate:48f0a31e7be2466dc0e88e885333d17c7cca4d1635ec4b0b9b34f4cf2b342394",
      "name-candidate:85973c24c2935f59dce34d9e9f2c3f43a92194a3a7f6d2d9e3f3a036daeb2109"
  ]),
  ("name-candidate:3d93b7f4b16091761d2e6b40e441521a492fc23582df971d139311d8d4d1b8c4", [
      "name-candidate:0836508819d5ace89fa5ccea6bc6c07e1c0f903943db75a964721001c81cf7ed",
      "name-candidate:3cb0eb72d8c3d026ae592224e14b28a46ac648a8e99a04316e8ab680e30e3816",
      "name-candidate:3d93b7f4b16091761d2e6b40e441521a492fc23582df971d139311d8d4d1b8c4",
      "name-candidate:a5650a209522dcbccf632580f1b50ab1417c7aba2538d0210699baf78a88bf80"
  ]),
  ("name-candidate:e51b587002eedd9352154ab0f18e3861a5f8a07bff18d935c29c9d134c28c126", [
      "name-candidate:041105b541367d38d8bb0ee349c8c3297f95be3a1241adff9d61f8bfe30be056",
      "name-candidate:42a7726c5d141831c2998eb8c7ec2db2180ca7a04a7f370fc0c548b9e42ebbf9",
      "name-candidate:634d257181dbceeb6dec07a7dc77a2e2f8a4b7697a8e6425aebb62c253093494",
      "name-candidate:e51b587002eedd9352154ab0f18e3861a5f8a07bff18d935c29c9d134c28c126"
  ]),
  ("name-candidate:d3bfa77d979ce8bc6d1d90ed9d57110a80b4288276e951630ae80f66bee6f141", [
      "name-candidate:00cdd1c5b564d45c7d98ae6a357e32010a2e098d5a92775d758adc3ae88d80f2",
      "name-candidate:2338b105cfb0965c25847801bc3adefeeff527b1538ffe89b8018c687d1218d1",
      "name-candidate:b30f594c9b69fd6df96e55b202b1f418ab99657d08974e8e25a03883775a11f0",
      "name-candidate:d3bfa77d979ce8bc6d1d90ed9d57110a80b4288276e951630ae80f66bee6f141"
  ]),
  ("name-candidate:66014604ba0fa8578d5ab56c4bb76d01c9027290fe058ccdd111f5057be074a2", [
      "name-candidate:01759cadcb4a12e8cb2fb26f8b363c55fca8eca2d07bc34cd6558849dedb9bdf",
      "name-candidate:030e20f2aa0b6b7736753494dd0f2b3c98ec79ef11aa7b6401ecfb67771aab9c",
      "name-candidate:66014604ba0fa8578d5ab56c4bb76d01c9027290fe058ccdd111f5057be074a2",
      "name-candidate:de76f0fadeaec21853201b02a138d324f4f74acfafe74410779725f275f281e1"
  ]),
  ("name-candidate:d9dfe7b48edda6dbd181ae1a63b539c74b9736ebcedca48cfbbdadd5d9ce36ba", [
      "name-candidate:141c97b7ecc12ff177f1ad0d8a2d2567fb6ec713590c8f61ce64a6f56ae622e8",
      "name-candidate:c466261c2c11a84a20b02ffdba296e49cddb90b4bcdc0bd28ffe90c8734f8f70",
      "name-candidate:d9dfe7b48edda6dbd181ae1a63b539c74b9736ebcedca48cfbbdadd5d9ce36ba",
      "name-candidate:ec0d51517133e51406afa53f2745f05aba7e2193b4383f0d55bfabf88003526d"
  ]),
  ("name-candidate:c99bd0e281c38268a839b32cff8af0da13e2842e71b48482d78c692dc412f241", [
      "name-candidate:c99bd0e281c38268a839b32cff8af0da13e2842e71b48482d78c692dc412f241",
      "name-candidate:f9baf32072dc328fd3f61b9f0751a363eb119971e1c7c212d18ac8e2853dd22d"
  ]),
  ("name-candidate:c308dc379121ab057de4d23bfafa3877de6a7b620703bf64da29ead33a3f0deb", [
      "name-candidate:2e84b5c1996204248d99d4efb11ef07899444cb287c5fe32e238a1fb3b546933",
      "name-candidate:b08e687cfad4425f416f3092c01eac9cbdf05f675732270d2205b6be095fec10",
      "name-candidate:c308dc379121ab057de4d23bfafa3877de6a7b620703bf64da29ead33a3f0deb",
      "name-candidate:edc61237307ebf959e4cbcafc018f1d4082a27f4935ec88b3daa047f5218b3b6"
  ]),
  ("name-candidate:e85eb6e16697ed5cd0227981506df1e283eaf48de017c1790ed32c40de065995", [
      "name-candidate:827625a9b9c013f2ff498bcd8ae74a12ca759cfbec17bf13f628269442449019",
      "name-candidate:e7c7cbc54629cdb1d52d570c12625007e6018658db60d37634b48d2f543ce4b4",
      "name-candidate:e85eb6e16697ed5cd0227981506df1e283eaf48de017c1790ed32c40de065995",
      "name-candidate:fdba8f3233635de5d7caf74c9bf0d2818a120a22ab18064778d98e6e4858ad1c"
  ]),
  ("name-candidate:00b5ff3771e1b0baa15574be26b70f1046f1de12900829207c802b07b47295ad", [
      "name-candidate:00b5ff3771e1b0baa15574be26b70f1046f1de12900829207c802b07b47295ad",
      "name-candidate:8b3782e27fa079f78810f4905ed7994b8e4efbb4851262e5839d99b68451967e",
      "name-candidate:d9ce17e3ec6d756fa34990161b69b61950062700a4ad94228cfedc830cec819d",
      "name-candidate:f917b42412d3d5c93ee7f93d2c0a83cb977eb92316526b3ba9308bceecb3bc10"
  ]),
  ("name-candidate:62987ae1f13be7071a299c48145a01c617b97be078b8dc4c4a161a6c68f7a079", [
      "name-candidate:62987ae1f13be7071a299c48145a01c617b97be078b8dc4c4a161a6c68f7a079",
      "name-candidate:cbec9ef4d15a7dfdab8da79d642d546a74af796f41d6913acf3120f2517cb7e6"
  ]),
  ("name-candidate:5ce48019b5f31b7befb4b37f888ae4b0bcc79741d42f16a7a87c4d7689bd0979", [
      "name-candidate:2c9cc92dd687965e292645e1b5a7f305a8ccee49d271a557f751b5c3aa21b878",
      "name-candidate:5ce48019b5f31b7befb4b37f888ae4b0bcc79741d42f16a7a87c4d7689bd0979",
      "name-candidate:92a559220a17debccd15392628584362413f565e0f1d7bd966856041f838c3e9",
      "name-candidate:ddb88703e196dc16b526590505e8c6fd1f9d8996eb93b77c71e042362da25b7f"
  ]),
  ("name-candidate:a20096e812a7389bde1fcc798e7bce4d4841676013cd7bde4f6ffa489260ed03", [
      "name-candidate:3a7a3472bb8b23ab2d767e3493610433c226ba09c9a72c3f8327f6507f8450c4",
      "name-candidate:85341c25ba20a86b3fdd58929685d21081a53c6b18f2e6d68e774af40c3ffcbb",
      "name-candidate:a20096e812a7389bde1fcc798e7bce4d4841676013cd7bde4f6ffa489260ed03",
      "name-candidate:b9bc5591cf20fcc7740912659550cebcce3572b6766f51656006e010e4843456"
  ]),
  ("name-candidate:61dce0cfef30a2c602a1e21c377ddef308418488ad6907a115b8b7985a513a2d", [
      "name-candidate:2923ec971147f05e91c8210e19ae14aeb167a95c7f04e659eb930db9af33ea7b",
      "name-candidate:61dce0cfef30a2c602a1e21c377ddef308418488ad6907a115b8b7985a513a2d",
      "name-candidate:9a6923097bdea9aef1e5050a47b2c517edf7647dd7764e6be9f6e1bf0058eb99",
      "name-candidate:a60a175349d4da46f6415d63ee4b9bf5c3c2227bd39ef21b86d6371fef8808b3"
  ]),
  ("name-candidate:5b273358837de2644b4f61ae36019a797a79bec16d47790d591599830a311c00", [
      "name-candidate:39304bb7e434f03c1050f245fa872659613d181e88eb986a5579ac12ce49fc53",
      "name-candidate:4913a15e38ca376ed0aae8d9f309b6fcd4b03feeb212e9985d84d703002878c4",
      "name-candidate:5b273358837de2644b4f61ae36019a797a79bec16d47790d591599830a311c00",
      "name-candidate:6821cb88beb274da1bae802eb830d3173b12bf501c56a9f9fe2dd4333b1c3434"
  ]),
  ("name-candidate:d815f2266996b9dbc9a390c32ff2f8505c6a981906471227b3057d9252a087fb", [
      "name-candidate:2462aabffeedbcfefbd8e90f3abe5483fad12fa4a5b66e793dd108edb286adc6",
      "name-candidate:7f6e6dd7e44d22dc956762f02a64cc45812b8cea535e7fcf492629da584ba329",
      "name-candidate:d815f2266996b9dbc9a390c32ff2f8505c6a981906471227b3057d9252a087fb",
      "name-candidate:d891cbfbe3c92af50c133d1fd6ca6ad5fb58ec41b162ac29777f02fffc815476"
  ]),
  ("name-candidate:326ca1c3d4b0c1fbf33ae3f99ac74d732fa7451c99b33a28eba828d28dc5bb6e", [
      "name-candidate:326ca1c3d4b0c1fbf33ae3f99ac74d732fa7451c99b33a28eba828d28dc5bb6e",
      "name-candidate:87eb9058ee0f201acb1824007bab5581570f486171aef8c8b27440fef4c8ea25",
      "name-candidate:8fc358de388efb7369e4ab1f08a76ea8fcf8fb5cb10039ae6ab8790301f0361b",
      "name-candidate:9aa80d1956cd82d6efda3769d937ca90e24471f328e792c859ac2a7c951766f7"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean#L46659).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
