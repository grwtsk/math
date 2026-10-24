# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CategoricalAssembly.Variant6c1630a42d8a8cc05ba60a8a7646209ad179f005f915d8bc325cef8eebe9265e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f48362c9f6fa5a85c29f83053b791183b50c227",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant6c1630a42d8a8cc05ba60a8a7646209ad179f005f915d8bc325cef8eebe9265e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant6c1630a42d8a8cc05ba60a8a7646209ad179f005f915d8bc325cef8eebe9265e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant6c1630a42d8a8cc05ba60a8a7646209ad179f005f915d8bc325cef8eebe9265e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f48362c9f6fa5a85c29f83053b791183b50c227`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant6c1630a42d8a8cc05ba60a8a7646209ad179f005f915d8bc325cef8eebe9265e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant6c1630a42d8a8cc05ba60a8a7646209ad179f005f915d8bc325cef8eebe9265e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Equivalence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Discrete.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Omega` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [separateInverseIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant6c1630a42d8a8cc05ba60a8a7646209ad179f005f915d8bc325cef8eebe9265e.lean/declarations/separateinverseiso--74d20cc760c3687ca1850ed1.md) | 35 | `declaration-track:74d20cc760c3687ca1850ed15a08f80b725b453cee436d9be3a14e33a76df029` |
| 2 | `def` | [assembleSeparateInverses](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant6c1630a42d8a8cc05ba60a8a7646209ad179f005f915d8bc325cef8eebe9265e.lean/declarations/assembleseparateinverses--dea1dc93aa97f24beeb4b771.md) | 43 | `declaration-track:dea1dc93aa97f24beeb4b7715845826b9e58e056da3c4eae7e65ca614a88920b` |
| 3 | `theorem` | [assembled_forward](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant6c1630a42d8a8cc05ba60a8a7646209ad179f005f915d8bc325cef8eebe9265e.lean/declarations/assembled-forward--12d7beeaa94415d26df261d9.md) | 49 | `result-track:12d7beeaa94415d26df261d9a5ceda403c1edd1584b4e2e5800603b73b065852` |
| 4 | `theorem` | [boundary_epi_of_hom_comparisons](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant6c1630a42d8a8cc05ba60a8a7646209ad179f005f915d8bc325cef8eebe9265e.lean/declarations/boundary-epi-of-hom-comparisons--e669031a50452ddab2565b16.md) | 56 | `result-track:e669031a50452ddab2565b165d7bb153725af0cf723a9c2bcd1388cc95037e48` |
| 5 | `theorem` | [degree_relevance_bounds](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant6c1630a42d8a8cc05ba60a8a7646209ad179f005f915d8bc325cef8eebe9265e.lean/declarations/degree-relevance-bounds--c183e9e9e5eeeed97369925e.md) | 70 | `result-track:c183e9e9e5eeeed97369925e1d7ef8562307d7dc54a790c5d60d61e56674d2de` |
| 6 | `def` | [threeLabelForward](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant6c1630a42d8a8cc05ba60a8a7646209ad179f005f915d8bc325cef8eebe9265e.lean/declarations/threelabelforward--35fee2c2d70afd3cb0f77350.md) | 73 | `declaration-track:35fee2c2d70afd3cb0f77350c0b29dfe64456233769d541b4afb8be691930ba7` |
| 7 | `def` | [threeLabelLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant6c1630a42d8a8cc05ba60a8a7646209ad179f005f915d8bc325cef8eebe9265e.lean/declarations/threelabelleft--2ee4a0e168f99ca315d64439.md) | 76 | `declaration-track:2ee4a0e168f99ca315d644397f00f6312fc52bba3dd2239a8d34c6eadfbfaa87` |
| 8 | `def` | [threeLabelRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant6c1630a42d8a8cc05ba60a8a7646209ad179f005f915d8bc325cef8eebe9265e.lean/declarations/threelabelright--3c097f9783718e125e3c39c1.md) | 79 | `declaration-track:3c097f9783718e125e3c39c1e51553c728e3f57da1764103966e5a3e98d7275b` |
| 9 | `def` | [threeLabelLeftWitness](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant6c1630a42d8a8cc05ba60a8a7646209ad179f005f915d8bc325cef8eebe9265e.lean/declarations/threelabelleftwitness--7baf9d0b5acf6a3ec4477afb.md) | 82 | `declaration-track:7baf9d0b5acf6a3ec4477afbe66994cb019c72319fb996f70d18c14105aee0ac` |
| 10 | `def` | [threeLabelRightWitness](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant6c1630a42d8a8cc05ba60a8a7646209ad179f005f915d8bc325cef8eebe9265e.lean/declarations/threelabelrightwitness--50371f2ecd083f1c739d905e.md) | 87 | `declaration-track:50371f2ecd083f1c739d905e693b846b7b66dad77cca8971f8885cc07ae2c2e3` |
| 11 | `def` | [threeLabelAssembly](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant6c1630a42d8a8cc05ba60a8a7646209ad179f005f915d8bc325cef8eebe9265e.lean/declarations/threelabelassembly--e3fd5fd254ba8585e4d68591.md) | 93 | `declaration-track:e3fd5fd254ba8585e4d685919a9b6f6d3b45de4bdf6425b3e56203d7aea1ac9f` |
| 12 | `theorem` | [threeLabelAssembly_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant6c1630a42d8a8cc05ba60a8a7646209ad179f005f915d8bc325cef8eebe9265e.lean/declarations/threelabelassembly-zero--b9249dfc1a08e807f8d05ff1.md) | 98 | `result-track:b9249dfc1a08e807f8d05ff15e64e8d33a7236dcabfc1dab8d96cf3812fa8298` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
