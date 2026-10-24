# neighborhoodKeysChunk0028

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cfc59abb5e6ad656ccfc60c874a63d174bcf88a14184ac5f148faad81a48b95f",
  "kind": "def",
  "lexical_name": "neighborhoodKeysChunk0028",
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
  "slug": "neighborhoodkeyschunk0028--89bd5927b9e4e9926d705754",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124682,
    "line": 124615,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:89bd5927b9e4e9926d7057544bd1b243eb54052bd3e391dd46b9e4a559d9db50",
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

Occurrence: `declaration:cfc59abb5e6ad656ccfc60c874a63d174bcf88a14184ac5f148faad81a48b95f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124615–124682.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def neighborhoodKeysChunk0028 : List String :=
[
  "formal-neighborhood:da40cf4500ad5a07503dfa87e3e7a17a99df33fdd64203069c4a86cce77a33ee",
  "formal-neighborhood:da559acb86332e845bb94f3c87e1e41c3e73976c99022429a724f31d3334a098",
  "formal-neighborhood:da753d8cc43c6b61817d15eebf1c04a33d1238e2d0e701eb3953a6a4425469e1",
  "formal-neighborhood:da77f540a2ce50801de8f1fc343a5ab7db03d43a1b1e757736bbe322b3b485f6",
  "formal-neighborhood:da9add928a3cc59ee2bccff296c6e5b62cfb5596c3d67baea510cfd99ac7c4b5",
  "formal-neighborhood:daec9eb2ff07ecc8e0f15e5c4318d16de9a23b471c6d7c28078a0a084ab8e6b4",
  "formal-neighborhood:daefa513e69c79b16f7e3af39b7cfaae74915a2c65ac53b26700fb6f7ff3a05b",
  "formal-neighborhood:db124d42b7ac0f0f3894659f9fd3a623bc4a834d02cd499da0a8fa5ae3309337",
  "formal-neighborhood:db17e826389179c07c816d1a33b3957c476e1d0d90614bd5e7d806bfeeab2e44",
  "formal-neighborhood:db1dc17861d06fe0de7fcff2aa539a577ee872655ef4f9f031f01a8606f72c0a",
  "formal-neighborhood:db20518ac6a2f6b1ec94d652f0ac361d8ba2ee49350ec294a0c449150aaa9bb6",
  "formal-neighborhood:db279875212b05bd3823e722c83e5d1f79d382fcc7c9b5a36edd886797591b2c",
  "formal-neighborhood:db312b76d06132a7a03fac1ef23be311fa437e1a298d766a6514766010ce8ac5",
  "formal-neighborhood:db3727d8dfebbc981ec838749dea23821a4cacaf125df9dd798e53803fbc54b5",
  "formal-neighborhood:db5198979b7f916a2710a95bbf60a85a00d4aabf7c7d801be84dfe7c0d896da5",
  "formal-neighborhood:db69689688f21adc17a12284c79cf12cfae970e6d6aa918c871ab4f566e979b6",
  "formal-neighborhood:db84b6aa7251cf277b67d38effb8c31d10c20a740ca9e8aa96af52c3a19a0b3c",
  "formal-neighborhood:dbb3ac5bba53f1f37daf540a8b57f7da7749168bd843e8dcdf8a25c355a1d8e2",
  "formal-neighborhood:dbca450dd688a956331d8cd5f19212b9250425619baa284b65b700168b6b7169",
  "formal-neighborhood:dbd819141f90bb4720a44b994d9afa2729c0dea552fffc5255d4d91836ff6469",
  "formal-neighborhood:dbe3ccf98751768f5385f9ead47db3cfe648a3afcf941cc7ecf25cfe35c90ce0",
  "formal-neighborhood:dc058f05940053fbae328be3bee535dd87e20c5ddf74b65eda3977aafdf2e5a2",
  "formal-neighborhood:dc3cf71cf4730ad1e27b4693fc98589d6e242aa0352f109f1031053629728e37",
  "formal-neighborhood:dc5c35e938710e2d85c13651a27a08720c459b40824b0bf0f172e751402119a0",
  "formal-neighborhood:dc8ce347fc69ca037927fc9c0338c49f9495acab73f2f0df5190f62d881ef53b",
  "formal-neighborhood:dcff13902c0c22b16c1a6a073096bea70b676c6572f19993e3fa49dffb4b1b09",
  "formal-neighborhood:dd0a3b7b3a0c33a33fcde87946e678c33132b83ec68f68b1987d81308a00ee21",
  "formal-neighborhood:dd1065bdabdf14f1baffc73a63c5b984f40ebcdc387a8662af80732d3ed10825",
  "formal-neighborhood:dd1da7e8938e3743dfad0b979b88babca55d1a08e3ee1cb89838866e787eb773",
  "formal-neighborhood:dd5cdf0bf52a16e2833d505c122c0cb0ea8eba486d0f6f7169c5dcf5d9c2ce7b",
  "formal-neighborhood:dd808e32b6e53259306450498f1d40d49f31a031aa5c7fad76655def6dd03432",
  "formal-neighborhood:dd84a4b30131bb92502db9792897d3f55d97f1f34bc67842c6cac151c92689bb",
  "formal-neighborhood:dda5169ab9c8104d0c6f5784a7c265f1f86a5a4b157f955f4d1741b7364a061b",
  "formal-neighborhood:de4eb40fbb7ee8c3a7e27198e983df682e81e340e7ab85986e3dc1efa2546541",
  "formal-neighborhood:deb12f2c571aad9d9fb2051b25a5d7b73eb7decbd1b980a058f6546b1c5d7e22",
  "formal-neighborhood:debe99b24173878883b3efcf27091032382f0b392db53e07cd386bac3fb94223",
  "formal-neighborhood:dec2398e2641a9df7aa498a9b8b6599341ab931bd9f7cf369fb4a72c8da77d8c",
  "formal-neighborhood:def97dd15b10fe8a0fc091efd631832cafd9d621c5e9883ddcab9e90427da1d0",
  "formal-neighborhood:df0d20ac4d2cf2945d59deef39d35af646635e7544427ee5d9b47f3e9e8f67ea",
  "formal-neighborhood:df1b97e646d1d66bfd63e11c8b191670cdff5c93b3d65122ed37be0f734f09a1",
  "formal-neighborhood:df25f8ac68bd7e391670a349a68078a2e0a82e0664754e764b635196005e3c5c",
  "formal-neighborhood:df430e580025296f0d67da317840d8eaaf2a4c676316d2b035e60dfa8c3f6d42",
  "formal-neighborhood:df5be66d23f174b26c62e913240c1e47eb1e3db34036ef0f2d60275645eec335",
  "formal-neighborhood:df6f1962a56a9cdcff88cff0c23f145bb7a026e996ae161a662751763e929af5",
  "formal-neighborhood:df9af50b05f9e28b10951ac13f5f36868225602736da9694c6b401b3b519a978",
  "formal-neighborhood:dfd4272397dc2ede1251a96d16ba87c58ceb22299e53c703d219721cbe833637",
  "formal-neighborhood:dfe5b50d526414527147291c7e7bad8c2111cf665f1776a1dabf254a3d2e18d3",
  "formal-neighborhood:dff2b0218339d9d581c8d2ccaaf1a168172d12a15796d3c3860ba7ada852144f",
  "formal-neighborhood:e01c41dc72bd5d81260ecad89ee7e9b7e09e21ec6a8466a5af788e37ffbe644f",
  "formal-neighborhood:e04619f9c5be80ca1532fd42027d8858ba8b8b2b79f534601e6fb89488cefb1a",
  "formal-neighborhood:e070761ee1e42f668ba6a0eee955ad7aa5ed203a210899a2aea3e71ef1d3a2f6",
  "formal-neighborhood:e0830e42b19c02772163e72e7736e9a5251686e086041155551288fecf84a0df",
  "formal-neighborhood:e089f3a2695088cd53965ecf3b625210cf8c893f2dafdcd387ce89b84e0cda31",
  "formal-neighborhood:e0a77c8c742fa7e8d5cf447aa6f0f6d0367c8ceed6db92407972adf6a933f6ce",
  "formal-neighborhood:e0c1425ff6f3cce8c76999c2dc8bc0af60466a781671d42df2875a208babb076",
  "formal-neighborhood:e0c78a5390d9b72f6c10a2d3c62e61c2237797cba8362f291b84a7293226ec10",
  "formal-neighborhood:e0c93871b7bcc911cdd628d5533d550992de7ea18fee4d22b70d9d5b21e6e5bc",
  "formal-neighborhood:e0e183cc6e6d33a3e06c523a45b396bdfcbca8bfb4eae33ba3a686b1c3bb20f1",
  "formal-neighborhood:e1249f2fa19350dbc529306a4c2d8c5009e0e8686ba72dc7dc60a80d0824a09f",
  "formal-neighborhood:e12e873c1a5a0b141ad7511019cad192b3f10becde728d8aade32fb09d12891b",
  "formal-neighborhood:e1457e6766bf7220bb27d028ecea028306c889bdd568f2f3881cdbffdfc77c32",
  "formal-neighborhood:e177f955cc906eb649f65aa16a11d9ddca2ce74ac31c3b27f7ea8cbdd1d03a29",
  "formal-neighborhood:e195a744584ce6162cc51eaa5363be543e293bc41eb86a4e1682cc5ae67ca62e",
  "formal-neighborhood:e1bf7fb6993b6a0c95a85785cef87142658695103aa2c35dfc2097e54321c248"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L124615).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
