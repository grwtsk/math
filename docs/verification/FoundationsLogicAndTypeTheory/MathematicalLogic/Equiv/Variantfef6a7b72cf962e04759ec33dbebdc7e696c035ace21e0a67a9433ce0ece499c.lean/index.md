# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Equiv.Variantfef6a7b72cf962e04759ec33dbebdc7e696c035ace21e0a67a9433ce0ece499c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72d670e25484ea4fee702fdad3f542aeda2fe4d3",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variantfef6a7b72cf962e04759ec33dbebdc7e696c035ace21e0a67a9433ce0ece499c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variantfef6a7b72cf962e04759ec33dbebdc7e696c035ace21e0a67a9433ce0ece499c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variantfef6a7b72cf962e04759ec33dbebdc7e696c035ace21e0a67a9433ce0ece499c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72d670e25484ea4fee702fdad3f542aeda2fe4d3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variantfef6a7b72cf962e04759ec33dbebdc7e696c035ace21e0a67a9433ce0ece499c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variantfef6a7b72cf962e04759ec33dbebdc7e696c035ace21e0a67a9433ce0ece499c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Traversable.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variantfef6a7b72cf962e04759ec33dbebdc7e696c035ace21e0a67a9433ce0ece499c.lean/declarations/map--f92d12fff9d5ab907764f817.md) | 50 | `declaration-track:f92d12fff9d5ab907764f817c9aa940b6bce32da00833bcd986bc68a5c04af73` |
| 2 | `def` | [functor](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variantfef6a7b72cf962e04759ec33dbebdc7e696c035ace21e0a67a9433ce0ece499c.lean/declarations/functor--eac28c39eeca0121570bc6a3.md) | 55 | `declaration-track:eac28c39eeca0121570bc6a331b36da004d7beb30dab9cacd863847aa45de8b7` |
| 3 | `theorem` | [id_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variantfef6a7b72cf962e04759ec33dbebdc7e696c035ace21e0a67a9433ce0ece499c.lean/declarations/id-map--a0022cb8aa5393ae42f9ac28.md) | 59 | `result-track:a0022cb8aa5393ae42f9ac287120c770f20640909c6a01660414127696f4e28c` |
| 4 | `theorem` | [comp_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variantfef6a7b72cf962e04759ec33dbebdc7e696c035ace21e0a67a9433ce0ece499c.lean/declarations/comp-map--5e25b0a89cdbac5b05d15a16.md) | 62 | `result-track:5e25b0a89cdbac5b05d15a16e19c7cde44c300150d7c7ec0f875f3ada272c7e0` |
| 5 | `theorem` | [lawfulFunctor](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variantfef6a7b72cf962e04759ec33dbebdc7e696c035ace21e0a67a9433ce0ece499c.lean/declarations/lawfulfunctor--3e2c8251b16f55c8e8af4145.md) | 66 | `result-track:3e2c8251b16f55c8e8af4145d1450f6e4e0c7a7cee75a17aa0c7e536ea0b7212` |
| 6 | `theorem` | [lawfulFunctor'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variantfef6a7b72cf962e04759ec33dbebdc7e696c035ace21e0a67a9433ce0ece499c.lean/declarations/lawfulfunctor--c3b2cccf07312f646e0bcc0c.md) | 73 | `result-track:c3b2cccf07312f646e0bcc0c7cdbb3186a514cdec8fc084fc1b2061fed548e82` |
| 7 | `def` | [traverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variantfef6a7b72cf962e04759ec33dbebdc7e696c035ace21e0a67a9433ce0ece499c.lean/declarations/traverse--2f09589132169dee80b85e0e.md) | 96 | `declaration-track:2f09589132169dee80b85e0e53b250179003b0344b3b6b689690c17d15527321` |
| 8 | `theorem` | [traverse_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variantfef6a7b72cf962e04759ec33dbebdc7e696c035ace21e0a67a9433ce0ece499c.lean/declarations/traverse-def--895962001694248a445618e8.md) | 99 | `result-track:895962001694248a445618e8f9f3827e86ebe671f3862ffe11a4ce628f011e18` |
| 9 | `def` | [traversable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variantfef6a7b72cf962e04759ec33dbebdc7e696c035ace21e0a67a9433ce0ece499c.lean/declarations/traversable--b479b053b01d582d550d89a1.md) | 105 | `declaration-track:b479b053b01d582d550d89a194398a940dda08772cd631818f9280380f365ea7` |
| 10 | `theorem` | [id_traverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variantfef6a7b72cf962e04759ec33dbebdc7e696c035ace21e0a67a9433ce0ece499c.lean/declarations/id-traverse--81adfbdb75dd46bc6ad477a9.md) | 124 | `result-track:81adfbdb75dd46bc6ad477a961f07edc4ae36691685d40594b7a778ca5310b70` |
| 11 | `theorem` | [traverse_eq_map_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variantfef6a7b72cf962e04759ec33dbebdc7e696c035ace21e0a67a9433ce0ece499c.lean/declarations/traverse-eq-map-id--2cb5933adf8cd0a53fa0cdf8.md) | 127 | `result-track:2cb5933adf8cd0a53fa0cdf882b5f4dbca02639028f9515bc80b1879ea5f75e6` |
| 12 | `theorem` | [comp_traverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variantfef6a7b72cf962e04759ec33dbebdc7e696c035ace21e0a67a9433ce0ece499c.lean/declarations/comp-traverse--e59ba628772450e5f466d9b2.md) | 131 | `result-track:e59ba628772450e5f466d9b22414fb845cc6c949bb920e77c60e0bdf0f571eef` |
| 13 | `theorem` | [naturality](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variantfef6a7b72cf962e04759ec33dbebdc7e696c035ace21e0a67a9433ce0ece499c.lean/declarations/naturality--4b4c82eff6c4b61be01f6b32.md) | 137 | `result-track:4b4c82eff6c4b61be01f6b322751c6b7602ee4c8eefccd889fc5c485b504bafa` |
| 14 | `theorem` | [isLawfulTraversable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variantfef6a7b72cf962e04759ec33dbebdc7e696c035ace21e0a67a9433ce0ece499c.lean/declarations/islawfultraversable--68599ddc03c49146cab57951.md) | 144 | `result-track:68599ddc03c49146cab579516a17876d019f4bf8aa5a8af1664e96a242fd9969` |
| 15 | `theorem` | [isLawfulTraversable'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variantfef6a7b72cf962e04759ec33dbebdc7e696c035ace21e0a67a9433ce0ece499c.lean/declarations/islawfultraversable--4ed41b39bee51c8d79d6f872.md) | 158 | `result-track:4ed41b39bee51c8d79d6f872d1fc5c3ba8a26681e0b2781c1be4e1d588b6ae89` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
