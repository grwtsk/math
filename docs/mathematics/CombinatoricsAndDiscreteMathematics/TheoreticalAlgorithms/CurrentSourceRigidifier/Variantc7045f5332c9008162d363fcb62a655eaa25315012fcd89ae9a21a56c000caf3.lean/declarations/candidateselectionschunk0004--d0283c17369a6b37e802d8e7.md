# candidateSelectionsChunk0004

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df773ecb12114f5e25ed5d7cbd10fae582b1de3058b93a29945c4e8c7819f8a3",
  "kind": "def",
  "lexical_name": "candidateSelectionsChunk0004",
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
  "slug": "candidateselectionschunk0004--d0283c17369a6b37e802d8e7",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45688,
    "line": 45369,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d0283c17369a6b37e802d8e7230483cdc893fd920b3137fc9d9c0ecc0d3d898b",
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

Occurrence: `declaration:df773ecb12114f5e25ed5d7cbd10fae582b1de3058b93a29945c4e8c7819f8a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45369–45688.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def candidateSelectionsChunk0004 : List (String × List String) :=
[
  ("name-candidate:bff726293012610111e68480a07a6bc4d8a1ba28ebaecf1461e79865ae8d060b", [
      "name-candidate:bff726293012610111e68480a07a6bc4d8a1ba28ebaecf1461e79865ae8d060b",
      "name-candidate:d949e6a15c0433a70bd16374cb46f9f796b1f57063ec47309629ae84d69cb136",
      "name-candidate:f93159b50200a4ece31c01d0cbe5fecfc0918047bb6678b511d2ae7e3d6bcd78"
  ]),
  ("name-candidate:8259d052dda3a29586da311019be250a378f4dd3379b9aee9fc24c062bbb62fd", [
      "name-candidate:8259d052dda3a29586da311019be250a378f4dd3379b9aee9fc24c062bbb62fd"
  ]),
  ("name-candidate:c2094d380e01720870fd7fef89f82261052e04b4bfb59bef688a6ad9d9bd186b", [
      "name-candidate:c2094d380e01720870fd7fef89f82261052e04b4bfb59bef688a6ad9d9bd186b",
      "name-candidate:c4a6a4e8fad3f1f3215260306e5f968b87385e100198b2635837f022b809a88a",
      "name-candidate:c99c0e277d20a268dcea3d9b3b469ad7266d35bf5a024254c4f13716708ed6cb"
  ]),
  ("name-candidate:99f8c2b68fcbde5d5803825ff1bde7afe9f27802bc9d4cfdae7ea5fe1791f92f", [
      "name-candidate:05f52f492a511a59ef2a223fb1a9572652f2ff5867f6cb8f36728d90bc346af0",
      "name-candidate:99f8c2b68fcbde5d5803825ff1bde7afe9f27802bc9d4cfdae7ea5fe1791f92f",
      "name-candidate:c8f5bd44e563efd35bcaf9125afbe5e2275a5851cb2774df8a879730bc3845e3"
  ]),
  ("name-candidate:c95d6e7143d10591b5845dc50f34a8353daba4396f1ea0ce44ac90075d374894", [
      "name-candidate:2e755156330618636ba8fdbcc3decc0586df643d3b485b262ceb1961a9b8a3b0",
      "name-candidate:44d052dc6c4755a07b139fb2efb8129e788c92dcd9b02f4be79479edaa8a6a0a",
      "name-candidate:c95d6e7143d10591b5845dc50f34a8353daba4396f1ea0ce44ac90075d374894"
  ]),
  ("name-candidate:ca98384d05d65b15e40bacb4938169effc99bad0fd5ef046317982eee94c6a2a", [
      "name-candidate:671d9897c232e7f3c01647c0f54468932a55193d246e2ee13d314bb366506ff4",
      "name-candidate:9ff61f5244b779b4729d00cfdab518043fff3d2c1200bcc1ee4a587582e33d01",
      "name-candidate:ca98384d05d65b15e40bacb4938169effc99bad0fd5ef046317982eee94c6a2a"
  ]),
  ("name-candidate:9206d63d10a506102514749a600785c0ce6d28fa256696e09fbe79a6dc4b01db", [
      "name-candidate:2c26b25ccfaef9cbc34e2da7693a50a16a8ab5746c807f43ab0a107e25631da0",
      "name-candidate:9206d63d10a506102514749a600785c0ce6d28fa256696e09fbe79a6dc4b01db",
      "name-candidate:a9d2df24b44ab7f38a58a4987b0cb725a1c136f2870fb1f615ea2baa75080e0f"
  ]),
  ("name-candidate:da7def534f671946c88c9f83ca11b6dbfefda93fb23a1558b868f4626da203ba", [
      "name-candidate:10b17b1c404d4fa21f056403971f4db0e4453c19eb2353dab0da396becb3f850",
      "name-candidate:4b34c2dd1469a3a6fa433799fe748b36e20aecf5f61c98c15020f53aa0896755",
      "name-candidate:da7def534f671946c88c9f83ca11b6dbfefda93fb23a1558b868f4626da203ba"
  ]),
  ("name-candidate:ca0b29b170b951365772a369d4b600b35bdc84b6300107752aee0aeb807f115e", [
      "name-candidate:4126257ce1c2287b75da093e087d8acb175e253b51c73163723f903ea4cd8442",
      "name-candidate:ca0b29b170b951365772a369d4b600b35bdc84b6300107752aee0aeb807f115e",
      "name-candidate:ce1fa1ff418ed2a46cf940f5f5c4db05d35c48d7a89c9eee1b5b030a3e210bd8"
  ]),
  ("name-candidate:da08fd2e98f033e2acd2928837b708f5cad82f00dadb0a6022a39ea29f556bd0", [
      "name-candidate:6c9e78236ad1d4608d3c588a6b40f8bc51f8fdfad9ae58dd1bcb297a98a0d920",
      "name-candidate:89e2ba7b1fbdb6631b5fb0e82c3636d625c2fce53c023c8133e4375aa886f053",
      "name-candidate:da08fd2e98f033e2acd2928837b708f5cad82f00dadb0a6022a39ea29f556bd0"
  ]),
  ("name-candidate:d7c7525ee65ec18a9dbe291def1246022e5d8e3841514bfd8df611595086b70f", [
      "name-candidate:4e48d2e191f2150c719b9c978d69524250eaca9349958655a86791952eaa3b09",
      "name-candidate:a6a38093b876289ed6db11564a8e7502a1712c40bcde9a3bb8732ea1276e9aa9",
      "name-candidate:d7c7525ee65ec18a9dbe291def1246022e5d8e3841514bfd8df611595086b70f"
  ]),
  ("name-candidate:e04f8adcbfad575d8bbf72089ffda893a42cb9f761d97c9562df30de1cc97d12", [
      "name-candidate:18f48874a3a4d61eff24cc1fcff04d60bb512d93874aba20dac8bb56d2bee0c9",
      "name-candidate:531f3edbf3b508d5dce6df6404af06b88721cb274d9736eb6c1799ffc37aaafd",
      "name-candidate:e04f8adcbfad575d8bbf72089ffda893a42cb9f761d97c9562df30de1cc97d12"
  ]),
  ("name-candidate:7d4de05ba1f68a83b1aed2ffe0764680ddff36517b03e39aa9ce8f57a36ab4ce", [
      "name-candidate:7d4de05ba1f68a83b1aed2ffe0764680ddff36517b03e39aa9ce8f57a36ab4ce",
      "name-candidate:900ce8c869231cf03939d86856cde04ff643c1758b0fc8d3860241cdb230aef4",
      "name-candidate:b81b30c21ac3406f004ada3d6e2d6764057ce00b5c2451a6be078864aeb1703b"
  ]),
  ("name-candidate:49e99743c2bdbbec152f97ab1949605b98770336ba291bc05ce311adec9f1f18", [
      "name-candidate:2ca94e5b03104d5b170e32da87967d5320b412714253fc00b02d304a913f8512",
      "name-candidate:49e99743c2bdbbec152f97ab1949605b98770336ba291bc05ce311adec9f1f18",
      "name-candidate:8fafce9ac3fd6af80f923832d78fd5fcbc27f1514d9e41380c8160cd1a848e01"
  ]),
  ("name-candidate:ec8112d472cf2237989e1e2862f8bbcd643b5f6fe38477b12bfc0443ac785698", [
      "name-candidate:4b6eb3f27170287803881a6d39c26a04393ebec7b65da89e79de9db2984c8a7a",
      "name-candidate:5a019ce0569db597c96c9b2b4ee504b3947bfc720d79c7bed52ad6699a0975f6",
      "name-candidate:ec8112d472cf2237989e1e2862f8bbcd643b5f6fe38477b12bfc0443ac785698"
  ]),
  ("name-candidate:ff19dd049989f71d3072ee9e7da6c55ebea3c3df37ccc53b3e54072583840fbb", [
      "name-candidate:0380e8f0ad423a80504ed1d4510380eb65bc69be98f3dd29021fe6f5ec526c2d",
      "name-candidate:bc08101abb81d599f1dc755377a29061f150acfe6a49767c46be40ee228e94bf",
      "name-candidate:ff19dd049989f71d3072ee9e7da6c55ebea3c3df37ccc53b3e54072583840fbb"
  ]),
  ("name-candidate:cc9a05890b7e5028e0cb1241ceffe5a55f635e83ce6f30722e0ec5268856a8e7", [
      "name-candidate:0beb27c5e71267f22cdaea6f327bf6fb87c317c6de4701020f469147c449d6dd",
      "name-candidate:91d84116d6efb880374199b1d21839661c05e9f1397c56689544d0bb3fd9bf39",
      "name-candidate:cc9a05890b7e5028e0cb1241ceffe5a55f635e83ce6f30722e0ec5268856a8e7"
  ]),
  ("name-candidate:6c3e482d7abc366478261f1a67ce030b6d0d083008fd11c09f112230694ae060", [
      "name-candidate:6c3e482d7abc366478261f1a67ce030b6d0d083008fd11c09f112230694ae060",
      "name-candidate:d7142adb6e1f26b6b1bf55b6aa6dc886c9439668d923d95458704f4fcb218530",
      "name-candidate:fc500c304d74e2a555ed2dccd64b1f9ef0e9805fe06ffa04201a9d0331428f3e"
  ]),
  ("name-candidate:790824056c14f72a951971bf96261cf194ee131463283f2a5af8398da32ab4f9", [
      "name-candidate:790824056c14f72a951971bf96261cf194ee131463283f2a5af8398da32ab4f9",
      "name-candidate:b1ca5c4353f641f3534319bb358a13f7b17146aa1425373b7ea98a3c18910a7b",
      "name-candidate:ef121c6e2c21ffda06c73ccd824ec756509e3c92c5f7d6e3e301523ebff590c7"
  ]),
  ("name-candidate:2951f2bf6a0bb6a363139cc02d406baec7c8090d4def98429985f17d5f0c3e47", [
      "name-candidate:0fae61b56ce6c58e0885230c6782782259f3c38fc0ea8542be7def8b9f189fa9",
      "name-candidate:2951f2bf6a0bb6a363139cc02d406baec7c8090d4def98429985f17d5f0c3e47",
      "name-candidate:dbf38ba5151603728822a5f66477f5a163771f052278f11d66a357952db5a026"
  ]),
  ("name-candidate:9137634df6290ae7d778a321cf8f82751d926b77d6438f2375de51ca4995554a", [
      "name-candidate:1e64b17d13d3f2253627926ce6f1d82985055681909fe60aeeb164faf7cef8bc",
      "name-candidate:8e094aaa8639c1aa64bb63839aad890897d7f397a85eb7ab82a277e984306e5e",
      "name-candidate:9137634df6290ae7d778a321cf8f82751d926b77d6438f2375de51ca4995554a"
  ]),
  ("name-candidate:88ced09a159e1c40adaca54faa114a7c0e0bc5caab17fb30c19214d983c16ce9", [
      "name-candidate:173f3d92812825bf85b147fcc80708f675cc72c79484c05c9f57f21d18dd7a1a",
      "name-candidate:88ced09a159e1c40adaca54faa114a7c0e0bc5caab17fb30c19214d983c16ce9",
      "name-candidate:89d644a2c36996da476bc54025b18416cf4d890d3201a2dc4b57f1b1c20f0532"
  ]),
  ("name-candidate:6fbcbb10c9c0de76ed685cd75bf5d6efe8a611f6606281d48d0ebc240e120c8d", [
      "name-candidate:3218bfafa9c64ec9434b452a0fb3f4270c80ad22f0a2e5bf6612a9f98f82ddfa",
      "name-candidate:6fbcbb10c9c0de76ed685cd75bf5d6efe8a611f6606281d48d0ebc240e120c8d",
      "name-candidate:dd02a8d7a509c96150d1e32d0a673ca244c38b61fe1aeadc6b03697ec8808994"
  ]),
  ("name-candidate:0698a6b3a0142744a8eb1003f86558825e6d8838fe77a12934a2640a53419935", [
      "name-candidate:0698a6b3a0142744a8eb1003f86558825e6d8838fe77a12934a2640a53419935",
      "name-candidate:22de59ab30c8b5e5064c01605cc31695a0a57d97134bd78454c715acbe21554c",
      "name-candidate:4c46aaf0d736193c0c691b610f94bac02ac36d95dd753aa7df54f6b4758c89ec"
  ]),
  ("name-candidate:173a22a4e9f3708e81536e196868c9d21f45a69e920bf1807e643c4e61933f93", [
      "name-candidate:173a22a4e9f3708e81536e196868c9d21f45a69e920bf1807e643c4e61933f93",
      "name-candidate:cbf06721a830fa0cd5c4f3102496cf20f7dde72ed0772cba2d6963a28f48ab78",
      "name-candidate:d9f68aeb4e0feddace419d3950e4948993f6fc039ed074e689bbbc27e149d1b2"
  ]),
  ("name-candidate:180b6ca5c291a0cd6e6bb2ddcfe1a91fa1e6768591532b9bfc7cd201da9c5ea3", [
      "name-candidate:046d5cf8bfcfb35f89a63b627006c21649a2970862a972cef73ea82f85adb314",
      "name-candidate:180b6ca5c291a0cd6e6bb2ddcfe1a91fa1e6768591532b9bfc7cd201da9c5ea3",
      "name-candidate:87abe6180b8649bc0fd2389466de5e269c073016f8a466d40bd8fcc319b88cff"
  ]),
  ("name-candidate:322a10394686c00fd10226717c453dad02318093c183c4eca654e0ced7d1f87b", [
      "name-candidate:322a10394686c00fd10226717c453dad02318093c183c4eca654e0ced7d1f87b",
      "name-candidate:5adc83235e4a452ce97f28819c1619197c4c2e4494a104cdcb220cf5468b7a8e",
      "name-candidate:b005da6b67e31b053db5e80284e6968796bd37332df452da32cc174d0dd247d6"
  ]),
  ("name-candidate:f0d12e18b4d7e3847f825686ac5f69ba70e0902fc185a767b5c7a524cbeeb865", [
      "name-candidate:1f8790b302c80efb2d9561c386d76b2662e4693624480b94e6b35253b6b03939",
      "name-candidate:7e21d94b0f18b8eb8695162e8224e5b6f5748adafeadb2ad59c1fbc6b130bbee",
      "name-candidate:f0d12e18b4d7e3847f825686ac5f69ba70e0902fc185a767b5c7a524cbeeb865"
  ]),
  ("name-candidate:7d5765b2bd1cdf90149654b61ce66e03d67c4058392c671fbac57571daaffc37", [
      "name-candidate:50fd2de6b7c4843e4970865e93d7cac74f9135ae13b2dc40aa062f3860b19a10",
      "name-candidate:7d5765b2bd1cdf90149654b61ce66e03d67c4058392c671fbac57571daaffc37",
      "name-candidate:e1a209448d8e5a65e9892a14ebdf61a9c38c413c68ca0bdcca34c7f29aca1952"
  ]),
  ("name-candidate:72cbfacb7db694f59f2fd695c673aa8be8a2228cc99f4dbd18a462f49acbcac9", [
      "name-candidate:72cbfacb7db694f59f2fd695c673aa8be8a2228cc99f4dbd18a462f49acbcac9",
      "name-candidate:d7c23d77bfc39c677bb7fd0a48665dc8bebc9e678ece6ec7b859cc03f7337a98",
      "name-candidate:e420c90c5ecf812b314de56b5e3a77e3bcbdb03c26abf50ab403730c07f6e1b7"
  ]),
  ("name-candidate:4f5495cba74e01113b2913e19de398f4826637f589f79418d902689e92e18a3d", [
      "name-candidate:4f5495cba74e01113b2913e19de398f4826637f589f79418d902689e92e18a3d",
      "name-candidate:cd181d16a296387049d4ec487cf84f14ab1637ce5c170417b3dc601fc6c24bf3",
      "name-candidate:f1c16f6d306e54f919a493d1687f6220b095c6f1e0773e609a95e616ea869bc8"
  ]),
  ("name-candidate:20dc39c0ccea7e25e96978eff6222750b5a63709cb71812ca451676d7d20ffcb", [
      "name-candidate:20dc39c0ccea7e25e96978eff6222750b5a63709cb71812ca451676d7d20ffcb",
      "name-candidate:2df0d6140716cf47a2ed6525cd1aa11719d54848df873a3416c50e7ce902ab5b",
      "name-candidate:4f9e15030ec36d842869b22c8684d47f8d097acd85d184cdd3ea5ecbdd3a8156"
  ]),
  ("name-candidate:8546c9f944943098f564961237a9233e8714c01cf969dff21921291e89363bb8", [
      "name-candidate:8546c9f944943098f564961237a9233e8714c01cf969dff21921291e89363bb8",
      "name-candidate:ac4b80feb2383e1872ba3a832bda2e617ddd13f4248bfffb1015da03a1ea88b9",
      "name-candidate:cc9e69091f8832cc06853f9be63f3b49f94418a4d6b626854315e056b2e4ba43"
  ]),
  ("name-candidate:f5de07b65814430f498e5c1c34d6f2dc21b4b9b9475635c5f6e8d6cfde842f4c", [
      "name-candidate:7b8a4efd0731ea3d0d44cb4c807f47c7c8243c89b5ba462bc2ed95e5c98cf6e9",
      "name-candidate:8896a5077ce5f77e274c30c54f563b57e4ff2fdc2acb8d84f178c1987f6c15e5",
      "name-candidate:f5de07b65814430f498e5c1c34d6f2dc21b4b9b9475635c5f6e8d6cfde842f4c"
  ]),
  ("name-candidate:182db37aa666167496c71eafc5b7c6aee15fb2697b926197c07949523937a032", [
      "name-candidate:030b7d928597428c05af0a67a04582a5e6f7c7a118ce8a41190f82874e30a9cb",
      "name-candidate:182db37aa666167496c71eafc5b7c6aee15fb2697b926197c07949523937a032",
      "name-candidate:39334df66717ec1b5e0933ceed7eb8ffc7b2b0352aaf1c87d49a5ce9f9ec0310"
  ]),
  ("name-candidate:178789f9808ce2ef1f9c8fde2eaf2f1d6dfae2e05ad186cf92e613561bb1e040", [
      "name-candidate:178789f9808ce2ef1f9c8fde2eaf2f1d6dfae2e05ad186cf92e613561bb1e040",
      "name-candidate:509c23199f48d99386571337070db6047e3a709c9d0f736ae718b0922a9aa771",
      "name-candidate:9673fa21b58917c748cfd924dea8f7a98320892e26c11c6cabcca149eeb62972"
  ]),
  ("name-candidate:153a9522474e0ad2f97cbcdb06262055061f8836f6c873f532a462bb79d85c3f", [
      "name-candidate:153a9522474e0ad2f97cbcdb06262055061f8836f6c873f532a462bb79d85c3f",
      "name-candidate:82b256a7343ff08ee7b6f01847fff85f56970b759bbb80a1e01aaff62e0cc3d6",
      "name-candidate:e78443ed0f313c7800111be42487480df1ca66ec81124d1c1c96c961a47cf619"
  ]),
  ("name-candidate:14390552b673ae9f5479a37cd2fba87b56a05f59edf744ce4703dcbaa8a79a9c", [
      "name-candidate:14390552b673ae9f5479a37cd2fba87b56a05f59edf744ce4703dcbaa8a79a9c",
      "name-candidate:84d2e60772d7664722d0d990d69c5bead3c92293f2101b3545db0fadd3908ced",
      "name-candidate:c257e46068caff1ae9efcff825827eb9d68ab72e8547e5d3ec088229ef5cf8c3"
  ]),
  ("name-candidate:a740d94bd9274ee102bf41303b26a6886912a5236ed422e6757e4d9c2b7e988b", [
      "name-candidate:520055b640ecc1157cdb79c87a411c04cbc0502e500e1d2b6c45eab18c25adc1",
      "name-candidate:5b8b52ff4975e04104a2476e60af1958b68568fbbdf344f72b0861416ce769b3",
      "name-candidate:a740d94bd9274ee102bf41303b26a6886912a5236ed422e6757e4d9c2b7e988b"
  ]),
  ("name-candidate:8e84cd12af58ab252e9736bd66768bdf3e8144e2c8e5632d5ca704052fac5a15", [
      "name-candidate:22516e7fdeea6619bdd13ee0ea4e203d6f746ba8529e24903747897bd7210db7",
      "name-candidate:89f278e4f0dbd35fdf7e1a1a808d7553b474cb304a47e8cf6ccf469294b1aaa2",
      "name-candidate:8e84cd12af58ab252e9736bd66768bdf3e8144e2c8e5632d5ca704052fac5a15"
  ]),
  ("name-candidate:52f4b5a5b64e743e46007239ddac1ae281c76b07a971ed2ebc4debf6e4ffffb2", [
      "name-candidate:278d1b6b74275c18a4785d55159872ebc99fef283dbbbb564a26e280ae377abd",
      "name-candidate:2c14bc7458629a24580f55b54e357b7eb6993c483d3639054fe8adb7c7f682b8",
      "name-candidate:52f4b5a5b64e743e46007239ddac1ae281c76b07a971ed2ebc4debf6e4ffffb2"
  ]),
  ("name-candidate:bea199d83b203d99b721390c76667ab8feca05654c0a59a3ce8906be8b5c46b9", [
      "name-candidate:bea199d83b203d99b721390c76667ab8feca05654c0a59a3ce8906be8b5c46b9",
      "name-candidate:ec8860cfdd3048b12a4c2932b267cb78b156f3cd1323cea6a625f53baa2f3241",
      "name-candidate:ee026b118f72b786530c548be640390c11de67ff91ee0a860fa2e627f6628fb2"
  ]),
  ("name-candidate:3431db0620a607c4466ee298064c625b01cb58196b268ffe7e10989a613b2e94", [
      "name-candidate:23f6b104c73d81d3d00fd2e9706f3b9ba24abc51e723f2ab99e2f15555450d30",
      "name-candidate:2f6aead09ffb26e2e0505bfc26b40eed9f6e8948c2bbe29d246f8367e54f2457",
      "name-candidate:3431db0620a607c4466ee298064c625b01cb58196b268ffe7e10989a613b2e94"
  ]),
  ("name-candidate:1f27698c52d1d5be2005016d4d4ac4081eb758fcad85dc8643dc8320ef977664", [
      "name-candidate:1f27698c52d1d5be2005016d4d4ac4081eb758fcad85dc8643dc8320ef977664",
      "name-candidate:a812a3d81bc0bc7052a795020b2987d1af33e5b12e139b82d3d4d2549123d435",
      "name-candidate:f95c70b9f8ca026ff8be45b360e8995942130bae63e11c9c497a6067b630963a"
  ]),
  ("name-candidate:e6b296f23e4eb8b3628d675b6cd8b2ba71c04be51615fd16eb59ba8a65910ba0", [
      "name-candidate:9e3b37965ae5e709abe4cc93e125287ab5191446e47d81f46ae778b010f80bef",
      "name-candidate:cd4955eb54f35178401a98b624de189003990edef71a8774e84e758e2301cbbb",
      "name-candidate:e6b296f23e4eb8b3628d675b6cd8b2ba71c04be51615fd16eb59ba8a65910ba0"
  ]),
  ("name-candidate:134c45b5c66527e5c88bc2b6677f5864f62a3cecae795c9f0e62c78d3e3f5c42", [
      "name-candidate:134c45b5c66527e5c88bc2b6677f5864f62a3cecae795c9f0e62c78d3e3f5c42",
      "name-candidate:636b8b71f27e8334cd9aec714dafac5ff3d4625a1a47812fdd971dae6fdbb89a",
      "name-candidate:b60784576db1721264d994cc07fbbfade188c50ede1684429ad334017d4335c1"
  ]),
  ("name-candidate:73fd8b3dffb4507966cc460a037ebbf92dcba2f2c13f6d886a7a96964d2212b3", [
      "name-candidate:73fd8b3dffb4507966cc460a037ebbf92dcba2f2c13f6d886a7a96964d2212b3"
  ]),
  ("name-candidate:51b3f64fbc61da0ce334fbb17e13b144bb1e34637e561ee3a3c53cb84ca6d728", [
      "name-candidate:42151ac02baf4ccbaf7291f63d0cbb1525995421883b291f3da4ec750f6d42f9",
      "name-candidate:51b3f64fbc61da0ce334fbb17e13b144bb1e34637e561ee3a3c53cb84ca6d728",
      "name-candidate:7799c954eaf718d24e3cde74a967e6400fad9701eb05b6ed70e08457add297a9"
  ]),
  ("name-candidate:1422092099a3f4d0a29f846cb5b83ac1cbf9bf134c3e06621f48ed0e3b62ffcc", [
      "name-candidate:1422092099a3f4d0a29f846cb5b83ac1cbf9bf134c3e06621f48ed0e3b62ffcc",
      "name-candidate:1ad7f2a684b85fed8ce2a2ce8f4db746e1b9925360f17fc9cae0296aa93355a9",
      "name-candidate:8c3cffb75b27b304156a4c847fe6a883ac4e1b40d507ae2332ae96af318c6fbe"
  ]),
  ("name-candidate:a2a2b57031fdda7c2a0154de90c74139908160aa4d8e66e297e3cc76ff88887a", [
      "name-candidate:59ba80f317b2083decb4af77a4bb2597ceaf302870608b405f258d16f86ece16",
      "name-candidate:8bab8b2cdc9506c191894069f185e79f7c3c483aa205e6076047aafc5d6b6f51",
      "name-candidate:a2a2b57031fdda7c2a0154de90c74139908160aa4d8e66e297e3cc76ff88887a"
  ]),
  ("name-candidate:ab8d3dd31ac7c3a4d40bb0f1f39e64d0446b7ddcee5b7dacfd9fc180958462a1", [
      "name-candidate:11e177ef70a2e2c14270b329c64a0dd4d845be9f385157aba4ea0ce8f5e9096b",
      "name-candidate:7c10cb7e1b2c4bd21661bf19c83f3ed747677e41018e4ffe344834ec264cf227",
      "name-candidate:ab8d3dd31ac7c3a4d40bb0f1f39e64d0446b7ddcee5b7dacfd9fc180958462a1"
  ]),
  ("name-candidate:8d433f154fb67c6128823fe2bbba0f674db33a7f80f8cba396fcdf64a87f3e97", [
      "name-candidate:8d433f154fb67c6128823fe2bbba0f674db33a7f80f8cba396fcdf64a87f3e97",
      "name-candidate:b48f39258e3c606a47bbadd06729932d254250d2972d3617a16ad8e6a69f5406",
      "name-candidate:ce217bb14249a2935dafcbd27593a92b395741adfba0e88516e60ec48277e2d0"
  ]),
  ("name-candidate:7d80797dc20beb87443fb7de885f92e4bb53ff952335b14808264b56218687ea", [
      "name-candidate:08fcf4ec4caa9c3b483ff96843fac53ef643a19d9c690308b13c7a5c97887a04",
      "name-candidate:43d7defef76e261960caa898a6328133e06d691677d24caf3eb5a4822a46cef0",
      "name-candidate:7d80797dc20beb87443fb7de885f92e4bb53ff952335b14808264b56218687ea"
  ]),
  ("name-candidate:363681016e3c6d80e1c1214e4ed58daea8dde1a5756d5d2b2f0b370eb214d9c9", [
      "name-candidate:2657ae3a4763a324a6c4e69dc6fcd8a3b6a56f3fae5d94a5cce8c29685c4bed0",
      "name-candidate:363681016e3c6d80e1c1214e4ed58daea8dde1a5756d5d2b2f0b370eb214d9c9",
      "name-candidate:4e7748a53509c64d1868f99ffd6950c5a23b6c15901ce32fb00b161cea401201"
  ]),
  ("name-candidate:f29d72de68d3c70a7f42a5e94665e66fd2c845fc1b35eea1e780ef90f32cd1d3", [
      "name-candidate:264093b6805040a2f28f81b3bd4302be6866d1e3f069cbe2544e4b9be2d8cf93",
      "name-candidate:cc561c9e2db43bf37e7e826f3bbb7ca3ab79ce57dc19273b57a8717a2c5d8daa",
      "name-candidate:f29d72de68d3c70a7f42a5e94665e66fd2c845fc1b35eea1e780ef90f32cd1d3"
  ]),
  ("name-candidate:1d03b3502ce83feeb7891b816aae33b072267cd26b611ada5a9a36fc44bacc7a", [
      "name-candidate:1d03b3502ce83feeb7891b816aae33b072267cd26b611ada5a9a36fc44bacc7a",
      "name-candidate:23c6dcd9f4b0d6c8d1edb8fcd2b5df873536be57743cfd87efe499364418d329",
      "name-candidate:28afe1d3fbf8b226a3d684045d8ee16bac33f8921f845b1481d30a0a8c88c119"
  ]),
  ("name-candidate:a65260047b8f2b65ba3b05e3dad1f23feddeda836457836232c9bd23af5242bd", [
      "name-candidate:a65260047b8f2b65ba3b05e3dad1f23feddeda836457836232c9bd23af5242bd",
      "name-candidate:b809ba93b1a2ffafada428e0fd7c4ebd1e6fa1b2fa9a423f234411ed160862c2",
      "name-candidate:d2e3556c493118721ec04c17aa1d0790fcfc468cf2b4c3b63ba4ab56450fc6df"
  ]),
  ("name-candidate:28955e295158f59c2ce3db095a430c9321315d4336f3cf347819e80b047029f5", [
      "name-candidate:1e1777ab7e67dd29d7dd337e424091908d34de49b65e33ae259b7ca77deee7bf",
      "name-candidate:28955e295158f59c2ce3db095a430c9321315d4336f3cf347819e80b047029f5",
      "name-candidate:6d955feaff5432fa24131c296167e3acd649aa1f600a7276466d7d4dccb7ab83"
  ]),
  ("name-candidate:96bba3c9f18d562dfe52df0591f132d74057d6f1e8c3f61f6b483ede32ca5302", [
      "name-candidate:0db4cfdc9064cd6fa84b8cb0d7567104c8e063374a9a304156b0e6bbc1815e01",
      "name-candidate:96bba3c9f18d562dfe52df0591f132d74057d6f1e8c3f61f6b483ede32ca5302",
      "name-candidate:ba7f0fa1aff3a624373dca9d28443cb1a266c6ac001688698e43e69f1c413d5a"
  ]),
  ("name-candidate:82741d0f8e4b12bbad48f4ea36a9541431807eb686d756787ec2ef8a36238372", [
      "name-candidate:1c8b48ebd302c469a2fa5f33be391db5f59e3a75984c71f2058dfb87de92508d",
      "name-candidate:82741d0f8e4b12bbad48f4ea36a9541431807eb686d756787ec2ef8a36238372",
      "name-candidate:b7c45159fae95b607814a499d983dbce0328b7d548fe51b6014891a91bb77898"
  ]),
  ("name-candidate:decabb95d016809a51d289c9f54bfed97f12334022eccbcd3a1fafeae922de33", [
      "name-candidate:acb29c25a399915cd64e676fed4ddc7e01495aac0c4373a7f8abe6fd789cc2d2",
      "name-candidate:decabb95d016809a51d289c9f54bfed97f12334022eccbcd3a1fafeae922de33",
      "name-candidate:f9a4075cfd6633e0d11c2a7d3e4e8c363b9f32c5537b96b22ec30d4b242fb9ab"
  ]),
  ("name-candidate:97251a785341a6e94397c981fa348c0229666f92554e6da26a0e0f8b0cb24b5c", [
      "name-candidate:0d364bf3bf6e3bdf618aca3b348123cce3b1daed7b24471501e5f3aeb0df282d",
      "name-candidate:39edc744eb04a5fb7e62e41ed7e942da0414ac2c728dcb6471480af307f428e4",
      "name-candidate:97251a785341a6e94397c981fa348c0229666f92554e6da26a0e0f8b0cb24b5c"
  ]),
  ("name-candidate:224881fbc456540b59287713d84d1fdf1a7ffbd077f0a62a87a0ff7ac2dc4267", [
      "name-candidate:224881fbc456540b59287713d84d1fdf1a7ffbd077f0a62a87a0ff7ac2dc4267",
      "name-candidate:b34081e0d6652c747b6c67febf88875fb163f9e4f8832be4ebdf1bc8c4c79fa1",
      "name-candidate:d28aa758ff1fa33bd947a5fde8f34193c7befb8917dab5f566c3826effdeb216"
  ]),
  ("name-candidate:ddf4b1f072d491de4de88529f00fb50822aae2e4ae62315d64e6f83a65b01e64", [
      "name-candidate:1aa57e05ecdf74066276cbb25add31c9782441ef81d0364b9ff4402753cfc9a7",
      "name-candidate:1b5e117ecc9e2b47c37c5b131c6879477fa0c2f5054324f20d1c8d738e7320dc",
      "name-candidate:ddf4b1f072d491de4de88529f00fb50822aae2e4ae62315d64e6f83a65b01e64"
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L45369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
