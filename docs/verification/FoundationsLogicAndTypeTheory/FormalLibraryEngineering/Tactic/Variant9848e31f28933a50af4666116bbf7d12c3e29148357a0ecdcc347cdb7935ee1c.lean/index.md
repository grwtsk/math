# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variant9848e31f28933a50af4666116bbf7d12c3e29148357a0ecdcc347cdb7935ee1c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7060cb9d42d749fb5e375660a7efb22ed264b602",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant9848e31f28933a50af4666116bbf7d12c3e29148357a0ecdcc347cdb7935ee1c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant9848e31f28933a50af4666116bbf7d12c3e29148357a0ecdcc347cdb7935ee1c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant9848e31f28933a50af4666116bbf7d12c3e29148357a0ecdcc347cdb7935ee1c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7060cb9d42d749fb5e375660a7efb22ed264b602`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant9848e31f28933a50af4666116bbf7d12c3e29148357a0ecdcc347cdb7935ee1c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant9848e31f28933a50af4666116bbf7d12c3e29148357a0ecdcc347cdb7935ee1c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 1; external provider; requires a separately pinned dependency.
- `Batteries.Lean.NameMapAttribute` — import line 2; external provider; requires a separately pinned dependency.
- `Architect.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant9848e31f28933a50af4666116bbf7d12c3e29148357a0ecdcc347cdb7935ee1c.lean/declarations/state--7ec4252e21a28685208e8514.md) | 16 | `declaration-track:7ec4252e21a28685208e851442f366271f1a07b1e548b4eb94d126cab9cc7d73` |
| 2 | `abbrev` | [Entry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant9848e31f28933a50af4666116bbf7d12c3e29148357a0ecdcc347cdb7935ee1c.lean/declarations/entry--7217b9c7ede8720b45f36d3c.md) | 17 | `declaration-track:7217b9c7ede8720b45f36d3cab9c4c40402b7e3b5373fdafd35de974ac1e63ef` |
| 3 | `def` | [addEntryFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant9848e31f28933a50af4666116bbf7d12c3e29148357a0ecdcc347cdb7935ee1c.lean/declarations/addentryfn--5a0daaa9fee47b3b9500afa5.md) | 19 | `declaration-track:5a0daaa9fee47b3b9500afa5c76de475bb2a69fa2e67d6fa76ee898b1e9361ff` |
| 4 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant9848e31f28933a50af4666116bbf7d12c3e29148357a0ecdcc347cdb7935ee1c.lean/declarations/initialize--3002ea30e35dafa983930cbe.md) | 25 | `declaration-track:3002ea30e35dafa983930cbed6bc19fa5b2c17530a86584afd6feb6228022fb2` |
| 5 | `def` | [addProofDocString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant9848e31f28933a50af4666116bbf7d12c3e29148357a0ecdcc347cdb7935ee1c.lean/declarations/addproofdocstring--cfdebdc037e896212dcf9e85.md) | 36 | `declaration-track:cfdebdc037e896212dcf9e856d0ceb8674220dbf92d270e844aab2f09d56d620` |
| 6 | `def` | [getProofDocString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant9848e31f28933a50af4666116bbf7d12c3e29148357a0ecdcc347cdb7935ee1c.lean/declarations/getproofdocstring--a0bd94d8d7495ea8676f151e.md) | 39 | `declaration-track:a0bd94d8d7495ea8676f151e3c3effd34fc7b012624eadf466af7195dee1e43a` |
| 7 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant9848e31f28933a50af4666116bbf7d12c3e29148357a0ecdcc347cdb7935ee1c.lean/declarations/elab--69c279865e943ceadc0b02dd.md) | 43 | `declaration-track:69c279865e943ceadc0b02ddeeb1cf4e37c284829be89f1d406b5db2d3fa8c7a` |
| 8 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant9848e31f28933a50af4666116bbf7d12c3e29148357a0ecdcc347cdb7935ee1c.lean/declarations/elab--ac7f0fc362f7dfdfc18f2a4b.md) | 62 | `declaration-track:ac7f0fc362f7dfdfc18f2a4badea457cafb53ceb1a4a866791e44685f7418618` |
| 9 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant9848e31f28933a50af4666116bbf7d12c3e29148357a0ecdcc347cdb7935ee1c.lean/declarations/elab--9130f2dc73d028ff74886554.md) | 80 | `declaration-track:9130f2dc73d028ff74886554c21e177043039d9a15a7e2fad60c3904f2e543b0` |
| 10 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant9848e31f28933a50af4666116bbf7d12c3e29148357a0ecdcc347cdb7935ee1c.lean/declarations/macro--eb3ee31de30099650c7bca92.md) | 94 | `declaration-track:eb3ee31de30099650c7bca925810436181386591eca5c532a132e914ee5acf67` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
