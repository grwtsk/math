# Verification target: GRWTSK.Algebra.UniversalAlgebra.CartanSubalgebra.Variant8036628d7ed88586487311195abbbba0b5dcfc887bedb452f5d6e410ceff0b41

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8d836af3fb5082a1bd9e039a339267d4f412fa6",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/CartanSubalgebra/Variant8036628d7ed88586487311195abbbba0b5dcfc887bedb452f5d6e410ceff0b41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variant8036628d7ed88586487311195abbbba0b5dcfc887bedb452f5d6e410ceff0b41.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variant8036628d7ed88586487311195abbbba0b5dcfc887bedb452f5d6e410ceff0b41.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8d836af3fb5082a1bd9e039a339267d4f412fa6`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/CartanSubalgebra/Variant8036628d7ed88586487311195abbbba0b5dcfc887bedb452f5d6e410ceff0b41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/CartanSubalgebra/Variant8036628d7ed88586487311195abbbba0b5dcfc887bedb452f5d6e410ceff0b41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Nilpotent` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Normalizer` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LieSubmodule.IsUcsLimit](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variant8036628d7ed88586487311195abbbba0b5dcfc887bedb452f5d6e410ceff0b41.lean/declarations/liesubmodule-isucslimit--ff32f82f3b326a71a5ca250e.md) | 40 | `declaration-track:ff32f82f3b326a71a5ca250ed75e986f8eb1bc2b21c7eccad7fdb5b98ce6e3ab` |
| 2 | `class` | [IsCartanSubalgebra](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variant8036628d7ed88586487311195abbbba0b5dcfc887bedb452f5d6e410ceff0b41.lean/declarations/iscartansubalgebra--dcb7fe1f71eb213adbb83a7b.md) | 48 | `declaration-track:dcb7fe1f71eb213adbb83a7b35d33b491d564b3ebc2924cd1946f56d77ede17e` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variant8036628d7ed88586487311195abbbba0b5dcfc887bedb452f5d6e410ceff0b41.lean/declarations/instance--628872e7c8e34cc2a6eab6a9.md) | 53 | `declaration-track:628872e7c8e34cc2a6eab6a97907f0bc213bceed59806e72f3564931660215c6` |
| 4 | `theorem` | [normalizer_eq_self_of_isCartanSubalgebra](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variant8036628d7ed88586487311195abbbba0b5dcfc887bedb452f5d6e410ceff0b41.lean/declarations/normalizer-eq-self-of-iscartansubalgebra--adb0fae9019d2c5242de0807.md) | 57 | `result-track:adb0fae9019d2c5242de0807caf879138a4cf7a7ca51339b607b6890f32a8389` |
| 5 | `theorem` | [ucs_eq_self_of_isCartanSubalgebra](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variant8036628d7ed88586487311195abbbba0b5dcfc887bedb452f5d6e410ceff0b41.lean/declarations/ucs-eq-self-of-iscartansubalgebra--ed024bb6295260eb3bd8ba1d.md) | 64 | `result-track:ed024bb6295260eb3bd8ba1df5fc27be9c6f653d73af54769e07185bd8cfa76d` |
| 6 | `theorem` | [isCartanSubalgebra_iff_isUcsLimit](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variant8036628d7ed88586487311195abbbba0b5dcfc887bedb452f5d6e410ceff0b41.lean/declarations/iscartansubalgebra-iff-isucslimit--a691df65cc74e1b1c876995d.md) | 71 | `result-track:a691df65cc74e1b1c876995da964570ec9d1b452e4236fcb068208778ca2e4c1` |
| 7 | `theorem` | [LieIdeal.normalizer_eq_top](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variant8036628d7ed88586487311195abbbba0b5dcfc887bedb452f5d6e410ceff0b41.lean/declarations/lieideal-normalizer-eq-top--f90e29225b0f4c66480136f1.md) | 99 | `result-track:f90e29225b0f4c66480136f126e97d28a62ac0b2d687699ba0bd96a2bdd44d64` |
| 8 | `instance` | [LieAlgebra.top_isCartanSubalgebra_of_nilpotent](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variant8036628d7ed88586487311195abbbba0b5dcfc887bedb452f5d6e410ceff0b41.lean/declarations/liealgebra-top-iscartansubalgebra-of-nilpotent--6e95e300457a2ba2143195b2.md) | 109 | `declaration-track:6e95e300457a2ba2143195b21db5821f1a8e94962d2d52d661b202db3e4faac7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
