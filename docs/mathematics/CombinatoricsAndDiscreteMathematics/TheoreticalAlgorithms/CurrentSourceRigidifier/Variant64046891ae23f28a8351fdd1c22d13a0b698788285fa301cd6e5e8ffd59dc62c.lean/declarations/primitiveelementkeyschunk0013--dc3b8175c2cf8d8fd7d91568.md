# primitiveElementKeysChunk0013

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2f2133f8aefad0ff18a468052e8c3d9168b60ca6839ac6bee3d121caf0a0875",
  "kind": "def",
  "lexical_name": "primitiveElementKeysChunk0013",
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
  "slug": "primitiveelementkeyschunk0013--dc3b8175c2cf8d8fd7d91568",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 978,
    "line": 911,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc3b8175c2cf8d8fd7d91568aa47a3a1cffe90e9330c9a9ceffc2c81185c9262",
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

Occurrence: `declaration:c2f2133f8aefad0ff18a468052e8c3d9168b60ca6839ac6bee3d121caf0a0875`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 911–978.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primitiveElementKeysChunk0013 : List String :=
[
  "python-point:4be86691ca5a473aa3752842742c1efd33e9b1676db7e74d5e229cdecc80950f",
  "python-point:4c3ddcc8d29b57c11045faf03f7316dcb26adb96271e50f347239490d3277029",
  "python-point:4c44a6bfad6208707099624eb3fbb7604711c6b55c55e421e15c39b8d9974905",
  "python-point:4c7b98ecf88996bb855b69c32a593cd93a430bee5b59ef33dc77f77b21b454ab",
  "python-point:4c7cab3592b79fbb562c334dc8544a511b2645051d6c0c67f5321c473c651ce7",
  "python-point:4c83c850e6a13c28fa3b4c31d633df4c1ec826e39ddeb62969153cfe774b4bfe",
  "python-point:4c9298ee3b7ea5ddbb279a073530750b6c46c5ad940654d9d44b1697f09f69b9",
  "python-point:4c9cc7c5c21b817969348452f6ae8516b9db789cc3c5547eeb556f7a98369ac0",
  "python-point:4cb754d45d987647b2da89b38f682809120766418900aad6989389881f2ed278",
  "python-point:4cbbe4eb8fecaa1883427ee8ccdd296d3ff48dd4dd36b9cc6bf2cde2eb32a35e",
  "python-point:4ccde37df82ac87c6b3d41bb6b8f45e8790794cf4cda38c3ec79cc69c257b2a6",
  "python-point:4cd0e767e300e1ebd24f791471029a80da1d59548b930c7ebd2d20b014d0467b",
  "python-point:4ce288cd1583cf570cf36108bed5a2c69efd2bf53442f62166d5f8191db71795",
  "python-point:4ceb1c330fa1509921beabf64466cc93e8ebdd2236239c8d3cde25595646c282",
  "python-point:4d1d0e3973b06f859feed4bf961a2bd2c36a53765644994aa9cb981faf8a8883",
  "python-point:4d32ba49d04f7a98e04fb83e7f0a3fe052d12bdfecc5e311b19ee52820e58e9a",
  "python-point:4d423a69a294da5dc46522c9e10f6cb220814a128ad487be86aea23002323fcd",
  "python-point:4d4ded7595b3a56425a3db7854b3f19aa95b79bc037b87c96999578c34d0d0c9",
  "python-point:4d670257d6c3c582fa9a40f95fe5e9ddebc5f1baa509ce9e9d25b7f5e651b480",
  "python-point:4d83deb66373fdfe4f5fd7165c58111509c76c42173ae6e637f342d6b6ba9453",
  "python-point:4dd8b0ea6c624c8c10d23e616aa12a5209b5c39d3ab745924b7327ce6523f486",
  "python-point:4df735b7a2301fd91ca489672e1899d3124f4566b7b75c483c5c2d91dfcfd8e5",
  "python-point:4e1a2bb17a93533d8f15dab380fe21b7bfe428127f2a146a6382a3db8dabedbe",
  "python-point:4e28d311ce0788da14d5e57ac4887acda6550e064d3939fb8c430cba8fa3d64e",
  "python-point:4e2a85e5fb860b81c46df85389b12b1001df8a428958d1b02f4f9ec2f8ab615b",
  "python-point:4e52911d01f4a3f9f9b21836ef8e0e8871d4b43398e822aa4e9d1d294aaecf7b",
  "python-point:4e6e83de8002d0168c0d9f69eb5b306602c895a4df03fa994627d8de53fbd227",
  "python-point:4e9f7e6209fcc65740a551650c5f281d747e4ae59b96ff021253a8dc792560d4",
  "python-point:4ea51e4eebcd489cb18f94ccada2a2637a9e7a43e7cda3508300f84bda0f6514",
  "python-point:4ec2c2ca73e06fbc3eb42087b4d5b605ffec5a198f03ac60829a1a5e5723c09c",
  "python-point:4edd864dca93933243472c6ee334490bb26102bb2a461531344dd55210105dfb",
  "python-point:4eed21cdff1869363aa48e62d42011f4bbcc1365bf9b57d9e2a278ba41c17fd3",
  "python-point:4f0b434693108834177a87dd8a49642d9e50494a7c32319e2555b5864f8f1c6c",
  "python-point:4f42ced448965649bc7e465465429ebdb99f802621fef8363e2d1be8823a3ac9",
  "python-point:4f4f1892dd5ae327d51c9489a88bd1ca55cab54d13fdc9b73123b23b377a46b1",
  "python-point:4f60233febc987a7cbc303c8ef629434ba1a9e6aa255edc7614a5e93d88a6df0",
  "python-point:4f7c2a1058587b1ecde6b8d4a083918d47bd68a65b51763b3fcf35c0aa86aa16",
  "python-point:4f8b04b2446f126c35c34e6abb462332e970099d93620818830c5f818871e94a",
  "python-point:4fa26493a2a73bf1bf451d628697383b9704c50a5ee75f32f1b2c831583a1fd2",
  "python-point:4fa940b6cfb21257ba889ef54e7dcf2bc36f5bda515e396f48b402122894a561",
  "python-point:4fc37ef865ace601ac3aa12cc377fa51b26df1207b7b562f2f4974cb03bc9918",
  "python-point:4fdb5d5d083a0da27b902a49d59a989f848fb71651ed5aada4c01fb558af5678",
  "python-point:4fff3e82ede12283b13948f4d4a7b1ce39fdc4283bcf74c65f2a3abc50390edb",
  "python-point:50285be74034ede78b5d019d1747a59756346ea3fb93b1311739454fa7782564",
  "python-point:50400403b349842bed21f7afa5dfd046b75f1704659e6c54f65960c797619b61",
  "python-point:5065bb69025b57d2292c55d400786d7bb0ad2beb81508733b498cad415eb47e8",
  "python-point:50884ae36aa389856d0aa6608cf9f9db079a0fadc354458d8cb051e5e105afd9",
  "python-point:50886848f2d7765d15265947595f016376269104d0dda479177175fc2518ff41",
  "python-point:50a0301f236f3f027fa7185c21a7144d0deb52152d4f5bd4ccfe960105ac6215",
  "python-point:50b24bfdcc54eceabc0d930dfee7a0094032cc307020091f915fcc96b5cbabb6",
  "python-point:50c37a00300d1c8a864c34782e22d0378100ccaf55b69558a1fcba572a95cc63",
  "python-point:50d5fd38ff7a9a1a54e54e5d33026ec33eb4130640d100da3c5cfe207b8bf6d2",
  "python-point:50ec300c5929d28989fa5c739a94d4a0597bd2f1aeb1919d2d38d59118890249",
  "python-point:50f9b01323ebab2978dc2ac392ba945b0ed4cde51c21f0d79f612fb8532da047",
  "python-point:51088850bad60da007feb49e16bdbf5c94cf8059116b2100f40658f5c3110058",
  "python-point:512061011a3f8d3e86a0590aca3fbb6933e29fb9c97b0cada70db07cb5f22b42",
  "python-point:5126a7d4defdcba3278280e623800dc7157a19231f78b9bd04f88eeca10e48c1",
  "python-point:513eaa8f04ee2f011b9c1325ad25e5e45608e17666a2ada7f37f6e0304a9a662",
  "python-point:5160e1c35477bc7274e38d56d3252cdd7bafbc52a42d2156d96f434aeedd3b3b",
  "python-point:51887d0b61ec570d66f2b3078719579db14593226655845801217d43ad3de1e6",
  "python-point:51a81b29ec3f415ebb6faba9fb2b8883979f026518b3b5e1e62aa25115fb0def",
  "python-point:51e7baf679dc4882042f5761984ce34156712d8ca4dd019a403a05dfc08943f4",
  "python-point:5203c2c9c1bcc61a0b2afc12d1c7e93f1b1e71f8317096bd61e247623e62407d",
  "python-point:52125e39b78ce538dc75333018bdcb6a79d5f08aed25f4e586222705e2443fb6"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L911).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
