# Verification target: GRWTSK.Algebra.UniversalAlgebra.Prod.Variant781769a4f3bbdd714c071eaeff181d9d7b1a2a38b0bda3af138f47a95888d482

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6999f04ffb4eacaea5198a29367b9a3de588711d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Prod/Variant781769a4f3bbdd714c071eaeff181d9d7b1a2a38b0bda3af138f47a95888d482.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant781769a4f3bbdd714c071eaeff181d9d7b1a2a38b0bda3af138f47a95888d482.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant781769a4f3bbdd714c071eaeff181d9d7b1a2a38b0bda3af138f47a95888d482.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6999f04ffb4eacaea5198a29367b9a3de588711d`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Prod/Variant781769a4f3bbdd714c071eaeff181d9d7b1a2a38b0bda3af138f47a95888d482.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Prod/Variant781769a4f3bbdd714c071eaeff181d9d7b1a2a38b0bda3af138f47a95888d482.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Prod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Cancel.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Canonical.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Prod.Lex` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant781769a4f3bbdd714c071eaeff181d9d7b1a2a38b0bda3af138f47a95888d482.lean/declarations/instance--21656c9657b52ea41eac98d4.md) | 20 | `declaration-track:21656c9657b52ea41eac98d4cc1127ea1643355d3a587f7bb5871e572cb6019f` |
| 2 | `instance` | [instOrderedCancelCommMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant781769a4f3bbdd714c071eaeff181d9d7b1a2a38b0bda3af138f47a95888d482.lean/declarations/instorderedcancelcommmonoid--bdfe9ac70124d42ad360f04c.md) | 24 | `declaration-track:bdfe9ac70124d42ad360f04c22fb246337ea48a80c53aecc4d9b67c63101e3de` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant781769a4f3bbdd714c071eaeff181d9d7b1a2a38b0bda3af138f47a95888d482.lean/declarations/instance--40cada505e12dbda483921e0.md) | 31 | `declaration-track:40cada505e12dbda483921e0d726ebddd8f355cd55596674e31da111379534af` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant781769a4f3bbdd714c071eaeff181d9d7b1a2a38b0bda3af138f47a95888d482.lean/declarations/instance--fe8e82d35cd8f0d316bbc9e1.md) | 39 | `declaration-track:fe8e82d35cd8f0d316bbc9e1dc8e94ad453e5d10b407534263e93ae8daa53c7a` |
| 5 | `instance` | [orderedCommMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant781769a4f3bbdd714c071eaeff181d9d7b1a2a38b0bda3af138f47a95888d482.lean/declarations/orderedcommmonoid--78493ea06fd3f6e2e350537d.md) | 48 | `declaration-track:78493ea06fd3f6e2e350537dd271408be95575ff25d2ef82ed9793cfa319b2ed` |
| 6 | `instance` | [orderedCancelCommMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant781769a4f3bbdd714c071eaeff181d9d7b1a2a38b0bda3af138f47a95888d482.lean/declarations/orderedcancelcommmonoid--9dc9c511123e23ef8b7fdacf.md) | 56 | `declaration-track:9dc9c511123e23ef8b7fdacf7b4c5e64d029f450c2151199da04a2df66a0fab3` |
| 7 | `instance` | [linearOrderedCancelCommMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant781769a4f3bbdd714c071eaeff181d9d7b1a2a38b0bda3af138f47a95888d482.lean/declarations/linearorderedcancelcommmonoid--bd85212c7a64f926415f6e20.md) | 64 | `declaration-track:bd85212c7a64f926415f6e200efc8dc167fd38d2c7106c70bfcc66b35718efc6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
