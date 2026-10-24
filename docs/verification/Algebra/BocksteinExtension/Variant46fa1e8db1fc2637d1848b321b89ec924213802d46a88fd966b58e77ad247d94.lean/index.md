# Verification target: GRWTSK.Algebra.BocksteinExtension.Variant46fa1e8db1fc2637d1848b321b89ec924213802d46a88fd966b58e77ad247d94

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8305fb2aed21b7c16a14767f8254768a0b006b1",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/BocksteinExtension/Variant46fa1e8db1fc2637d1848b321b89ec924213802d46a88fd966b58e77ad247d94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/BocksteinExtension/Variant46fa1e8db1fc2637d1848b321b89ec924213802d46a88fd966b58e77ad247d94.lean/index.md) · [Full source](../../../../mathematics/Algebra/BocksteinExtension/Variant46fa1e8db1fc2637d1848b321b89ec924213802d46a88fd966b58e77ad247d94.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8305fb2aed21b7c16a14767f8254768a0b006b1`.

Source path: `GRWTSK/Algebra/BocksteinExtension/Variant46fa1e8db1fc2637d1848b321b89ec924213802d46a88fd966b58e77ad247d94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/BocksteinExtension/Variant46fa1e8db1fc2637d1848b321b89ec924213802d46a88fd966b58e77ad247d94.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Homology.Rounding` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Exact.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BocksteinExtension](../../../../mathematics/Algebra/BocksteinExtension/Variant46fa1e8db1fc2637d1848b321b89ec924213802d46a88fd966b58e77ad247d94.lean/declarations/bocksteinextension--23e814f271fa1d3c11796e9b.md) | 24 | `declaration-track:23e814f271fa1d3c11796e9b542c5bfa4372df22cabe659b754af9486cad8699` |
| 2 | `theorem` | [bockstein_include_zero](../../../../mathematics/Algebra/BocksteinExtension/Variant46fa1e8db1fc2637d1848b321b89ec924213802d46a88fd966b58e77ad247d94.lean/declarations/bockstein-include-zero--b62a3de7c4c81e7b530a035c.md) | 47 | `result-track:b62a3de7c4c81e7b530a035c4092363b56127f7351ae99e0df217a032ba4bd60` |
| 3 | `theorem` | [difference_lifts_from_torus](../../../../mathematics/Algebra/BocksteinExtension/Variant46fa1e8db1fc2637d1848b321b89ec924213802d46a88fd966b58e77ad247d94.lean/declarations/difference-lifts-from-torus--5d3d9dda2635babd94c92a25.md) | 52 | `result-track:5d3d9dda2635babd94c92a251f8f1c891ab98c3854d8639abfb1ef3821cb95ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
