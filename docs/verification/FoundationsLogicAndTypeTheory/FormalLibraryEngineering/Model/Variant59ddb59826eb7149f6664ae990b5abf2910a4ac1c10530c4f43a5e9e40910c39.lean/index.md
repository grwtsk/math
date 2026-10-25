# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Model.Variant59ddb59826eb7149f6664ae990b5abf2910a4ac1c10530c4f43a5e9e40910c39

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eaffe6871c1c73cfe448169eca0b0c9e6259353c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Model/Variant59ddb59826eb7149f6664ae990b5abf2910a4ac1c10530c4f43a5e9e40910c39.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Model/Variant59ddb59826eb7149f6664ae990b5abf2910a4ac1c10530c4f43a5e9e40910c39.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Model/Variant59ddb59826eb7149f6664ae990b5abf2910a4ac1c10530c4f43a5e9e40910c39.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eaffe6871c1c73cfe448169eca0b0c9e6259353c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Model/Variant59ddb59826eb7149f6664ae990b5abf2910a4ac1c10530c4f43a5e9e40910c39.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Model/Variant59ddb59826eb7149f6664ae990b5abf2910a4ac1c10530c4f43a5e9e40910c39.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Arith.Linear.Reify` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.ModelUtil` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Grind.Module.Envelope` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getAssignment?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Model/Variant59ddb59826eb7149f6664ae990b5abf2910a4ac1c10530c4f43a5e9e40910c39.lean/declarations/getassignment--55f5902b5eefd54a6de6e8ea.md) | 23 | `declaration-track:55f5902b5eefd54a6de6e8ea45bd9e73d672925580845f7338695a1dad5b9e98` |
| 2 | `def` | [hasType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Model/Variant59ddb59826eb7149f6664ae990b5abf2910a4ac1c10530c4f43a5e9e40910c39.lean/declarations/hastype--9b49b5e78b97bf9cde06c2b6.md) | 30 | `declaration-track:9b49b5e78b97bf9cde06c2b6a1aa45c0ac71512001157db4bd74580fcbc38e36` |
| 3 | `def` | [toQ?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Model/Variant59ddb59826eb7149f6664ae990b5abf2910a4ac1c10530c4f43a5e9e40910c39.lean/declarations/toq--ab4523a484c6c96775a4f94b.md) | 35 | `declaration-track:ab4523a484c6c96775a4f94b2bc10f9470ae95da134cee9bae740aeaedda7149` |
| 4 | `def` | [evalTermAt?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Model/Variant59ddb59826eb7149f6664ae990b5abf2910a4ac1c10530c4f43a5e9e40910c39.lean/declarations/evaltermat--866f3c26bdf3dbbac3b64138.md) | 44 | `declaration-track:866f3c26bdf3dbbac3b64138e538ee9f37a75575870b165c0958b4d29d480cf9` |
| 5 | `def` | [assignTerms](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Model/Variant59ddb59826eb7149f6664ae990b5abf2910a4ac1c10530c4f43a5e9e40910c39.lean/declarations/assignterms--9a27017cb49f3919b715cfad.md) | 82 | `declaration-track:9a27017cb49f3919b715cfad8f6dad6f9465b5ff25acf13ba35732840a2f047b` |
| 6 | `def` | [mkModel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Model/Variant59ddb59826eb7149f6664ae990b5abf2910a4ac1c10530c4f43a5e9e40910c39.lean/declarations/mkmodel--f914f9cf1c553d10e290653b.md) | 96 | `declaration-track:f914f9cf1c553d10e290653bb05bae266c066804f789e46d4620fbcd659f9198` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
