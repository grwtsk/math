# primitiveElementKeysChunk0047

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:67700f59d19e9b3a6351c5ea760f658857e2ca3ec291854b69eb39fb9e5ad905",
  "kind": "def",
  "lexical_name": "primitiveElementKeysChunk0047",
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
  "slug": "primitiveelementkeyschunk0047--95c61bc6f173cfd9053e662d",
  "source": {
    "blob": "c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3296,
    "line": 3229,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:95c61bc6f173cfd9053e662d8c15b8c4123c84c7307a8746e1093442f003f7a3",
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

Occurrence: `declaration:67700f59d19e9b3a6351c5ea760f658857e2ca3ec291854b69eb39fb9e5ad905`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3229–3296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primitiveElementKeysChunk0047 : List String :=
[
  "source-command:1df0965be384060a84ff6247a5d9bd27d7488914a816f87f2a541f63dc9c4a83",
  "source-command:1e0f3dde74f552958c3b657d7b21da5e4600464e553b6581bcc9694f6180dd68",
  "source-command:1e128a07c47b9ca3e4e4b4a1778f27880c8611e2a1f23046badf084ca489fec5",
  "source-command:1e6dbe8eeb1295c6f201a6f16e07bd973df7b853f3846c4911fec950d16c94c7",
  "source-command:1e7d0431fd5df3d99c44f013e149dd1f9ecd8302bebf3041e9f512e0f704311f",
  "source-command:1e7df4cbde06cdfaa27ac4bf2d003f47c08ccd70e1da0bc5b7973e8544bbfaea",
  "source-command:1e8a63ad2e141b99007d49b1c68dc898d8db916f32945d3008753f0143e1865b",
  "source-command:1e8bbe136743da412f1a36254cdd5e1bbf736a287bebf491791abba9d13415fe",
  "source-command:1ec6d96fc5335533b623267d94daa7757a642d734f8d73bdd5e67334743b19e3",
  "source-command:1ecdeb6f05d89fc2d535389caec753dec92e4825a7bb8effea280ada227f4be4",
  "source-command:1ee581961ac3be7489a0e280cf9ce28f6a8a9489124fc3d93a02db883cc63547",
  "source-command:1eefaba0ed308d26a71c949f66d7ba020a3c784ea107c41429ad7b15fadff643",
  "source-command:1f0100e9bebf00895b53082de45c1a42b4950e91d623fc8bacd63343be75c4d3",
  "source-command:1f2de348feb40e4ac2b2672318a96f1cba6ad82aa434b97c48448dd5a64538f2",
  "source-command:1f9e1b5c7cf24bb3991498ce85bedc594d83b70424af4e2f682d4ebdbf21ba00",
  "source-command:1fc870af6fb404e4e3ccecf6a68e6ff42d64bc63b8136a4813d02207057d3bf0",
  "source-command:1ff75d1aba62609f712cd4eb362b152f35167c0cf8f00edd7adab10ee4d1343a",
  "source-command:2003b4839488726251863ac981fba5e93aaba76b51f2423d08d0700888c1195e",
  "source-command:200e793c0bf73e3bfb79f17940b92fc1fd6dd05b4fe6a9c9cbb6fd46f9137e2d",
  "source-command:2024f09f0acd4e052af24ffaedd69c2e7ef945dace4542ff0bcfcdfa35ca14c8",
  "source-command:202890d290f90cba8b2d1ad331b4bb7c8fab04ec10564281f1a42f2e40cea35e",
  "source-command:2030c4a339ae5e5432cc4a8d3a4e4fc6902895ae44327af2df82e518d5a672d8",
  "source-command:205465268248659d3d5c191201ad0ad24d61e9b8c691edfcc441f30837ddef19",
  "source-command:209766cc0f923dd09b7795666969432f0aaa6a20f0ffcc75e387bb35721ab185",
  "source-command:209fc95259fd6ed1b0d08352cd7d6ccca72a5f20181044892ad37a2153ce9370",
  "source-command:20ec7448c4fc6978b27df54c5ee62555dd12ba15c7e8d63731788c69aca38fa1",
  "source-command:21ac0d02f4002af03872ce377322de11e2b697512b5f69a92f392dd66e31cf97",
  "source-command:21d612ee2c7db4127ac55cc8c933cffc2ad6799a4c613082e6496937f7b655ae",
  "source-command:21eaa666e5a3d899c00df22e8550068fcc64e580ad1c40b03c243734c5bccedb",
  "source-command:21ee0e7e353f1a908f0afce6cb8102f5e6852f8c4d607c1e5b2f23d0013e4851",
  "source-command:21ef6001359ffa758db18a365d74052a956e22995b438754fa2ba7aa5a513dc1",
  "source-command:21f4908a7ebf63a85967d707aeaf119564b856ce0ee9b975d6e3c569ab096c1f",
  "source-command:21f708bcefe1b7e7e57d6157aef8d1142ed4b8d322572d66b92404c3ed3858e7",
  "source-command:2228d7eb6a4892e48cb178621f831624a8010ebe70d6c10f448026eeaa505c95",
  "source-command:225918f644978e8cad0042321e6053a15c73e017dc6088732a70a2fed84854ac",
  "source-command:2294f07f0f6b7a998c9bb496f638f64399679c560b78d344f56698059fd4a088",
  "source-command:22b4eb74d5d74f669aab0486223c06b7191af725556fe4baac669a1eeb6400c0",
  "source-command:22b6bf8790f8ce82894ba0f5522bcf18819a9f73b3d6f9113192bc16655e26c1",
  "source-command:22c13af5422923dd436160c7de6df7fa4e3eb952b54573d039bc61e71d4f552c",
  "source-command:22e169c32265e09aaf3f0ba4a407f5c88f8767688c887f568f1e16de24e309c4",
  "source-command:23288927a50a148a144af63db68871720ef33724f537531273e13ea16cf654c3",
  "source-command:2396c42e14b1c2ce1def698fca4d34dbec185050619423ea5327c292cb9c624f",
  "source-command:23c43b5990057675a48a70f9283bbe0587bd8482b3c5755536d42c4c9e822272",
  "source-command:24063501998e56e7faf3ae55735ae229c9f241eb18289cb5cdbbcd28e43234db",
  "source-command:2414d1824aef6896d8575a6ec8c37c1e3b7f938e2a532368aadaa3c1f9da9fc1",
  "source-command:2428c7107bb8410468ec5838018c3a67be8c2d1fd10449695433483ed01f78db",
  "source-command:24726798a343a0c2854c7c0824d1dde16ecb638ee8f486fea38bdfec931e2631",
  "source-command:24897baad62228fc1accb66ed849ed9b849aa80c94b3686f56e0ee5d849503b9",
  "source-command:24ed77826da209fb1c2f0aae286f08e6488515929362f5f50f88c8cecf9dc89a",
  "source-command:24f28c626f4c994e02b91358b68e46d1ab246042542a586f73b9855f8c6fa6da",
  "source-command:24f602e8684e31e2a551d5393f9cb6f228904d0cf56192aad2259a4116c86b28",
  "source-command:2540a8078ce59c7cca17b4f3ccf60e2ac6b68025d8da0877e05c51928c134eae",
  "source-command:254b20d69d33be91e60ac0c22b5f483acf976205ae59c7e2a40f59dc4411b169",
  "source-command:25560ae4b5b43d5e21c2132e8a6ed224a67a21b0cce0881a477bdf3510c71550",
  "source-command:2565f87df7f14f8b4791eb816983c870650dc0088eb4a8780918a5f7cea09c16",
  "source-command:2579d5eca3bd1b5d4429144ba854d145ef489463e5d43390ede214cfca9d04c2",
  "source-command:257ae426b17fa528c93779b28557b194b5ec0b891988b5a19e1f0957ed252b9f",
  "source-command:258cce43b0848ba05fa84647715d4a779f29d169e593819b6a71f5f26d7d152a",
  "source-command:25a680c04491e2b42f9c4db90c800c415637011cdf207375e378d3152256f4cf",
  "source-command:25ad01b3f4e68696a503bbf432905c4bcb1eaa3baa1cd0d9aa4305a9480b6bf9",
  "source-command:25bc32abc1c5e17921a2bcfd742024c7ae083f905d53ae25cd3ffcb201aff63c",
  "source-command:25d8a95f566d411e110cf544b40a23674502080a3e99f69219f754234fd13356",
  "source-command:2602c6f200a03cfb3f68ab67028da1d5cf5e54a63fb4fafbeb35bffc096c36a1",
  "source-command:265dc69a1ba777f371d8ec201e5439642b705966462da4101e30f60fb4267ee2"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean#L3229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
