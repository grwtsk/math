# Verification target: GRWTSK.Algebra.LinearAlgebra.TensorProduct.Variante35664543b3030567440943c5548ecf36b66ce0755d7055c96673af752f3a6d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de2cc8ce2f37e713cb44c6749a71f5884f668102",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variante35664543b3030567440943c5548ecf36b66ce0755d7055c96673af752f3a6d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante35664543b3030567440943c5548ecf36b66ce0755d7055c96673af752f3a6d7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante35664543b3030567440943c5548ecf36b66ce0755d7055c96673af752f3a6d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de2cc8ce2f37e713cb44c6749a71f5884f668102`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variante35664543b3030567440943c5548ecf36b66ce0755d7055c96673af752f3a6d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorProduct/Variante35664543b3030567440943c5548ecf36b66ce0755d7055c96673af752f3a6d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Multilinear.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [domCoprod](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante35664543b3030567440943c5548ecf36b66ce0755d7055c96673af752f3a6d7.lean/declarations/domcoprod--2c43a194502f40ffbca46370.md) | 46 | `declaration-track:2c43a194502f40ffbca46370cc03f2f3fd71ffb96a45bc09ee8d2ea919bc6fb8` |
| 2 | `def` | [domCoprod'](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante35664543b3030567440943c5548ecf36b66ce0755d7055c96673af752f3a6d7.lean/declarations/domcoprod--d49307d6759ddc43228a5a3b.md) | 62 | `declaration-track:d49307d6759ddc43228a5a3b78aac92f1aa7097838d99d75f39fee342bf968e3` |
| 3 | `theorem` | [domCoprod'_apply](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante35664543b3030567440943c5548ecf36b66ce0755d7055c96673af752f3a6d7.lean/declarations/domcoprod-apply--ac3b5585f68f69c695334fc9.md) | 82 | `result-track:ac3b5585f68f69c695334fc9b0bcc358a9cf810d40a560e785a8e47d57a1aca4` |
| 4 | `theorem` | [domCoprod_domDomCongr_sumCongr](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante35664543b3030567440943c5548ecf36b66ce0755d7055c96673af752f3a6d7.lean/declarations/domcoprod-domdomcongr-sumcongr--505b861a7463c7722ad2bcb8.md) | 89 | `result-track:505b861a7463c7722ad2bcb8e1ee066ea1d73ef2ddb849e3208e90bd0b58714c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
