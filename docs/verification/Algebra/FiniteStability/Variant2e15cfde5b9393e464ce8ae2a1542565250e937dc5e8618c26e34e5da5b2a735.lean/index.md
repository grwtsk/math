# Verification target: GRWTSK.Algebra.FiniteStability.Variant2e15cfde5b9393e464ce8ae2a1542565250e937dc5e8618c26e34e5da5b2a735

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59c7b2b0e0823c0b6a4eedef98979688b307b91d",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FiniteStability/Variant2e15cfde5b9393e464ce8ae2a1542565250e937dc5e8618c26e34e5da5b2a735.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FiniteStability/Variant2e15cfde5b9393e464ce8ae2a1542565250e937dc5e8618c26e34e5da5b2a735.lean/index.md) · [Full source](../../../../mathematics/Algebra/FiniteStability/Variant2e15cfde5b9393e464ce8ae2a1542565250e937dc5e8618c26e34e5da5b2a735.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59c7b2b0e0823c0b6a4eedef98979688b307b91d`.

Source path: `GRWTSK/Algebra/FiniteStability/Variant2e15cfde5b9393e464ce8ae2a1542565250e937dc5e8618c26e34e5da5b2a735.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FiniteStability/Variant2e15cfde5b9393e464ce8ae2a1542565250e937dc5e8618c26e34e5da5b2a735.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct.RightExactness` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FinitePresentation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.MvPolynomial` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [baseChangeAux_surj](../../../../mathematics/Algebra/FiniteStability/Variant2e15cfde5b9393e464ce8ae2a1542565250e937dc5e8618c26e34e5da5b2a735.lean/declarations/basechangeaux-surj--08274ec2245d73105f60ca09.md) | 31 | `result-track:08274ec2245d73105f60ca0916696c4ee64b8f1fb882b96a1704fea667cd95f1` |
| 2 | `instance` | [baseChange](../../../../mathematics/Algebra/FiniteStability/Variant2e15cfde5b9393e464ce8ae2a1542565250e937dc5e8618c26e34e5da5b2a735.lean/declarations/basechange--c459da7ae02ca36fb34eb6ee.md) | 38 | `declaration-track:c459da7ae02ca36fb34eb6ee1292e6449935e5d21ca18676ca92678c5ab0082c` |
| 3 | `instance` | [baseChange](../../../../mathematics/Algebra/FiniteStability/Variant2e15cfde5b9393e464ce8ae2a1542565250e937dc5e8618c26e34e5da5b2a735.lean/declarations/basechange--c0f9c9830243538aa013273a.md) | 51 | `declaration-track:c0f9c9830243538aa013273af6eca363bba2480e960b88725c29945f00abd208` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
