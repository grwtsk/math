# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Indicator.Variantd3aa0e9303c4b74cc0b986babb790abaeda09180d80089707d18c8cae494369c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61ce2a7abdfb61d1c39c8ace1dcdc37ace4ca8d8",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variantd3aa0e9303c4b74cc0b986babb790abaeda09180d80089707d18c8cae494369c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variantd3aa0e9303c4b74cc0b986babb790abaeda09180d80089707d18c8cae494369c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variantd3aa0e9303c4b74cc0b986babb790abaeda09180d80089707d18c8cae494369c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61ce2a7abdfb61d1c39c8ace1dcdc37ace4ca8d8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variantd3aa0e9303c4b74cc0b986babb790abaeda09180d80089707d18c8cae494369c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variantd3aa0e9303c4b74cc0b986babb790abaeda09180d80089707d18c8cae494369c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Single` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [indicator](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variantd3aa0e9303c4b74cc0b986babb790abaeda09180d80089707d18c8cae494369c.lean/declarations/indicator--f4343b03cf2a544b7a22e14f.md) | 30 | `declaration-track:f4343b03cf2a544b7a22e14f511c7329ff28f5b2efcc9bb1acea240c7fd29df1` |
| 2 | `theorem` | [indicator_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variantd3aa0e9303c4b74cc0b986babb790abaeda09180d80089707d18c8cae494369c.lean/declarations/indicator-of-mem--77d909595911de41ee1c154d.md) | 40 | `result-track:77d909595911de41ee1c154d65b158980af8bf17ab70b8b8de6da4de98588b83` |
| 3 | `theorem` | [indicator_of_notMem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variantd3aa0e9303c4b74cc0b986babb790abaeda09180d80089707d18c8cae494369c.lean/declarations/indicator-of-notmem--2ba144c22634f99a440e784c.md) | 43 | `result-track:2ba144c22634f99a440e784c88e930c1c8e0a912371d41dba519ee3238b076ca` |
| 4 | `theorem` | [indicator_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variantd3aa0e9303c4b74cc0b986babb790abaeda09180d80089707d18c8cae494369c.lean/declarations/indicator-apply--5588337c93bc5213c1b74e54.md) | 51 | `result-track:5588337c93bc5213c1b74e54b02e70701edb3b56ff85fad73b48dbcaa6f64ec6` |
| 5 | `theorem` | [indicator_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variantd3aa0e9303c4b74cc0b986babb790abaeda09180d80089707d18c8cae494369c.lean/declarations/indicator-injective--80c684533e758a1bd132be87.md) | 55 | `result-track:80c684533e758a1bd132be87b0c9a8938caab7272350f1eab8586a18f536e1f9` |
| 6 | `theorem` | [support_indicator_subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variantd3aa0e9303c4b74cc0b986babb790abaeda09180d80089707d18c8cae494369c.lean/declarations/support-indicator-subset--c1d3d905e487c59e433ef66b.md) | 61 | `result-track:c1d3d905e487c59e433ef66ba3fe478b601cdad6dfa06102e70d2d727afbb414` |
| 7 | `lemma` | [single_eq_indicator](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variantd3aa0e9303c4b74cc0b986babb790abaeda09180d80089707d18c8cae494369c.lean/declarations/single-eq-indicator--4e159ef2ce0b327f8b969750.md) | 67 | `result-track:4e159ef2ce0b327f8b969750822746ad7cfca11780ddc75301c84d86ca887617` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
