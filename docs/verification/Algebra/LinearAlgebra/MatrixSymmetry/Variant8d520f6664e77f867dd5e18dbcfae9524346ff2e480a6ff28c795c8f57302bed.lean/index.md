# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixSymmetry.Variant8d520f6664e77f867dd5e18dbcfae9524346ff2e480a6ff28c795c8f57302bed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "091ffb08979bf124739646d8dfb7810d2b3bffa4",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixSymmetry/Variant8d520f6664e77f867dd5e18dbcfae9524346ff2e480a6ff28c795c8f57302bed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixSymmetry/Variant8d520f6664e77f867dd5e18dbcfae9524346ff2e480a6ff28c795c8f57302bed.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixSymmetry/Variant8d520f6664e77f867dd5e18dbcfae9524346ff2e480a6ff28c795c8f57302bed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `091ffb08979bf124739646d8dfb7810d2b3bffa4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixSymmetry/Variant8d520f6664e77f867dd5e18dbcfae9524346ff2e480a6ff28c795c8f57302bed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixSymmetry/Variant8d520f6664e77f867dd5e18dbcfae9524346ff2e480a6ff28c795c8f57302bed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Archive.Spin` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Carrier.BinaryMatrix` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MatrixAction](../../../../../mathematics/Algebra/LinearAlgebra/MatrixSymmetry/Variant8d520f6664e77f867dd5e18dbcfae9524346ff2e480a6ff28c795c8f57302bed.lean/declarations/matrixaction--d0663f59f7774a644b2073ce.md) | 19 | `declaration-track:d0663f59f7774a644b2073ced54aa4c47078e31976a04d62805747537489b16f` |
| 2 | `def` | [copyAction](../../../../../mathematics/Algebra/LinearAlgebra/MatrixSymmetry/Variant8d520f6664e77f867dd5e18dbcfae9524346ff2e480a6ff28c795c8f57302bed.lean/declarations/copyaction--02da0e983076b62f4f46c6aa.md) | 32 | `declaration-track:02da0e983076b62f4f46c6aaff289d6a25265481864a985c8d7f30d54b5fae0e` |
| 3 | `theorem` | [copyAction_id_act](../../../../../mathematics/Algebra/LinearAlgebra/MatrixSymmetry/Variant8d520f6664e77f867dd5e18dbcfae9524346ff2e480a6ff28c795c8f57302bed.lean/declarations/copyaction-id-act--d0be50bf53e2038ee44bdb34.md) | 45 | `result-track:d0be50bf53e2038ee44bdb34ab9fb5f3d1c9879b1c117ec80b441d061a36ce10` |
| 4 | `structure` | [RectV4ActionContract](../../../../../mathematics/Algebra/LinearAlgebra/MatrixSymmetry/Variant8d520f6664e77f867dd5e18dbcfae9524346ff2e480a6ff28c795c8f57302bed.lean/declarations/rectv4actioncontract--e2e88902a7bfa391640de269.md) | 50 | `declaration-track:e2e88902a7bfa391640de26928442d3a1ab0404572be7431c2d27b36d585047c` |
| 5 | `def` | [rectV4ActionContractTarget](../../../../../mathematics/Algebra/LinearAlgebra/MatrixSymmetry/Variant8d520f6664e77f867dd5e18dbcfae9524346ff2e480a6ff28c795c8f57302bed.lean/declarations/rectv4actioncontracttarget--be8c472c2b6913a0d6d75d2d.md) | 55 | `declaration-track:be8c472c2b6913a0d6d75d2d3ec76d563c22d1f5e7fba384d4b247db5b514667` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
