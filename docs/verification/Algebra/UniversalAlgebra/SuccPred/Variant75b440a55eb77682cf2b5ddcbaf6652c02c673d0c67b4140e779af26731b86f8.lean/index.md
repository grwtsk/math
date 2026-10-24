# Verification target: GRWTSK.Algebra.UniversalAlgebra.SuccPred.Variant75b440a55eb77682cf2b5ddcbaf6652c02c673d0c67b4140e779af26731b86f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd8ad432fec3b82534db456c88dd3a254733880f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/SuccPred/Variant75b440a55eb77682cf2b5ddcbaf6652c02c673d0c67b4140e779af26731b86f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant75b440a55eb77682cf2b5ddcbaf6652c02c673d0c67b4140e779af26731b86f8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant75b440a55eb77682cf2b5ddcbaf6652c02c673d0c67b4140e779af26731b86f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd8ad432fec3b82534db456c88dd3a254733880f`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/SuccPred/Variant75b440a55eb77682cf2b5ddcbaf6652c02c673d0c67b4140e779af26731b86f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/SuccPred/Variant75b440a55eb77682cf2b5ddcbaf6652c02c673d0c67b4140e779af26731b86f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Int` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.SuccPred` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [instSuccOrder](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant75b440a55eb77682cf2b5ddcbaf6652c02c673d0c67b4140e779af26731b86f8.lean/declarations/instsuccorder--c8a251b358e1da7615f80d2a.md) | 21 | `declaration-track:c8a251b358e1da7615f80d2aab75fcf069bbfbe2ac0bfac46c00c9efb67e7440` |
| 2 | `instance` | [instSuccAddOrder](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant75b440a55eb77682cf2b5ddcbaf6652c02c673d0c67b4140e779af26731b86f8.lean/declarations/instsuccaddorder--8e9647ed2511e275775bbf55.md) | 24 | `declaration-track:8e9647ed2511e275775bbf556faba34e6ca7d2fb65f6008f98d84c862278bea2` |
| 3 | `abbrev` | [instPredOrder](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant75b440a55eb77682cf2b5ddcbaf6652c02c673d0c67b4140e779af26731b86f8.lean/declarations/instpredorder--aa0f32adbacfb260ff9eb52c.md) | 27 | `declaration-track:aa0f32adbacfb260ff9eb52c7d57335773a67281e0a8f954bff39f674124ea46` |
| 4 | `instance` | [instPredSubOrder](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant75b440a55eb77682cf2b5ddcbaf6652c02c673d0c67b4140e779af26731b86f8.lean/declarations/instpredsuborder--c6042667db4876606bfb1014.md) | 33 | `declaration-track:c6042667db4876606bfb1014865c60391926726717f91582b59a542ccc563ca8` |
| 5 | `theorem` | [succ_eq_succ](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant75b440a55eb77682cf2b5ddcbaf6652c02c673d0c67b4140e779af26731b86f8.lean/declarations/succ-eq-succ--2d2e839d8a2881677df5c207.md) | 36 | `result-track:2d2e839d8a2881677df5c207d577571de2abf71bca8ff7a0666d16028f5a8af2` |
| 6 | `theorem` | [pred_eq_pred](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant75b440a55eb77682cf2b5ddcbaf6652c02c673d0c67b4140e779af26731b86f8.lean/declarations/pred-eq-pred--1697a553acf05f637d4d0159.md) | 40 | `result-track:1697a553acf05f637d4d01592d4653827c5e7e14817b9cc712bf24cb251850e5` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant75b440a55eb77682cf2b5ddcbaf6652c02c673d0c67b4140e779af26731b86f8.lean/declarations/instance--4a11cd768026ec6842f0b558.md) | 43 | `declaration-track:4a11cd768026ec6842f0b558a7c78581d21003984e256adb593d445e0afdf694` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant75b440a55eb77682cf2b5ddcbaf6652c02c673d0c67b4140e779af26731b86f8.lean/declarations/instance--8b7af9c54769a7a54dd4b773.md) | 47 | `declaration-track:8b7af9c54769a7a54dd4b7737d7d10d645cda506d7c8a267c69bcfb1640587d7` |
| 9 | `theorem` | [natCast_covBy](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant75b440a55eb77682cf2b5ddcbaf6652c02c673d0c67b4140e779af26731b86f8.lean/declarations/natcast-covby--59f11c6f82c36a29062fd559.md) | 55 | `result-track:59f11c6f82c36a29062fd5591a92b63317e1c5620d489ac14b9e63b447cb2878` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
