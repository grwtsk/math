# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteGram.Variante7c92e0580ee73a8c994cd4a01315100c5d511c196e391e8810e891aae846354

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b94242d538cd8da096fec247000cd1f9275e194",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteGram/Variante7c92e0580ee73a8c994cd4a01315100c5d511c196e391e8810e891aae846354.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variante7c92e0580ee73a8c994cd4a01315100c5d511c196e391e8810e891aae846354.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variante7c92e0580ee73a8c994cd4a01315100c5d511c196e391e8810e891aae846354.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b94242d538cd8da096fec247000cd1f9275e194`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteGram/Variante7c92e0580ee73a8c994cd4a01315100c5d511c196e391e8810e891aae846354.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteGram/Variante7c92e0580ee73a8c994cd4a01315100c5d511c196e391e8810e891aae846354.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Rhetorical.Kernel.Core` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Rhetorical.Kernel.Regularization` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.DotProduct` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteGram](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variante7c92e0580ee73a8c994cd4a01315100c5d511c196e391e8810e891aae846354.lean/declarations/finitegram--f9be0f50c341e91b76d7c016.md) | 33 | `declaration-track:f9be0f50c341e91b76d7c0168bcfb26b766190e7656f3de5caa04fd2fe9f7018` |
| 2 | `theorem` | [finiteGram_apply](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variante7c92e0580ee73a8c994cd4a01315100c5d511c196e391e8810e891aae846354.lean/declarations/finitegram-apply--35d76b18d917490e7fc6a41c.md) | 41 | `result-track:35d76b18d917490e7fc6a41ca810e3d91a31882d00e706a2b542d9f722bf8347` |
| 3 | `theorem` | [finiteGram_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variante7c92e0580ee73a8c994cd4a01315100c5d511c196e391e8810e891aae846354.lean/declarations/finitegram-hermitian--e64d5a2033d4978168d972d2.md) | 51 | `result-track:e64d5a2033d4978168d972d2ae86dc54a9275ce050257cde02e84f9b449059ba` |
| 4 | `theorem` | [finiteGram_psd](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variante7c92e0580ee73a8c994cd4a01315100c5d511c196e391e8810e891aae846354.lean/declarations/finitegram-psd--47afc521d6a15f60a8e5b9b9.md) | 60 | `result-track:47afc521d6a15f60a8e5b9b91ceea1ad4c049511a7f95dbe9480e134b15d8116` |
| 5 | `structure` | [GramFactorCertificate](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variante7c92e0580ee73a8c994cd4a01315100c5d511c196e391e8810e891aae846354.lean/declarations/gramfactorcertificate--3cb23da619aee59433ef64f9.md) | 71 | `declaration-track:3cb23da619aee59433ef64f915491f5412aa96566888cf703825d1f84a92d42f` |
| 6 | `theorem` | [column_inner_eq_kernel](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variante7c92e0580ee73a8c994cd4a01315100c5d511c196e391e8810e891aae846354.lean/declarations/column-inner-eq-kernel--7141a3861ef59ef788acf1e4.md) | 92 | `result-track:7141a3861ef59ef788acf1e45c8e0eeb9c4eadaefd13d137ca0c5a4a6d5f4d4e` |
| 7 | `theorem` | [finiteGram_regularized_posDef](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variante7c92e0580ee73a8c994cd4a01315100c5d511c196e391e8810e891aae846354.lean/declarations/finitegram-regularized-posdef--5082c433bd5dac99d2f75603.md) | 104 | `result-track:5082c433bd5dac99d2f756037b69f171b8561acf9a06c2f0e4563cb3e0df3116` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
