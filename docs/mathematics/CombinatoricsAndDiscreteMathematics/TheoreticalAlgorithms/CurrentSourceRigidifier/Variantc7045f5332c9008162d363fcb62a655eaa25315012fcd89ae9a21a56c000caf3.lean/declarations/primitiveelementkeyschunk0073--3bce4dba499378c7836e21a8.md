# primitiveElementKeysChunk0073

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:433f4a3ef554add608f84061a712182b9718f7794742198a839978b9d312670f",
  "kind": "def",
  "lexical_name": "primitiveElementKeysChunk0073",
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
  "slug": "primitiveelementkeyschunk0073--3bce4dba499378c7836e21a8",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 5066,
    "line": 4999,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3bce4dba499378c7836e21a85510d1932ae51f7755cc10b802505be6262acdb7",
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

Occurrence: `declaration:433f4a3ef554add608f84061a712182b9718f7794742198a839978b9d312670f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4999–5066.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primitiveElementKeysChunk0073 : List String :=
[
  "source-element:1d1508df98986e8caa460a8fc92cab864f0196664fd37a383d64f8914b1ee92a",
  "source-element:1d2309f587905d21ce8a4f8cb561871c2a9548704c20238d6859fea802068a45",
  "source-element:1d3f7a44f177bbff82181c52f149c2e8ff769b298c87b96d96e755939f7ca986",
  "source-element:1d4ff4f8d2c63eda88cf8ae66b15f5472baea58d6d26a4507c722d83506c0b29",
  "source-element:1d95e5c857981cef0cb5001c35068390f2a0e6c0cf6dfbf105e83ea2dbbdd94e",
  "source-element:1d9e975d2643f2fbf095e6371a1c8eaf5c93afb6165827a22560e5f65f40d1e5",
  "source-element:1e70ca56b56e72b8255df2111adf47b9fa8f2741e8b1f4c478d1365c5e471452",
  "source-element:1e753c953402d87d88692fe979204cdf39514db965112f8a1bb6fa685358424d",
  "source-element:1e76f58d4cdcc2025adeb3e6e3f4558e627475c9f84ba5f9cf3931c8dfb3a5c9",
  "source-element:1e9b0d8eec1796062e0f3e76aaefe51ef303ced59624a87e351b48a9d0564d0e",
  "source-element:1eb7a2d634976541cc8d3ba38c65216e667134f28cee3cbe6cd263ea6eda4706",
  "source-element:1f08acd245d7681e217dcdbecebb60db6f8cfa799b5dde84947b1765f6eb0310",
  "source-element:1f4e58e5e5666255223c679ae02d5b6e2f9a39ce1520f3d1a7f5d173bfce6a6f",
  "source-element:1ff506c95dd58e67c762f880771df02a76f8e0199460b82758c51b3613a07ab5",
  "source-element:2047d29ff51440fb3b97b145055162a939da08f2c98196f73d846476bb4a1e2c",
  "source-element:204e4b7e42fc59c1fbfec264b233e4d7f78c473d56f08528e0424f9568a44f47",
  "source-element:20548e98dc05f070b631095e95a17da260ee6e1a1b8b86229b03e958b5185548",
  "source-element:207a8f02f51d3888251866c667fbfa79193b42637fbe9babf775f29f0fb2c097",
  "source-element:209fe2afab859b1fb8e1d193ca5ce280cd999ed7bbd60f5b75ea4dbc1826305a",
  "source-element:2135e7d98710718b807f1bc47003f524088fafd4fe5ab1b7297e099396eed4b3",
  "source-element:21558dce605128488b60b058fd245e43fcd36b822a2694f7800baee0eb0c87a6",
  "source-element:216254cb32eafec953247f855704aaf93b189ea3b09041dcd0165fdffebdc4fa",
  "source-element:21d34434862b9e3dc773aa8b3e52287d6cf5f169a5c6109e9323ab7510ad12e4",
  "source-element:21e6dac8e62bbe43334f99e434712d29ff385148733bb312f1f020d028b40eb9",
  "source-element:2236fd679d891c96d80b46826f9159f1e57e72555d193db1c3aa4d0e7ef9aa13",
  "source-element:22ba0dd5933497930157bd68e7d2c3564125feb351509fde164f80e52a1915f8",
  "source-element:22ee5a29ebbe10d982852697cee8828c659975d1ab344f0e1bf9081811ba4d08",
  "source-element:2320fea02b661507dad6d6ca99c08fe01c670c63ab8edbd50bd285322aea5585",
  "source-element:234d490113e957415b6a9b831f45bf06b78dd2ce10d3bb74e231c2e318a98af3",
  "source-element:236340b1c93c3cdf18fdef18716a724cafbb61fd3e9142f32a186d0a0764a3e4",
  "source-element:236dee42a9bd842da5741526e686496b74adc6b2de9d3cc621fcab3036e60e16",
  "source-element:238587a8a611177106921cc33039cc2e4e909ca9ccd38ef6bb079ee349da7584",
  "source-element:23966c7aea3f08484e9a1c67d9dd615929c41cd7e96cba0857f2faa609fde011",
  "source-element:23f0f3c9f53a1678f17995855e20394ca13c86e4b6b666a54fc8d3285ad74226",
  "source-element:2423cfed738f3188df80c1362fd5b2a60878dc757d52fa0be9d498bb009518e7",
  "source-element:243d6156ac710450604dd819389337aed1c411e5cb2599d08ec45c1cbe959cbb",
  "source-element:247055c1cd4e821d523b6f7ac72ccfcd0f271001357efd035bdad5688b1e4180",
  "source-element:24734eb2705f004c7c5523baa82c289356ac1c6ec911319058887d07b4b55eca",
  "source-element:24d39432de1d1bf1a8e87e7122403b4ea979bed858e4ffdee2f9c9b172dec01f",
  "source-element:24dafdefe8ddc0464cae052ec62be5df782212df5bdceecf7e72bfb0ad0e6907",
  "source-element:2529951f1a0a8e503ffcf91e2d3c5962ca8e61ad015dd1030c9dcbd121932523",
  "source-element:25f58c58712e25aca9f086cc1df7a1ef4221c1070a29ee6a75ec924b23f59b34",
  "source-element:263404d123976fa9d34ecfc352b94530f26e8fa92fa9e7ad298d5f0a6358d4a3",
  "source-element:26636ea71d3fe0ae8235071d6ca26cb4afd0fa43b80b62423e28102b2bf9f39c",
  "source-element:2689a83852abb3887c98ccb11426d37310bf782c8d9cd5995c865bcee8c09289",
  "source-element:268ea1edf8c165b03df30373c570d1d5c7ae3c4525d50e855fa413b3d955c7ee",
  "source-element:269f8fc72fa18030937a196d647d5f9a40058b441edc100a5be536ea92b5b591",
  "source-element:26ef8a2bd7f31bd0794e36a6950ef25afd3f47b1df4b02619b227704cb19551e",
  "source-element:27117e080d7cf4450e4c2ffb480a46592919ebacf546a919ec8a9d4935b5b424",
  "source-element:276bd51f961bef4fd193249da356fd3812f443a6035769a008a51254706cc986",
  "source-element:2771b8b65d63483ac942cb871bb06d7039cbbdadf776cd22177f01ec3e1f5c1e",
  "source-element:27723873e6a40c3576ee38070c52a84f01e6afd6d66c5cf759c0b6dd172044f1",
  "source-element:28090e8c00d4329c01fd6f315498cf4bc85c2de35dc2433e2ef1e7268b8e5b33",
  "source-element:28323154a119db56c40182511a799f78d5100762ff78da1dacc375f32af8ccc5",
  "source-element:287028e6d00dfd0478a897cae9a95dedece0cc843e57b463847d5f3a5d76aca5",
  "source-element:287232fa0e4b4f99390e6396b18153f0c1ce1810a5aaf0d397d0866029047ada",
  "source-element:28ed3a84df992073d2d5a4f394b28dd1323a0e627be6c76176da205cfcc80890",
  "source-element:28f54d259d89e1cf9e102b3c831c257cd6601842032fe5e8a1f712233a421207",
  "source-element:28f73677b7a7214fc887545cdeabefb5ad7d5b3edc0e2890057be703bdea2b04",
  "source-element:290a425f0602c114e0612e8569e9bbec3ad351a976aed134da0896ec466e2ecd",
  "source-element:292b288114ef6be7739f5f5b7774953026f6d574abd66696e460af4727245f97",
  "source-element:292c9497b9712c8f637bdc1efc7c7f21a8da99c2b4d06d05afcc4435822adec8",
  "source-element:293cf1a654282323d0cf1c116ddae055d6977772111229a7704c493d8d527373",
  "source-element:295bc15cf0e08b9e9f4c3f000ea14db13c04eff802f86bb1a540c117a48e541f"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L4999).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
