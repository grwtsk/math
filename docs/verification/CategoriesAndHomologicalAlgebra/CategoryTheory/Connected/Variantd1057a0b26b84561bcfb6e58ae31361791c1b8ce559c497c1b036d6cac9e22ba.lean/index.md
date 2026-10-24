# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Connected.Variantd1057a0b26b84561bcfb6e58ae31361791c1b8ce559c497c1b036d6cac9e22ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7aa367e446e3e2037524a6b2fc59614f7dd0e0f3",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantd1057a0b26b84561bcfb6e58ae31361791c1b8ce559c497c1b036d6cac9e22ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantd1057a0b26b84561bcfb6e58ae31361791c1b8ce559c497c1b036d6cac9e22ba.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantd1057a0b26b84561bcfb6e58ae31361791c1b8ce559c497c1b036d6cac9e22ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7aa367e446e3e2037524a6b2fc59614f7dd0e0f3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantd1057a0b26b84561bcfb6e58ae31361791c1b8ce559c497c1b036d6cac9e22ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantd1057a0b26b84561bcfb6e58ae31361791c1b8ce559c497c1b036d6cac9e22ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Filtered.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.IsConnected` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsFilteredOrEmpty.isPreconnected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantd1057a0b26b84561bcfb6e58ae31361791c1b8ce559c497c1b036d6cac9e22ba.lean/declarations/isfilteredorempty-ispreconnected--418228686cd27b4251ebf6fe.md) | 27 | `result-track:418228686cd27b4251ebf6fec5460edaf420987b692fe2d6eb2030b2eb05efb1` |
| 2 | `theorem` | [IsCofilteredOrEmpty.isPreconnected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantd1057a0b26b84561bcfb6e58ae31361791c1b8ce559c497c1b036d6cac9e22ba.lean/declarations/iscofilteredorempty-ispreconnected--239ac4ce7d5d708414d3b3b6.md) | 32 | `result-track:239ac4ce7d5d708414d3b3b611b6b1941818675226cedab8e8f8b081989be98a` |
| 3 | `theorem` | [IsFiltered.isConnected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantd1057a0b26b84561bcfb6e58ae31361791c1b8ce559c497c1b036d6cac9e22ba.lean/declarations/isfiltered-isconnected--87ee11d35ea9fff66edd6ad3.md) | 38 | `result-track:87ee11d35ea9fff66edd6ad3db1993a688226c16b5cdbf439103fd88ab434055` |
| 4 | `theorem` | [IsCofiltered.isConnected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantd1057a0b26b84561bcfb6e58ae31361791c1b8ce559c497c1b036d6cac9e22ba.lean/declarations/iscofiltered-isconnected--c3de375b10a0a7b012943238.md) | 42 | `result-track:c3de375b10a0a7b01294323814cebf3f483957a879ab1d6c58f1183b706df135` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
