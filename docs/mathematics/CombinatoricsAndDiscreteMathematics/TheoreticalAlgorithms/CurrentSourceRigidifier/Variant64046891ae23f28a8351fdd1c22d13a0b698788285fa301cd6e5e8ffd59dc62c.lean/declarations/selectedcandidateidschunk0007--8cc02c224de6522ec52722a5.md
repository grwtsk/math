# selectedCandidateIdsChunk0007

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f64d63e847695196e13924551f7ac76e4ab4a0852c7a63b72003f0551214248b",
  "kind": "def",
  "lexical_name": "selectedCandidateIdsChunk0007",
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
  "slug": "selectedcandidateidschunk0007--8cc02c224de6522ec52722a5",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40348,
    "line": 40281,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8cc02c224de6522ec52722a5b40ebfe722880a0e1481350a104bd35b69a6bc65",
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

Occurrence: `declaration:f64d63e847695196e13924551f7ac76e4ab4a0852c7a63b72003f0551214248b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40281–40348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedCandidateIdsChunk0007 : List String :=
[
  "name-candidate:b8d13cc041d47e8ea59982b56ca90f7b059f1d0a5735bfd3a3502993d95e0788",
  "name-candidate:0de3072b212035d64500e160531027387a66e8f7f9185a37efec53dda11109fe",
  "name-candidate:44e484169a901775bbb1c388f35a6244904695df1d57835bdf5719b9caed2021",
  "name-candidate:a09da12b5390fd88adc779a6bc7df6f0897946e3f836340785c68bcb4b043f39",
  "name-candidate:c00d7a2e638bc10ddfea696125eae172899f7269c94f467a301cb2dbd4de6f62",
  "name-candidate:22040e1d06941b0fe523e10ec52f3c9ac58cb70a772ea84a42a08e652b875ed5",
  "name-candidate:0030da8a051d500fc491067cd1b971a6987c91332764c31431c1e78908c29a76",
  "name-candidate:ffd59b88062958f59a20d9d75042254c55c4d64ea42991f01ed1b4959787b143",
  "name-candidate:0ea4c9c45dfd6d1b73ee88754190a2fda95f4cd1ed65c0fe269f6ea8ea5a85ce",
  "name-candidate:18c6c7daf7a561e92bf1c344ddb73fe3c7afde31295a846259f066fd98043086",
  "name-candidate:94414880608c530ca6f9f2a19f0d97bd4d282e65bbe467d6113736bdc8dff3e8",
  "name-candidate:e30f59ffc97bc957757bf677d2e0c6dba176218cfb2ee0d38b559deaa94caff8",
  "name-candidate:46179e41935e55582a492627179b5d78afc51c3364d059a817382218786825df",
  "name-candidate:fe84519b3530b00e96fa6de0506875aea7671edf6fbf893661d3dfb8cabd6977",
  "name-candidate:b9790f661bb1bd683cf1a9ca597af21c2abd212801d06b7867c4f96efac27366",
  "name-candidate:cfcacc9a6233e93555061ad050ad77566060e8708f85be81f4c21ad7c37ce364",
  "name-candidate:c20593b753318fe223a9858741ac37e6b436b898fea17ac06b728b2d811a58aa",
  "name-candidate:c4b48d10279d545777effe6e28cadebd1351bb241ce085538bd7689af8144b7c",
  "name-candidate:0cccd3286be779bcc3779a10c75731eccd0c6471e20a2c66f60baee4fb26b61b",
  "name-candidate:d03599e232a2080333f870499f3e0fdbeae67b7baeba49e54fbefa4aa6e5ce13",
  "name-candidate:11e795ac0929d9435410f747514c2af328cff124d6b096bba93fb6b4c873927e",
  "name-candidate:3409f7c5105fbd7cb886990f8d9e7272e95ea921dbbf9720b3ff2a04a02c5b90",
  "name-candidate:d87b1b988f6e75927531eb92a8411305631d4da458c2d6ebb39894a861cf3097",
  "name-candidate:d80954000a36e3b60c199008c220bbb0a9a512ffa45891a99e1572433be0c7ec",
  "name-candidate:bec80e98027714e0c3f2af32a48d0f4479dcf325310c06fc50d280c8a0d02d9e",
  "name-candidate:b967afe9325c8d6b87c234ed67dd7b3f67dc6a1e466a4f95a0bbcb1e6edd806e",
  "name-candidate:d35e048800fe30a4d28b02f2067ea8a46ba97043a58071ee1fff39bfa8266e46",
  "name-candidate:eb33c94c7b593a515f112e7c596b2a61a627bbb53f1210507c9dffdff6a6859d",
  "name-candidate:dfa2b118e084e0e924b4a65421ca7c9f15d4afd6a5fc5d6a3d2e58baab643909",
  "name-candidate:c7578fe191e5b95b4caf148ec487d4c104952e4b4c56da9a093ed46464cf9c63",
  "name-candidate:c637497090a5e79f5fd07baee5fcbc4dba580c874919d79d1ed5d64d2a35a67f",
  "name-candidate:729ba591111df0c70fe06ec4bd1062b396c516a6cc8aa8ad2c519869c76b3fb4",
  "name-candidate:a6668eab5e012042913ef8f6ab2ce0657c96305df5929c06a7227ad6f217e561",
  "name-candidate:26571aaf02a827bd7038a0ca915568dfc3b2402b1a019772bf1608dc8eb69ca0",
  "name-candidate:38d24fb3805d9dba1f83f76a06fafd393b9f152cbd55b53cc028283c2780e1b1",
  "name-candidate:82cfca00d841779f44b129fe689a388275a9a1db732df3fae38820720dcf14bd",
  "name-candidate:42483f68275c76e4ca0ca8700624668434c09d9c0bc74d72d90c63b87d30fd26",
  "name-candidate:c0aa18aeff406f901ef9cde2838a3d5f379b1a37855436603c000f625741d3b0",
  "name-candidate:0a20b45b4a0b2ec2213a157f208ee49611287f7b1a76c14b8d1d48bf066611df",
  "name-candidate:ad51041a4d934468ef8bd3b9830a7f3d78237a4fc490d1d635fbdfd7c9c910dc",
  "name-candidate:ecf788e96689f855271177bf4a5c5336f306139ba37669338b9fad2db4263ddb",
  "name-candidate:66611c00918b6b7277c09538d48849b4aaaa54fa03e0d2ec57f2ff815b76a64e",
  "name-candidate:080349df1ba63c3f3a57e2eac7dcc4dab29276e5f3555cc6cc3d5a4cb6900d03",
  "name-candidate:4129968edf187b3076f54235be56e5ee855d29ef2f56ca5144a63dd544bdda6e",
  "name-candidate:d42ebd51b0145029d1b007a877b8508b98c2e9e10ae1da133c1da704d78bd084",
  "name-candidate:2d59fd7ed6c8002f38957e89f99dfd96a23e2ef3f25e61d840cd3605f195f3dd",
  "name-candidate:7abfbe13ec5a8056364b47246a1adecc190ccc10e634a5fcbbe86884ec598421",
  "name-candidate:c2a3df7406b5db626b7a487779068edb2dbe52847b5e22e0ed0d83133b352550",
  "name-candidate:a0e42f6ec0ff5db93caf83faa25b9d31392e8c0276af96a57828bc62ba9d84d7",
  "name-candidate:6dce8571ee470434d66c6cb3246bd3891c88c384e3c63ef793ceee9b26c47f6b",
  "name-candidate:133b68e63a17e51e15777914f8d1320557411fcb8b16ec121248c88d221ad5fb",
  "name-candidate:3f75b34ff8734a03d9631f79734b6999fc2bb0279229487b2077f1918819d6b3",
  "name-candidate:a1d0f996577af4cfe9b645d32c4e562115d4ba845e66d94edb9a5458d2e05a8e",
  "name-candidate:0d8b4a872a3f7ab9f5cdd315a2e119dce8a502b72f42c70144d85642113558dd",
  "name-candidate:40ba91a95fa1b92a4a09afe78445636f179c0d71099b0e26471070eabb58f97f",
  "name-candidate:6e0bb18f1fc153f29810f1de8c94e08908d095ae66a70e746980e08836039d94",
  "name-candidate:6f5f6e7d804a095b7a701d5601eaa1f0a119e3fd7eb56b7036822e794c4a88cc",
  "name-candidate:6f76568ce164446aa937f10be5bd306a6a373fed6604203081f29f8a5490c222",
  "name-candidate:14ae9a313a7494416f5d81c3561290d1afab3c2509d12d99b54d413a77baf9b1",
  "name-candidate:85f46ea840790483aeb8f4aefcf37f6eb9bd0d54ee27292355e02778500ccd1a",
  "name-candidate:12344f36288ee336e91db56aeee710e24b4c382317014c407264e0ce4c86379f",
  "name-candidate:580af31b8e155077aa38075653afc736d9f69b5595dfac2d677d53a4d53ced6b",
  "name-candidate:156b9fc7ef4dcaf9c1d1e7a0012524e9ed5242e52577ac0fefeac25f119a9e78",
  "name-candidate:2d48213009ffecdf568e2b4d59e676f69fbf46022bd26eefa15a8b5108a40bbd"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L40281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
