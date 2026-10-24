# primitiveElementKeysChunk0051

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1e3c26e9c29ada31bc8098b82e2fd88b843252d2b69c3148bbfafdbffd328a73",
  "kind": "def",
  "lexical_name": "primitiveElementKeysChunk0051",
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
  "slug": "primitiveelementkeyschunk0051--542754deb019f13d18c0b7e8",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3560,
    "line": 3493,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:542754deb019f13d18c0b7e8fd934aa3e987f9bcb485e6e15ffa50b38ea4fc06",
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

Occurrence: `declaration:1e3c26e9c29ada31bc8098b82e2fd88b843252d2b69c3148bbfafdbffd328a73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3493–3560.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primitiveElementKeysChunk0051 : List String :=
[
  "source-command:458c8f8d7ef5f8cd91bb026542c5f7f2760380b8749de182e282b15ef6959cb7",
  "source-command:45919490390a78a35c8c154a17361029013cb9f28e4ca590b4de9c6a4fac21a7",
  "source-command:45a92b1cb9018da5e6856e479dec93df20708224da0e6465d0aa36dae5c34d30",
  "source-command:45e08e9d2f4d771781470cb5be813a5f3cde369a777ad3673bcb18dc8fc0ec30",
  "source-command:4602f6577db1538e2112e8015415400de008ebcbaed3418f5eacb4b8dd165a91",
  "source-command:46077d797a407d2617e49ca96fc2f63bd4968ab9c667aee241e81e5bd4b858e3",
  "source-command:461045b1b2a804df2a5a287d1e2a6f744594b1c6d9b7d87e2d4c30485ecf861e",
  "source-command:4620c7803dd20dca1541db6a2aa6b7cab54436fdfc993441fce3b6418dfbe822",
  "source-command:466e3e456c1a4f549544b32f98f5ea567b3c6bda13eeb0a15974bb63dac7f406",
  "source-command:46ace5596cd9749afddc6bbba4fa522d824340e7eddfd74a01dc9e80c4e29d19",
  "source-command:46e8e2500110baca2b52db53cc15fcce6ba1e180a91179314445df000b824785",
  "source-command:470e69b61ce314eccc7e815acd2094438a827709201dabb91c7ec9cfa1f2cfa5",
  "source-command:4749c9bc84299191e3408b46456ea023f91129a4cfe126f9c061e82593d4c0ec",
  "source-command:47bae48430bc98ee958506fd2ea918a90065c88f9d90791fc65def5c039cba85",
  "source-command:47cecde64b147c2632059be9544485a82772cb8c92eb0a7d0202df673d86b5c5",
  "source-command:47d08937d2661ead82f5ea7dbcdf7fbf27d81e21075d4493339010198f9df0e4",
  "source-command:47dff6bc0abe811f840f19ae18eb4d8f7f1ba86c04cbe8c8bb8e3255cfb6e32b",
  "source-command:480608e13278300cc2bc6712fb0f99ab5b9ab7de4ce14964257b5dc907da80ce",
  "source-command:4883e22821e88fb4748c84ce9d75c95bc1962cb60078d2d7c130e290804113cc",
  "source-command:4915c856a1aefd949078cca8d5a657973d3c5ed4e16594626ee764c68bad65ea",
  "source-command:49251787b617d0f0b6772a4994de434a8c6f41aa97c1bc27dd9c5f938965bae2",
  "source-command:495423367cd5db3b37640fc76d3921eb1d388680cfb030c0afc38afb1a9bab2c",
  "source-command:495d9ee7849979c6216a31ec4eb6b80bb706bbb59fb05647c52c9eaff45a9eed",
  "source-command:49795dff9ba3f1e766bbbf47213f4b7221f9b9a4e7edf3be4f848b0121282ae2",
  "source-command:498eaba064b073810ff1ee7cb9e77b4431437bcfb45e09701e4361654a9147cb",
  "source-command:49e796482a7d1d760d2952d66d231412e1a8bcda4e7c3e967fac019207872915",
  "source-command:4a2657e706e5dd66122cacf9437ac40bed91e6bcd6f605ec9dd0c398ba5b6dd8",
  "source-command:4a710dddc456a0d8b72137276400041af6a9eedd22550ec2bc8f9806d5c2350a",
  "source-command:4a99dde5553b1bffa37635d553e2551ed64b56c0717d11f3b3312b1cf2b769c0",
  "source-command:4ad9c3daf4441efad67a33bc7a701ca67aa486fb7c29f76427d2f4f8076c0340",
  "source-command:4b0024d8c2eecf5da0cd02b8557156cabf47cd8e46c68ec6e1695f4e244a4da7",
  "source-command:4b10d4d2e3616ba1bd753a6c2799e357ecf94e95b28fd8adc65e0c6c033f68d1",
  "source-command:4b2401967b11c641c8f803326cb2ed8502e802ce625ffda676babbf6415ffc12",
  "source-command:4b27caa50f35e3e9a0159888271dbdfc576cf5bce873dd906f5c788dba6e853c",
  "source-command:4b292765d7435cc1825bbcce86bd2f9cffd2bf4b9429d16fc58383b83b87c3c9",
  "source-command:4b3d43f31ba7fe6818f349af5adc2bff5135dcbc5751afbd78cd382a254f54d7",
  "source-command:4b462e1a47009e37df9d162a651df70429b271fc346659f0b320cefaef0246a1",
  "source-command:4b79008e679d897434c13f248fa2982136bf37bade4b3701636da7e7cefc8253",
  "source-command:4b8183fd419c59a55b8fd447446729f6dd1f0c0ce523b18627d644d24593cc8b",
  "source-command:4b85a4fe7dfdb6d9ed9f83c69812aa90cbdef36e783d73ebd4bb743ee9a2afbc",
  "source-command:4ba7876e763caa8f5c2fb4194d570d164a19a0a38c71cc305906d0f5e5f49337",
  "source-command:4bb19808166a2ce118919244e506e39917796ea2090d8ee3015fca133c946b2d",
  "source-command:4bbda979ae46bd4caf5120ca278aad2275cad204075ffa56a10854604b37bfb6",
  "source-command:4c2857c0ad9c8ba53d62ba4fca9f6f8c7043f4fea9afee4710ff5f7b4f55d8b4",
  "source-command:4c2c583e1b1fbb6662e50ade387b5e310b4ea236d1085418a4e1898acaf389ff",
  "source-command:4c3677a741fa68c787b53506d29cb14319fe77881cb888a0db5c8d2ffa87307a",
  "source-command:4ce63b9c2d1406e7892276dc2fffa854c5bcc0e8cdc8590e337aa6b0bb79e841",
  "source-command:4d09cdd533848a652b738b82222b93677f6936993bdab9772a8438e2d99d01bd",
  "source-command:4d1130dfec26e8bdecbad4345328a5718ba3c24ba526ba73efdf704e477746cf",
  "source-command:4d35aa6f63b6497598954fb5d790da581b34c5d24f85731cb04a77f87978dca9",
  "source-command:4d37e170a93249f045f99077346976d763965b7ff317f7c63389e4a1338a245c",
  "source-command:4d852b900c759c36141ec23e92bb60984ee1cbd8a5911a5ff3f5e7b8ff78f57c",
  "source-command:4d9d2180986967a4e8d9ec7de4136f757e507d15762790f999145735deda91a3",
  "source-command:4defb549dc13d8327caa5c1f5de6d2f6eb2809a8218a4153fda48eaed7e315bc",
  "source-command:4e0e8adfe0deb0410fdd454ba26d2249b30c28b17aa1b98e79aac7acb2045045",
  "source-command:4e3ea9e22d266c164f9c040d6a5d7e439ec27eacbe6b7da242d7236dc8e51aa7",
  "source-command:4e58e2ffe50746bf7af68ba99fdc52c9fa4a918f71f4aead8b81a30cc5b859e8",
  "source-command:4ea9c3ae22056c25eaf93c9dfaa4e55cf396687d70b55d2538108cc1fc3501e2",
  "source-command:4efb385bb54c7474449f5a32ef224985fc0b8558fb2302ae5ba00db93aa9ae63",
  "source-command:4f40664564f7d73e326005025e6ba7b56f07abca0ace2cf20d43471735843912",
  "source-command:4f40804c3a844b9e9d2e045447d67627928f4b3cff5eb292c25f95bd7b59b830",
  "source-command:4f55786f5cc20774c90af63548461c86af1944d355c3eda7cc3624e3bbdb6d9c",
  "source-command:4f8754ff95dc194244b744843afc60a5280333211864e33b5ee4ecd6dcbb7c36",
  "source-command:4faea1a8e0b78bf2f8ac007a6513dcb0f7f6f3f8099c3f13d0c63337654b4295"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L3493).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
