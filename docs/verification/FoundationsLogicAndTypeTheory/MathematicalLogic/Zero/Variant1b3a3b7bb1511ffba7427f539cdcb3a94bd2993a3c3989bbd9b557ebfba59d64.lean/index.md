# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Zero.Variant1b3a3b7bb1511ffba7427f539cdcb3a94bd2993a3c3989bbd9b557ebfba59d64

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "999ee742a383344864ee93f801ebc5edb65aa3cf",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Zero/Variant1b3a3b7bb1511ffba7427f539cdcb3a94bd2993a3c3989bbd9b557ebfba59d64.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Zero/Variant1b3a3b7bb1511ffba7427f539cdcb3a94bd2993a3c3989bbd9b557ebfba59d64.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Zero/Variant1b3a3b7bb1511ffba7427f539cdcb3a94bd2993a3c3989bbd9b557ebfba59d64.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `999ee742a383344864ee93f801ebc5edb65aa3cf`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Zero/Variant1b3a3b7bb1511ffba7427f539cdcb3a94bd2993a3c3989bbd9b557ebfba59d64.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Zero/Variant1b3a3b7bb1511ffba7427f539cdcb3a94bd2993a3c3989bbd9b557ebfba59d64.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.ZeroObjects` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isZero_of_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Zero/Variant1b3a3b7bb1511ffba7427f539cdcb3a94bd2993a3c3989bbd9b557ebfba59d64.lean/declarations/iszero-of-subsingleton--7c6bb85ac8d254420663972f.md) | 34 | `result-track:7c6bb85ac8d254420663972f976ef22ea765867ebd71897930a2e58352ba4921` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Zero/Variant1b3a3b7bb1511ffba7427f539cdcb3a94bd2993a3c3989bbd9b557ebfba59d64.lean/declarations/instance--ab283ed6db512ed07f9b6e91.md) | 43 | `declaration-track:ab283ed6db512ed07f9b6e91cd503230636ae049718c6392a5868934bb764a67` |
| 3 | `theorem` | [isZero_of_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Zero/Variant1b3a3b7bb1511ffba7427f539cdcb3a94bd2993a3c3989bbd9b557ebfba59d64.lean/declarations/iszero-of-subsingleton--df4b62169e6f93fef80d6f8e.md) | 51 | `result-track:df4b62169e6f93fef80d6f8e0052beb582c9f68498e74c27c39adf1de59f8485` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Zero/Variant1b3a3b7bb1511ffba7427f539cdcb3a94bd2993a3c3989bbd9b557ebfba59d64.lean/declarations/instance--a92af1a1e0042d7447d58841.md) | 60 | `declaration-track:a92af1a1e0042d7447d58841b925457c2815ee506bf5860623c0e277d2ef94ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
