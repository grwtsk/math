# neighborhoodKeysChunk0003

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:13a348659aef0499d2dfc6c5db66e8e0477c3b661600e0f4f49cdb912f266457",
  "kind": "def",
  "lexical_name": "neighborhoodKeysChunk0003",
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
  "slug": "neighborhoodkeyschunk0003--a3a0843e23536aef45be192a",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109095,
    "line": 109028,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a3a0843e23536aef45be192a0a06892a6ff59e427c3a50bf1da291545743e94c",
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

Occurrence: `declaration:13a348659aef0499d2dfc6c5db66e8e0477c3b661600e0f4f49cdb912f266457`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109028–109095.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def neighborhoodKeysChunk0003 : List String :=
[
  "formal-neighborhood:18c3bacb18aca0535b88da34bdb846c2d951f94c1b6c5b5fad0cc73fa0c3a92e",
  "formal-neighborhood:18de0ee2a2b088c54dea1387b37bdb0bc7d883e4ccb6a20ce8de2d3b1b130cde",
  "formal-neighborhood:18ee22fdceb0564856817fd287066506894074902d95b0a497b5e8df61ac6474",
  "formal-neighborhood:19057a0894a9e9867d20242547cae97a7b9d49a383375b68fe3c81bbce7e4a10",
  "formal-neighborhood:19077cda15fb227f903e41af19ed9034270b1c6faedaa25d9dd5dcc2de69fb0f",
  "formal-neighborhood:190cb0262fbf9aac6bd15dbde6f6e9f525d7b28a3fd294d129195855d728e05c",
  "formal-neighborhood:195e24663390d6259efffba1704e6f8d92d3789e4d77c7ddfbfd41672aef5abe",
  "formal-neighborhood:196509ec6c16aab85f6bb6227c5e98c9a84d0a5c61f57d412a1701483630913c",
  "formal-neighborhood:19664a9f142d0be067f7e40bfaa91f4f48c8cc04529321110e705c83d49c218e",
  "formal-neighborhood:19bdd0d1eb535e2cb01180a49faafa1e50cadf9b0f1f7f5d45b563e95a2e5e9e",
  "formal-neighborhood:19ca989300cf8c5c533f04f03087ff81984562168870d976758b874c29ba916c",
  "formal-neighborhood:19e01746841820d62c7f24df8d946a07245f2a3bded51dea46030f163cf19b52",
  "formal-neighborhood:19fbdcfbfdf89260082be2c2ecf05b80ecb900edfc02442fba94bfa961346156",
  "formal-neighborhood:1a17f9fc4f1e846e0217e17418c4a59855eeb89420a91d5848139a85c424f2d2",
  "formal-neighborhood:1a6ed14456d2c93bc7f1bef37bdfd6f598d6840c8babda3d7c7cf044554c0cdd",
  "formal-neighborhood:1a80c49ccfa1cdbc4b2a0606cd49570b9cc0d7e2fb0545f00cb56c18fb7b8d3d",
  "formal-neighborhood:1a8abb89999b027325c92a8640b575391afda6de7bf444a37c0fbbcff27b233a",
  "formal-neighborhood:1ad6812f519ef20d8626f1d7b8a0d9dd75317858971c7a2dcc7d4582ceac5d3a",
  "formal-neighborhood:1b2382b99492bd0e6dab2270d172ad117344ae4ae7a2fb77c553c33bbf854cd6",
  "formal-neighborhood:1b251642d46225289f9c249dd1635928c603244c2302f741f2513d7f71094a6b",
  "formal-neighborhood:1b31af1c7d11ce20a69ae34396a08860ddb83f3837296da2c0a62379f9e82c88",
  "formal-neighborhood:1b3305d61213415c41a6b22d763b4ed9973794483676f66590552358b8f5b906",
  "formal-neighborhood:1b4ad386ed9d38fd5c6f97c13795d1ccf8ec9d1b707a14f163b1ebf6e911524a",
  "formal-neighborhood:1b5dd2fd515ab33cfedbbc16b0a0628ee64af684189b06aa0cd3c3ab1bff08d2",
  "formal-neighborhood:1b6fc76418af9a87a109bf59fcd6b92b52f2caa6e20092d089bdc9c297480f15",
  "formal-neighborhood:1b9e382e6c4a397aa029ef69959db6ce466e9a60f76d0c085f1b06ab2c2990d4",
  "formal-neighborhood:1b9e4f5a7c4fc38d5cc7dc884d33feab2087c1e9bc519806f07a5ddb1fa30a24",
  "formal-neighborhood:1bb9149fa28295445065780313c40182e01137cf34ed186e8c4bad1de022b916",
  "formal-neighborhood:1bc4dd98895fcec7a2c498da264d6fb2ba53cf167bf9d32684f8a4261285fd00",
  "formal-neighborhood:1bedec56bed64902c98944f6712245077299d718d79ac91530d1857a2ef5ad1b",
  "formal-neighborhood:1c37c7a1e7a4551565d093f4648ec0aff79c4d416ee259b849ea3257de0a40fb",
  "formal-neighborhood:1c477f4673adfe7736a9265444d5d00ad9b72e9fc8058240f64c2dee5fa29cb1",
  "formal-neighborhood:1c7b171f4b92f07849da9b429bf58c5e99a0936e306cea40ce2a1839a886bc30",
  "formal-neighborhood:1c9409b052fdb23e68ae6bb3ac9a9f631872df555250eb47982fb8cd7a92ed32",
  "formal-neighborhood:1cac27e5188cd2ffaa0b329631dac1f50fd365a0ab4890db3208673e78f587fb",
  "formal-neighborhood:1cba23b4af9790cf13e5ee3aae69e29050bc179f05911dc2f38f6fbb6a0d3989",
  "formal-neighborhood:1cef2ebd9a9933b21caf5df52b0ca5f40177eddb540cfeb35654b23058e347a1",
  "formal-neighborhood:1d10124c920c67e2c6f020bbb052c25d33b8d21fe6b9b02256db93891b7e21b2",
  "formal-neighborhood:1d10fd621037c14cba7c8915a80416b2851e4456779f9e39f37ca00e8458493e",
  "formal-neighborhood:1d34a39ef6077cd22c515ba061a778d614bfe7480fceb85f67bed324d8d0b7af",
  "formal-neighborhood:1d4b89f61d5018a7d43e75a2c656d41a4ae806fe84dcf1b5bd060d132bfa362e",
  "formal-neighborhood:1d8bb2af7f758203e7062c2ce241877061395f916e8e1e7da1985c7d22489391",
  "formal-neighborhood:1d9024ed73e6155cc844653afc164a6c9b159fdd52a9e61edb3db8adc5f275d1",
  "formal-neighborhood:1dc2eebd6e6816336d85fb19a47c5efc182ed24897d603426f410c4e01904275",
  "formal-neighborhood:1df4d49931728b540f0b20f34ab6fb9a5925fb4e2280ea2ebe71cc7a9958cb60",
  "formal-neighborhood:1e0af386bcb1678f925bcad9ca7b466002fe1f9fb557075f91a5620d2fb43578",
  "formal-neighborhood:1e1013edd3124edc323212feade1aae021d28e6b801c614315821858795eb2a2",
  "formal-neighborhood:1e21260472b6f4e10cb9e2b907be4c14c30b73ea3755b9c94051153b518022ea",
  "formal-neighborhood:1e40defc2328df810e27ab7cb88bb4c9b00794580887e764ed522f8f31948cc2",
  "formal-neighborhood:1e47edf141ea8af1a36eb2c04da297e8afdfb3d5fb81712f80ad28e270957b78",
  "formal-neighborhood:1e772d9b9f81ee0e65d5424a16c4bd168897dad9ee8c6a8799e52aa5656c3ef7",
  "formal-neighborhood:1e7e3826d22a19802f86a02786332d70386e89d2524c6a9adb96652daaaa4fb5",
  "formal-neighborhood:1e945ce6dd1360084c0b022f8ab32e174ee18a870e2826e87f645383f843f737",
  "formal-neighborhood:1eb529e2d58a917238b4c353dbd68f6b5bd6d57d852819c6d329c2e687e0f23a",
  "formal-neighborhood:1ec16e8eff3b7b404021ed7a8dffbc26b44ae8df5a2a0c3c88948a455f96fa79",
  "formal-neighborhood:1ec631c0a640ae5c2185aee757e6e153a9da21988731c4e41270888a88856a0a",
  "formal-neighborhood:1f2eedcfacb0cff3cf852ff0a113ad4ee8a0ebca4e051144c9c277e925fdc54c",
  "formal-neighborhood:1f4a6bc54937a4690a89b6486b96d9306bfcda0fd6191241b644ff2ea4557d83",
  "formal-neighborhood:1f6698d80c8a87b007ec23ab17944400ee6fae4805d238d05b4868fc7b7b3f08",
  "formal-neighborhood:1f6de28332c0a31b19445db2ed77156c0282b3a115a124f265a15d75162f363f",
  "formal-neighborhood:1fa2464c8574806f6f8e4c23f96982b7e2a5516dd76d895bd6e8d465f6941973",
  "formal-neighborhood:1fb5b0c95a3f1c69bb45bfb15e1a29edd409da39ddcc40d3d5fa04ccd95c4e12",
  "formal-neighborhood:1fbae47b3ce53478213d126398d7f2123e881a693dff0cb7b8725d1a0047e970",
  "formal-neighborhood:1fd4cb024556903c16167095873bc760646970bd41bfdee13d38ac48320c6091"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L109028).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
