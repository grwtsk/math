# Verification target: GRWTSK.Algebra.UniversalAlgebra.OrderDual.Varianteef5fd64b03b4ce12be0b2aa5ea53332afc10bc40da54d16cae16d6887b6c06e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b0cfbf15f80a8b70753fc42e9ba78bbba28795f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/OrderDual/Varianteef5fd64b03b4ce12be0b2aa5ea53332afc10bc40da54d16cae16d6887b6c06e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/OrderDual/Varianteef5fd64b03b4ce12be0b2aa5ea53332afc10bc40da54d16cae16d6887b6c06e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/OrderDual/Varianteef5fd64b03b4ce12be0b2aa5ea53332afc10bc40da54d16cae16d6887b6c06e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b0cfbf15f80a8b70753fc42e9ba78bbba28795f`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/OrderDual/Varianteef5fd64b03b4ce12be0b2aa5ea53332afc10bc40da54d16cae16d6887b6c06e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/OrderDual/Varianteef5fd64b03b4ce12be0b2aa5ea53332afc10bc40da54d16cae16d6887b6c06e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Synonym` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [mulLeftReflectLE](../../../../../mathematics/Algebra/UniversalAlgebra/OrderDual/Varianteef5fd64b03b4ce12be0b2aa5ea53332afc10bc40da54d16cae16d6887b6c06e.lean/declarations/mulleftreflectle--c0e82f8f48103fd3a36473a3.md) | 28 | `declaration-track:c0e82f8f48103fd3a36473a3b8a57be7e4f3ab814e8596ed4a962c7c27859ffb` |
| 2 | `instance` | [mulLeftMono](../../../../../mathematics/Algebra/UniversalAlgebra/OrderDual/Varianteef5fd64b03b4ce12be0b2aa5ea53332afc10bc40da54d16cae16d6887b6c06e.lean/declarations/mulleftmono--b77d1c889dcb95d2f4a9185f.md) | 32 | `declaration-track:b77d1c889dcb95d2f4a9185f3403e7660d9c98c064af98784ee5f700a0e3d05c` |
| 3 | `instance` | [mulRightReflectLE](../../../../../mathematics/Algebra/UniversalAlgebra/OrderDual/Varianteef5fd64b03b4ce12be0b2aa5ea53332afc10bc40da54d16cae16d6887b6c06e.lean/declarations/mulrightreflectle--147b950e0c435e9255b1f4b9.md) | 36 | `declaration-track:147b950e0c435e9255b1f4b92b3cdab7dd62f2f0c3bf4feb7b08fd17d200510b` |
| 4 | `instance` | [mulRightMono](../../../../../mathematics/Algebra/UniversalAlgebra/OrderDual/Varianteef5fd64b03b4ce12be0b2aa5ea53332afc10bc40da54d16cae16d6887b6c06e.lean/declarations/mulrightmono--e785da2c0774c22338b52456.md) | 40 | `declaration-track:e785da2c0774c22338b5245604b651602f87cd95517fe3bad8cd273db093d669` |
| 5 | `instance` | [mulLeftReflectLT](../../../../../mathematics/Algebra/UniversalAlgebra/OrderDual/Varianteef5fd64b03b4ce12be0b2aa5ea53332afc10bc40da54d16cae16d6887b6c06e.lean/declarations/mulleftreflectlt--4311a398d302827f81636c75.md) | 44 | `declaration-track:4311a398d302827f81636c75cedb1d32d89e9548e7413e843fc1a6e742206a8f` |
| 6 | `instance` | [mulLeftStrictMono](../../../../../mathematics/Algebra/UniversalAlgebra/OrderDual/Varianteef5fd64b03b4ce12be0b2aa5ea53332afc10bc40da54d16cae16d6887b6c06e.lean/declarations/mulleftstrictmono--ec344fc9f24e5c747055071f.md) | 48 | `declaration-track:ec344fc9f24e5c747055071f19504d426967e0fedb770138813fea7fa7723168` |
| 7 | `instance` | [mulRightReflectLT](../../../../../mathematics/Algebra/UniversalAlgebra/OrderDual/Varianteef5fd64b03b4ce12be0b2aa5ea53332afc10bc40da54d16cae16d6887b6c06e.lean/declarations/mulrightreflectlt--e5ee49e89685b9e3b9ab664d.md) | 52 | `declaration-track:e5ee49e89685b9e3b9ab664d68bbdfcdb5fdea09831512cfbdc8b55a99b93471` |
| 8 | `instance` | [mulRightStrictMono](../../../../../mathematics/Algebra/UniversalAlgebra/OrderDual/Varianteef5fd64b03b4ce12be0b2aa5ea53332afc10bc40da54d16cae16d6887b6c06e.lean/declarations/mulrightstrictmono--103ac0a622a883e47ab19448.md) | 56 | `declaration-track:103ac0a622a883e47ab19448a5e5023b898009ab09cdec2af451b061da051060` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
