# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Identities.Variant7742dd93011869ebc44f65b46ffdf1028df3347b98307a07d05d98352da93d89

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5cddbeb6f597de1ca62d839695a0a0e4c30424f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Identities/Variant7742dd93011869ebc44f65b46ffdf1028df3347b98307a07d05d98352da93d89.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Identities/Variant7742dd93011869ebc44f65b46ffdf1028df3347b98307a07d05d98352da93d89.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Identities/Variant7742dd93011869ebc44f65b46ffdf1028df3347b98307a07d05d98352da93d89.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5cddbeb6f597de1ca62d839695a0a0e4c30424f`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Identities/Variant7742dd93011869ebc44f65b46ffdf1028df3347b98307a07d05d98352da93d89.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Identities/Variant7742dd93011869ebc44f65b46ffdf1028df3347b98307a07d05d98352da93d89.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Derivative` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powAddExpansion](../../../../../mathematics/Algebra/CommutativeAlgebra/Identities/Variant7742dd93011869ebc44f65b46ffdf1028df3347b98307a07d05d98352da93d89.lean/declarations/powaddexpansion--ed58a980b4c3904acceb6fd6.md) | 35 | `declaration-track:ed58a980b4c3904acceb6fd6977ae368bf2d91ff00c18f616fe5b7d32be101ef` |
| 2 | `def` | [polyBinomAux1](../../../../../mathematics/Algebra/CommutativeAlgebra/Identities/Variant7742dd93011869ebc44f65b46ffdf1028df3347b98307a07d05d98352da93d89.lean/declarations/polybinomaux1--ff51884e85218383f0ea0ffa.md) | 51 | `declaration-track:ff51884e85218383f0ea0ffa7e0b0b650b482b4624ea95be181579d5ab34b5b2` |
| 3 | `theorem` | [poly_binom_aux2](../../../../../mathematics/Algebra/CommutativeAlgebra/Identities/Variant7742dd93011869ebc44f65b46ffdf1028df3347b98307a07d05d98352da93d89.lean/declarations/poly-binom-aux2--e0c4da7457bca36ca25de0c7.md) | 57 | `result-track:e0c4da7457bca36ca25de0c712fece738e31ccb76f296b7020f7a8157841fa15` |
| 4 | `theorem` | [poly_binom_aux3](../../../../../mathematics/Algebra/CommutativeAlgebra/Identities/Variant7742dd93011869ebc44f65b46ffdf1028df3347b98307a07d05d98352da93d89.lean/declarations/poly-binom-aux3--da958ec9119b979effe2bfc3.md) | 63 | `result-track:da958ec9119b979effe2bfc3c245659b8ba58fe49f48fa1bbaf3155e8d991938` |
| 5 | `def` | [binomExpansion](../../../../../mathematics/Algebra/CommutativeAlgebra/Identities/Variant7742dd93011869ebc44f65b46ffdf1028df3347b98307a07d05d98352da93d89.lean/declarations/binomexpansion--3c5012d47cdf1b45ee8eb85a.md) | 74 | `declaration-track:3c5012d47cdf1b45ee8eb85afd0a8b7dd23d18ca5203274be24fcfb3b71b6849` |
| 6 | `def` | [powSubPowFactor](../../../../../mathematics/Algebra/CommutativeAlgebra/Identities/Variant7742dd93011869ebc44f65b46ffdf1028df3347b98307a07d05d98352da93d89.lean/declarations/powsubpowfactor--79c430e245e4a115aae766cb.md) | 86 | `declaration-track:79c430e245e4a115aae766cbf3e727ef4f0d9418e1cb98469d15a31528ae034e` |
| 7 | `def` | [evalSubFactor](../../../../../mathematics/Algebra/CommutativeAlgebra/Identities/Variant7742dd93011869ebc44f65b46ffdf1028df3347b98307a07d05d98352da93d89.lean/declarations/evalsubfactor--d9cbdd29cb89037689ccf9c5.md) | 97 | `declaration-track:d9cbdd29cb89037689ccf9c56e0b73b268339f0fc2d94c32589975209eb3fee6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
