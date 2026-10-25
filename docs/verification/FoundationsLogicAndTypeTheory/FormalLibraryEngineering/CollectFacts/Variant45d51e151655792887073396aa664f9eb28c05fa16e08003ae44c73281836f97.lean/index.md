# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CollectFacts.Variant45d51e151655792887073396aa664f9eb28c05fa16e08003ae44c73281836f97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4970f95a91d74bce50baa4da2854455eb9f0ec2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant45d51e151655792887073396aa664f9eb28c05fa16e08003ae44c73281836f97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant45d51e151655792887073396aa664f9eb28c05fa16e08003ae44c73281836f97.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant45d51e151655792887073396aa664f9eb28c05fa16e08003ae44c73281836f97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4970f95a91d74bce50baa4da2854455eb9f0ec2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant45d51e151655792887073396aa664f9eb28c05fa16e08003ae44c73281836f97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant45d51e151655792887073396aa664f9eb28c05fa16e08003ae44c73281836f97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Qq` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [AtomicFact](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant45d51e151655792887073396aa664f9eb28c05fa16e08003ae44c73281836f97.lean/declarations/atomicfact--1687c225b2c573966d838539.md) | 20 | `declaration-track:1687c225b2c573966d838539237eee5beb1c8d6441abc88796d52c5ffe4a1368` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant45d51e151655792887073396aa664f9eb28c05fa16e08003ae44c73281836f97.lean/declarations/instance--641fc2950a60dc8c234363d0.md) | 30 | `declaration-track:641fc2950a60dc8c234363d0223a45342a95726be3cc70cd41fb29f441b6ed7d` |
| 3 | `abbrev` | [CollectFactsState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant45d51e151655792887073396aa664f9eb28c05fa16e08003ae44c73281836f97.lean/declarations/collectfactsstate--565d15507b46a4c3397e84a5.md) | 42 | `declaration-track:565d15507b46a4c3397e84a511a7d0a28273822da93840d9bbd7d572983d2868` |
| 4 | `abbrev` | [CollectFactsM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant45d51e151655792887073396aa664f9eb28c05fa16e08003ae44c73281836f97.lean/declarations/collectfactsm--da9134e40063f171ea845917.md) | 45 | `declaration-track:da9134e40063f171ea8459171b61bbc673b90c159660028184842c8e36b97891` |
| 5 | `def` | [addAtom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant45d51e151655792887073396aa664f9eb28c05fa16e08003ae44c73281836f97.lean/declarations/addatom--5f8824378910869a49feb468.md) | 48 | `declaration-track:5f8824378910869a49feb468f4a9671820cb50021df1bcfe9423979300feb8e2` |
| 6 | `def` | [addFact](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant45d51e151655792887073396aa664f9eb28c05fa16e08003ae44c73281836f97.lean/declarations/addfact--929a3389b72787f708793694.md) | 61 | `declaration-track:929a3389b72787f708793694ed5822551c70520a79c54af2cbb19a5c88bb1b1e` |
| 7 | `def` | [collectFactsImp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant45d51e151655792887073396aa664f9eb28c05fa16e08003ae44c73281836f97.lean/declarations/collectfactsimp--781bc8ea2a070188ec758429.md) | 67 | `declaration-track:781bc8ea2a070188ec758429f3822dd0e8302ea9833ba64b8b8314d4676e00bc` |
| 8 | `def` | [collectFacts](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant45d51e151655792887073396aa664f9eb28c05fa16e08003ae44c73281836f97.lean/declarations/collectfacts--72cb221bae2177465614694e.md) | 117 | `declaration-track:72cb221bae2177465614694e3857ec3519410be94a1d43093c5947ffc20209c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
