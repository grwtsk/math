# selectedCandidateIdsChunk0003

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cdbc571cbb855e78d2595ed57c6522e76ceaec5d32e7e0f6929dfaba3a1b5daf",
  "kind": "def",
  "lexical_name": "selectedCandidateIdsChunk0003",
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
  "slug": "selectedcandidateidschunk0003--8f4f41af3b2c855718050677",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40084,
    "line": 40017,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8f4f41af3b2c85571805067773e53996e92665805ed497b374bacd13faba3eb2",
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

Occurrence: `declaration:cdbc571cbb855e78d2595ed57c6522e76ceaec5d32e7e0f6929dfaba3a1b5daf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40017–40084.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def selectedCandidateIdsChunk0003 : List String :=
[
  "name-candidate:6a5f37246291c3f0ea01fccfe2df4db0c08900df60af215644a8999c7c658ce5",
  "name-candidate:667d4b84a5fadcb61ccee8a9fb4a15ea6efea7d43653444842364449814c3e5a",
  "name-candidate:aa803fe925d5605369c3e09370865d634daa655df53ed5c5caeb146a33c8720d",
  "name-candidate:09e62d802b9a859f3ca9ea8e7765de192ba52b4fbe6a25b0d04031d30ac57995",
  "name-candidate:2181f63ea8ef8966cb0ae73ce37ab16cb064122587462e098bcca26fe13a62ea",
  "name-candidate:221419020b0e656f15bd026f5f59dd89e742665367130ca8d0acee14333e18b1",
  "name-candidate:59f588359e641cc1ae9b2feac96ffc2a8d6cde83e7fc9754a3587b9b6dd2602a",
  "name-candidate:ae91444aacc6ef3295bc1ec50b813602fe855878092714824bbff1c89b39f621",
  "name-candidate:de8106414880996f336eeff3f624c1b8dcafe8c10e02b3d863fe2b55a9434255",
  "name-candidate:8889f0fc06ff0a69e2be1d26709fe90df695f23fb8114d0c894707c5f2362411",
  "name-candidate:ac62e95dea6a9fb37a135b71a29409fb651a0a77bd166a5ba4deb3add47031fd",
  "name-candidate:ed80c06d4a1ccbd0473b52ea9fa4fdd966d5b3cece0e6d071e02d91c98e7549f",
  "name-candidate:8d43a366458996b054bce8ebee9e6ed0eb3212928315ae2c1f746709592f3a53",
  "name-candidate:fc13f3242c66583fd3dc90ec110b834684d69fedfc49728e56ba99d3fcd5014c",
  "name-candidate:64165f3787d3a05f36f3d718a755e1e0974a7d81b67c1e56437004b7248b1cef",
  "name-candidate:1c198c293b42958286c7899bd278c1edf3a3c942a4360704f75c93047e75f3d4",
  "name-candidate:cf84a32670f2c0c4bb3c621c46e9e6748bf928d0a5ed9360b93a17ed3623d22e",
  "name-candidate:0ef4de1a1f6b1ba9f3235ae48431e38ce5baca0fca7eb98235cc5b3cca5d68bd",
  "name-candidate:3b4bb17ee493b3bf528ca7afd1563055a30702d8464cdfe180e17b0d7144bb13",
  "name-candidate:6c135125f2bf61cb92868f09b1160b67b52642357aa80e526b85c4bb933847ea",
  "name-candidate:7694d85b7d81fb4ca0e50adbc5c8dc1a177f889fc1cea91c0a25b6846a87c4f0",
  "name-candidate:18bd67ece28f8ce5aa666b5f20886906e1227c4e1c5fbcb9996116f0b0435f6e",
  "name-candidate:e8b722536c14276e1efad62baf9b9ec069e4aa3fef0329c9cf6b2d5cc7eb11a3",
  "name-candidate:14c7dc5e51e906d58ab064da1016350a1d9fd736f0d3b44fd41b956c742d3de2",
  "name-candidate:516b59545e521a91bb34d60edcf7f4ca7ec14b6e2e3e1a5a1a33fa7249a1b622",
  "name-candidate:e06c06b062c3a63c598bab4d4b38de4d6f639f6f9c34980a071d58a8cb738b64",
  "name-candidate:90a1614d7a65dd6b049463a41af747c98ca6641a3b4a02803e799f16d268d5ed",
  "name-candidate:dd1de8355b5c54d27db6bfd56585f7d9e7b384c4a974a8c2a246e3ae6f4f5b5a",
  "name-candidate:0617dbcd6c9784478fcf3fdec811f58c39210962e6f3f164997d50901950d9ad",
  "name-candidate:78d85ef556773f0e25aec500d7e0d672268d7c7d28ab5100d20e65edcb8a699d",
  "name-candidate:18ec79cf06adc8f95a9fe76295b34f186ae454d80bff5f5215db4eb22cbc9f39",
  "name-candidate:a822ccb212d2f6875f12f76076fe8633c730c5c78cddf9f6e4b8183fc580560d",
  "name-candidate:b862f50cda593455ca7dbc5eb7be260827276585c5c1b46af9db064dd58fbfd7",
  "name-candidate:f07762e6ab25558dc0dccc4a0ede2af2b6cceda8290a7e29215fd1dc1b8fec43",
  "name-candidate:5c11dc886256a358aecf8ff7d2e4ff56ad15aa3216a030162014a02f49a1f997",
  "name-candidate:8fb400147d8cd476188fb220ba5336f32a3831c6ee69bc852ab3750261715664",
  "name-candidate:9a9c5377db426c96b8212f181554f7dda78e0c63dec7983bd47e0057c305404b",
  "name-candidate:e2bcae5cd6334b05f603be13b941aa44a0d1d89e166dec19575b1fcb244992f7",
  "name-candidate:322147fc98391508747ecac539a7953a7a0c37c9e0afd08a300944247405d775",
  "name-candidate:6c4dad5e59dfd6cf6784051c11fe1f61119d6767e156db08ecca4619cb68a792",
  "name-candidate:454f4abdb1b10e5548ba9415e50646754ebaf1293bf50b2838a3549eb5b93571",
  "name-candidate:667a3afbb8b346bb10a15621e5022005fabdb840cb388c1a101e7dad73fac173",
  "name-candidate:bb977797ef723372c2e2136e4718cb900dd4f8d1223f6982394ee7769f510820",
  "name-candidate:c0e3a79280a4ae569af755ceb9d5b4d24853eab6b7d704bb02228638513dc94d",
  "name-candidate:8e6b401d401e8ae52d56ea4c5a29c96802f3c220d7cda19860dc07499de3383b",
  "name-candidate:42dfcac76b09771c6241509212656e4759fce038a272b33a8da5810fed3248dd",
  "name-candidate:91d1ba6b05a507457bb79fc418b22a785f964207925da9e1f2ff254689f95abc",
  "name-candidate:941a69b9b71725d356419c18e4f3150770feaf0d63576441f418c0af1005e264",
  "name-candidate:11c432dce81569c6d7b70ea0ba7880ed086e59c5e35d229c51cdfcda7e939ffb",
  "name-candidate:6bdfa3b46275dc97d2340e77ae6fa50d0f70ce30f8fbe7ee93e2c9f484eed189",
  "name-candidate:7e47a32cd435a375aee1fa162ff0a8a4157f18d67a35d3ef50eb63bf775e139c",
  "name-candidate:5bc0a68efc1380d12de4170b3b026f6f2d3c8f732042eebec7062093d4111fe7",
  "name-candidate:136e31c9fb21d46e9dbce81efdcbd19f075c3283a4d86370a6895245f1d2f870",
  "name-candidate:49823e571a781fc87c6559b9dc2581038e53a5874dff75ee869c7a02dfe958fc",
  "name-candidate:f8d7dba22a02615458a2127c974d8ed3636f071dff11c8fbc3d05a3dd4bb7bd1",
  "name-candidate:f8a7839e9538ac77ea7fca219cbb56fcdb112a5fb4d78938bc00028513f12f76",
  "name-candidate:0c8359b8742fc1034af7e319209ba019455b73f952cc5e4ac3ff80013f5163af",
  "name-candidate:eb2e10c5e656fbcd2cbab8f63766d3142d4794f39549bb1b4ac5e10b70f108ec",
  "name-candidate:56d2af66fbae20c30ea8bc95f3d6e6cc23c57d6b7dbd28681b8c8ace741efd02",
  "name-candidate:839ddbee86bacd13d7efd31e900eee437795c0ea06eda3235fc33e973fd5a21d",
  "name-candidate:5d670ab9353b7882b7930717cf281396a65a1a70e8faeda6747c8cd913720260",
  "name-candidate:db7b89d750a2b1b0dbd7400b20d0b190abe04d2b1a3fbd5b1ca5d61928fc2d4b",
  "name-candidate:0bafa5d6c74848c1ffe4ce04dfbe0ecc2d016a63a825c2865efcf2e8166e27cd",
  "name-candidate:0f1b2e63d12234e32b3ad564a0cf5a793fd8e7925fe5beffbf7b5ff4075ffa38"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L40017).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
