# neighborhoodKeysChunk0014

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:317330cce58013dd9fe777272746b37399703f1519b07808fc674ad4ff3316f8",
  "kind": "def",
  "lexical_name": "neighborhoodKeysChunk0014",
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
  "slug": "neighborhoodkeyschunk0014--bf717dfe35e0db6afa151e9c",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109843,
    "line": 109776,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf717dfe35e0db6afa151e9c6c0b2af76509b016b88fd72263376f26d1ef2e1e",
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

Occurrence: `declaration:317330cce58013dd9fe777272746b37399703f1519b07808fc674ad4ff3316f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109776–109843.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def neighborhoodKeysChunk0014 : List String :=
[
  "formal-neighborhood:70396dc0677df150d0b0a103704554433093e19fe0534dd01504343ff782adec",
  "formal-neighborhood:70639feea873650c5f05c783c0c74b114f92d7882f67c4488b0ffcd22f7c368d",
  "formal-neighborhood:70724a5c9036a919cf3a9216b63988c8351458067e400aee12fea1bd9c544538",
  "formal-neighborhood:7097dc95637234f5c9a2c8f25e24a2d800ede9a2b6f5c1e9b87a70f9ec716eb1",
  "formal-neighborhood:709e55889d41b38c1c7f9a38a8837f86c45d4e8e35f413d578f9f37b376ba7c2",
  "formal-neighborhood:70f61fe4a7cabd1608e2bc51f948f6e1118affcbcb9d84556e764875d33f4127",
  "formal-neighborhood:71244501d09e4513eaa4e3985d49b00caa31b333ade3b95601b1609328cf1e84",
  "formal-neighborhood:715088d7f998dc54aeda223e625f871d850e9687456bcd662a61749576db94e1",
  "formal-neighborhood:7154bdbcccdeba3f345ceb02e1dfbf64dfcfefda1ee592cdfe80a8338812fa7a",
  "formal-neighborhood:71742831ac224e62882d05ce27ad0d3bf19042a2030394f069f0778870807259",
  "formal-neighborhood:7181611b33b7fa2c06db1858cb069aab0ceff69c6f85238740f29ae367d9329c",
  "formal-neighborhood:719286ef6eb354f4b05ec86b688e34fa80cf96d0457974ccf2b698ce9fa8a513",
  "formal-neighborhood:71c0a9423f03a2cb8d5124081df7f7ec1306d64edf6d4ceabc7cc5a3f96dd5fb",
  "formal-neighborhood:71df2d1ed5c4cf690d958c31f4245db85ae8a196449ae3571681223c4bb56d76",
  "formal-neighborhood:71e8e0c925a00358a98cb94a6043841c31676e7ca396861cc39693d7cec5d3f9",
  "formal-neighborhood:71fb9db5e49928d36088dc16e5a746954403fd925b2c40404da39e945cd62052",
  "formal-neighborhood:7200ddbc44a8b3d686097b8c42005f391871a1a8f3a19269185e48da0f1bada4",
  "formal-neighborhood:72142e0034e6a695f1a4790b70ac14316bd16a9616ba9190e394b5c22a224e25",
  "formal-neighborhood:7279e03993bb6a12859cd7621b5e60bc2d245880fb240a8cd0b2ed0fca70aadb",
  "formal-neighborhood:727fd607b1bf55d34e05849a7a4b25c6ad41252be8e3b13ebf94586cb1ea4384",
  "formal-neighborhood:728d9d2f89e15e90c8ba70864e84b36802b0d1b9b252fa1eebb0c8dfa55a6334",
  "formal-neighborhood:72e94fa48f252f364ee3f6875f99f62962afebdf125db2e4364001418a2274eb",
  "formal-neighborhood:72f4dcda2215a8cfb346a090e07aca021a7b6f53fa91237f76851893715c35b1",
  "formal-neighborhood:72f7005990ce8f3fcdb329f75e39ecd95ddc80eb841fb77ae5ec71a9010b0e29",
  "formal-neighborhood:730189513b49a535a08dc22a121a3026cb82eda7e5206c014013300cd9c7f4fd",
  "formal-neighborhood:73105da203a24f68009d9d3afed2a4c4db20adf0697b612b0f86e1f3488f4d7e",
  "formal-neighborhood:732df222b418aaa75f8c317334abcfe51d90c71d829ae02f09336bb2dc41893e",
  "formal-neighborhood:73314c9d252eeb341b36c4c93c2358ff6b123472dc9cc323e2b17665a467ee79",
  "formal-neighborhood:738525a3cfcb88e61ce84266ef95536b3f294cb162073ebd32772a808c4c9281",
  "formal-neighborhood:73b7be571f03225c5ecbb2d3eb774f28f168ad92b638821ae04133f2f9b015d3",
  "formal-neighborhood:73c131b03672accc015cea660a330b6d542a7f912249d8262db94ea1c3f8f2d5",
  "formal-neighborhood:73c37445b68e8938a05bff3ec23de7c90ab907de3f7d7804db8558f5f551be86",
  "formal-neighborhood:73f88d7dba5c1ad73ac5afe3b327a0af8f9448d545d284769ee5a6a5264970eb",
  "formal-neighborhood:73fce215420a9f42c0cf2fdf27e245afb683dff12746db13790d8c362abb2e44",
  "formal-neighborhood:7405f6cf0f2db42c8c3f04a7d5380b7a4a0dedee12bf927aaab3daaefd4c4046",
  "formal-neighborhood:741a6eea28f10a7b195dc32c5a81fd9fa6c01856dae3bc5475962f59a7b56eab",
  "formal-neighborhood:74728178ba4d81ccb7e19f55eb7497b4646695654bd1ab486b540265f5a9647a",
  "formal-neighborhood:748810ea25860564829cf758fc1a38f0c69fe4a2f84f3c7e6734e59050b14d73",
  "formal-neighborhood:748bc029ec5180fd9819ddccbe368622b6f2f857e7047690573786009556b385",
  "formal-neighborhood:748e4cec4bc0a3e3678e8962be5276c799ae45e38255742a4ba9b908878f69b3",
  "formal-neighborhood:7495d33dd535b46a42a8b34ac74858749003bd7531af0806dd05c56a7ae176e4",
  "formal-neighborhood:74a8fad7b53cccbaf70f272cd4f56a77340da4f46aa2976e89645fc6103960f3",
  "formal-neighborhood:74d35c873d0480026c2a0994b7172e8535af01dc3549c57195c2056bfb1cd736",
  "formal-neighborhood:750ddcc23a1c10ee9309ef1ca7c2a4282959c33c5ca16ee947127384c7e110ba",
  "formal-neighborhood:751bd8425e5539cb2ed5e24ea3a0c9053ce37ee67631b7e1d695175d0cd4c13a",
  "formal-neighborhood:75677f1a1f5c670a3bef02a98d96c7190f3640422db4d2e71a9615d3f5e14b4a",
  "formal-neighborhood:759786e24d3d964bd78b636666633768b51eb7ec5607394063fde6cea6b30935",
  "formal-neighborhood:759912d51507ea94ed2bf75f830260529cf7754c369f01ebef7328dfac9dc337",
  "formal-neighborhood:75a09216233ad14d044405a7beb82402b9816fb3528c1d038f6b9924d1ac09fe",
  "formal-neighborhood:75d2c3c6b1375317ec10d9120f79edd3bd8bd7b28e6be1f302a5de562c3daa27",
  "formal-neighborhood:75fe9fbbbf732944c4291f5cc27249e1d390e4759e4ae3f8ea4943f0bc6a0164",
  "formal-neighborhood:7619370b26c6a4d44c544bc175f55db16daf8abaec6a36cd4a53b476d18dfba8",
  "formal-neighborhood:761cfc39118e433ff12288deee9ef8ef90055bcd6995fc5fe27fdcdf72167561",
  "formal-neighborhood:7681427960fb0210fdd69ecd2354bd8260a7cd8429a6baf45a9e374bf769f714",
  "formal-neighborhood:76a2ed0a6c2165860aeb13f1a4088ee2e17a5014b01211335a1d7aa7e3a32233",
  "formal-neighborhood:76aeea1c6c2abcf4b90d45e7b9564281917bb8f2a1b34d87f343b43027e7da46",
  "formal-neighborhood:76ce79509197f2578fc2cbcac9d085a1fe364611ca5edfa444f04b1108e59081",
  "formal-neighborhood:76cf5699d7d11a602f9e9984aefbef440301bffafdfe55df7f7de4c15fb6906d",
  "formal-neighborhood:76e64b7270662b9e1d69f62f4712009b8a8bd9f7f3551a5c08089a66690e2416",
  "formal-neighborhood:76e7cb03bc78087e01d9bd60181e4131e14c38ed3086a940cec5aef927e57bce",
  "formal-neighborhood:7726da006cd06f7bce769f1f9f709dc0f16fea7a1fedf87cb01cfa15f2aca455",
  "formal-neighborhood:773d2a8cba06e7b3639460b47bafcc0ab68a37ef07283a491551d5f72c5ef898",
  "formal-neighborhood:7765716f97963cb5eef4e247e8e012b1513ed2b34ad349fde99a8eed3c0c1487",
  "formal-neighborhood:77b4727a72839d12b75fbd3ac57780c4c25c19cf9829241a1e19939545c7b0a7"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L109776).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
