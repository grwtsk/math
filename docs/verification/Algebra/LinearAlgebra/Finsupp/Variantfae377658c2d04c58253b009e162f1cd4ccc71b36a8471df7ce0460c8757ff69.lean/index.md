# Verification target: GRWTSK.Algebra.LinearAlgebra.Finsupp.Variantfae377658c2d04c58253b009e162f1cd4ccc71b36a8471df7ce0460c8757ff69

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f83402eed1c6e6e2f4e706113b2ce4b06e28760d",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Finsupp/Variantfae377658c2d04c58253b009e162f1cd4ccc71b36a8471df7ce0460c8757ff69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantfae377658c2d04c58253b009e162f1cd4ccc71b36a8471df7ce0460c8757ff69.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantfae377658c2d04c58253b009e162f1cd4ccc71b36a8471df7ce0460c8757ff69.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f83402eed1c6e6e2f4e706113b2ce4b06e28760d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Finsupp/Variantfae377658c2d04c58253b009e162f1cd4ccc71b36a8471df7ce0460c8757ff69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Finsupp/Variantfae377658c2d04c58253b009e162f1cd4ccc71b36a8471df7ce0460c8757ff69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.Module` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.ToDFinsupp` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finsuppLEquivDirectSum](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantfae377658c2d04c58253b009e162f1cd4ccc71b36a8471df7ce0460c8757ff69.lean/declarations/finsupplequivdirectsum--621fab163d9a338f62bc1d70.md) | 33 | `declaration-track:621fab163d9a338f62bc1d7069ac0043bc32371ed8fa015c463e97f50f553ef1` |
| 2 | `theorem` | [finsuppLEquivDirectSum_single](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantfae377658c2d04c58253b009e162f1cd4ccc71b36a8471df7ce0460c8757ff69.lean/declarations/finsupplequivdirectsum-single--ba0da1363e0b18b8456a2242.md) | 38 | `result-track:ba0da1363e0b18b8456a2242e95776ec4e78fcb2742b69951960a6c5c9a17e10` |
| 3 | `theorem` | [finsuppLEquivDirectSum_symm_lof](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantfae377658c2d04c58253b009e162f1cd4ccc71b36a8471df7ce0460c8757ff69.lean/declarations/finsupplequivdirectsum-symm-lof--ffdbbff63012b13b539d1089.md) | 43 | `result-track:ffdbbff63012b13b539d1089579b9d1ab013a2d2507ec1577672fdf21bb37203` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
