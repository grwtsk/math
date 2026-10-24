# primitiveElementKeysChunk0026

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:83ef4dc37a9c38869e631f48b1da09848d38f10613f8395f6a5f1720ad5f3ffc",
  "kind": "def",
  "lexical_name": "primitiveElementKeysChunk0026",
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
  "slug": "primitiveelementkeyschunk0026--33f4c46d833f180d5b860af4",
  "source": {
    "blob": "655f3b44c0623a23dc10b6229d51dd803b50d616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1860,
    "line": 1793,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:33f4c46d833f180d5b860af42d8d27c82e58cde956051103e2325ccee8af427c",
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

Occurrence: `declaration:83ef4dc37a9c38869e631f48b1da09848d38f10613f8395f6a5f1720ad5f3ffc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1793–1860.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primitiveElementKeysChunk0026 : List String :=
[
  "python-point:9e1abd21ac62b5407df13d6b3da14bb5bbf218824bd401200d1ec181bf2e8fce",
  "python-point:9e2e9d255caaa9a18255f537eeed11585a455751fc8811310845ca3f750f2be9",
  "python-point:9e4c66d958de8d794e3e4710494515a7fdec35de98796668edad71dfe42bfbd5",
  "python-point:9e7dbf79dc257a1f09df128a47fc621e8d3acc019c6676e86d5653b173adc751",
  "python-point:9e93860e31750c9d377df6b8b00170f6bade9c26aa03e77da46010d92f50497c",
  "python-point:9e9c3f7b3aa6f6cda7afe29e801c04aeacd8e3f1cbe0629b3c68f4119d2c8791",
  "python-point:9eab9e094731e9cbc8451b5037b097661e5185eac4a60b04eed714437bb75941",
  "python-point:9ec944e16e3c93156d3387aadab8b540d85232b3cb688c57884f3557405d90ec",
  "python-point:9ed930a37a88198243ca70c38c300afb8c560894c0917737c967781636c46cca",
  "python-point:9efbb0bf4eddadf1992129a88b6f47ffbd3c7bd16d73c2000e6a3b47dce7e109",
  "python-point:9f29aee7f42f6c770b19f6b18306d09b5a992dfc2dd9e2480743581fb59ac53a",
  "python-point:9f3ca9c3fc3f255a1740d363b995611937082b2db6633865f866d862e5607986",
  "python-point:9f6cddb33c70308e41e4492c077328bfcfe2668e10daa173a831762bc8470b3f",
  "python-point:9fa0ae0a7c84c131402628775797ed4a4d9d9a55a51cb0ddba5db836ca24f3f2",
  "python-point:9fbafc3284b193de72b35c026c7333d57f56f96b9f7c9828a26ea5221a211814",
  "python-point:9fc96768f82c9d6044dd54a1a6ed35d5e20c8e31834b669ed35d8ea63e3064f1",
  "python-point:9ffc923016b2e69b9b4f5a84c7684709f42a4740b0020b0d2b2af3666ccdf053",
  "python-point:a01004bcbe42cb56f42f05c56b2cd777577bba90b4e0181fbe5b5b4c568bcfe7",
  "python-point:a025bdb7d3a8dc928e82c5b4dc1a5d7156b753e93511f143b2d6ac164a47d397",
  "python-point:a0351e942be7d39277b1d66595c3ba2b40aee15e8ac729f93e6f13c0344fe1fb",
  "python-point:a04675fec5977f35447a607052ee683c08fde43e1e5c551f2ad4b21c3c04c168",
  "python-point:a065e08c4f9fa53a337a999350e04dd9b479a5ae0f735e2343112c17a582cd41",
  "python-point:a07df91bcae19c206172039b4d09d3323b7651fbcf9597f0358a9b47d106b248",
  "python-point:a089e78f1e5564347a4708ffff33825a7d21406b2229cbb41bee0b5a1973bde2",
  "python-point:a08e6cf45e85d4eddd93d18e9fa6ffd1c3ac3505e746a5e6005d928d276ac1ba",
  "python-point:a09cb700ca242ce7d9f206615755de2947f303d59e78bbafe5ec7e839e2c8d2d",
  "python-point:a0a262df37770f602a333ed3fc169eaf5a7976550e438d2b8e1fc7420a04dffc",
  "python-point:a0aa68c56733bb777aced03ed3a82fc5dca05fa9b3719fecb4d702f52a5c0ef9",
  "python-point:a0ace90a4bf6be065d64d22c0a081c0e430b7e6e9c4427591859798e4cf146d7",
  "python-point:a0b2bcce647f917ff7f97e81a39c91f30f5cb3b177fe8fd0d6869b2701d4a9eb",
  "python-point:a0b8593623494ad55ab9ec50cbdead294d00c4e833530c7b65955a193426039c",
  "python-point:a0d3f38ba9438355d4d9dee7d4b9ef5bb6047e1a1029cf5df19728cf8b2d2bdb",
  "python-point:a0ea2d332a98c2de5cffd22de53df987f4ae7158c85c2edf9e9e91a7bad66e02",
  "python-point:a103bb35dec7e9af5193f01455741cc7da3fe6c519aa62ad17ee9ec8cb1be463",
  "python-point:a10556eb9eca613a623a7782823fdc8a03145fdfb281a479cf8543d92a2216db",
  "python-point:a1544ae14b2a6db0b86f47003ab81b9fcbe7b9df9fdf8ff70962c138c11a73fc",
  "python-point:a1694dcf8c1edacd94f110715ee28dcdb9e904d27add032a2211c1bd553759d9",
  "python-point:a1753d81048c6ea1f83d1e7b2b7e7228e94a314c26fbd9ea8d6a81e938f7d344",
  "python-point:a1ac8136dd0e4a7404521ede65bc44800eb1e718511bf19d9f04e3ca22854d45",
  "python-point:a1afac91e593d67f04e97ef86ddca1e84b39e8a96e42d81c476bf0343223638e",
  "python-point:a1c5a1dafa41e8be5d6168da9a4d89385dde50069f71f3f77c71cf901c18beb6",
  "python-point:a216fff0ba30699a197a047720ddc834c45f4c4c70adf1e87ee753398673a3c0",
  "python-point:a22d37dd7c0cb10b7d2ea76120bd0da2bf20f354dd25568042dc7c8e2f62c31b",
  "python-point:a2396eab3d4da7014593c6b51cdd6acceaa2f9180579e365daa1c2e213b93ad6",
  "python-point:a25310b3edd1ae1e0a1082bd75bfbd3db9d52b03e5d6126c2660e9d3da9355d4",
  "python-point:a25912874d968f1e49e051fd4f69129882cb89492a74a8366d703f4c02f37f8f",
  "python-point:a25b2b4c4f6ac3a302a4354accf0aa130fe7236b2499fb4a776e82d79d117f7c",
  "python-point:a25c34db4e335f7b2cf6c28601084dd942cccdbdb9e77537481bf45e26798af0",
  "python-point:a261ba41e25c48973f6f00e37df3cd7a16974b72c7d5710eeb3ba52da2a2293d",
  "python-point:a261e0c1f6372bd66de0b0286c15b9b1bc126cc98f409b942bee13e5d03462db",
  "python-point:a28343bd340888b87704970ebd6b31c7294a468cffddc27487efe63b7ac0d73a",
  "python-point:a2854bc1a9ca6231ee4ddd5ff4628ae557d59d145a626bf619a312a8985eeae6",
  "python-point:a288334cd50f7e47ffce645fcb183b92e1bfb0ab6859df8ddcea7af686271b3c",
  "python-point:a2aff1881fc0e665d8dde97b4be7deaa992f0e7706fe41239828ac79a0c09ced",
  "python-point:a2d74a0b031f1aa9e83aa9063a4b32f44e2500993d9e754cfe0b22f6f833613d",
  "python-point:a2db2e5d00f86d4d67a87c503938499c72559ff03f00730aded77737fbd83fca",
  "python-point:a2fb090d7d5c550819e6345cbc16799661fc3e470180c9f3b1f99b232dd8487b",
  "python-point:a3190b966d515d794013fcbeae3bd6c701e6c74f172ece6a4addbfffca166539",
  "python-point:a341a921f312cb994873068231d71ae03190157b8777c5b4cb7415e268cfb2be",
  "python-point:a3503d7051f5e9ddf215484e13c651255a77d4b5030343640bcc6dc374ddde23",
  "python-point:a35ed4321e8e1bbc16e064a8633bac4e3b563446c43cd621fe99b572b6f2c206",
  "python-point:a368cca9cff055e4f86c298a54254a9e2b19256e1d39fdcdc74f2a95278ff640",
  "python-point:a373792eb9c7d7de8c12c6e5f1b2d086ba736e2d57aa190807e65a6ea91eb8bb",
  "python-point:a37ea0a7b87ab914d7d7685cb2456aa80c7f225fd2579b185407e4e6b37a9af4"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantfc1742c84da21ccc451f35005da7a13e597318f56229ec289253aa6f6657917e.lean#L1793).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655f3b44c0623a23dc10b6229d51dd803b50d616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
