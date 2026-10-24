# neighborhoodCandidateIdsChunk0000

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:15a2ac1bea11d23bfbd9687d61e8ebf504530a84cb19ac6320b98a13b2f0ad57",
  "kind": "def",
  "lexical_name": "neighborhoodCandidateIdsChunk0000",
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
  "slug": "neighborhoodcandidateidschunk0000--9987b3f5e4ad72e0944f0184",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113677,
    "line": 113610,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9987b3f5e4ad72e0944f0184a561adb9dfb46ccf2e5989667fa3e545bbfe67f9",
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

Occurrence: `declaration:15a2ac1bea11d23bfbd9687d61e8ebf504530a84cb19ac6320b98a13b2f0ad57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113610–113677.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def neighborhoodCandidateIdsChunk0000 : List String :=
[
  "neighborhood-name-candidate:f26ed861e94ad59ff4338b00af37179ded25cb397f2a216e86eec906437710f4",
  "neighborhood-name-candidate:6bb611eaee5f667a18557a5ce68d030b913f96a1f741cbb329950ce805230685",
  "neighborhood-name-candidate:ce5723fc91d3f1b6716737d689d7782d4ac9e9af5e359d2cd87fcd3adbbd66b0",
  "neighborhood-name-candidate:d2b291d156c890d945e774478736a9af1949b94c2e864c1e63d7afbcadbde3ad",
  "neighborhood-name-candidate:aa2644a010c830ec71bb8fd0aedf020d8b2de1cc12287e5ee92ea1acd7f672c9",
  "neighborhood-name-candidate:293483d6841d6b645d00ab855f3cbb2bcbd096f03778d4bfe0f47902b8cd524d",
  "neighborhood-name-candidate:1f7063fb4c05b3f08306d105a6ce52d1bf38a763e14678140cd486bc22867dd8",
  "neighborhood-name-candidate:72472d3af4f57cdfb09371c4448aac4619628ebc90bcff13ad1367fc2a73e8ba",
  "neighborhood-name-candidate:61f4f43db61372cb4076cd21198113978a0b56da8a06b5305c84485cf1ac7528",
  "neighborhood-name-candidate:7ff2798aec32e2d75c3e6cafdfd05fc190423a1f1565d11e729baf2a9e5d555f",
  "neighborhood-name-candidate:8d13aab8d7004f608b9c4908259ed58076c3111cda566be8dcb3e3ea904f7f41",
  "neighborhood-name-candidate:aecf1d2d0dca59308ff865af66191f62c7c34990902e1e0d586f50c4a67520c5",
  "neighborhood-name-candidate:8ab4cee40d361b25d010869cd6e80ed543765bc78080ddad3a40c829379d3846",
  "neighborhood-name-candidate:324f06e1c598f5b6d15574e94b99cffcc713dd2c8d581ddb9aeaa056897bc9f6",
  "neighborhood-name-candidate:24078e1086a4535d9ddeab464d8b80eb017ef03fd91907d4064c79d73fd02360",
  "neighborhood-name-candidate:b2f69929b2f384e96a6630194e9c2e6cd4c338e4ccf90588bddefc7f769243f6",
  "neighborhood-name-candidate:e47907c2a6cb6d4382a9f2aff52f3e66d3b25e7318176a36f9824e80bcbf12dc",
  "neighborhood-name-candidate:f696e6e535affe8c9ef78095174d49c3d75b3733a343fa7bf82f539130bdeb2e",
  "neighborhood-name-candidate:f12f5a88d4fc4f4e697fd290f28e277f3cbca5c2a8fcef277c5720a561b1d0b3",
  "neighborhood-name-candidate:a1f3fa75dc0da9641ab479f198b6a922499590476bf65160400dde50f5bf479f",
  "neighborhood-name-candidate:fdfc24aed034a48773b564fc296e7d6a6f2569d3431cbe09dffb07438eaa26ae",
  "neighborhood-name-candidate:bf79bf10285b458f27be10703a1ff8d39a911a0adedfc383f91439d83d6fb711",
  "neighborhood-name-candidate:30da6c8cc332c3c2a1f1745ec019407e0cb77a3491a46d7f63750ae1f31f8d3b",
  "neighborhood-name-candidate:ec6afd8c08df18a1c033fa9ff3f53e0cb13cf125bb9992af96a5981e2dc55fc3",
  "neighborhood-name-candidate:0b904d04d854245d65bbb970665c0c3258eaa1080727a0f36168bd692e95b70b",
  "neighborhood-name-candidate:002de2804ae439526b9488ef55feeeee2d64885af33e5f328996ac01fb732055",
  "neighborhood-name-candidate:453c54992a3f3f4e89d3e378346227a770f63a46cbe62e1778e77430f2c347ac",
  "neighborhood-name-candidate:8ba664e7ede13212f35d35568f828d075c19efe8afd59f675671a37ac37c6ad6",
  "neighborhood-name-candidate:f07953b19574c274d3bef46db9af0fe3c113c4fa3eb07d3c98424f4dcd163e41",
  "neighborhood-name-candidate:773acb0d529dd6c1c17d0db8bc9d30e9dcf1f37cb604f9218ef5b82eae0e89b9",
  "neighborhood-name-candidate:e4a24c78353aa9adea21d62b153202c1d42f5d6f49dd9fac0bbf95ece223f7e7",
  "neighborhood-name-candidate:f33f0a648ff5aa47724873cbd52fa073036766a4ce009cf24559d24f863c4a9f",
  "neighborhood-name-candidate:27952c43807c769530279f36bfa4d7a779446d564b2b8abd396950c7cb282dab",
  "neighborhood-name-candidate:be5a0fff40e5c72fa8fde32113ad470f1570d8635a4d6c9ba012f605bfc49163",
  "neighborhood-name-candidate:c5bc8628325dcd726a6b8d85db3420cc9667591713c52612e816d9cce1cca599",
  "neighborhood-name-candidate:584dc0758ddf7f25f6930014405a89079c7fa18d3c149498da1fee7faa5eaf3e",
  "neighborhood-name-candidate:d1e284e3462874e2473b8e360c18749381b94d0376f2820bf6b2aa2a040b5c12",
  "neighborhood-name-candidate:1ef35125a383f987e5a35b06f49074ba2734650b60fa537d84995af73a363d3e",
  "neighborhood-name-candidate:e8d6bb2b2af58133841d4e0ba4bd401b9e3311ca8c2a3f3193ebf28d9d2df40e",
  "neighborhood-name-candidate:471a2d324ccfd82a915752df6c5fb3b083d188f405ccbeb0d25d92752d3e1968",
  "neighborhood-name-candidate:e8f5f903921d4744bbeede3e1e09d7cd8b993c78720ef9ae984614a145507639",
  "neighborhood-name-candidate:89a2e409787c80c821995daef874701b4ecd8740eb5b7e9dbab5f6409b128ada",
  "neighborhood-name-candidate:2fe895e9379de0d6be333e155fac5b85894f988de05128df6fa5df1c909e1f6d",
  "neighborhood-name-candidate:5cb7043974f466010784e5f43cc3075de4d50bc059b369d8aa091dcaf1d4b2de",
  "neighborhood-name-candidate:0f0c9d45c09cb4bddfd09a7e87ff5c1398d1aa7a3968a1b2f11eda4351f57916",
  "neighborhood-name-candidate:7c2b8390f03bd5b082502aa2c753252487eaee3dfad580e8bbdf9aea469aa01d",
  "neighborhood-name-candidate:16d53ec720a1f8c24e1e63d6cb0b6c14cbcd8061e237f9b184ce3b5d52c6127f",
  "neighborhood-name-candidate:cf17b4c336aac752d611c5e42204cc920a9c48af4e89ca8fb08bdb5814c5a1c8",
  "neighborhood-name-candidate:d1cbad683af573b7f112a028246502dc04dfdebede84a4b1c7fee056a085bb44",
  "neighborhood-name-candidate:d115d51e589faa24104c8fb16d3066925347e08fc3a30a9cbb85f11951693150",
  "neighborhood-name-candidate:87d9082fdc8abd6eec8bb76e996065604046e29a06820e6654f401f8eddf55ec",
  "neighborhood-name-candidate:5354010105bbb270e277032619b1150f07ea027313cdf27eced4cd85f0269524",
  "neighborhood-name-candidate:b7ff41adc93c4b79a5e31aa6875d80127827948d8bda5ed314ac4f9ee7850cf9",
  "neighborhood-name-candidate:0bfc4c2a2cac5a951c94b338b3b1dfc73a3bbf1d0b3781a620b3c924d0fe551a",
  "neighborhood-name-candidate:46a8149d92db43701985eb079ca87a1b03e61433367ef5e77f3189cc7803edd4",
  "neighborhood-name-candidate:606ab120a3cdb4fbece2510ca8e427fedb3aef88ca0d1c2e0b2beef5a93c2107",
  "neighborhood-name-candidate:00613a21338a37b7078fe194b64409ca5d2af418200f3b88d9a220b52da036d1",
  "neighborhood-name-candidate:fc49b42951df705f449a2d9f3c228cba1e2c0f06ae15d570dd0a7a5debb363c7",
  "neighborhood-name-candidate:c22ad75eee8803b8f4e31fe22f5514f7eda4635e35c59ba467fc22c8597d9c87",
  "neighborhood-name-candidate:c6c58f0dfff752d315c7c878b12ff9fcb560587a84ab91a0b25a3d25ca05da43",
  "neighborhood-name-candidate:cdc1514a8fd33210e676d80f3ca8f8a2445e27ca7607e61f1d9bcc94e9788b28",
  "neighborhood-name-candidate:2bdaa5552163b4da47371e05ed1fee9cf8e387de3819bd380b31cc8d77f615fb",
  "neighborhood-name-candidate:0d3288832fcdd3fc82a2425391b9edfad5fd3c27b3f230bac9a181ffb09a1e32",
  "neighborhood-name-candidate:ed37bf69de8fda383e009a3d8e46cb1825f89532697fefd5f86ac58f8110e68b"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L113610).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
