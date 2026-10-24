# Verification target: GRWTSK.Algebra.LinearAlgebra.Operations.Variant2b046d6406509445f4df3261d70103847b7c5ccfcfef9081aaa12568d9ab2bdf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22eb0ef8cf70f25172bfac1daa1b7c3b1bb79d09",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Operations/Variant2b046d6406509445f4df3261d70103847b7c5ccfcfef9081aaa12568d9ab2bdf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant2b046d6406509445f4df3261d70103847b7c5ccfcfef9081aaa12568d9ab2bdf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant2b046d6406509445f4df3261d70103847b7c5ccfcfef9081aaa12568d9ab2bdf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22eb0ef8cf70f25172bfac1daa1b7c3b1bb79d09`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Operations/Variant2b046d6406509445f4df3261d70103847b7c5ccfcfef9081aaa12568d9ab2bdf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Operations/Variant2b046d6406509445f4df3261d70103847b7c5ccfcfef9081aaa12568d9ab2bdf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Boolean.Matrix.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [BoolMatrix.zeros](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant2b046d6406509445f4df3261d70103847b7c5ccfcfef9081aaa12568d9ab2bdf.lean/declarations/boolmatrix-zeros--78764c09e01af52b560ac0cb.md) | 6 | `declaration-track:78764c09e01af52b560ac0cbc7a9168457f8569630fa489e778be84fe1791a10` |
| 2 | `def` | [BoolMatrix.ones](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant2b046d6406509445f4df3261d70103847b7c5ccfcfef9081aaa12568d9ab2bdf.lean/declarations/boolmatrix-ones--302f750decd8e08f5205ff5c.md) | 10 | `declaration-track:302f750decd8e08f5205ff5c7b4793ac57fd0bce5755c1f66d9e8ca91003fad9` |
| 3 | `def` | [BoolMatrix.join](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant2b046d6406509445f4df3261d70103847b7c5ccfcfef9081aaa12568d9ab2bdf.lean/declarations/boolmatrix-join--4036570abaa9cbccd38c29a7.md) | 14 | `declaration-track:4036570abaa9cbccd38c29a77bd8db52bb853e3699dd29495a005cb03f79ef0c` |
| 4 | `def` | [BoolMatrix.meet](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant2b046d6406509445f4df3261d70103847b7c5ccfcfef9081aaa12568d9ab2bdf.lean/declarations/boolmatrix-meet--4db268e5e444fff89bb59305.md) | 20 | `declaration-track:4db268e5e444fff89bb5930599a66faf33dd614f1b097c5a35d36a51799899f0` |
| 5 | `def` | [BoolMatrix.compl](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant2b046d6406509445f4df3261d70103847b7c5ccfcfef9081aaa12568d9ab2bdf.lean/declarations/boolmatrix-compl--3cd657159296bd17115fa376.md) | 26 | `declaration-track:3cd657159296bd17115fa37622d66e3f6aeb69f15fe63a55735b3cdc5f7a8705` |
| 6 | `def` | [BoolMatrix.transpose](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant2b046d6406509445f4df3261d70103847b7c5ccfcfef9081aaa12568d9ab2bdf.lean/declarations/boolmatrix-transpose--ad657bdf50958750dc5a7089.md) | 32 | `declaration-track:ad657bdf50958750dc5a7089609618dae8f0a7aa0f8ae6140f82c9a3a1ef5dd5` |
| 7 | `def` | [BoolMatrix.set](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant2b046d6406509445f4df3261d70103847b7c5ccfcfef9081aaa12568d9ab2bdf.lean/declarations/boolmatrix-set--a43f6357c6a8fbde8f2ad21d.md) | 38 | `declaration-track:a43f6357c6a8fbde8f2ad21d94a7c3d202db796139b692efd98844497341a358` |
| 8 | `theorem` | [BoolMatrix.entry_zeros](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant2b046d6406509445f4df3261d70103847b7c5ccfcfef9081aaa12568d9ab2bdf.lean/declarations/boolmatrix-entry-zeros--0ad45850d2a92ba793531a04.md) | 50 | `result-track:0ad45850d2a92ba793531a04d36f85c56b0110c1a848534fada95f0e9f97ab46` |
| 9 | `theorem` | [BoolMatrix.entry_ones](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant2b046d6406509445f4df3261d70103847b7c5ccfcfef9081aaa12568d9ab2bdf.lean/declarations/boolmatrix-entry-ones--8a5188f34571650899fcd841.md) | 56 | `result-track:8a5188f34571650899fcd8415707af28b535e6b9fa8466359e37977ae47990e6` |
| 10 | `theorem` | [BoolMatrix.entry_join](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant2b046d6406509445f4df3261d70103847b7c5ccfcfef9081aaa12568d9ab2bdf.lean/declarations/boolmatrix-entry-join--16035d277991352735859d4f.md) | 62 | `result-track:16035d277991352735859d4f5724dad398e6e08ef55c0864c9ace85036153285` |
| 11 | `theorem` | [BoolMatrix.entry_meet](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant2b046d6406509445f4df3261d70103847b7c5ccfcfef9081aaa12568d9ab2bdf.lean/declarations/boolmatrix-entry-meet--a3eff1f20530a3f361af4a6c.md) | 70 | `result-track:a3eff1f20530a3f361af4a6cac75edd1850c073f887864dbf8b460061e996be3` |
| 12 | `theorem` | [BoolMatrix.entry_compl](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant2b046d6406509445f4df3261d70103847b7c5ccfcfef9081aaa12568d9ab2bdf.lean/declarations/boolmatrix-entry-compl--14d81feac28ecbe47002d07e.md) | 78 | `result-track:14d81feac28ecbe47002d07eb05f1813d64620395dc3f6675563ebbe5952d165` |
| 13 | `theorem` | [BoolMatrix.entry_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant2b046d6406509445f4df3261d70103847b7c5ccfcfef9081aaa12568d9ab2bdf.lean/declarations/boolmatrix-entry-transpose--ca4f6694666116fea5ca850d.md) | 86 | `result-track:ca4f6694666116fea5ca850d143d936c3589d69f08f881ed48d874f61fd68274` |
| 14 | `theorem` | [BoolMatrix.transpose_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant2b046d6406509445f4df3261d70103847b7c5ccfcfef9081aaa12568d9ab2bdf.lean/declarations/boolmatrix-transpose-transpose--f1f5ecf4dc7c6e4250b2e9ca.md) | 94 | `result-track:f1f5ecf4dc7c6e4250b2e9ca43442aa768d4113be376065a9a7e688e9d4a8c00` |
| 15 | `theorem` | [BoolMatrix.entry_set_same](../../../../../mathematics/Algebra/LinearAlgebra/Operations/Variant2b046d6406509445f4df3261d70103847b7c5ccfcfef9081aaa12568d9ab2bdf.lean/declarations/boolmatrix-entry-set-same--4e87bb485c46d99c1775d2ae.md) | 101 | `result-track:4e87bb485c46d99c1775d2ae092087c7060abddcbb2290e73e559d401ede39d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
