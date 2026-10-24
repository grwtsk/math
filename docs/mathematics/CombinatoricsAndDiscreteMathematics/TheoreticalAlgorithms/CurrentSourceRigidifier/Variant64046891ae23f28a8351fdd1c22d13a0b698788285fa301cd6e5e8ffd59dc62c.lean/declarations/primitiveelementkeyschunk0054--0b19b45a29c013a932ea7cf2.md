# primitiveElementKeysChunk0054

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a8dd033d0907948474ab133999c51548e5537b48fe927b417ca9e9381f752331",
  "kind": "def",
  "lexical_name": "primitiveElementKeysChunk0054",
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
  "slug": "primitiveelementkeyschunk0054--0b19b45a29c013a932ea7cf2",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3766,
    "line": 3699,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b19b45a29c013a932ea7cf25fc5298c397058fd4a09c9143f905f1b71fa60e5",
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

Occurrence: `declaration:a8dd033d0907948474ab133999c51548e5537b48fe927b417ca9e9381f752331`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3699–3766.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primitiveElementKeysChunk0054 : List String :=
[
  "source-command:5580a02dabc730fdc38c1f7ab3966d2f88e0bfca81726e9fc8f2724f39babeee",
  "source-command:5596e2c6be1dc2682cc40ac7ebf5280095741e7b2e9151c82570c452d4e36d27",
  "source-command:55d1019a232301e6d4185c4106c176430ea1a7624ddcf04ef083159ea485b0e9",
  "source-command:56272887ed3dd700f0af728a44b8c88e17703fe42e5a5116446a6fb6dbf79596",
  "source-command:56733ea65e8f310d909d9954dd514aa8384b0d8602408eff832e2d43f18f3118",
  "source-command:5676780ef2fc97dcfdff30f99530af40e036ca26983747a30b1b28ad1f246e71",
  "source-command:56b91af03ab4e5ae1e7ec346c755231b2385abb8777050bfd7806fff204da0c7",
  "source-command:56c59db5acbc359fce017e5c284dd037e8dbf2986de3830802273f91771f77c8",
  "source-command:56dbb7314e5abc10ada0d88478f8a1334bc43c4a34769cc82b7ee25fa3460754",
  "source-command:56f73fe1c5c6a83633bd96fd1e68560155496dd8ddfba6544a077f6e531bdd25",
  "source-command:570dc5ffa7f98f35914c3999c4bed794830f2e7d911ebb0353dbe3713f125970",
  "source-command:57174b25ba2aa69191d9e7ae2f12d134401be711fc2c50cc451b1d93bdb95f67",
  "source-command:573e71cd96b9cc98892862c1e864284eaa9a4f7f454da96a304b71c7803aa989",
  "source-command:574bb164f30a3164bfdad0e593d72735b251bd60094259cdbe54ac017e435249",
  "source-command:5759fe4b93060acf78b000f0d8e405b977effecc507046a050eeef39fcfcd22c",
  "source-command:5766990155c6fc357b0f634c596a25519499102f1f336438967de7a587b696c9",
  "source-command:5776507b841e0220b1b42ef5e54da19f3ee591ec0aa7f07d2d68449920efb459",
  "source-command:577e5fc7120cc2435935d8373b8e2ba793613c13af7555427c95961524358391",
  "source-command:57af84a0221b2869b7a5233313fbaf59a2f2d40bd254a67927eb87e57d3fa663",
  "source-command:57bc3d531b558a06f4b8a8fdfbfdf177f551c995dac318d4ea4abc1f66daa1d3",
  "source-command:57c7a6a28a91fd01ff7c96f65a79cb106119bc7d7ac92607f2a21641f8df70fa",
  "source-command:5803a466e3e6dd7f847f2ced04bb7b371186192a09c3e0f2ad96661e6cf33b76",
  "source-command:580dcb8dfdd2d5a4328d44a0f62984e17a130d51d2e8f6ae2ef53bbda3c9b363",
  "source-command:58184cbaebb46e399d649d03c61b19f40138f3def8ce32e8df5a5488b30bbcc7",
  "source-command:582601ca62769426230470cc306b7e0e5aa3799f43b1fd8743c23a1ce03e4469",
  "source-command:587b5306c1ce34f5e0952adf34bb2fa6c859f803048044c5cc18a08dbfc7cd08",
  "source-command:588f084b2181e6128a806f3d61f1e6bb881a775b0b5c7d45cb6ebce3275cfb32",
  "source-command:58aab8f5df17db085734705951025ffb86723e5334021b81e68ae55e16b010de",
  "source-command:58e6169315c05703d83f85b76590ee600cea4d2fcd4885ee80e3d04398ddece1",
  "source-command:58f24afb5f9741994a12293e789268437832ed2dfd065f524090823993d08c81",
  "source-command:59151f0214117ab23bed017f2ed7ade5243f75e18bd9bd9fe0a7f3502a4561dd",
  "source-command:597b7a39159c50c38362c38c4243bca65654378caecb9650fd3388f067033d68",
  "source-command:597f873868965b91d2790f1d6dd2c1be72c7338b7d342f8b0f7b3e444afefee1",
  "source-command:598f8a69747aa4a35090b2dda832c94a598fb5dc27955c5fa3db0d17f7bd3017",
  "source-command:59acbd07df0773c69319ee8440eaf3871f75572c6adeb31491e472011e7b2bb9",
  "source-command:59ea748899eeee10f10c1e42241bcf880ac5cdfca6b50e459e580899cb5c2977",
  "source-command:59f6d3bf15e4865ab4446a5bc79a1909cde42ce8aa61dd608d6e26e2831b9b46",
  "source-command:5a0e63293413b4895487da988736b3b79c66f9e678d081c3acce5cc25bd690d0",
  "source-command:5a373788e1956b10271ebc7bb36c42e08b09840ffcfdc6a93561947e3d0634c2",
  "source-command:5a4640184a38a4199137a1e59d0bb50f1cbc1a924f7a280b2366df0566cf05b8",
  "source-command:5a6afb260ccaa30c1ce375fc1e4ae8923ad4d85ccb31ace6d180858a60a0925b",
  "source-command:5b55860dabf3a1a39ba4f4c8925ade9addc03217ab064fb649abbc2574e3f7f0",
  "source-command:5b9373c64d16cc6573f1a56f395c5eda58abb945f2b73c901e1ab217ca22b44d",
  "source-command:5bbfea68280f1b03a420f383428287bcf66a68de2aff2fba2655939c84e38bd2",
  "source-command:5bf65929dc97f5d825503af1d15d17e15d8bed79217fa15e0e52eaae69b23c58",
  "source-command:5c1edce2992af08de7fbf5e65798669405adf1073f05ed0652f473eb3e30f2d4",
  "source-command:5ca2e57511f903314b8e21a53727235e624e289769b2b5c869342728cbbbbd47",
  "source-command:5cce0786911a25e7d6c63b2c16b22d446a0e4dca603f8bbb0486c6969417fbd8",
  "source-command:5cff21d8d243b4e7eedd26ff7a4fb81bfe02fd7966b189a15a2565493d6c94e8",
  "source-command:5d08d36dfe2d535aaba746d4574dfed520e94ab02052976c734d8ef6c151bd2b",
  "source-command:5d1b06713e5a4edf798b092a1751a5bbf1f24d69dd4a25fd72406d1d20f88d8f",
  "source-command:5d31b8795d14d5981c6de9f8e95b49b1ea7386587f71bf42285ed7b2fc04e1a7",
  "source-command:5d43c18a4c1b44beeabcb448beea88cb5860c907589c2c8fa287e8adf53e4609",
  "source-command:5d6d4f8597968f689551f99e0059504d08323d2ec4f3bc3bf6ed0cc1f21b0218",
  "source-command:5d73d08b24ef08a3b6ebb0c6cd3c543524df930a576390a8ad024517c0eb862c",
  "source-command:5d83c5e09df67b888d589d4ca1ec884f6d7cd4c7553d9e3073cbc0c2262ffcaf",
  "source-command:5db1ffd0f31f158bc4fa7c32178858009f8ea816e7681d074d10337001aee8b2",
  "source-command:5df0e5c0b432a52c64aaca7707ce726e75f149a32aa0375775b78bab6370970b",
  "source-command:5e0953eb8a767793a02d3af05d77e5bc0b122cd6ee99049da57613088a451dea",
  "source-command:5ea37d8268638c8ace2bba2cea5ebf44cbf03496f18f5bec9f1fd8510609646b",
  "source-command:5ebddfa6acab4d68b2fe4e42efbc184c3d86c516b229ef424b45e426cc767f63",
  "source-command:5ee9fe1684e0dab41243ea3ddf10f904eccc6d2b483b57152491ff45f58d2658",
  "source-command:5f1239ba151bb6e789d0b05600033e2861183027d37bb97bbc14e93f51b68fb1",
  "source-command:5f1f129c2f7eec5133ccaad65d61fb9369e30b088a7a977c46cf5b87524cc8ea"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L3699).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
