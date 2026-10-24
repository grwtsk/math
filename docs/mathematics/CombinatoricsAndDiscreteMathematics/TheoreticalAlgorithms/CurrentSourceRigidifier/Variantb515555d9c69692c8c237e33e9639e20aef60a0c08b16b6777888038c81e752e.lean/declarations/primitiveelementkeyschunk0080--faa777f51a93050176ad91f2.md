# primitiveElementKeysChunk0080

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6e26f5baf0fbb42dd01469d32867737abeb53f3bb95d428119d8f3cc9ed5e14",
  "kind": "def",
  "lexical_name": "primitiveElementKeysChunk0080",
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
  "slug": "primitiveelementkeyschunk0080--faa777f51a93050176ad91f2",
  "source": {
    "blob": "c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 5540,
    "line": 5473,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:faa777f51a93050176ad91f29e015489b6bfaaed09bbd56446ddb73bb79628bb",
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

Occurrence: `declaration:a6e26f5baf0fbb42dd01469d32867737abeb53f3bb95d428119d8f3cc9ed5e14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5473–5540.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primitiveElementKeysChunk0080 : List String :=
[
  "source-element:7b564c212d74249b69a84e0781f335f4db2ebf11cad84e2961df3d6ff6ee6e06",
  "source-element:7b90470a293dbbd3803eeda16856deda5042c8e2383aacf4d14d7188636e1e99",
  "source-element:7ba423fb839818d0be42989b3e70f1d0cf2f348860e8d47357328aab051b4e35",
  "source-element:7bab96980df6795c4e9fe2579b61fa5a384415f10c20eff4e19dff1e88846855",
  "source-element:7c1fec7d69c7aeea080b00c9ddca7765e2a6da07bd172428ee036a3b2b91023e",
  "source-element:7c4b008791a7f83fdbe2ec9a3ea488e0119462171b360b296184e1d722c0aa41",
  "source-element:7c937b5ef6ee7b362b1d69c78b6eedbe0656f1f82d2f2381ef46428187fcd5f4",
  "source-element:7cee46aa1cabfb5244816a7aea47089e6bed69621046e359b66812c828a1f47e",
  "source-element:7cfeb65d8d240b0b2f05faab644ecffee177431efaabbf4a0d61a95c69a4c84e",
  "source-element:7d41a56b1a18ad9c9beb165329c09fb968d95a93274afbdee278070f741ba0dc",
  "source-element:7dfa8fe1420195e6a2c74b23784e53f2ca3de390098a8ad037835f8f6a4cb655",
  "source-element:7e026e1b5218581ae13071245224304bce646ba0700e9623c238e5fa7ca9099a",
  "source-element:7e5178e790c206c84729eb99ef8e50c41d7e7b0b220901898b0cee94e2e98c9d",
  "source-element:7e7fccea1c311375cd4efd6e323e57e4d5d4607a0d2770b2ccf980ea553b2098",
  "source-element:7e933fa192d74f7abee7ef0e8fa23f3b51a61b04b02a86acc4bd919d33a3d576",
  "source-element:7ed3ca226d3da9b7b4dec9f8f0493268cdeca7f87ee55f8dc337b211f2d78174",
  "source-element:7ee065df530216468b3ff9a2b712adb70f9c985d8de4a11a81eb802b177741ad",
  "source-element:7f1ad3d86729e28acf891bf99deacc9181652e4114a3045233442ed5b890fc9f",
  "source-element:7f22ef5faa4ceb349b6d48609086564a1c5ecb53d3170c45e40ff934f5adcf14",
  "source-element:7f48059fe321c1e49783520e4e01dec8b6213a92dea5567d08f4c8f2a90e23d0",
  "source-element:7f76462ee5a0b51abdff10f802e7be307e71ab6d6d1f7b20948f3ec390d00701",
  "source-element:7f9c3e59503bb8f6619ba982b75af67bdaa957d15a146e93b198a3cd9ded97a1",
  "source-element:7fb539fc20234ea4335ae4c4066bacf56e0865c64363419e4710797bac9ae131",
  "source-element:7fd71c98f88356a90a3882c4100ca5c78c70a96d01660c3664ae717465fa5618",
  "source-element:8021a347a3517db2bfb44f04bb5479c804fb1fadca5d08af3834831a85164d5a",
  "source-element:80a3fb9cfb6d43f819617f5b1db5676030bf5d3182aa222041a0fd6c8f4e706e",
  "source-element:80c209ccb35112c108a01c7026767edc876fca73d1a896630cd05fbbc0d3bac0",
  "source-element:80eac8ac33b96303651e70482b500aae4c08573bf86a2b0bd1e68fdd35e10d92",
  "source-element:80f06df47efb23ddbd6ba8c7d555a951bbaddb19b6c7a84d91affc22edbf792b",
  "source-element:8110977478532e59b7617bfbb0a25a71b6013e117455c048a5ddabb205d9cbe0",
  "source-element:81199808d2cc8628ae448e9293281f14eab01cafe27f7e208e2063ba3728d76f",
  "source-element:81b45c3cddd8da8aa72362c29c88c94261e70b2efef8656e4ee3a4782ee466dd",
  "source-element:82098b7fc7cf45c21f56aa93d475bc37591dc1a24eff4dc522157ede944fa6b8",
  "source-element:8254a8d80c987fb83dfe639370a3acda0b2c4e2b0a29a8f4c2ddc8b3b551cead",
  "source-element:826d64ad49a10e77d60eb36966373c26434e26a5b4ef89837beebf24f7859e70",
  "source-element:82899823b841c6269af2dcdc331505790a24b930b9c9d740194d330d696b08ee",
  "source-element:82a657023f2bbe06529dd03d92efaf83560e7bb50fd0b9718b45cfe64f25e1c1",
  "source-element:82c46dde05a6d4046f6bfdbe264484ee3511400b5e64f205237d7d09ad800d3d",
  "source-element:82c7260599d945375d4c017fe1458c0286fbe03dedc970757193e549357be4a6",
  "source-element:8318aefb3cdc28d2a559347e3bfbe2ce2e7310f510ef835909fdba8a60c6b5ec",
  "source-element:831a9907aceffeaebd00e43453ea24ea9915c053f7097abbfd1b0cec8afb3bad",
  "source-element:8343437401bfa85ce565b93621cfc10b93cb6ce17cbf11fd57ea37818366d073",
  "source-element:83eca37643a3746defb6546316feff99e8dd84a20eab56fce73e7509c31ff763",
  "source-element:83fb658dcaa7561889f44e7f3ce64ef9ddf66b30cab12f5fd3c0fdec249e4f21",
  "source-element:84092efc1b27babc41e43a7cc1aeb36fe0f506ab4f36e19d5cf31f7118fe0dfd",
  "source-element:8418d9b370836f0d1eabc4e32fdecf0e48790e6dc8d39ca546fdca00472e166d",
  "source-element:8421f5442b1cf047d34983cedc9f73d1f55ba66f4e12535a25d30f0cacb7f64d",
  "source-element:843ea5de653ba4f473d2404f0367284f072341ebb59b5296d67def090125fdb9",
  "source-element:844404b5db57200afa6f1fce830ca7e8c8e177cbe0ba9bea59ede8241a478d6c",
  "source-element:8542647f11462e43bd58298cf8c54d6f05b685c155eb632a43cb85f6d711cf7a",
  "source-element:8612ae2bc32d067764521acbdf267442d50a48191fb4779d87a33196579d3292",
  "source-element:86da0b2daa6fb43e4c87c396bef5a629fd5120d7a4b1e0402b1049f9622a2e2b",
  "source-element:86dc7d21873979c955fad74a48588801b7cdc2254f640fdaed3efae606546681",
  "source-element:870d136be4f2f12f439aaf27790d74c5b2585c78d17b73e24ffb601b57a2700f",
  "source-element:872e830a136b6c134ce383945d674c7d7b466fe635505cc16e8029b22ae05ba2",
  "source-element:873cc0dc8b949042a6493ab8242ae4f05cb2fba387a6143969cb33458f433a53",
  "source-element:8751b0e289bec712d00fc67a6088428a20b6522632f62b946ad81e8b19efee02",
  "source-element:883f2e8a686d7c5c612b21619efc9ad8d78d99f74ba3e6a0c0adf2d4e7327385",
  "source-element:8886097c9e2a11d1762763cebd20d8b29ee8c6d09061c7603b5b362fcca13691",
  "source-element:8889501f5c453f334b53dc008ca1d1827d61ca5f2732eefb836a07044a3f9e3a",
  "source-element:88c03afa2869d0111305ab92ced5651089e41c647d13e860213aa6b10645b376",
  "source-element:88d5cf3a3d1262396b7011705772ba2d1250c58c02985ed2c93b4487132cdf11",
  "source-element:895e615daf1ac3ed6b56d97f9748584815fd4a02ea46a4a81dbf659ade8afd5f",
  "source-element:8989f7286db19f41f1f9975accd72120d7b6053ef305438fb2ba3909cc84e8d4"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean#L5473).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
