# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Dependency.Variant462244e61dc4c65a5892edc288e56b3002f1c6f3aad8ccfbd496aaf3bbc191ad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29227d59901aea8f7a120b04f60a71ae0a0881d5",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dependency/Variant462244e61dc4c65a5892edc288e56b3002f1c6f3aad8ccfbd496aaf3bbc191ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dependency/Variant462244e61dc4c65a5892edc288e56b3002f1c6f3aad8ccfbd496aaf3bbc191ad.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dependency/Variant462244e61dc4c65a5892edc288e56b3002f1c6f3aad8ccfbd496aaf3bbc191ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29227d59901aea8f7a120b04f60a71ae0a0881d5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dependency/Variant462244e61dc4c65a5892edc288e56b3002f1c6f3aad8ccfbd496aaf3bbc191ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dependency/Variant462244e61dc4c65a5892edc288e56b3002f1c6f3aad8ccfbd496aaf3bbc191ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.TakeDrop` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.ToString.Macro` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [InputVer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dependency/Variant462244e61dc4c65a5892edc288e56b3002f1c6f3aad8ccfbd496aaf3bbc191ad.lean/declarations/inputver--8d119eba8599cf7837fd8bbd.md) | 37 | `declaration-track:8d119eba8599cf7837fd8bbd6fc61ccc9101e19d4e92b3b7354af06f54cf0269` |
| 2 | `def` | [parse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dependency/Variant462244e61dc4c65a5892edc288e56b3002f1c6f3aad8ccfbd496aaf3bbc191ad.lean/declarations/parse--503bde02c00765d598f6f6c6.md) | 56 | `declaration-track:503bde02c00765d598f6f6c655f937caf018d4e193e990a309bd9cf228840256` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dependency/Variant462244e61dc4c65a5892edc288e56b3002f1c6f3aad8ccfbd496aaf3bbc191ad.lean/declarations/instance--6c973f8a3049fef5e47b607c.md) | 64 | `declaration-track:6c973f8a3049fef5e47b607ceff533f56a30e30a256bb29eeadee9025fe4a5af` |
| 4 | `def` | [toString?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dependency/Variant462244e61dc4c65a5892edc288e56b3002f1c6f3aad8ccfbd496aaf3bbc191ad.lean/declarations/tostring--2a84003522baf05bc4ba2664.md) | 66 | `declaration-track:2a84003522baf05bc4ba2664b52aca755081c29434635b82f97924ade089680a` |
| 5 | `inductive` | [DependencySrc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dependency/Variant462244e61dc4c65a5892edc288e56b3002f1c6f3aad8ccfbd496aaf3bbc191ad.lean/declarations/dependencysrc--4293303eb73fdc0bf73fd622.md) | 78 | `declaration-track:4293303eb73fdc0bf73fd6224572febd84bdff10b95ed479f4ae43cd13ec7456` |
| 6 | `structure` | [Dependency](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dependency/Variant462244e61dc4c65a5892edc288e56b3002f1c6f3aad8ccfbd496aaf3bbc191ad.lean/declarations/dependency--b36b11dfc6b4c74a70812e95.md) | 90 | `declaration-track:b36b11dfc6b4c74a70812e9559ca9eb463bb7d795a81147a06f101275aa97911` |
| 7 | `def` | [dirName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dependency/Variant462244e61dc4c65a5892edc288e56b3002f1c6f3aad8ccfbd496aaf3bbc191ad.lean/declarations/dirname--a39f961aa3d987606be8f2cc.md) | 122 | `declaration-track:a39f961aa3d987606be8f2cc9934f9d0843aa9ce67a7bd0076223b36212fc78b` |
| 8 | `def` | [prettyName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dependency/Variant462244e61dc4c65a5892edc288e56b3002f1c6f3aad8ccfbd496aaf3bbc191ad.lean/declarations/prettyname--689fbbabbc64e4c06ceaa2f0.md) | 126 | `declaration-track:689fbbabbc64e4c06ceaa2f0eca4fad27dd9b2156c6ce41e4f8675674a966c49` |
| 9 | `def` | [reservoirName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dependency/Variant462244e61dc4c65a5892edc288e56b3002f1c6f3aad8ccfbd496aaf3bbc191ad.lean/declarations/reservoirname--f6f5d16ad43dc55a593b5760.md) | 130 | `declaration-track:f6f5d16ad43dc55a593b576075e71ac756fd62b488cba8ef697b3b0b2c72401a` |
| 10 | `def` | [fullName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dependency/Variant462244e61dc4c65a5892edc288e56b3002f1c6f3aad8ccfbd496aaf3bbc191ad.lean/declarations/fullname--a6ffc91a9bee6330ae6ceb96.md) | 134 | `declaration-track:a6ffc91a9bee6330ae6ceb9669457b25d97027104ce81fc06a77eb8de3071e74` |
| 11 | `def` | [resolverDescr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dependency/Variant462244e61dc4c65a5892edc288e56b3002f1c6f3aad8ccfbd496aaf3bbc191ad.lean/declarations/resolverdescr--0191fdc4308ae5f1a587473e.md) | 138 | `declaration-track:0191fdc4308ae5f1a587473e7f6b40397f1fd0d867da8af7e3d0965900ece00e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
