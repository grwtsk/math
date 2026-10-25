# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Quotients.Variant4d8c092cfc793f5dd2af1c9c2466ab8351bbeadc39d1422596f441952a87a050

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9ee72de7a005ac1beafc90f99b0583bc623fdba",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Quotients/Variant4d8c092cfc793f5dd2af1c9c2466ab8351bbeadc39d1422596f441952a87a050.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Quotients/Variant4d8c092cfc793f5dd2af1c9c2466ab8351bbeadc39d1422596f441952a87a050.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Quotients/Variant4d8c092cfc793f5dd2af1c9c2466ab8351bbeadc39d1422596f441952a87a050.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9ee72de7a005ac1beafc90f99b0583bc623fdba`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Quotients/Variant4d8c092cfc793f5dd2af1c9c2466ab8351bbeadc39d1422596f441952a87a050.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Quotients/Variant4d8c092cfc793f5dd2af1c9c2466ab8351bbeadc39d1422596f441952a87a050.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Quotient` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Semantics` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Prestructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Quotients/Variant4d8c092cfc793f5dd2af1c9c2466ab8351bbeadc39d1422596f441952a87a050.lean/declarations/prestructure--b91fa19c1c7cc4fc43161096.md) | 43 | `declaration-track:b91fa19c1c7cc4fc43161096463bd31b74c059eb647d1152343caf1d101eba21` |
| 2 | `instance` | [quotientStructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Quotients/Variant4d8c092cfc793f5dd2af1c9c2466ab8351bbeadc39d1422596f441952a87a050.lean/declarations/quotientstructure--f3b5b75b1671b68ad0f5069c.md) | 52 | `declaration-track:f3b5b75b1671b68ad0f5069c928081f318089b93e56f5aedb2437fb49037ac46` |
| 3 | `theorem` | [funMap_quotient_mk'](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Quotients/Variant4d8c092cfc793f5dd2af1c9c2466ab8351bbeadc39d1422596f441952a87a050.lean/declarations/funmap-quotient-mk--efbb5a586094056d77f7e903.md) | 60 | `result-track:efbb5a586094056d77f7e903cfaeba9c85e03eddf2e163a9b373a119842baaf4` |
| 4 | `theorem` | [relMap_quotient_mk'](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Quotients/Variant4d8c092cfc793f5dd2af1c9c2466ab8351bbeadc39d1422596f441952a87a050.lean/declarations/relmap-quotient-mk--4b02ede6aba10303d84bb790.md) | 67 | `result-track:4b02ede6aba10303d84bb790e27e74cd00b408865349263ead179f33dbdf307c` |
| 5 | `theorem` | [Term.realize_quotient_mk'](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Quotients/Variant4d8c092cfc793f5dd2af1c9c2466ab8351bbeadc39d1422596f441952a87a050.lean/declarations/term-realize-quotient-mk--3457e7ae2a4dd168356f8e82.md) | 74 | `result-track:3457e7ae2a4dd168356f8e82ff590e8d865cdbdca9d03b3c7e719a93eeed6881` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
