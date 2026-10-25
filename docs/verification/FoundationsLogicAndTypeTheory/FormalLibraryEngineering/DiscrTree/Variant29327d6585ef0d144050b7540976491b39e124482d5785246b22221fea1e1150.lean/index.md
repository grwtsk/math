# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DiscrTree.Variant29327d6585ef0d144050b7540976491b39e124482d5785246b22221fea1e1150

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9250e07855e918965ed7b3aa4244cd6b6507b012",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variant29327d6585ef0d144050b7540976491b39e124482d5785246b22221fea1e1150.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variant29327d6585ef0d144050b7540976491b39e124482d5785246b22221fea1e1150.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variant29327d6585ef0d144050b7540976491b39e124482d5785246b22221fea1e1150.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9250e07855e918965ed7b3aa4244cd6b6507b012`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variant29327d6585ef0d144050b7540976491b39e124482d5785246b22221fea1e1150.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variant29327d6585ef0d144050b7540976491b39e124482d5785246b22221fea1e1150.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.DiscrTree` — import line 7; external provider; requires a separately pinned dependency.
- `Std.Data.Array.Merge` — import line 8; external provider; requires a separately pinned dependency.
- `Std.Data.Ord` — import line 9; external provider; requires a separately pinned dependency.
- `Std.Lean.Meta.Expr` — import line 10; external provider; requires a separately pinned dependency.
- `Std.Lean.PersistentHashMap` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cmp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variant29327d6585ef0d144050b7540976491b39e124482d5785246b22221fea1e1150.lean/declarations/cmp--2fd3fd3aafaf1457480f8980.md) | 21 | `declaration-track:2fd3fd3aafaf1457480f8980d0570394a48bdd96a061decc5fb587299c6bb777` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variant29327d6585ef0d144050b7540976491b39e124482d5785246b22221fea1e1150.lean/declarations/instance--a319f9e29e5e88cd6116ee3c.md) | 29 | `declaration-track:a319f9e29e5e88cd6116ee3c31264218cfc5b83c7cf2cb375e5f9e6ae37cf245` |
| 3 | `def` | [foldMUnsafe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variant29327d6585ef0d144050b7540976491b39e124482d5785246b22221fea1e1150.lean/declarations/foldmunsafe--23a46b0ca5e2eb93d0c2bd6b.md) | 38 | `declaration-track:23a46b0ca5e2eb93d0c2bd6bcc841b6ee177fd985ac0950b462157a9b0b34ad2` |
| 4 | `opaque` | [foldM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variant29327d6585ef0d144050b7540976491b39e124482d5785246b22221fea1e1150.lean/declarations/foldm--2b1f4806db8c9cc9f0c46482.md) | 49 | `declaration-track:2b1f4806db8c9cc9f0c46482f1cd487c9775cc712053115d318cd747f6a05abc` |
| 5 | `def` | [fold](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variant29327d6585ef0d144050b7540976491b39e124482d5785246b22221fea1e1150.lean/declarations/fold--e138a208325d3e3da9d299c3.md) | 57 | `declaration-track:e138a208325d3e3da9d299c342afecac46ba0eb351288f8c38f9771f8ce2759e` |
| 6 | `def` | [foldValuesMUnsafe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variant29327d6585ef0d144050b7540976491b39e124482d5785246b22221fea1e1150.lean/declarations/foldvaluesmunsafe--8f0fc52688c75855dfb2f32a.md) | 62 | `declaration-track:8f0fc52688c75855dfb2f32ad0a9a1519f0eacc638c79d21e0588bf295ae099e` |
| 7 | `opaque` | [foldValuesM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variant29327d6585ef0d144050b7540976491b39e124482d5785246b22221fea1e1150.lean/declarations/foldvaluesm--870c92221bd46d7ad59be473.md) | 71 | `declaration-track:870c92221bd46d7ad59be473cbe636d2d918642603c3001346f42124b3f1d0a3` |
| 8 | `def` | [foldValues](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variant29327d6585ef0d144050b7540976491b39e124482d5785246b22221fea1e1150.lean/declarations/foldvalues--e343880bb431045c1a208349.md) | 77 | `declaration-track:e343880bb431045c1a208349bfee531acb6a421c127e595f75fed8ce799a437d` |
| 9 | `def` | [size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variant29327d6585ef0d144050b7540976491b39e124482d5785246b22221fea1e1150.lean/declarations/size--6d08d3d6078ba59132007e04.md) | 83 | `declaration-track:6d08d3d6078ba59132007e041f0b089edc13c9887c935c4e17c2edd5a193f9cf` |
| 10 | `def` | [mergePreservingDuplicates](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variant29327d6585ef0d144050b7540976491b39e124482d5785246b22221fea1e1150.lean/declarations/mergepreservingduplicates--a6c266fe4c70cfe072faff16.md) | 90 | `declaration-track:a6c266fe4c70cfe072faff16377758c5bf317cdc6d9fa1da96749f0265a24a79` |
| 11 | `def` | [foldM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variant29327d6585ef0d144050b7540976491b39e124482d5785246b22221fea1e1150.lean/declarations/foldm--75b22e0098403d7a06713b1e.md) | 108 | `declaration-track:75b22e0098403d7a06713b1efe2314511d20b61d6e289b6804b814efcd9f3cf1` |
| 12 | `def` | [fold](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variant29327d6585ef0d144050b7540976491b39e124482d5785246b22221fea1e1150.lean/declarations/fold--a5b97e44c117a6a9282d7dfa.md) | 116 | `declaration-track:a5b97e44c117a6a9282d7dfa0d86c1aeaec92e716ea788bd35a3645e949afa6f` |
| 13 | `def` | [foldValuesM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variant29327d6585ef0d144050b7540976491b39e124482d5785246b22221fea1e1150.lean/declarations/foldvaluesm--ca6d6bd5626e216883855385.md) | 123 | `declaration-track:ca6d6bd5626e2168838553850eaaebc2c37aa3dc62b9db62ff0367aafe43df15` |
| 14 | `def` | [foldValues](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variant29327d6585ef0d144050b7540976491b39e124482d5785246b22221fea1e1150.lean/declarations/foldvalues--0a6517d14a832c339bc724b9.md) | 131 | `declaration-track:0a6517d14a832c339bc724b9d4182677f23888123f6d290579d2134f90eaabb2` |
| 15 | `def` | [values](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variant29327d6585ef0d144050b7540976491b39e124482d5785246b22221fea1e1150.lean/declarations/values--e8214ac30dd4c9ef2d00bd28.md) | 138 | `declaration-track:e8214ac30dd4c9ef2d00bd283714537cb98af75bafc42fc419ae3cc06f03d615` |
| 16 | `def` | [toArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variant29327d6585ef0d144050b7540976491b39e124482d5785246b22221fea1e1150.lean/declarations/toarray--0f34d0b36926b1cd790e68df.md) | 145 | `declaration-track:0f34d0b36926b1cd790e68df02cb8dfa5e1794b3dae0199e879348e287d7104b` |
| 17 | `def` | [size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variant29327d6585ef0d144050b7540976491b39e124482d5785246b22221fea1e1150.lean/declarations/size--628c416ca4e7259c2ce059fe.md) | 152 | `declaration-track:628c416ca4e7259c2ce059fe8c279b547eb93c3ba6c7b108d3a260331b2deeb5` |
| 18 | `def` | [mergePreservingDuplicates](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variant29327d6585ef0d144050b7540976491b39e124482d5785246b22221fea1e1150.lean/declarations/mergepreservingduplicates--3ba339f79b57ee5b05c7b5ac.md) | 159 | `declaration-track:3ba339f79b57ee5b05c7b5accd5ffdbad992bc1a1529628fb890c22e4a510c46` |
| 19 | `def` | [insertIfSpecific](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variant29327d6585ef0d144050b7540976491b39e124482d5785246b22221fea1e1150.lean/declarations/insertifspecific--ddd89c443b7b2eef0aca9d55.md) | 167 | `declaration-track:ddd89c443b7b2eef0aca9d55e996fb4cb46ea38de7995691ac7d601175093050` |
| 20 | `def` | [Trie.mapArraysM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variant29327d6585ef0d144050b7540976491b39e124482d5785246b22221fea1e1150.lean/declarations/trie-maparraysm--5c78abff195bf4a11afc5b20.md) | 177 | `declaration-track:5c78abff195bf4a11afc5b2010cc967c9556f57ae4c272080d871b542b237a05` |
| 21 | `def` | [mapArraysM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variant29327d6585ef0d144050b7540976491b39e124482d5785246b22221fea1e1150.lean/declarations/maparraysm--9f888edae3ebff5cc5931aec.md) | 184 | `declaration-track:9f888edae3ebff5cc5931aec586c093fe7cf6c1121679e3ea6cef24ebc033f7c` |
| 22 | `def` | [mapArrays](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variant29327d6585ef0d144050b7540976491b39e124482d5785246b22221fea1e1150.lean/declarations/maparrays--3c46423f777539b7eb9a4b2a.md) | 188 | `declaration-track:3c46423f777539b7eb9a4b2aa275181e7578f56a40f418fe2cc09fad1e01fc18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
