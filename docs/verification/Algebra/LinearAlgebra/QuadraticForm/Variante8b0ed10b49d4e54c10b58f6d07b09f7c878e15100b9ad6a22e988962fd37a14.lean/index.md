# Verification target: GRWTSK.Algebra.LinearAlgebra.QuadraticForm.Variante8b0ed10b49d4e54c10b58f6d07b09f7c878e15100b9ad6a22e988962fd37a14

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d8031137bb0d8befafbb35f9d1a0c3a3481a1c1",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/QuadraticForm/Variante8b0ed10b49d4e54c10b58f6d07b09f7c878e15100b9ad6a22e988962fd37a14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/Variante8b0ed10b49d4e54c10b58f6d07b09f7c878e15100b9ad6a22e988962fd37a14.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/Variante8b0ed10b49d4e54c10b58f6d07b09f7c878e15100b9ad6a22e988962fd37a14.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d8031137bb0d8befafbb35f9d1a0c3a3481a1c1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/QuadraticForm/Variante8b0ed10b49d4e54c10b58f6d07b09f7c878e15100b9ad6a22e988962fd37a14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/QuadraticForm/Variante8b0ed10b49d4e54c10b58f6d07b09f7c878e15100b9ad6a22e988962fd37a14.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.QuadraticForm.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [B](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/Variante8b0ed10b49d4e54c10b58f6d07b09f7c878e15100b9ad6a22e988962fd37a14.lean/declarations/b--4c9916f2fb92523751646ef5.md) | 36 | `declaration-track:4c9916f2fb92523751646ef5feef3ca23c99ee7208397744d13ced700363a9ec` |
| 2 | `theorem` | [B_apply](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/Variante8b0ed10b49d4e54c10b58f6d07b09f7c878e15100b9ad6a22e988962fd37a14.lean/declarations/b-apply--a2352392e838447882d63676.md) | 40 | `result-track:a2352392e838447882d636769b64eb6eaa1bf1d55221504258f4894aadc213c2` |
| 3 | `theorem` | [isSymm_B](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/Variante8b0ed10b49d4e54c10b58f6d07b09f7c878e15100b9ad6a22e988962fd37a14.lean/declarations/issymm-b--353d33b2263e783efd6735c4.md) | 43 | `result-track:353d33b2263e783efd6735c47892439bd05392c3a9255fef45abcff7a1002944` |
| 4 | `theorem` | [isAlt_B](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/Variante8b0ed10b49d4e54c10b58f6d07b09f7c878e15100b9ad6a22e988962fd37a14.lean/declarations/isalt-b--e61a5b92be3c5321316a356f.md) | 45 | `result-track:e61a5b92be3c5321316a356f877d36c4df974668eb900b1237cdcfd7033f1931` |
| 5 | `theorem` | [B_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/Variante8b0ed10b49d4e54c10b58f6d07b09f7c878e15100b9ad6a22e988962fd37a14.lean/declarations/b-ne-zero--f8f31939b4a1a03cbbaf9da8.md) | 48 | `result-track:f8f31939b4a1a03cbbaf9da8a0ce14bdae08cb3b56aa06926b7c50a56eede037` |
| 6 | `theorem` | [LinearMap.BilinForm.not_injOn_toQuadraticForm_isSymm.](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/Variante8b0ed10b49d4e54c10b58f6d07b09f7c878e15100b9ad6a22e988962fd37a14.lean/declarations/linearmap-bilinform-not-injon-toquadraticform-issymm--3d75942439b0d9b58c6958dd.md) | 55 | `result-track:3d75942439b0d9b58c6958dd1ae7fca74206247006793aa4798f89a5eb50bd3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
