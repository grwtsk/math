# Verification target: GRWTSK.Algebra.LinearAlgebra.Matrix.Variant54303c45eb2eeab30f702cc8ec0ee9d65180779867c87bda2fd526c4fb28a109

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c692ba3cc3a8758ebbf11587d09b59cb9af40ed",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant54303c45eb2eeab30f702cc8ec0ee9d65180779867c87bda2fd526c4fb28a109.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant54303c45eb2eeab30f702cc8ec0ee9d65180779867c87bda2fd526c4fb28a109.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant54303c45eb2eeab30f702cc8ec0ee9d65180779867c87bda2fd526c4fb28a109.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c692ba3cc3a8758ebbf11587d09b59cb9af40ed`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Matrix/Variant54303c45eb2eeab30f702cc8ec0ee9d65180779867c87bda2fd526c4fb28a109.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Matrix/Variant54303c45eb2eeab30f702cc8ec0ee9d65180779867c87bda2fd526c4fb28a109.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.IsROrC.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.UnitaryGroup` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant54303c45eb2eeab30f702cc8ec0ee9d65180779867c87bda2fd526c4fb28a109.lean/declarations/macro-rules--5153c3fa4f53b43b8727ae90.md) | 30 | `declaration-track:5153c3fa4f53b43b8727ae909cccd48ace473711330c8af9667ee79100c26f4f` |
| 2 | `theorem` | [entry_norm_bound_of_unitary](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant54303c45eb2eeab30f702cc8ec0ee9d65180779867c87bda2fd526c4fb28a109.lean/declarations/entry-norm-bound-of-unitary--2eec5cd67b78bf6a24bddf87.md) | 38 | `result-track:2eec5cd67b78bf6a24bddf871e35f2362c3ca4b82d10b6f2a2e4c50c0ed05f0a` |
| 3 | `theorem` | [entrywise_sup_norm_bound_of_unitary](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant54303c45eb2eeab30f702cc8ec0ee9d65180779867c87bda2fd526c4fb28a109.lean/declarations/entrywise-sup-norm-bound-of-unitary--222a5cba3c4b2176da31063a.md) | 72 | `result-track:222a5cba3c4b2176da31063a44e1434ca35aa23335bf5ea9c992131f6e4ab15a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
