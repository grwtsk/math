# candidateSelectionsChunk0027

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f1b86e2dc6d9555ea9c5a81c38de69bba48e8d6d5f5184f17ff7c91ecd80aace",
  "kind": "def",
  "lexical_name": "candidateSelectionsChunk0027",
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
  "slug": "candidateselectionschunk0027--500ee739b8fe41b1dd6e78bc",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53686,
    "line": 53318,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:500ee739b8fe41b1dd6e78bc6bbb06b67957d579c75fb9b4b7684e15abc3b8d8",
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

Occurrence: `declaration:f1b86e2dc6d9555ea9c5a81c38de69bba48e8d6d5f5184f17ff7c91ecd80aace`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53318–53686.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def candidateSelectionsChunk0027 : List (String × List String) :=
[
  ("name-candidate:0d68d0153a184b39504b97fbe89433af9fa15c169304cd1db594579e41be1ec8", [
      "name-candidate:00868392e5806e509cc4719652a06e483d55ab6832b6d9dc69465cdcf8447129",
      "name-candidate:0d68d0153a184b39504b97fbe89433af9fa15c169304cd1db594579e41be1ec8",
      "name-candidate:a7ee6790d97a65457d6df28d38a26ff274a1e35f483318d2dcdd9b5a40f83906",
      "name-candidate:c1d245013c8a38857e12e981bb1f2dd0d1a1e635c98d3c527be1d3b118471be1"
  ]),
  ("name-candidate:7219ddf61f454997d556654835ec0528373a2ca84921eb9a95865d66c43f6f30", [
      "name-candidate:0eb5431acbcfdc1a2806a6444b4e64cb572307bbb893dbd5bf3a0a1a62e989c7",
      "name-candidate:580e72122a36f0142857bfa24dfd9f2dee53062b197fdb8d8ca733521430dcb2",
      "name-candidate:7219ddf61f454997d556654835ec0528373a2ca84921eb9a95865d66c43f6f30",
      "name-candidate:a22202dd2fe4ccba6556d51e6dbd91f19d3b974d78f8c51082f184a0f2568830"
  ]),
  ("name-candidate:7d4adca85e4894498fb5ea96359adef6108d340e496815bf469b04454f72aacd", [
      "name-candidate:08c3281e06a7defc433a70f83df984e2800752f9aed45a0f75fb40fab3e9275d",
      "name-candidate:3b4a40421ba6ea6c28029071d409d609bd1fd67ec3dab3eec0ea797dff226fc7",
      "name-candidate:7d4adca85e4894498fb5ea96359adef6108d340e496815bf469b04454f72aacd",
      "name-candidate:99a664c4d3f43504c089093d89e1aa315f7dd1c7977612c8da2a8b8ea23f0c19"
  ]),
  ("name-candidate:f1c0d1ae7b02dc65c36170b912211449dc603d1f87f3a0ef0f4b6aa8667c4ee6", [
      "name-candidate:106d219bd88861376fb502a4af90e4dba884b2767ba78f088f0735244fd3286b",
      "name-candidate:871ca0e176328ac394d5df42cea7b7b4ac4a576f88a4332b2adb9daeb30066b7",
      "name-candidate:e5ef490ca7e6b52cd080e1a7932e828df446eecf953fb82c58c6cc9556545ad8",
      "name-candidate:f1c0d1ae7b02dc65c36170b912211449dc603d1f87f3a0ef0f4b6aa8667c4ee6"
  ]),
  ("name-candidate:b95a1c5db39b822c82cb41cfbc6e38faf71ef265544c1a7da0152b19edde963e", [
      "name-candidate:319df1824e66ea9d7575f2ee9abba405ec2fc11e602e2a0c32bb233f8f54669d",
      "name-candidate:45b88229c6f478c0e69d4519eb77e34165ff60458c6c5eb1a49b7b7193874fc9",
      "name-candidate:4f84dc8da23c80d5a389ddba4182fc629f8a57e87d08dc5288fd1a2122c8559a",
      "name-candidate:b95a1c5db39b822c82cb41cfbc6e38faf71ef265544c1a7da0152b19edde963e"
  ]),
  ("name-candidate:c1994e5eb3e785fef2a556a4772d9c99f797548eecdbb9e7534a1f7bdfdcead3", [
      "name-candidate:9b62c7bcac0305947e8e5687fe4f963cf00d25cf6dccd343b2ea945975cef6c5",
      "name-candidate:ada0094a244f3af4185ea395b0f09bda65f40ad1f04c7604bd2584ec52084cb0",
      "name-candidate:c1994e5eb3e785fef2a556a4772d9c99f797548eecdbb9e7534a1f7bdfdcead3"
  ]),
  ("name-candidate:e7c905cf439b4db1f678737c13ff137558688c392ac4d03e22172c9ea2738c6b", [
      "name-candidate:11ecc85624f8aaa10e7bea85a33963eda31c9351cc05a98ccf51ec22e58894a0",
      "name-candidate:a20bf2239b5d249f6cc80f50e1022554c23636b98e21cf8de2f79f660bd95416",
      "name-candidate:d2fcb00983bcb3328b52ab215da6b14710b7c297234370409cb7a768c842aabd",
      "name-candidate:e7c905cf439b4db1f678737c13ff137558688c392ac4d03e22172c9ea2738c6b"
  ]),
  ("name-candidate:5ae23a80c600e966e69c41810dcf02e84dc7ca87895db5b746846f32f7544a73", [
      "name-candidate:1098df276d0094ff0f2571f76d3a3a49e19557bd8e3adac15abe5ce019029225",
      "name-candidate:5ae23a80c600e966e69c41810dcf02e84dc7ca87895db5b746846f32f7544a73",
      "name-candidate:63599e4d28bd4f80fd00cca2ade8ffed5aaab6171d97eb7d3118975d4273e5f3",
      "name-candidate:d2359738f8bd4875305b2f88417c6a6dabfbf1b4eedeedbcd2f54d6e23a80853"
  ]),
  ("name-candidate:0ea7fe446486cef4ab157c78542a3c5ed53d7d81341e084743c153991940ef42", [
      "name-candidate:0ea7fe446486cef4ab157c78542a3c5ed53d7d81341e084743c153991940ef42",
      "name-candidate:9d3041c68d6aed5c46d5a6db9d36fbbc034991ab62229aeca555338d6d5ec702",
      "name-candidate:c03ea8339473afbeaec5e8af0da3240c6c42086d3b95c0ba8a6fc51b8fcc442a",
      "name-candidate:ca8647dbcbdd470aa48fb182dcf1c54a3627baff10fcba8891a064fc32e9f475"
  ]),
  ("name-candidate:fdc95b4ddefb6ea2e144cc5d87a0201d5415af4862af0c5669dd15b78b90be52", [
      "name-candidate:4aae9baf6841ff5a3d6ed96455f5b42bcad7aac3dd03bf5a1d199f18b24f7ea8",
      "name-candidate:68d9d8f755143a5ed1fd46253b38a3b58db1599915b6472345b41734a40bc794",
      "name-candidate:b4c9f35b5ede3729e08e903c45238bb312e187156be77ae86816e361844d30ed",
      "name-candidate:fdc95b4ddefb6ea2e144cc5d87a0201d5415af4862af0c5669dd15b78b90be52"
  ]),
  ("name-candidate:d89bb4712b78b30984c1e4c12b97d17396d34f5bc9710f25c988237130cbf752", [
      "name-candidate:1d12f4fbecb77e540cd5ca217a478d1e34e4ea9ef38c78d2b08f26d1c7a66bbd",
      "name-candidate:9304588373c2ca7bd8449010589f8505964d7f9cf0a41f9751757d5241676660",
      "name-candidate:d89bb4712b78b30984c1e4c12b97d17396d34f5bc9710f25c988237130cbf752",
      "name-candidate:e3945901ac90f3682228f34efadc52ccd571a6daccc1004879e0f2797062d41e"
  ]),
  ("name-candidate:9bf5bdd793170a791454828533a46ed563e64fa7b4215c1a9634e9eb6ab22a6e", [
      "name-candidate:0c373809d7806eb3d1c990c035e90377498e274eda962f895fda2ee49f454e9b",
      "name-candidate:9bf5bdd793170a791454828533a46ed563e64fa7b4215c1a9634e9eb6ab22a6e",
      "name-candidate:ad982e7a3f535837848c4949d7ad44b5e6a569fa55b305a9d9f41e12d1915457"
  ]),
  ("name-candidate:f1af1202dd19819e26ed4c9192807edbee826c473679654dbd624cf780981d85", [
      "name-candidate:4c1dd99726507c004a4d3edfeb5717d24cd9e811eb67c0150364fd0674e7fbf0",
      "name-candidate:c0a1d562cc27041e550510af6aff5d6862002a75d6c4f29073ef76473019d3db",
      "name-candidate:d800b9476a5701ae547787b3cb90306a6729a0300c5eee83f1c2baf67e1a1b2c",
      "name-candidate:f1af1202dd19819e26ed4c9192807edbee826c473679654dbd624cf780981d85"
  ]),
  ("name-candidate:6e50a001c8ec6b3e9f988f6fef1d64859c745ad3391978653fe7f4c57020d1e4", [
      "name-candidate:3116fde77c31bba000b013f43ad446c2ccfb54715719e5e9bec22e54601e5ca8",
      "name-candidate:6b09b6c230ad6a029c8e276fbb26449fe88547168202bcafd86f25aedd5314b8",
      "name-candidate:6e50a001c8ec6b3e9f988f6fef1d64859c745ad3391978653fe7f4c57020d1e4",
      "name-candidate:f5fad000941cbcd82e55675d7ea4f0b9675808d4e6a8d29b824fe1359d5dd648"
  ]),
  ("name-candidate:057eee7da3eb6898467cedd7903cab4dca657dcebc1cd45ae38c973e68516c5d", [
      "name-candidate:057eee7da3eb6898467cedd7903cab4dca657dcebc1cd45ae38c973e68516c5d",
      "name-candidate:30c208e27f5a5ffde99c0e1c4f37c4d86c8294f9612ce697e8aae103053ef3fb",
      "name-candidate:5ffc992cbdf11d4751fe088bd6d1b19023f18532b65126ad9c48c377b8425cc8",
      "name-candidate:83791657bdadfab83ae2066e6c3a502865eb4e97ba39553a9ef6c7b7e05e9e95"
  ]),
  ("name-candidate:3588347de8b277e739fb273d43bb3732e35653c2c411eb398c68207649b2a1f0", [
      "name-candidate:3588347de8b277e739fb273d43bb3732e35653c2c411eb398c68207649b2a1f0",
      "name-candidate:41ea911df563061780fe09070961a1fcb16766f39fc1878d348fb65e389ec723",
      "name-candidate:f653631d861f52fb17ebf1d611c6d9981ffce5cd77fd8db0128414793271f6d8",
      "name-candidate:ff7f7b570dc02f8d0286e7b3ed97ac0c4bd19b1abcf6cab621d75438554cac9e"
  ]),
  ("name-candidate:2b3f167706a5d65da1e4798e94a7137bb59bf5781f821e99d42b145436ac384a", [
      "name-candidate:2b3f167706a5d65da1e4798e94a7137bb59bf5781f821e99d42b145436ac384a",
      "name-candidate:700c2ecc34cfa6a07b57b91e3dcdf72078f794cc94b6b3b198e3862fbf495036",
      "name-candidate:cb7eaf297ce4fc16832f2a279f3471c820ead55c89f1786c1cfe72c0cadf20c4",
      "name-candidate:f2e020135de505a6be6fd4e291bf0d83f56ac3ca195fbc37016d732040fb614e"
  ]),
  ("name-candidate:0e1371121c555fa0b4208d6dfeca4e7c8982b53420f66ec18761f48107cbd221", [
      "name-candidate:0e1371121c555fa0b4208d6dfeca4e7c8982b53420f66ec18761f48107cbd221",
      "name-candidate:11216152ce723cba6125e4da849a7b8f4f27d397e0277367be73d851fa482b15",
      "name-candidate:2c4f91eb021bf66ce3d2bb8eac8754e16c111abe8c9a79ec909fdecee35d0939",
      "name-candidate:5539759f224fab343cc096918eb730e56e412f18b11ec96870914e86e57230ee"
  ]),
  ("name-candidate:5e1845e68876f864824336e5581b3d31c4c4fa14666895c2d93843f2eedf1c2d", [
      "name-candidate:0ed809795eef24615147cf1d69cdbb42ae11f68b1b6f11e9c899bdcbddf4681f",
      "name-candidate:1c88be27cfe02fb7c0a0f78486eed20e6ca4a7e0c552022f4356973c393a6a13",
      "name-candidate:26cfb796123a3e424548b2cabc27ce50a65cb04c398d095ffa59ad544bf4d388",
      "name-candidate:5e1845e68876f864824336e5581b3d31c4c4fa14666895c2d93843f2eedf1c2d"
  ]),
  ("name-candidate:bb862a04defdcdb96184cef835adc1ae32d7112eeef4619fdf409d12a5139948", [
      "name-candidate:34a9de94071271113c0a9d4c1ce870d764ed1eb0d386800fac883f4f5425e137",
      "name-candidate:5f449c00a294bbf3fe39e6e01a045c5d65e438fa91f4e2dde3b901fb2efcfcf6",
      "name-candidate:bb862a04defdcdb96184cef835adc1ae32d7112eeef4619fdf409d12a5139948",
      "name-candidate:e0519b13481495a2a4ccfb72fa2afe73386e14578bee7dfbb55019db4ac566ef"
  ]),
  ("name-candidate:2817836f3d9e9071efab79e33cba60f81582d4bf90eb95fc65d1a8400d9ea624", [
      "name-candidate:2817836f3d9e9071efab79e33cba60f81582d4bf90eb95fc65d1a8400d9ea624",
      "name-candidate:77f27816a51d8a16010a2d865d9edb8827dd7a09980481bf3de6e374d9faf1fc"
  ]),
  ("name-candidate:11bf7e28354f5550ae48dfcaf689a70086639144d3824e279e58e32fc4f65550", [
      "name-candidate:11bf7e28354f5550ae48dfcaf689a70086639144d3824e279e58e32fc4f65550",
      "name-candidate:6c651907b7f1abdacf91a8a6adeac6e35f259751797676a48c961b4b2ede3897",
      "name-candidate:75339c6e47451f65dc743a81b86caedca65ca6abdf95a24c3db3170741905d8a",
      "name-candidate:bd2c9ddd9ec4ed8996e54dc74f9ca33c4812c8c6b8c69b5ec0faa1570495200c"
  ]),
  ("name-candidate:36e07e172662135d99048f11d05f5e2bea431776b5291a3aa066c8fd175df45d", [
      "name-candidate:36e07e172662135d99048f11d05f5e2bea431776b5291a3aa066c8fd175df45d",
      "name-candidate:a953892d819b6e9999b29d0b7202f48a7fe378f8f7212a36afb3a8690262740b",
      "name-candidate:bcea17762f939cdc59a5b7ffd9f8255a6ec160b0d614bedbf78bd92059737b48",
      "name-candidate:c567f0d3a3c4bf88b97706e87b006b36e8095255d84169797740ddafdd5302c1"
  ]),
  ("name-candidate:7f3caca0555707d948c7d47a717df92c4626a8bc109918bab7249ac55378588c", [
      "name-candidate:7f3caca0555707d948c7d47a717df92c4626a8bc109918bab7249ac55378588c",
      "name-candidate:d5e9af999be77564b05a7d80c298d82df70c935efbf430843aad2f1718e95b73",
      "name-candidate:e30322037bb86309ef6e79de865f242562c5bc25bf96ed926281e68d721cc902",
      "name-candidate:f99e7cbc1efca8172521453d29ffbefc7437fc2c76dc17f2b2c673446e4c118f"
  ]),
  ("name-candidate:d4f96bcbbb9ee91c801d2c9addc3d80900354d6a3baea916ab66713fb3e9c9a9", [
      "name-candidate:6f628d18b412d52573a98228e4dfb8f78b93d9b9fa11e76af113e59f4e2146f5",
      "name-candidate:bcae01baece8eef78e71803f71218efffa8cfb6e56cbbd156e16d68dfc1d5efc",
      "name-candidate:d4f96bcbbb9ee91c801d2c9addc3d80900354d6a3baea916ab66713fb3e9c9a9"
  ]),
  ("name-candidate:5d85c75d4d9ac3a05951bd413da8facd600a24ee3f5c0dd5bfa7fcd1300d8276", [
      "name-candidate:1ab9840683302fd6a6030802ccdd9716e4abb8fcc3310aa11d0f81388bb39f8b",
      "name-candidate:5d85c75d4d9ac3a05951bd413da8facd600a24ee3f5c0dd5bfa7fcd1300d8276",
      "name-candidate:6fa92478aa445552d02ac53ab659423196c906a029398e234e3cde015aa56ea8",
      "name-candidate:9981a1ba649bb33a578f929cb3a5016958f671b5744a6d9644190431faa0c2b1"
  ]),
  ("name-candidate:11a94ac1c491391ea1932cd1ac4b84d0dcfc25097d3e77ccea73d7b7aaca7f75", [
      "name-candidate:11a94ac1c491391ea1932cd1ac4b84d0dcfc25097d3e77ccea73d7b7aaca7f75",
      "name-candidate:46b9c1112faa1f1214c57d33d5a936629857de45e918d4a0af510cb828da7080",
      "name-candidate:bfda9978c7852db9b36d03d6fc7b4d7305a642b71dcdbb6538079b5216708249",
      "name-candidate:eed2133f0042839700be98f2884fd85a3819bafb81e226dc2eb8c8a74306a3f2"
  ]),
  ("name-candidate:921f76cceab0d2247fb83f8192686979b1400a9d32d74ca0294b6c2a82d9ec63", [
      "name-candidate:434c9c7cf042c8c31fb6f750c0f3869fdbf241515a33c484fd0524695bb2fc68",
      "name-candidate:6b5933799c8b79ac9fa57a9151ba1087a38817413d58894b4b1e9cb960fb0573",
      "name-candidate:8069ec769a652a5fc75867df3c7749fc88dc1555bf88231674eb76d22cff925e",
      "name-candidate:921f76cceab0d2247fb83f8192686979b1400a9d32d74ca0294b6c2a82d9ec63"
  ]),
  ("name-candidate:0c578409be951d4fc996b50a7bb0650057042d931f1c6ba61d7e695e194a2cd0", [
      "name-candidate:0c578409be951d4fc996b50a7bb0650057042d931f1c6ba61d7e695e194a2cd0",
      "name-candidate:24f1f3efed3f949b0a24fe943b49a9eaeeecdde772244ff90da211103d8fca81",
      "name-candidate:b1de9faf62d2fb70bf2a51c339f2f4da4c492b2cb8a6fd75b31cbda1e651e35f"
  ]),
  ("name-candidate:1bf9480d9a67e4de2f4c8744036bfe6fc0072f4b68b960ead8e46430c4524e82", [
      "name-candidate:1bf9480d9a67e4de2f4c8744036bfe6fc0072f4b68b960ead8e46430c4524e82",
      "name-candidate:63634a5d04ad941ebd169216b49604f83992e56b3c94824798bea7a66bd1320d",
      "name-candidate:c3b6886f8102fea73196cc315e0fedf5c1a6511211321d844875aafdf91fbd8a",
      "name-candidate:f2d311f16317eb7b53e210beaaf23f457ea26f515bf99357f2517e54028530a5"
  ]),
  ("name-candidate:8add980f2956ec068d1409a5c6abc0fdd9d4c196f5697d3f0adb96cfda02c149", [
      "name-candidate:374ab243398ec8f2f9a7a18703023d47c16e880cb14588109bee2f9723523f24",
      "name-candidate:85fe66fcbb092caa60b67776a63d542eb180be5821f0195f88d42da17bbb4e47",
      "name-candidate:8add980f2956ec068d1409a5c6abc0fdd9d4c196f5697d3f0adb96cfda02c149",
      "name-candidate:991a68a31305f68ea1663ec763543a45a202c97e1c717f71749fc14c150729c3"
  ]),
  ("name-candidate:5b32a19bc3986972ee8694f8cd23f58cbc68c6b37f5ebe0bf43662649d8df308", [
      "name-candidate:5b32a19bc3986972ee8694f8cd23f58cbc68c6b37f5ebe0bf43662649d8df308",
      "name-candidate:87c07f72f6e503187ef623529d94caca4559a901b86d99851a5625db569108ab",
      "name-candidate:939f388e6d32152f45812f1e4a8cf72e58bcb375e8a1e3ad83637bab5bff91e9"
  ]),
  ("name-candidate:b8858bc460dcbab58f30bf10f06e5f4a2c65b49655a1796dd7e66d6e7778c428", [
      "name-candidate:027dda32b1ea840ec06e4c088d581de9d4f9b7429cc8c78a2dd8d4802c674e61",
      "name-candidate:b15e30db2b5a6f64f3318f987dfc521bdaeee53ca211d87be890253f8263b6f6",
      "name-candidate:b8858bc460dcbab58f30bf10f06e5f4a2c65b49655a1796dd7e66d6e7778c428",
      "name-candidate:e962847819f11de26a9a68f658879a91cf100a8285d165c7074ceec1124ab1e9"
  ]),
  ("name-candidate:4e661b3e0bd284753863a92e6ff276c3d7f6f7a5c65779231b685debea99d4fc", [
      "name-candidate:220b8df7281f858b9b4b729ff07e33179e6b3bceedf9c25053fd0380014911cb",
      "name-candidate:4e661b3e0bd284753863a92e6ff276c3d7f6f7a5c65779231b685debea99d4fc",
      "name-candidate:59b4bb49e63311c849545a7c5b21aa64bf870e9aa4966b490185b8579bf99cc8",
      "name-candidate:cad379b1f3f6067590a0e0a528626d2959424f423e6c7bd6af7bcb3cc9478dd4"
  ]),
  ("name-candidate:c754b4f0109c3c03f8897ef5fba807090ab49fc11ce16337f66cefb915f29e78", [
      "name-candidate:2e4e18a8747dbbeb1c07f0cac18288582e02caffa83a47f8728577b1ed9c4e4b",
      "name-candidate:45952e25bdfe8f23e13acb820b343e3cbccd7808207048eed68e53fa524254ba",
      "name-candidate:c754b4f0109c3c03f8897ef5fba807090ab49fc11ce16337f66cefb915f29e78",
      "name-candidate:ee47117a8eb29cc03ab5d808168849ee600771beebe02f182ba60d521f8540ed"
  ]),
  ("name-candidate:e09ca0361a0c5986e0ab27e17ca6cd0d09622f6018a5f63b0c3258355c4384b8", [
      "name-candidate:072bc42d3be12c30d85646aefc62fabd8d4cd0cb59b056b663e142a0cd7e6484",
      "name-candidate:7db9b990a67df3543144b7da940a106809a4c611e7dd6b53265c16f7ec0a6fda",
      "name-candidate:e09ca0361a0c5986e0ab27e17ca6cd0d09622f6018a5f63b0c3258355c4384b8",
      "name-candidate:e3b2800eddc7725a2fcdd3417bb2d4160561304e913f5a169686982a50445984"
  ]),
  ("name-candidate:c29b91bee1f947ec74a2a9edd57d75f213f5fced123853d573b97919b1660b79", [
      "name-candidate:4b7504efc366a9b455b3398abb8ca268a8786fcc2636456e158db1190c5b8f04",
      "name-candidate:9a378ffdd375521083ca33d1c5eae5079573b36ac38ff12dc36c53df7828bc87",
      "name-candidate:c29b91bee1f947ec74a2a9edd57d75f213f5fced123853d573b97919b1660b79",
      "name-candidate:d0c0ce47849f555a8764b5fea5ecdf5950ed793420b2234256362fbb53626851"
  ]),
  ("name-candidate:dc671ba0207516666031f06dcf1952f10363e1292614382a115fbd0b112f79c8", [
      "name-candidate:366c808851015403df2ed7b68e7f3ecccbd3bc7544dbd03b9218832951366e4d",
      "name-candidate:43cde55bb2151e1744168422fa4c1fbea1c0746af9c452501bd808abd33ee331",
      "name-candidate:dc671ba0207516666031f06dcf1952f10363e1292614382a115fbd0b112f79c8",
      "name-candidate:eab13a77a4bc9743d0def6a66ff01d9c4bcf95632ca1e6c355351e6e33d21b57"
  ]),
  ("name-candidate:8eb66817e99adc0b7bf94f5774cc9aab195cfde5d43e54677ce2e4ba3a76ed40", [
      "name-candidate:1f8a57dca533ba790a6dfd730706720f7a6a4bdbeef5b1fd71e84eaecdba7923",
      "name-candidate:8eb66817e99adc0b7bf94f5774cc9aab195cfde5d43e54677ce2e4ba3a76ed40",
      "name-candidate:9add53f7321a6b62ea8e53821216b3b25b26a237f4c1d2ce465e36052226cf90",
      "name-candidate:c0ce45be3d7a2640261363ffe5a4f18d35cde77a61ba2c06d623f57e4746c5fd"
  ]),
  ("name-candidate:f86ae9df6cdca0f83d860d5d9bb609c19ff22d58ea75dbfd0cec91404459df1c", [
      "name-candidate:0ae71f3aa0a514ebd9b6cdcf30c5621aca556512a8c446ea8fa9b215965f9504",
      "name-candidate:5eb052c54a5c8cf99fae876e88f6d83205d4060bc9a8729a380d70a8a3042f20",
      "name-candidate:f86ae9df6cdca0f83d860d5d9bb609c19ff22d58ea75dbfd0cec91404459df1c",
      "name-candidate:fb18a53d8c47c729bb2483f1f050b6878b62b177c5cfefb14911adf9cc3596ea"
  ]),
  ("name-candidate:506e1ff8b41828dd7b0960c96d007f69e1684c36acc73fef43c9fb2ab37b6b12", [
      "name-candidate:15ed977becd5b0d45f3360f44e6897c1d6e4948533a34f34839945b1666930d3",
      "name-candidate:506e1ff8b41828dd7b0960c96d007f69e1684c36acc73fef43c9fb2ab37b6b12",
      "name-candidate:e074f438dc6fe7a4a0362ed7b039d177835310580435f2e4f1e17c02658ca811"
  ]),
  ("name-candidate:81e880760b6a43367ecd5b8a0aee2338830018efc9c3a627f3fec9b434c6aa2e", [
      "name-candidate:40ee1171fd26fb383dcd47d9849644146f829f1d88940d346629f3b6d7a1f2d9",
      "name-candidate:81e880760b6a43367ecd5b8a0aee2338830018efc9c3a627f3fec9b434c6aa2e",
      "name-candidate:f121e63950b3713dd82f800b9ee3184ef32d741c0d6067e3e03aebe5a2d894b4"
  ]),
  ("name-candidate:7e20c1d0bf535a851d8475960c96a5bf958dcc7dc28f26126e537215e47f6125", [
      "name-candidate:7e20c1d0bf535a851d8475960c96a5bf958dcc7dc28f26126e537215e47f6125",
      "name-candidate:b755e18e67cac640c1d33c19ef319cca931ab32c9a9fc07443f135d8dd2229a7",
      "name-candidate:cf9c0234865e2700c96a5085d55f5ec7e4dc86ca8335bab5f0ff43b27a438c55",
      "name-candidate:eea77eac29f3039fe5d234836e194fe98546eb43d3734dd6c940e96bf9220b7b"
  ]),
  ("name-candidate:878992a40165e0de2cc5e5f03380e8de475f2ffae4d04f47699d6419fb6c2437", [
      "name-candidate:878992a40165e0de2cc5e5f03380e8de475f2ffae4d04f47699d6419fb6c2437",
      "name-candidate:87f07fc43c625b1c3b2902a64f0bd9696485d8438c452e328ba805b24c975c1a",
      "name-candidate:930af9324a55c34bda8c61aab6a87c7bf04e96995a5804707c2980cef8491076",
      "name-candidate:d823597921131e5bba0ef252260031c2f932aef7af1742ec323cd7fa6aeda2e2"
  ]),
  ("name-candidate:48b5e9989b1762895cb4a88fcd0437e4ca1f7f17e5fdd3f46b5d57b4f7d9774f", [
      "name-candidate:1ed50dfe0ad682a6e67f7e8518af35a538acd0c8ea0d6c3f1c38ef4446f70538",
      "name-candidate:48b5e9989b1762895cb4a88fcd0437e4ca1f7f17e5fdd3f46b5d57b4f7d9774f",
      "name-candidate:a473fc205db73b77ae378b6b6a6f4857527469370c25b90b06617678553231e3",
      "name-candidate:a7098dec4cecf2e30b0a11bc819fd1437579bf3daef70100544b9ff94ccad0fa"
  ]),
  ("name-candidate:936f270de70204cbd6ab54219475905174782c79c07d3cfee729155cffbc7df5", [
      "name-candidate:5b6b5bd452531e0750069ecab57c48960543ad9059eb8106765544a23912c3b2",
      "name-candidate:904e39f746453230122214b918e39577c60ea1cb60220e241a5aa6eb991f4f25",
      "name-candidate:936f270de70204cbd6ab54219475905174782c79c07d3cfee729155cffbc7df5",
      "name-candidate:c3450623fbe845d698a04ab71de424ba6c563ffdb3275fb9252dc64f111d11c9"
  ]),
  ("name-candidate:a5d438848d95abfec9c51daf328424d1510898169f48379dd175f6b21df2aa88", [
      "name-candidate:a5d438848d95abfec9c51daf328424d1510898169f48379dd175f6b21df2aa88",
      "name-candidate:ed1d7e307744ae2a8e8a548e50814fb54bac5ba1807e064695dc65b6b4dd398a"
  ]),
  ("name-candidate:a72c99aae4b23d3138f1145a7db7319a4259d7df5274d7a6867f8e47e5753c8b", [
      "name-candidate:6e56047b9767464dbe1ea8e26a0cecf26ba5692b473a6ca43caf6b1dbcfa226b",
      "name-candidate:a72c99aae4b23d3138f1145a7db7319a4259d7df5274d7a6867f8e47e5753c8b"
  ]),
  ("name-candidate:32873ea033cf02fb65d9b86d72ab29a213d1ac2e9f2807849eef8c8c1edfced0", [
      "name-candidate:153bf220f23922e0c504ddcdef89a9893adb88b63199117783d38512868c8fbc",
      "name-candidate:32873ea033cf02fb65d9b86d72ab29a213d1ac2e9f2807849eef8c8c1edfced0",
      "name-candidate:9b33cb8a62e389aaaca0c50977d9ecfe7cdb25241d3d30f19ab0d6d041d974f7",
      "name-candidate:bdf072ac90a088678610a2e8d92b7247c26215445ee181697644692b6c1be4d4"
  ]),
  ("name-candidate:aed7363c9d32eb3afeecbb55f16e4e5ac8a81c0fc3627e70429986528fb60f57", [
      "name-candidate:aed7363c9d32eb3afeecbb55f16e4e5ac8a81c0fc3627e70429986528fb60f57",
      "name-candidate:f11047ebaef3c8e45dadcebd0f8bbc5e4216ac8ca1670af8e48653df32c4834e",
      "name-candidate:fc4fd1f00470fbd7838ae97924c937b0d32635591c9205be76462a7d875eec9a"
  ]),
  ("name-candidate:c782f91a8fbdeb3639e7fba5e586cf765989e27368c9dc6ea8797a3e47dec21a", [
      "name-candidate:23c7719f5261800791be8cd6fdb849f0da9cf035112c55c0355a589b34de6fc8",
      "name-candidate:7dbc70e7845d23c4d2ef8f5f126b0b1a61a3da1c8fd340bb4ccc56dfea532c83",
      "name-candidate:c782f91a8fbdeb3639e7fba5e586cf765989e27368c9dc6ea8797a3e47dec21a",
      "name-candidate:ca822aa01e4717701c36288275ee301f28b6ae2298ea8dc6fd87d2ea2b2360a9"
  ]),
  ("name-candidate:506881587b23bd0ef5b36a8ebe7995d86cca82f601aee6bda66b842bb590cabf", [
      "name-candidate:0a1a527cb7999ccc8cec86cd253a4eab5c28c1bf6aa4dcc06c791ed6e38b35e4",
      "name-candidate:506881587b23bd0ef5b36a8ebe7995d86cca82f601aee6bda66b842bb590cabf",
      "name-candidate:7eba78d709a8995897fc04947fe2ec083ed610c62ca58d2e5e2d216bb2a87fdd",
      "name-candidate:8455d494e8da4e08053b2652132113cafd3a49ec6d846a77c9645e658783bf93"
  ]),
  ("name-candidate:b6a16c1757f8e92c18550da9a212b575506fed9ac937a9d512840ab52840d633", [
      "name-candidate:2309b654599075ef750006eb960f2eebd28ffe6b844107c9ac7f93af7937b540",
      "name-candidate:6697bc414f547e4704a68c563e2f481e9920ea841f168a9600bc9c6369cdfaf7",
      "name-candidate:b6a16c1757f8e92c18550da9a212b575506fed9ac937a9d512840ab52840d633",
      "name-candidate:f33f0bfb71c7262d41b33982305e6070e7378e5d094517379d1bd552e1aec269"
  ]),
  ("name-candidate:46e50b03af7b7a3e09764684bdd74a07dd5ad3fc8442886388483fd89b085b08", [
      "name-candidate:151ffaf0e3534626f028ae980526aea6e3cd92cde2d41e88105c216f790dbe08",
      "name-candidate:46e50b03af7b7a3e09764684bdd74a07dd5ad3fc8442886388483fd89b085b08",
      "name-candidate:ac35a6011bf45a712fdcf9787a68425e9b91195e698218209899467893db4e0a",
      "name-candidate:e03d9cffeada6617e40daae48b2e0627e797f031e9f68b53bf7275be881e4e57"
  ]),
  ("name-candidate:ef619c38364c75614bf4658c50fac8d3686a3576de718dd9fa320edafd9a6d1d", [
      "name-candidate:1e055f4e68c9931dddf99ad5aa9c57a63afb2a1ffb0eda46662755bce933f7ca",
      "name-candidate:ad6deb35cec409f0089fa04c24f32fb0214b1c38619ddedaf9ba8184f711f950",
      "name-candidate:e9782f8c191c52b944952bd0aae94b798a70b08c3491a697bb9e3d6c0f4b32a4",
      "name-candidate:ef619c38364c75614bf4658c50fac8d3686a3576de718dd9fa320edafd9a6d1d"
  ]),
  ("name-candidate:f727de1023787138da8dc3b6192d693a57112a61e565a801c560977bd39d17eb", [
      "name-candidate:7b2aa528930c5f277dc529bfe8d1c81dc97758fafdecf9c64f3e55021091b231",
      "name-candidate:96fb6e975a4cf90ecb1bdf4a4f46567f4ca5510826f76b6e617ea63d2207ff11",
      "name-candidate:f727de1023787138da8dc3b6192d693a57112a61e565a801c560977bd39d17eb",
      "name-candidate:fe4ff9634e577fc875f1f5ee8890a022ce1d09554e4f9fbabb8b42a7e8590e34"
  ]),
  ("name-candidate:4d0caf1ed07aa3a40a71e9be14591345755ce1e54661e0c382fb3a6aaa8964cc", [
      "name-candidate:4d0caf1ed07aa3a40a71e9be14591345755ce1e54661e0c382fb3a6aaa8964cc",
      "name-candidate:f573999fb8cab54c0099139134b7c4beae123fc6eb98901ee52b8bb3a5f56a83"
  ]),
  ("name-candidate:54d8b3d251400a1bbf403e1dfeb831a89c161dfa1e88fded8beb454d28f5ec59", [
      "name-candidate:54d8b3d251400a1bbf403e1dfeb831a89c161dfa1e88fded8beb454d28f5ec59",
      "name-candidate:7cbdf850c8b771af441b173da9fb3d85314dd8ce96f97229837516c7447d091e",
      "name-candidate:b0b682cfd1b8508f5522df9613bb6c79e5a05145a3348b0289ee2adaeaf6e03e"
  ]),
  ("name-candidate:f4b8fd92ded8203487664c9739f73b227f198a8b31bb127a5e503103bed777ab", [
      "name-candidate:6cbafbcfe3a5ab0b839bbf8ea6bc6601c7cc617230360b00482b53fa1e53390f",
      "name-candidate:705eb3c4a204dfa1b6679054b10d6d6ea7c717980b1768ee7c4c10c41834311d",
      "name-candidate:8c6016326b94c7028ebccae4d71abc458fd2b29c70ef86a90fda6eeff362ac99",
      "name-candidate:f4b8fd92ded8203487664c9739f73b227f198a8b31bb127a5e503103bed777ab"
  ]),
  ("name-candidate:376177b3fc5cf0c4772aeae1bdfeda372e3044b03f88a8ea7d389fab59721cd8", [
      "name-candidate:376177b3fc5cf0c4772aeae1bdfeda372e3044b03f88a8ea7d389fab59721cd8",
      "name-candidate:3bbfa2e5affcd1cdadb03d00366fa8be7c8c2d2083c3d3d51fe933efb91def85",
      "name-candidate:69a0847130eb4533ff72a41dd03ba2a79ed3719ee87a7ea805775d6a2a03f64c",
      "name-candidate:bd1253e8f2f0fff6b30b86c8532823fd377c49cef825ff9857e7403e4367fb7f"
  ]),
  ("name-candidate:f8d88b6986d17a85c840152e03c503653ac882998307f5cbab3554810170ac0c", [
      "name-candidate:a9efe13f3749225d9c29366d91876abd2e7e3f9f204b3c065e9fe8b952a62ed8",
      "name-candidate:f8d88b6986d17a85c840152e03c503653ac882998307f5cbab3554810170ac0c"
  ]),
  ("name-candidate:e2d2f31c8d0ebabf9ba0a3e8473ba34f39f01dae8d757a55fe1655aece6eacff", [
      "name-candidate:3e6af4d4d84f6df4bc9f1f3122893f555c3e7576aa4dd335757668172b9fd605",
      "name-candidate:9aa519abfd1cd1c408ed3dcca88e528f006cdee20674ac58039a1177e142dba6",
      "name-candidate:ca0d8e7be973b6008bfd8c36c75f9e67b7b086245cd8a761d428d56b2ca88c11",
      "name-candidate:e2d2f31c8d0ebabf9ba0a3e8473ba34f39f01dae8d757a55fe1655aece6eacff"
  ]),
  ("name-candidate:5bc0f345ef2702daeeea47c8daf3d7e6bdcff113bb906b9a3515a233f2628a7c", [
      "name-candidate:5bc0f345ef2702daeeea47c8daf3d7e6bdcff113bb906b9a3515a233f2628a7c",
      "name-candidate:7abd61b9898821cc168ade269ccaa19375a8d04f204b136bd4c541829df84c6f",
      "name-candidate:93ba02eb831c4fddfc824191ea5abe54d4865c4ad8a29c2e0547f87e120db672",
      "name-candidate:fda0af9da5292f8a5a619b27d8dc8801da7183cbe631eeb6cdd4509cc9865bea"
  ]),
  ("name-candidate:4a9e9c26efd3ec0f976d7bfbf7059a974c755045e6f434e13be6eef38eaef934", [
      "name-candidate:3dfb8cd8641b5102ee307a0fec04576830eaf954aad155d40eac70d9c8d89c52",
      "name-candidate:4a9e9c26efd3ec0f976d7bfbf7059a974c755045e6f434e13be6eef38eaef934",
      "name-candidate:cfe2dfe557ad10c3cd813eb6e1fcabbca30f968f3dbfffdb654daebcc27f360b",
      "name-candidate:e5230665489f80eb413bea81bd8113a18d86377669293b08bcd6b3452ed38379"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L53318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
