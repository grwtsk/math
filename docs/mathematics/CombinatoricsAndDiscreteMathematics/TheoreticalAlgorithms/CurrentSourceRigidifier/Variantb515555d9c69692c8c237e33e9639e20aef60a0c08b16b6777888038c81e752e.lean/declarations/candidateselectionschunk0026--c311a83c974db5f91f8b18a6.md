# candidateSelectionsChunk0026

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:921452f090783d84e9b0df477e830ae0859f657addc762590fd2360fb70fc0e3",
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
  "slug": "candidateselectionschunk0026--c311a83c974db5f91f8b18a6",
  "source": {
    "blob": "c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50728,
    "line": 50354,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c311a83c974db5f91f8b18a6cb2cceed8b2fc9b2622afbed3ce50400a3297724",
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

Occurrence: `declaration:921452f090783d84e9b0df477e830ae0859f657addc762590fd2360fb70fc0e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50354–50728.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def candidateSelectionsChunk0026 : List (String × List String) :=
[
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
  ("name-candidate:5815592d71f1d92c8e5a527cb69f1ec69a6ca90a04291d81d5d9cfedade5498f", [
      "name-candidate:26a20672b8703d38db33a039c3c8b6c59f786863b0c234f817374e619168b1ee",
      "name-candidate:5815592d71f1d92c8e5a527cb69f1ec69a6ca90a04291d81d5d9cfedade5498f",
      "name-candidate:769801bd53f5f382a220274a902130d2d244cd0e98a793cc283f731754ec5964",
      "name-candidate:c8753c8a6ea570ecb9211a5e91203ecde538d614b5804d950977c1de505f8b85"
  ]),
  ("name-candidate:3b4a050b33d7a105e2160df9a788cce399ecfe101a306f26590e210e78eae574", [
      "name-candidate:3b4a050b33d7a105e2160df9a788cce399ecfe101a306f26590e210e78eae574",
      "name-candidate:72ee6b1fd9a631e72c0855e20f637d9adeda5a6c18b08eb7aca53262bbc2e883",
      "name-candidate:78ed43cffa67a20ab82228312b1db3bfa4a3b3fd5f30d1cd9794421311285b97",
      "name-candidate:be18980703474063c09be048ce8cbfaa1e8d12929c61f9a9e447ddc92e23ff27"
  ]),
  ("name-candidate:ddde5359ea6ffeb60414e4aad75aa197de7161105b1a2d9dee33afec07280b51", [
      "name-candidate:712689ee585a60fb4b54e0f62d90735fa6816534759d9c4960b08b3e2de89bb4",
      "name-candidate:b7c5076b596caaf70219bea787ce9f62fc6cc1c3d4c008ec9f62b327e56b82d9",
      "name-candidate:d390e43b0d24491496614455f959bdc4ee250458961227e00af6a11c1b5f3bac",
      "name-candidate:ddde5359ea6ffeb60414e4aad75aa197de7161105b1a2d9dee33afec07280b51"
  ]),
  ("name-candidate:9cc8ad59e6a902a56bcf23a6bc7c6ccd6696cfefaaa33c17c34d35361319958c", [
      "name-candidate:055c072976d808f97e8ce34af638a5dafea74413b6d9c9a192ba83a63024354e",
      "name-candidate:5000a1f521a3f4989a6304f07bc81b5f598cc7b1a463707e9388c3149ed85600",
      "name-candidate:9cc8ad59e6a902a56bcf23a6bc7c6ccd6696cfefaaa33c17c34d35361319958c",
      "name-candidate:fca550667ffbdad0efb4220a642be68c0a181edea485bab1e8aa0005a85735e9"
  ]),
  ("name-candidate:429fef9ebc68427fd10752f82ac1a4656612c93b0160fb4f07a6feb26da7071a", [
      "name-candidate:1002f6dc243e2f1e95fdd3c3fd6a9fad5210c91d4e460515d8e6c06fb9b894cd",
      "name-candidate:429fef9ebc68427fd10752f82ac1a4656612c93b0160fb4f07a6feb26da7071a",
      "name-candidate:8511082f2c4ec92b44739f5ec8f23a6764201ca99e1e3d9a50dee11b615a7ff8",
      "name-candidate:e251a5e7235538026a9b2096b94cd7f5e21bc91a892522b84eea0f1b82e11c6b"
  ]),
  ("name-candidate:423dd8161698f3871cf997887f18766189b64428988e087e2100eb4d9868176e", [
      "name-candidate:423dd8161698f3871cf997887f18766189b64428988e087e2100eb4d9868176e",
      "name-candidate:a11b196e7e342989ddf7ab47dca8f25c72a97f57e5152b5ba45bd7521a035161",
      "name-candidate:d8b645ca9ab91202458f8795949d5f73d247ee1767242d73ed870734fdf421b1",
      "name-candidate:e95862a386c261176ca403a02814900bf91c65263fcbca59c43d684cfd4b3663"
  ]),
  ("name-candidate:3d98a7f0c175ca086a3dd9dc59c679303ae16cbccdad441a8a3b08b1d5f13afd", [
      "name-candidate:3d98a7f0c175ca086a3dd9dc59c679303ae16cbccdad441a8a3b08b1d5f13afd",
      "name-candidate:68e91806ebc23dbdbc41690581ecbb70e45b25c35c26dd765c65f70d41659b23",
      "name-candidate:6eee0427cca3d81942ea5d956d875024bda9f02b0ef917b2b2e1f2496c98dd9b",
      "name-candidate:d7905b73bb36c9252b854ca0213fa8adaf62aed612feee95f1437ad6feb2715f"
  ]),
  ("name-candidate:7ce9098378d9b19c41f1f0c1fcff9de64271b28d4f9ec99a41494342c2eeddcf", [
      "name-candidate:1fd37878426421434540c4d10358f522b73567aa352e13f24018117f319e5fdb",
      "name-candidate:3934194f6907bd84241b00cf1d440cf9e6edc974884f40fb02dc6d98d37796d0",
      "name-candidate:7ce9098378d9b19c41f1f0c1fcff9de64271b28d4f9ec99a41494342c2eeddcf",
      "name-candidate:ae6c52af91e85e76b25992af59d9732f785b07409d9da49eeb27fc1224994d66"
  ]),
  ("name-candidate:8dbc9eb3c2b3f1d4f8f38bf9d86578a4b147f41d656f0315d5a910e10b1d38fa", [
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
  ("name-candidate:a03b19bd8fbd7dbdaba13b96bb58ae3d429f2e5f35f98b9e4528d78f8ca0af85", [
      "name-candidate:a03b19bd8fbd7dbdaba13b96bb58ae3d429f2e5f35f98b9e4528d78f8ca0af85",
      "name-candidate:a4a443fdd308464741b29d731789e95baf3cf32102efacabbab49f4c463439fc"
  ]),
  ("name-candidate:cbb41853fb0901921f92b4a4550e647d2f20d68d0981f22fb190720a821bea7e", [
      "name-candidate:29209d9b4f1034c8c0140c14ce668aeb0692e6b703d8b376e909056a91771dc4",
      "name-candidate:acf9d5af3439e570d21247e06fedb4ee0ddc05b5fc23681dc17782a21c11180e",
      "name-candidate:cbb41853fb0901921f92b4a4550e647d2f20d68d0981f22fb190720a821bea7e",
      "name-candidate:fafbd2f61205e57fc5c47b906c3da89c3cd93354c58679932128785f0c53b2d0"
  ]),
  ("name-candidate:77b459b9072b78473642574c68e689b4a631267ef1ec7ed68a667fbacbb70033", [
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
  ("name-candidate:3623156a546fd0664a8fdc4ad3d3ce7a6a24c7b97d8833f98d04f17115dba662", [
      "name-candidate:08750c90ccde86fdd175c0923db37a72d6b6bbc0ba0dd830f60145b6f0e1d390",
      "name-candidate:3623156a546fd0664a8fdc4ad3d3ce7a6a24c7b97d8833f98d04f17115dba662",
      "name-candidate:494d1615a7099ce60b0e23e6d5496cbeca8731351d6cd7037a5253df05d52ca6",
      "name-candidate:ff9912079f0ab80b3901217921b33eb5e652d58ee511a07af8d873729b92dc78"
  ]),
  ("name-candidate:66ce6eed5e572f99d7a8dd14d6afaeb4692272825f8474f6d144e3c687293f68", [
      "name-candidate:66ce6eed5e572f99d7a8dd14d6afaeb4692272825f8474f6d144e3c687293f68",
      "name-candidate:91c7dfa09813020218468ac8851fc62ffb4b344e5c73b4e69dbbc869e190765d",
      "name-candidate:9b5e9bcb6ee4d109a965aedcc38f511413af23110977b9b6b5674d44cf3b6ff0",
      "name-candidate:c4e4e1f42924e72ffb471a03e27f1a2a0816990726b56b8ad5c971e2cce0b657"
  ]),
  ("name-candidate:bec466910c89086f58dfe6b62f24593870934eda02be46f247c5e0b63e21c96e", [
      "name-candidate:00b42fe31f3169a98add002e9e4c13fb0fb276b456261fecc1acecf7f839d7e3",
      "name-candidate:bc69cd4153e3e0e5804ca5da22fdaa9b87857b381f12faa7d428de728d091cd6",
      "name-candidate:bec466910c89086f58dfe6b62f24593870934eda02be46f247c5e0b63e21c96e",
      "name-candidate:d01918da5bc8d782bbef6f650684279df1080b1ba1c6b2a404998c6302756905"
  ]),
  ("name-candidate:a72db6c32b3d822873d747efe6417123249db9e7aa324b6feabb63af748f0eba", [
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
  ("name-candidate:84e8cdacf68a3699b3d8627f11e78363bcb667a8b7afbb2862fde9efbaf39c03", [
      "name-candidate:09d21f9dc344b22a9a490afdad0075243743d7f7c13d6dc958fce04d533e7390",
      "name-candidate:80c34816dbde637d6df373af1fe144f6ca27d1eb89b48f3fc1a37411a522c127",
      "name-candidate:84e8cdacf68a3699b3d8627f11e78363bcb667a8b7afbb2862fde9efbaf39c03",
      "name-candidate:df02a39c41499eb49093afe125dd9de7de182b191faa1514f7c554de87e431fe"
  ]),
  ("name-candidate:0d68d0153a184b39504b97fbe89433af9fa15c169304cd1db594579e41be1ec8", [
      "name-candidate:00868392e5806e509cc4719652a06e483d55ab6832b6d9dc69465cdcf8447129",
      "name-candidate:0d68d0153a184b39504b97fbe89433af9fa15c169304cd1db594579e41be1ec8",
      "name-candidate:a7ee6790d97a65457d6df28d38a26ff274a1e35f483318d2dcdd9b5a40f83906",
      "name-candidate:c1d245013c8a38857e12e981bb1f2dd0d1a1e635c98d3c527be1d3b118471be1"
  ]),
  ("name-candidate:580e72122a36f0142857bfa24dfd9f2dee53062b197fdb8d8ca733521430dcb2", [
      "name-candidate:0eb5431acbcfdc1a2806a6444b4e64cb572307bbb893dbd5bf3a0a1a62e989c7",
      "name-candidate:580e72122a36f0142857bfa24dfd9f2dee53062b197fdb8d8ca733521430dcb2",
      "name-candidate:7219ddf61f454997d556654835ec0528373a2ca84921eb9a95865d66c43f6f30",
      "name-candidate:a22202dd2fe4ccba6556d51e6dbd91f19d3b974d78f8c51082f184a0f2568830"
  ]),
  ("name-candidate:08c3281e06a7defc433a70f83df984e2800752f9aed45a0f75fb40fab3e9275d", [
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
  ("name-candidate:4f84dc8da23c80d5a389ddba4182fc629f8a57e87d08dc5288fd1a2122c8559a", [
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
  ("name-candidate:a20bf2239b5d249f6cc80f50e1022554c23636b98e21cf8de2f79f660bd95416", [
      "name-candidate:11ecc85624f8aaa10e7bea85a33963eda31c9351cc05a98ccf51ec22e58894a0",
      "name-candidate:a20bf2239b5d249f6cc80f50e1022554c23636b98e21cf8de2f79f660bd95416",
      "name-candidate:d2fcb00983bcb3328b52ab215da6b14710b7c297234370409cb7a768c842aabd",
      "name-candidate:e7c905cf439b4db1f678737c13ff137558688c392ac4d03e22172c9ea2738c6b"
  ]),
  ("name-candidate:1098df276d0094ff0f2571f76d3a3a49e19557bd8e3adac15abe5ce019029225", [
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
  ("name-candidate:b4c9f35b5ede3729e08e903c45238bb312e187156be77ae86816e361844d30ed", [
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
  ("name-candidate:6b09b6c230ad6a029c8e276fbb26449fe88547168202bcafd86f25aedd5314b8", [
      "name-candidate:3116fde77c31bba000b013f43ad446c2ccfb54715719e5e9bec22e54601e5ca8",
      "name-candidate:6b09b6c230ad6a029c8e276fbb26449fe88547168202bcafd86f25aedd5314b8",
      "name-candidate:6e50a001c8ec6b3e9f988f6fef1d64859c745ad3391978653fe7f4c57020d1e4",
      "name-candidate:f5fad000941cbcd82e55675d7ea4f0b9675808d4e6a8d29b824fe1359d5dd648"
  ]),
  ("name-candidate:5ffc992cbdf11d4751fe088bd6d1b19023f18532b65126ad9c48c377b8425cc8", [
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
  ("name-candidate:cb7eaf297ce4fc16832f2a279f3471c820ead55c89f1786c1cfe72c0cadf20c4", [
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
  ("name-candidate:e0519b13481495a2a4ccfb72fa2afe73386e14578bee7dfbb55019db4ac566ef", [
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
  ("name-candidate:a953892d819b6e9999b29d0b7202f48a7fe378f8f7212a36afb3a8690262740b", [
      "name-candidate:36e07e172662135d99048f11d05f5e2bea431776b5291a3aa066c8fd175df45d",
      "name-candidate:a953892d819b6e9999b29d0b7202f48a7fe378f8f7212a36afb3a8690262740b",
      "name-candidate:bcea17762f939cdc59a5b7ffd9f8255a6ec160b0d614bedbf78bd92059737b48",
      "name-candidate:c567f0d3a3c4bf88b97706e87b006b36e8095255d84169797740ddafdd5302c1"
  ]),
  ("name-candidate:f99e7cbc1efca8172521453d29ffbefc7437fc2c76dc17f2b2c673446e4c118f", [
      "name-candidate:7f3caca0555707d948c7d47a717df92c4626a8bc109918bab7249ac55378588c",
      "name-candidate:d5e9af999be77564b05a7d80c298d82df70c935efbf430843aad2f1718e95b73",
      "name-candidate:e30322037bb86309ef6e79de865f242562c5bc25bf96ed926281e68d721cc902",
      "name-candidate:f99e7cbc1efca8172521453d29ffbefc7437fc2c76dc17f2b2c673446e4c118f"
  ]),
  ("name-candidate:bcae01baece8eef78e71803f71218efffa8cfb6e56cbbd156e16d68dfc1d5efc", [
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
  ("name-candidate:8069ec769a652a5fc75867df3c7749fc88dc1555bf88231674eb76d22cff925e", [
      "name-candidate:434c9c7cf042c8c31fb6f750c0f3869fdbf241515a33c484fd0524695bb2fc68",
      "name-candidate:6b5933799c8b79ac9fa57a9151ba1087a38817413d58894b4b1e9cb960fb0573",
      "name-candidate:8069ec769a652a5fc75867df3c7749fc88dc1555bf88231674eb76d22cff925e",
      "name-candidate:921f76cceab0d2247fb83f8192686979b1400a9d32d74ca0294b6c2a82d9ec63"
  ]),
  ("name-candidate:b1de9faf62d2fb70bf2a51c339f2f4da4c492b2cb8a6fd75b31cbda1e651e35f", [
      "name-candidate:0c578409be951d4fc996b50a7bb0650057042d931f1c6ba61d7e695e194a2cd0",
      "name-candidate:24f1f3efed3f949b0a24fe943b49a9eaeeecdde772244ff90da211103d8fca81",
      "name-candidate:b1de9faf62d2fb70bf2a51c339f2f4da4c492b2cb8a6fd75b31cbda1e651e35f"
  ]),
  ("name-candidate:63634a5d04ad941ebd169216b49604f83992e56b3c94824798bea7a66bd1320d", [
      "name-candidate:1bf9480d9a67e4de2f4c8744036bfe6fc0072f4b68b960ead8e46430c4524e82",
      "name-candidate:63634a5d04ad941ebd169216b49604f83992e56b3c94824798bea7a66bd1320d",
      "name-candidate:c3b6886f8102fea73196cc315e0fedf5c1a6511211321d844875aafdf91fbd8a",
      "name-candidate:f2d311f16317eb7b53e210beaaf23f457ea26f515bf99357f2517e54028530a5"
  ]),
  ("name-candidate:991a68a31305f68ea1663ec763543a45a202c97e1c717f71749fc14c150729c3", [
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
  ("name-candidate:027dda32b1ea840ec06e4c088d581de9d4f9b7429cc8c78a2dd8d4802c674e61", [
      "name-candidate:027dda32b1ea840ec06e4c088d581de9d4f9b7429cc8c78a2dd8d4802c674e61",
      "name-candidate:b15e30db2b5a6f64f3318f987dfc521bdaeee53ca211d87be890253f8263b6f6",
      "name-candidate:b8858bc460dcbab58f30bf10f06e5f4a2c65b49655a1796dd7e66d6e7778c428",
      "name-candidate:e962847819f11de26a9a68f658879a91cf100a8285d165c7074ceec1124ab1e9"
  ]),
  ("name-candidate:59b4bb49e63311c849545a7c5b21aa64bf870e9aa4966b490185b8579bf99cc8", [
      "name-candidate:220b8df7281f858b9b4b729ff07e33179e6b3bceedf9c25053fd0380014911cb",
      "name-candidate:4e661b3e0bd284753863a92e6ff276c3d7f6f7a5c65779231b685debea99d4fc",
      "name-candidate:59b4bb49e63311c849545a7c5b21aa64bf870e9aa4966b490185b8579bf99cc8",
      "name-candidate:cad379b1f3f6067590a0e0a528626d2959424f423e6c7bd6af7bcb3cc9478dd4"
  ]),
  ("name-candidate:2e4e18a8747dbbeb1c07f0cac18288582e02caffa83a47f8728577b1ed9c4e4b", [
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
  ("name-candidate:43cde55bb2151e1744168422fa4c1fbea1c0746af9c452501bd808abd33ee331", [
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
  ("name-candidate:e074f438dc6fe7a4a0362ed7b039d177835310580435f2e4f1e17c02658ca811", [
      "name-candidate:15ed977becd5b0d45f3360f44e6897c1d6e4948533a34f34839945b1666930d3",
      "name-candidate:506e1ff8b41828dd7b0960c96d007f69e1684c36acc73fef43c9fb2ab37b6b12",
      "name-candidate:e074f438dc6fe7a4a0362ed7b039d177835310580435f2e4f1e17c02658ca811"
  ]),
  ("name-candidate:f121e63950b3713dd82f800b9ee3184ef32d741c0d6067e3e03aebe5a2d894b4", [
      "name-candidate:40ee1171fd26fb383dcd47d9849644146f829f1d88940d346629f3b6d7a1f2d9",
      "name-candidate:81e880760b6a43367ecd5b8a0aee2338830018efc9c3a627f3fec9b434c6aa2e",
      "name-candidate:f121e63950b3713dd82f800b9ee3184ef32d741c0d6067e3e03aebe5a2d894b4"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean#L50354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
