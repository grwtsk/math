# modelSelectedCandidateIdsChunk0007

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3a1ad100f82c27deb9cb237ed1a03093f2a44d95e6225b66f772f3ea209c542",
  "kind": "def",
  "lexical_name": "modelSelectedCandidateIdsChunk0007",
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
  "slug": "modelselectedcandidateidschunk0007--2c4b51882d3e05ce938881e2",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42478,
    "line": 42411,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c4b51882d3e05ce938881e292e737524ff9bbd85870bef96f54e0a73d63c5e3",
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

Occurrence: `declaration:a3a1ad100f82c27deb9cb237ed1a03093f2a44d95e6225b66f772f3ea209c542`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42411–42478.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def modelSelectedCandidateIdsChunk0007 : List String :=
[
  "name-candidate:b8d13cc041d47e8ea59982b56ca90f7b059f1d0a5735bfd3a3502993d95e0788",
  "name-candidate:0de3072b212035d64500e160531027387a66e8f7f9185a37efec53dda11109fe",
  "name-candidate:3860b2970aed07964600f1b52e711cd2c2b0446025e2812ad22b1d63d9b5a29c",
  "name-candidate:a09da12b5390fd88adc779a6bc7df6f0897946e3f836340785c68bcb4b043f39",
  "name-candidate:c00d7a2e638bc10ddfea696125eae172899f7269c94f467a301cb2dbd4de6f62",
  "name-candidate:e945f8373554cb2c6088e357754984c2fe4deab83f93122de8de2a63e21c010b",
  "name-candidate:f2ad08ff007da65b2b9a1f085dbe45e94e1234711210c703ceba09a949dce02d",
  "name-candidate:ffd59b88062958f59a20d9d75042254c55c4d64ea42991f01ed1b4959787b143",
  "name-candidate:4e0219ca9a5d04bee8b905d48780bab8ae6327e22fb0710d8545a0ab749aea04",
  "name-candidate:18c6c7daf7a561e92bf1c344ddb73fe3c7afde31295a846259f066fd98043086",
  "name-candidate:94414880608c530ca6f9f2a19f0d97bd4d282e65bbe467d6113736bdc8dff3e8",
  "name-candidate:6b47f5e38682e64149128ec018258696dcecf34b80cefbb737e239167ae03ff6",
  "name-candidate:0b88dd86f03ac6ca33aea0576cb5ad0c4d98f469b3ae5f108324ae278fd8a7d8",
  "name-candidate:fe84519b3530b00e96fa6de0506875aea7671edf6fbf893661d3dfb8cabd6977",
  "name-candidate:b9790f661bb1bd683cf1a9ca597af21c2abd212801d06b7867c4f96efac27366",
  "name-candidate:b9d80d5bad721a7422cef360ca3fb793049ca51d1fb18b3bb18e95b2f7705f3f",
  "name-candidate:4e9bde9c2f424a63ec19775e32f1f809c0584d6448721a7dea882e023fdb5752",
  "name-candidate:1f68ae3fc77b1e322e88c1341a0562b468adf3643d8345d188c7d9f1e71cc394",
  "name-candidate:0cccd3286be779bcc3779a10c75731eccd0c6471e20a2c66f60baee4fb26b61b",
  "name-candidate:d03599e232a2080333f870499f3e0fdbeae67b7baeba49e54fbefa4aa6e5ce13",
  "name-candidate:11e795ac0929d9435410f747514c2af328cff124d6b096bba93fb6b4c873927e",
  "name-candidate:59c796e1ea3f3335c1eff01e42e71098a338df1d424295499d4be28d9cc70198",
  "name-candidate:d87b1b988f6e75927531eb92a8411305631d4da458c2d6ebb39894a861cf3097",
  "name-candidate:d80954000a36e3b60c199008c220bbb0a9a512ffa45891a99e1572433be0c7ec",
  "name-candidate:bec80e98027714e0c3f2af32a48d0f4479dcf325310c06fc50d280c8a0d02d9e",
  "name-candidate:b967afe9325c8d6b87c234ed67dd7b3f67dc6a1e466a4f95a0bbcb1e6edd806e",
  "name-candidate:d35e048800fe30a4d28b02f2067ea8a46ba97043a58071ee1fff39bfa8266e46",
  "name-candidate:d5b3ca148ae0159c5203ae8ba367d9e944913ff54a168bc5d7dc66e3d23ad455",
  "name-candidate:dfa2b118e084e0e924b4a65421ca7c9f15d4afd6a5fc5d6a3d2e58baab643909",
  "name-candidate:c7578fe191e5b95b4caf148ec487d4c104952e4b4c56da9a093ed46464cf9c63",
  "name-candidate:da94519a2f3d6450484a8d4751e842d69a8956e5605337fbf83e4af2e14a3c87",
  "name-candidate:36b3d09266fc6a4a03c93230a444c53521031ef2bc8c50af2a0574ebda978549",
  "name-candidate:e7206c6a150309fb0005b72df9890cd4556bbc8860759c4f4c00e4262ddf19ce",
  "name-candidate:26571aaf02a827bd7038a0ca915568dfc3b2402b1a019772bf1608dc8eb69ca0",
  "name-candidate:2f26fdc2ba40fc74357e48a5bb4f17e16855a02049aeb2dec488421474800f58",
  "name-candidate:82cfca00d841779f44b129fe689a388275a9a1db732df3fae38820720dcf14bd",
  "name-candidate:42483f68275c76e4ca0ca8700624668434c09d9c0bc74d72d90c63b87d30fd26",
  "name-candidate:030f0210fdd1215d5f0197983aea915b3d6e17fb52531b6fe0ed65c25c07d5b6",
  "name-candidate:b23976b82038b7d3dcd005c553377eb272ef3aac529760f3443168124fe84a86",
  "name-candidate:ad51041a4d934468ef8bd3b9830a7f3d78237a4fc490d1d635fbdfd7c9c910dc",
  "name-candidate:ecf788e96689f855271177bf4a5c5336f306139ba37669338b9fad2db4263ddb",
  "name-candidate:7591456ebbbfecf901f49be89504e2a86f827a08e01a148cd4500a5f2d99686c",
  "name-candidate:5f5bcf987cfe1143ba551e9f8e1332957d1d3f3b7d24991d47e2f0f894f1a533",
  "name-candidate:4129968edf187b3076f54235be56e5ee855d29ef2f56ca5144a63dd544bdda6e",
  "name-candidate:3f434daccfa644e17dadfe621fd83556561f915ffb9e219a89df1f38e4f5f5e2",
  "name-candidate:2d59fd7ed6c8002f38957e89f99dfd96a23e2ef3f25e61d840cd3605f195f3dd",
  "name-candidate:7abfbe13ec5a8056364b47246a1adecc190ccc10e634a5fcbbe86884ec598421",
  "name-candidate:c2a3df7406b5db626b7a487779068edb2dbe52847b5e22e0ed0d83133b352550",
  "name-candidate:a0e42f6ec0ff5db93caf83faa25b9d31392e8c0276af96a57828bc62ba9d84d7",
  "name-candidate:6dce8571ee470434d66c6cb3246bd3891c88c384e3c63ef793ceee9b26c47f6b",
  "name-candidate:133b68e63a17e51e15777914f8d1320557411fcb8b16ec121248c88d221ad5fb",
  "name-candidate:c1843c6877da670f82fffb0ab0706c827e9063aeb087e2d614954a252c234de2",
  "name-candidate:a1d0f996577af4cfe9b645d32c4e562115d4ba845e66d94edb9a5458d2e05a8e",
  "name-candidate:0d8b4a872a3f7ab9f5cdd315a2e119dce8a502b72f42c70144d85642113558dd",
  "name-candidate:d4beb48d480890f151ac0df54eb2adba0c3888d174eeccb58eb30bd2e93ccaab",
  "name-candidate:6e0bb18f1fc153f29810f1de8c94e08908d095ae66a70e746980e08836039d94",
  "name-candidate:380c4bd10dd6952be63711b384cf5e6ef57c7727054299baa20af221d7d64f3d",
  "name-candidate:b7611477afd0500b9f80baedc84f38154d5d2612d01f8b04f542da3f6b1b058e",
  "name-candidate:e6388acb37ee0dbd12a055f3dd93c6f159eac76b21f83b2e73ca635a5efb7991",
  "name-candidate:85f46ea840790483aeb8f4aefcf37f6eb9bd0d54ee27292355e02778500ccd1a",
  "name-candidate:a678e05babc93df6d3394be0b1cdb5109ec3bb21c4630adb23593f1eda0610f4",
  "name-candidate:6e82e25b6ccaa7456152049c1cbc7f6db034e2c72a255ae830c15fddfb31dec3",
  "name-candidate:156b9fc7ef4dcaf9c1d1e7a0012524e9ed5242e52577ac0fefeac25f119a9e78",
  "name-candidate:d50fe806c4c43fe8c7eceb6ec0100be8280f6698f6d2d708c86ee19a26af0cd6"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L42411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
