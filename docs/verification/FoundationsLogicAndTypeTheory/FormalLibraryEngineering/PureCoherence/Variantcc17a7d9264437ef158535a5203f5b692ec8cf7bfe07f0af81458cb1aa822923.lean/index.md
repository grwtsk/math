# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PureCoherence.Variantcc17a7d9264437ef158535a5203f5b692ec8cf7bfe07f0af81458cb1aa822923

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9fe41b68725fac76391520b9d48d28bdf34d713c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variantcc17a7d9264437ef158535a5203f5b692ec8cf7bfe07f0af81458cb1aa822923.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variantcc17a7d9264437ef158535a5203f5b692ec8cf7bfe07f0af81458cb1aa822923.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variantcc17a7d9264437ef158535a5203f5b692ec8cf7bfe07f0af81458cb1aa822923.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9fe41b68725fac76391520b9d48d28bdf34d713c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variantcc17a7d9264437ef158535a5203f5b692ec8cf7bfe07f0af81458cb1aa822923.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variantcc17a7d9264437ef158535a5203f5b692ec8cf7bfe07f0af81458cb1aa822923.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Apply` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Coherence.Datatypes` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Normalize.Result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variantcc17a7d9264437ef158535a5203f5b692ec8cf7bfe07f0af81458cb1aa822923.lean/declarations/normalize-result--7aa51d52432e1224d9f16f99.md) | 43 | `declaration-track:7aa51d52432e1224d9f16f995613bdb5050b0e4ef0464e8042147cf6d22aca50` |
| 2 | `def` | [normalize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variantcc17a7d9264437ef158535a5203f5b692ec8cf7bfe07f0af81458cb1aa822923.lean/declarations/normalize--0c11d8d4ea76cfbeb28b815b.md) | 55 | `declaration-track:0c11d8d4ea76cfbeb28b815bc6e04260c4b433520cf57bd54d0403b45c6ffbcf` |
| 3 | `class` | [MonadNormalizeNaturality](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variantcc17a7d9264437ef158535a5203f5b692ec8cf7bfe07f0af81458cb1aa822923.lean/declarations/monadnormalizenaturality--b42c390cb88c629bea6e3efd.md) | 74 | `declaration-track:b42c390cb88c629bea6e3efd87e7fabb4cdcba6cf99353392616cd5640c7bc4f` |
| 4 | `def` | [naturality](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variantcc17a7d9264437ef158535a5203f5b692ec8cf7bfe07f0af81458cb1aa822923.lean/declarations/naturality--4f4fb80c9e2ccbb41ed62cb2.md) | 104 | `declaration-track:4f4fb80c9e2ccbb41ed62cb2106a97ccd3f0d4f26e6f45bf3c83631d4a8e547a` |
| 5 | `class` | [MkEqOfNaturality](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variantcc17a7d9264437ef158535a5203f5b692ec8cf7bfe07f0af81458cb1aa822923.lean/declarations/mkeqofnaturality--a5004adf71e9274fe263c26e.md) | 167 | `declaration-track:a5004adf71e9274fe263c26e2416c2b7e78844fb2f29144df0f9ab6bf484c342` |
| 6 | `def` | [pureCoherence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variantcc17a7d9264437ef158535a5203f5b692ec8cf7bfe07f0af81458cb1aa822923.lean/declarations/purecoherence--3eb0c6bab2a83fb96761ed39.md) | 175 | `declaration-track:3eb0c6bab2a83fb96761ed39f2e98bd0b31b248a9d6d7ca2cb4ee0398b1b2559` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
