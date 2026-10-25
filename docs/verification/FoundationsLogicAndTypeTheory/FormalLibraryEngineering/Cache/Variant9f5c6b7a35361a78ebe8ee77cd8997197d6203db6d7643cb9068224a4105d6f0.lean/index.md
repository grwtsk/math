# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cache.Variant9f5c6b7a35361a78ebe8ee77cd8997197d6203db6d7643cb9068224a4105d6f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54bb2f100303fb134c5777ff9711e5a567260f76",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant9f5c6b7a35361a78ebe8ee77cd8997197d6203db6d7643cb9068224a4105d6f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant9f5c6b7a35361a78ebe8ee77cd8997197d6203db6d7643cb9068224a4105d6f0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant9f5c6b7a35361a78ebe8ee77cd8997197d6203db6d7643cb9068224a4105d6f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54bb2f100303fb134c5777ff9711e5a567260f76`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant9f5c6b7a35361a78ebe8ee77cd8997197d6203db6d7643cb9068224a4105d6f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant9f5c6b7a35361a78ebe8ee77cd8997197d6203db6d7643cb9068224a4105d6f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Lean.Meta.DiscrTree` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Cache](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant9f5c6b7a35361a78ebe8ee77cd8997197d6203db6d7643cb9068224a4105d6f0.lean/declarations/cache--1b8b5c58a3ab81805dd28d53.md) | 47 | `declaration-track:1b8b5c58a3ab81805dd28d53da6a1b43071ee783328e411ff96b866eb032b6f5` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant9f5c6b7a35361a78ebe8ee77cd8997197d6203db6d7643cb9068224a4105d6f0.lean/declarations/instance--847e4c00168b1b223b4f18a2.md) | 52 | `declaration-track:847e4c00168b1b223b4f18a2fa89177e59b91f30065f4ddc0854b7decee7e025` |
| 3 | `def` | [Cache.mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant9f5c6b7a35361a78ebe8ee77cd8997197d6203db6d7643cb9068224a4105d6f0.lean/declarations/cache-mk--e82596e18bed2dfb174d55dc.md) | 55 | `declaration-track:e82596e18bed2dfb174d55dc3c57bbcdf7012729c19768a19921152cb7fd0a0d` |
| 4 | `def` | [Cache.get](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant9f5c6b7a35361a78ebe8ee77cd8997197d6203db6d7643cb9068224a4105d6f0.lean/declarations/cache-get--a80dba137850210aaa8ec021.md) | 61 | `declaration-track:a80dba137850210aaa8ec0216eef6927916d0ecd2fd54b8c7483e4547a40767b` |
| 5 | `structure` | [DeclCache](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant9f5c6b7a35361a78ebe8ee77cd8997197d6203db6d7643cb9068224a4105d6f0.lean/declarations/declcache--1ca5efb80e974ecf131712f8.md) | 87 | `declaration-track:1ca5efb80e974ecf131712f8e68246abf33039a62107332bc61529d6e339efd6` |
| 6 | `def` | [DeclCache.mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant9f5c6b7a35361a78ebe8ee77cd8997197d6203db6d7643cb9068224a4105d6f0.lean/declarations/declcache-mk--5798c2eb91bc772d4950d66c.md) | 104 | `declaration-track:5798c2eb91bc772d4950d66c2c90751ffad1da5b4bdeeae558365533ee460082` |
| 7 | `def` | [DeclCache.get](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant9f5c6b7a35361a78ebe8ee77cd8997197d6203db6d7643cb9068224a4105d6f0.lean/declarations/declcache-get--29173bbd9603ced0c55753b3.md) | 118 | `declaration-track:29173bbd9603ced0c55753b3815d5957ea88914a20bdac0a7a4f69b6deee6f5c` |
| 8 | `def` | [DiscrTreeCache](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant9f5c6b7a35361a78ebe8ee77cd8997197d6203db6d7643cb9068224a4105d6f0.lean/declarations/discrtreecache--9bb1717c96f0b6602ed307e2.md) | 127 | `declaration-track:9bb1717c96f0b6602ed307e2153b8dea18b2de5b42c9ff33bddc9bf25e6d0baa` |
| 9 | `def` | [DiscrTreeCache.config](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant9f5c6b7a35361a78ebe8ee77cd8997197d6203db6d7643cb9068224a4105d6f0.lean/declarations/discrtreecache-config--6ef0701d4d2ea9e39e707773.md) | 130 | `declaration-track:6ef0701d4d2ea9e39e70777307896547e478658f6922724ff167451d0a918b6d` |
| 10 | `def` | [DiscrTreeCache.mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant9f5c6b7a35361a78ebe8ee77cd8997197d6203db6d7643cb9068224a4105d6f0.lean/declarations/discrtreecache-mk--438c1312a1ba5ae0317ac9a7.md) | 136 | `declaration-track:438c1312a1ba5ae0317ac9a73a74540d8b8c98e2612f34286520daaa34b0396e` |
| 11 | `def` | [DiscrTreeCache.getMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant9f5c6b7a35361a78ebe8ee77cd8997197d6203db6d7643cb9068224a4105d6f0.lean/declarations/discrtreecache-getmatch--b6a664ad4862590c6252482f.md) | 164 | `declaration-track:b6a664ad4862590c6252482f34f2300f08fc883409e8b75214f6880e23a5792c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
