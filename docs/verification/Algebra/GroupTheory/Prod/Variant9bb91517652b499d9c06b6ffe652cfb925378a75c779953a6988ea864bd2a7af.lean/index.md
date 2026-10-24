# Verification target: GRWTSK.Algebra.GroupTheory.Prod.Variant9bb91517652b499d9c06b6ffe652cfb925378a75c779953a6988ea864bd2a7af

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0219baf639356e6a97c6db8c96288c3c3a502320",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Prod/Variant9bb91517652b499d9c06b6ffe652cfb925378a75c779953a6988ea864bd2a7af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant9bb91517652b499d9c06b6ffe652cfb925378a75c779953a6988ea864bd2a7af.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant9bb91517652b499d9c06b6ffe652cfb925378a75c779953a6988ea864bd2a7af.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0219baf639356e6a97c6db8c96288c3c3a502320`.

Source path: `GRWTSK/Algebra/GroupTheory/Prod/Variant9bb91517652b499d9c06b6ffe652cfb925378a75c779953a6988ea864bd2a7af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Prod/Variant9bb91517652b499d9c06b6ffe652cfb925378a75c779953a6988ea864bd2a7af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Prod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Hom` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instMulZeroClass](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant9bb91517652b499d9c06b6ffe652cfb925378a75c779953a6988ea864bd2a7af.lean/declarations/instmulzeroclass--a929d42d3b75df9989211672.md) | 35 | `declaration-track:a929d42d3b75df998921167273a622e785b971d47b856ed3acad391ece4dd8ec` |
| 2 | `instance` | [instSemigroupWithZero](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant9bb91517652b499d9c06b6ffe652cfb925378a75c779953a6988ea864bd2a7af.lean/declarations/instsemigroupwithzero--81fe7bceed6c79790fa1be4a.md) | 39 | `declaration-track:81fe7bceed6c79790fa1be4a0d87aa11d344664cd8c926368484354d1d4f9281` |
| 3 | `instance` | [instMulZeroOneClass](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant9bb91517652b499d9c06b6ffe652cfb925378a75c779953a6988ea864bd2a7af.lean/declarations/instmulzerooneclass--3b76ec0e382b337906bbba6f.md) | 44 | `declaration-track:3b76ec0e382b337906bbba6f15b6b09068a5841f4dd27b500b036858d8084e97` |
| 4 | `instance` | [instMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant9bb91517652b499d9c06b6ffe652cfb925378a75c779953a6988ea864bd2a7af.lean/declarations/instmonoidwithzero--4b0db52a46fcbea6d50927e1.md) | 49 | `declaration-track:4b0db52a46fcbea6d50927e188221ff8c966855413c3f676c0906db1c76a1694` |
| 5 | `instance` | [instCommMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant9bb91517652b499d9c06b6ffe652cfb925378a75c779953a6988ea864bd2a7af.lean/declarations/instcommmonoidwithzero--5acb50bb257d61e26f328043.md) | 53 | `declaration-track:5acb50bb257d61e26f328043e3039b7c7acca3bdb18dd798bb30a4186beae938` |
| 6 | `def` | [mulMonoidWithZeroHom](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant9bb91517652b499d9c06b6ffe652cfb925378a75c779953a6988ea864bd2a7af.lean/declarations/mulmonoidwithzerohom--eb82f363ea2f3187ccd5fb92.md) | 66 | `declaration-track:eb82f363ea2f3187ccd5fb926a2581a4356fd755561f28f58792dd3f31b9d846` |
| 7 | `def` | [divMonoidWithZeroHom](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant9bb91517652b499d9c06b6ffe652cfb925378a75c779953a6988ea864bd2a7af.lean/declarations/divmonoidwithzerohom--3e5f2b8f954fbd1bdef7ecca.md) | 72 | `declaration-track:3e5f2b8f954fbd1bdef7eccaba2d96f4727555ae0b20786a1c3d760e4900b7ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
