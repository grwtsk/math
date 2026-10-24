# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Four.Variantfc0bc6029bf61a7e8ae122cc26d11a827d4eeb714879ade56f81037d67cfd8d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc443c76cb081a4b4a11a8690dc0d068608fe411",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variantfc0bc6029bf61a7e8ae122cc26d11a827d4eeb714879ade56f81037d67cfd8d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variantfc0bc6029bf61a7e8ae122cc26d11a827d4eeb714879ade56f81037d67cfd8d3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variantfc0bc6029bf61a7e8ae122cc26d11a827d4eeb714879ade56f81037d67cfd8d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc443c76cb081a4b4a11a8690dc0d068608fe411`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variantfc0bc6029bf61a7e8ae122cc26d11a827d4eeb714879ade56f81037d67cfd8d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variantfc0bc6029bf61a7e8ae122cc26d11a827d4eeb714879ade56f81037d67cfd8d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ExactSequence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Refinements` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mono_of_epi_of_mono_of_mono'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variantfc0bc6029bf61a7e8ae122cc26d11a827d4eeb714879ade56f81037d67cfd8d3.lean/declarations/mono-of-epi-of-mono-of-mono--8e18292c46b97bf7d8f46a51.md) | 60 | `result-track:8e18292c46b97bf7d8f46a51133aa823a9c6f6d0fcca30c785e7215737f3cfba` |
| 2 | `theorem` | [mono_of_epi_of_mono_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variantfc0bc6029bf61a7e8ae122cc26d11a827d4eeb714879ade56f81037d67cfd8d3.lean/declarations/mono-of-epi-of-mono-of-mono--5013c77268502cf139a089b5.md) | 83 | `result-track:5013c77268502cf139a089b5e2c1f44641388ee034606a9b9d953afe1533ff4d` |
| 3 | `theorem` | [epi_of_epi_of_epi_of_mono'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variantfc0bc6029bf61a7e8ae122cc26d11a827d4eeb714879ade56f81037d67cfd8d3.lean/declarations/epi-of-epi-of-epi-of-mono--646d47061f6c33c500c38588.md) | 90 | `result-track:646d47061f6c33c500c38588223e2aa1cf93f7d2a2b122674fed29a5e1f5c025` |
| 4 | `theorem` | [epi_of_epi_of_epi_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variantfc0bc6029bf61a7e8ae122cc26d11a827d4eeb714879ade56f81037d67cfd8d3.lean/declarations/epi-of-epi-of-epi-of-mono--0afdb0ae963996916f039c34.md) | 117 | `result-track:0afdb0ae963996916f039c34f11eb426fd72fbf0e61526f36e9cce432c8740be` |
| 5 | `theorem` | [isIso_of_epi_of_isIso_of_isIso_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variantfc0bc6029bf61a7e8ae122cc26d11a827d4eeb714879ade56f81037d67cfd8d3.lean/declarations/isiso-of-epi-of-isiso-of-isiso-of-mono--833c03937a67b517f6a5db6d.md) | 132 | `result-track:833c03937a67b517f6a5db6d1c2fb772adb462eaf22474685b87efda7bf40e8f` |
| 6 | `theorem` | [mono_of_epi_of_epi_mono'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variantfc0bc6029bf61a7e8ae122cc26d11a827d4eeb714879ade56f81037d67cfd8d3.lean/declarations/mono-of-epi-of-epi-mono--31138108fe88924940ccbd56.md) | 155 | `result-track:31138108fe88924940ccbd569fb520cecd82ffb0c2e267ea19ed8d67140d6c09` |
| 7 | `theorem` | [mono_of_epi_of_epi_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variantfc0bc6029bf61a7e8ae122cc26d11a827d4eeb714879ade56f81037d67cfd8d3.lean/declarations/mono-of-epi-of-epi-of-mono--7d231491749044ad00e19017.md) | 169 | `result-track:7d231491749044ad00e19017f1060c25322a311f4b0cb9df105b8b4cef70e0de` |
| 8 | `theorem` | [epi_of_mono_of_epi_of_mono'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variantfc0bc6029bf61a7e8ae122cc26d11a827d4eeb714879ade56f81037d67cfd8d3.lean/declarations/epi-of-mono-of-epi-of-mono--36db41d97b9a8ac0e95686a9.md) | 175 | `result-track:36db41d97b9a8ac0e95686a9ba4198d854f49a70e5a625fb3503c4fc78e4196f` |
| 9 | `theorem` | [epi_of_mono_of_epi_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variantfc0bc6029bf61a7e8ae122cc26d11a827d4eeb714879ade56f81037d67cfd8d3.lean/declarations/epi-of-mono-of-epi-of-mono--d70015ebcbd43010dba134d0.md) | 189 | `result-track:d70015ebcbd43010dba134d0835d0bbf067ad8d308c95fb628abcfd11050cac3` |
| 10 | `theorem` | [mono_of_mono_of_mono_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variantfc0bc6029bf61a7e8ae122cc26d11a827d4eeb714879ade56f81037d67cfd8d3.lean/declarations/mono-of-mono-of-mono-of-mono--042296d251546e9e8c6eaf52.md) | 195 | `result-track:042296d251546e9e8c6eaf52eb7849333e8edd565ed614f77fc421d7031cc877` |
| 11 | `theorem` | [epi_of_epi_of_epi_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variantfc0bc6029bf61a7e8ae122cc26d11a827d4eeb714879ade56f81037d67cfd8d3.lean/declarations/epi-of-epi-of-epi-of-epi--151800aeb91982fc95bcbcc1.md) | 209 | `result-track:151800aeb91982fc95bcbcc1ed648f3306e66aa1cc5cd498f5c80e2b7f6030f5` |
| 12 | `theorem` | [mono_of_epi_of_epi_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variantfc0bc6029bf61a7e8ae122cc26d11a827d4eeb714879ade56f81037d67cfd8d3.lean/declarations/mono-of-epi-of-epi-of-mono--399b60f263bc29d7bdb2b005.md) | 232 | `result-track:399b60f263bc29d7bdb2b005a0e9ee3d6f675bc8dd35dbf44311adfbdd29c56e` |
| 13 | `theorem` | [epi_of_mono_of_epi_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variantfc0bc6029bf61a7e8ae122cc26d11a827d4eeb714879ade56f81037d67cfd8d3.lean/declarations/epi-of-mono-of-epi-of-mono--0336b993ddd0d636b9200c7e.md) | 237 | `result-track:0336b993ddd0d636b9200c7e1773b9bd6789d6559743c574eb73dd72d99079ee` |
| 14 | `theorem` | [mono_of_mono_of_mono_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variantfc0bc6029bf61a7e8ae122cc26d11a827d4eeb714879ade56f81037d67cfd8d3.lean/declarations/mono-of-mono-of-mono-of-mono--b49499e483675b310c24c2e6.md) | 242 | `result-track:b49499e483675b310c24c2e63e9c5db318abb8d9818e83831113111d1913be96` |
| 15 | `theorem` | [epi_of_epi_of_epi_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variantfc0bc6029bf61a7e8ae122cc26d11a827d4eeb714879ade56f81037d67cfd8d3.lean/declarations/epi-of-epi-of-epi-of-epi--9d45235a85b28cb58abd7b82.md) | 247 | `result-track:9d45235a85b28cb58abd7b8242e3c64baf349fa26dd5235637bda550e591a93b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
