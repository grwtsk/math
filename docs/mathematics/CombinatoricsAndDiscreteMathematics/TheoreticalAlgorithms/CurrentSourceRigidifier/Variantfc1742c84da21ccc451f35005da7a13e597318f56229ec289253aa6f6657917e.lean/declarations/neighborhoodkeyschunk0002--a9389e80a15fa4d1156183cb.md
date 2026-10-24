# neighborhoodKeysChunk0002

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f8247b38d0d40ad6fec5e0c240125eaa9abff35a7a8af01b63ba90042fcfd01c",
  "kind": "def",
  "lexical_name": "neighborhoodKeysChunk0002",
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
  "slug": "neighborhoodkeyschunk0002--a9389e80a15fa4d1156183cb",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109027,
    "line": 108960,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9389e80a15fa4d1156183cb75b9843dbd2dc8e676493ccead842a3a55c0bc24",
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

Occurrence: `declaration:f8247b38d0d40ad6fec5e0c240125eaa9abff35a7a8af01b63ba90042fcfd01c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108960–109027.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def neighborhoodKeysChunk0002 : List String :=
[
  "formal-neighborhood:125c36571e6c8e08671cc3a07899c40b1f2820c0c0768f4cc6bd9dd7a692717e",
  "formal-neighborhood:126e7d21209622f0c057a9fc3e81a25d3aeaad7467e8b19522baf4016ad0fbae",
  "formal-neighborhood:128c99bec905307cc3532df01ac00ba7eeee745ca155ad7356eeeb18af4d189c",
  "formal-neighborhood:128e20a277d428fc3feeaf734860aec288774bb737bd92c21eb31630d0feda48",
  "formal-neighborhood:129ada41b023f7b7e296ccc808b0826c959ee2b3c5ef6d920ce95d743e0a2cab",
  "formal-neighborhood:12abf4240b7295d7613e187545d60065d1ad89793d2f2e964b4489a5d8fa2d7b",
  "formal-neighborhood:13286c818d376ce96c289e47e85c5edd94bcad22e44d0668b5ee880d1af46712",
  "formal-neighborhood:134ab672f973227c54913800d6f01c338c23944d9b47915ef3c00f983c5e3e5c",
  "formal-neighborhood:1392b6d5e9bc0345ed6370659c02547ec3fe011149d2637e4f287f0e19c63722",
  "formal-neighborhood:139400180202850a009201c8350df2c0208607b1cd5b636cfb0a83adc2d6bf3c",
  "formal-neighborhood:13a131c2cd2c46a2b05f82e4127814101498e3a9dc28f95fb0266e030a6708c1",
  "formal-neighborhood:13ca94423f3ff3bc8b1fafc808efab2f58506833a97dc8dc039042a73c1ee547",
  "formal-neighborhood:13d62f10847c7215e3686a84907555e35e320c5d1eeb50df2752cd22255f33b3",
  "formal-neighborhood:13ed2b77082f7b0cca89c3c99acb30d5edcfefd6d31205d845d0416a91734bb5",
  "formal-neighborhood:13fabdac85435a21b1b8b90ef9bfde95a9c4047b4b2b782492acdd35b0fc9514",
  "formal-neighborhood:1404be9403355f071a912c2682915693b8a54f446232621f1cad10b458c86d88",
  "formal-neighborhood:140eb154c33785a61e1fdf8b12a91fc2f728bdd9602c211f05097f0c030f74e7",
  "formal-neighborhood:141eef96a2948944b6088666ec01ba5a42fdd42470831cffae9c72c72a39c1fa",
  "formal-neighborhood:14335951ba5e1fc29539f6fe9b6628932d40c94fb1329a2606d57c7f5ce2723e",
  "formal-neighborhood:146cb88c6c7c533bcdb4604d2109d6b6bb32cc3170a0d0b431edfd7177e35f57",
  "formal-neighborhood:14a15b3a29d6d27ddff88c2173b16cb9b4284a358d8dacccb5922e34c16bc9ea",
  "formal-neighborhood:14c0534872c5708317b6092ffaecf75e11fe8614d127a0878cdc6c03c8fb9298",
  "formal-neighborhood:14e0cda6d7cfbfec6fb6ef8d1f845ff4c19f42dbce11a1d95f12761587417ce0",
  "formal-neighborhood:150a78471f608628a43c58f2423f0a57174194ea76ed5e8e47004f88c6146bfb",
  "formal-neighborhood:150dbef48d3f3313fc9a1a70f6b8d9d9912be82d5ca364799109bfc9df37d778",
  "formal-neighborhood:153a7fd01237fb4a11d6636dd39de3f36e653db6835ca9c79ae0acab546c36e5",
  "formal-neighborhood:1556182a1aefb4fbd6c807eaa1b23be738d7a2424def3b080955b193e507964b",
  "formal-neighborhood:1574069ac88a1a15825f91bc9c1c1cf562549cd4b375529eecb74125d181b42a",
  "formal-neighborhood:15aca70e49e6538cb385838fac36cc6a597f0ed4214a94357c3859d9ebc988c3",
  "formal-neighborhood:15ae3ecfee81a978100441e644860e5a7875851cf646c05f5552ad81a9ba8014",
  "formal-neighborhood:15b066d755ecdb319912c2691c414db7e98e9ce4f282e5d84841c49c8b13ca7d",
  "formal-neighborhood:15dfb597c1618625ee5639b8b370404fabe5fb82d37c58746b4114b77522d1ea",
  "formal-neighborhood:15e99b1d25a6516e466b8a0e76c6910042bd3281c53224f8461f07d24afc7885",
  "formal-neighborhood:15ec19d92f77356a6567cefa4a5426d75f9fbd84578fdd0d5009ff6020d44cc5",
  "formal-neighborhood:15f5848db29c50b54f023476cac3eaf06f589d53c26edae3a76ccdcc4bad25b9",
  "formal-neighborhood:160c6fd25514a00a6714cb892dd63f80085119c822fb42c0c1b746551bf0c43b",
  "formal-neighborhood:1634561efdddcd6987cd3210e810db09313f99534c3444f200fb624af937085e",
  "formal-neighborhood:164549b2f93c14b79d9fb3b44b8deeaa3904123825e282059236a4ebdd954d25",
  "formal-neighborhood:165c3e16081bd8a82b2f2e4350c344b6e217a8a9fcde2198ee7711c88b41397f",
  "formal-neighborhood:16687ff53a8a05f970d09f4db86dc7b3c24e09952257e21631e8eacbb8e5dfa5",
  "formal-neighborhood:16921311666e115ea8a00cbb30fed4307f21acfe256321cfa13faded805e9cb5",
  "formal-neighborhood:169e40e4451751b5a24ebf327864b853c29646512851db065531278ef2409754",
  "formal-neighborhood:16bd97e406d1be21b54b659820a7355d479a96e6fb82812c652d103a9af88100",
  "formal-neighborhood:16eeec8d5c50b60f8c618f4414d6805cf81ed315f0d1ebf50ca18499bca30787",
  "formal-neighborhood:170af14d9ca3186515c96d4f6c6cd5c78cd2760abe7348b50ce3e008e7bddd0b",
  "formal-neighborhood:171700bee02ab42afbfe4f37c193af6b28d7c96d81eb9f562b94ec046746a131",
  "formal-neighborhood:1724e900e55ab4477938d34d3abaee41dad6f06aad48c0ba41983b465be6c4ec",
  "formal-neighborhood:1751f10831ef27c29ea59ebaef71e38eb0221aeeb8758cb210a07fabd2e080c0",
  "formal-neighborhood:17581e3d54ce3a7eff7f924d8819810ebe7421fd7a4781adc5a39ee60c069a73",
  "formal-neighborhood:1758b9fe6225131957bf515d9f13ac7ca6bbbb3b7c4b517e98d15c4df54b775c",
  "formal-neighborhood:17622c3a6ad7139e30f9e40d464cab577aeb020a3a2c4696c7d82ffb4081b42b",
  "formal-neighborhood:17ca4a13c5f2f34c9b33460a40cbf16d17e3336e7cf1c1aa5bd95159a64128a9",
  "formal-neighborhood:17d890c871bc23c77dbd1997c3da9a71e24716cbadc6a6bd89ac087824ba85f4",
  "formal-neighborhood:17dca32df5d0ba33557b02630c7ff012ed1ee8bb9ce7b7387db10e95109a583d",
  "formal-neighborhood:17f51a65b50843106ca1ebd807151097e09775098a64597766837cd6d4660913",
  "formal-neighborhood:1810c02988aa23c985a2f348f0fb63a999f7599894d63c70a541f61129f5d602",
  "formal-neighborhood:1818f1635b53e90f17bee777ea78f2989124c12b3742db7dce126bd6cd7ae790",
  "formal-neighborhood:1819384780e07fbece73de13978fdddb9664b583cdb179eddb3aa6243e2d43ac",
  "formal-neighborhood:1819b2d07c0bd05601c1a5191c9657b2ff943b99850cb611a22f6caa386d27af",
  "formal-neighborhood:182f3b1027376659f75ccb7dd72e05da06f7ce90c3edede1e1917debcf7afb15",
  "formal-neighborhood:18634092e9d345f785ab449ed79a7003e3c64784c71989ef8f3fc860cbd7ef9e",
  "formal-neighborhood:186571ec854468398cf2104c408d2d4f3f2d7307fdca047bfcb3f09f007b2e45",
  "formal-neighborhood:188ffb407220bc19ae638df2b8a331079713ca689c576dbca8f14e20be88307b",
  "formal-neighborhood:189dee632ca6b57d0b5d17fb6e8516b247abb001b1f8c1c8accd8132e558e2e0"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L108960).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
