# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteGram.Variant30c2f49d50ea5970f3990b0370cf465d6cffc1dfc8e052b03a8d25a626567476

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "664944c296fd41ba704fe5b4f2c7fecbaff8189a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteGram/Variant30c2f49d50ea5970f3990b0370cf465d6cffc1dfc8e052b03a8d25a626567476.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variant30c2f49d50ea5970f3990b0370cf465d6cffc1dfc8e052b03a8d25a626567476.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variant30c2f49d50ea5970f3990b0370cf465d6cffc1dfc8e052b03a8d25a626567476.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `664944c296fd41ba704fe5b4f2c7fecbaff8189a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteGram/Variant30c2f49d50ea5970f3990b0370cf465d6cffc1dfc8e052b03a8d25a626567476.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteGram/Variant30c2f49d50ea5970f3990b0370cf465d6cffc1dfc8e052b03a8d25a626567476.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Kernel.Core` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Kernel.Regularization` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.DotProduct` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteGram](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variant30c2f49d50ea5970f3990b0370cf465d6cffc1dfc8e052b03a8d25a626567476.lean/declarations/finitegram--b79ff421ed36d32cf89cdc5e.md) | 23 | `declaration-track:b79ff421ed36d32cf89cdc5e60dbdcabf96cb4812ab8213fccb0a78f08238854` |
| 2 | `theorem` | [finiteGram_apply](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variant30c2f49d50ea5970f3990b0370cf465d6cffc1dfc8e052b03a8d25a626567476.lean/declarations/finitegram-apply--09c8eb2ac8aae4a668af0499.md) | 31 | `result-track:09c8eb2ac8aae4a668af04994016ac634a52a2f2679e6937b1094855fec85521` |
| 3 | `theorem` | [finiteGram_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variant30c2f49d50ea5970f3990b0370cf465d6cffc1dfc8e052b03a8d25a626567476.lean/declarations/finitegram-hermitian--78a668768ffeab5d9ccf6aff.md) | 41 | `result-track:78a668768ffeab5d9ccf6aff2897ac375c8a7ab9d6746164f56a600a3676f380` |
| 4 | `theorem` | [finiteGram_psd](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variant30c2f49d50ea5970f3990b0370cf465d6cffc1dfc8e052b03a8d25a626567476.lean/declarations/finitegram-psd--0ea768d9efbc7703676bfc57.md) | 50 | `result-track:0ea768d9efbc7703676bfc570fd0f39c621c1987cd2be3c079701271db83f348` |
| 5 | `structure` | [GramFactorCertificate](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variant30c2f49d50ea5970f3990b0370cf465d6cffc1dfc8e052b03a8d25a626567476.lean/declarations/gramfactorcertificate--0979c84380979d0e6f941f7f.md) | 60 | `declaration-track:0979c84380979d0e6f941f7f770a49b071eeb5152ca937fc693d73c29a54314f` |
| 6 | `theorem` | [column_inner_eq_kernel](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variant30c2f49d50ea5970f3990b0370cf465d6cffc1dfc8e052b03a8d25a626567476.lean/declarations/column-inner-eq-kernel--42bd3d8441cace849e2fb33e.md) | 80 | `result-track:42bd3d8441cace849e2fb33e5be39088c4f1222a90c26ebde27a426973931f60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
