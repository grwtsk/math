# Verification target: GRWTSK.Algebra.UniversalAlgebra.CartanSubalgebra.Variantd1e271f2d121d352fbb6c18c42320ba3b7f9af6f560c7d37904a81a3798dc58c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2cb41ca55dee11313241325ad5cf0762af75212",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/CartanSubalgebra/Variantd1e271f2d121d352fbb6c18c42320ba3b7f9af6f560c7d37904a81a3798dc58c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variantd1e271f2d121d352fbb6c18c42320ba3b7f9af6f560c7d37904a81a3798dc58c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variantd1e271f2d121d352fbb6c18c42320ba3b7f9af6f560c7d37904a81a3798dc58c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2cb41ca55dee11313241325ad5cf0762af75212`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/CartanSubalgebra/Variantd1e271f2d121d352fbb6c18c42320ba3b7f9af6f560c7d37904a81a3798dc58c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/CartanSubalgebra/Variantd1e271f2d121d352fbb6c18c42320ba3b7f9af6f560c7d37904a81a3798dc58c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Nilpotent` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Normalizer` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LieSubmodule.IsUcsLimit](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variantd1e271f2d121d352fbb6c18c42320ba3b7f9af6f560c7d37904a81a3798dc58c.lean/declarations/liesubmodule-isucslimit--89f86219c2b7d32be89c8f1a.md) | 45 | `declaration-track:89f86219c2b7d32be89c8f1a5fb14e70e045a6ca5adb34cff817dd8ac2868676` |
| 2 | `class` | [IsCartanSubalgebra](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variantd1e271f2d121d352fbb6c18c42320ba3b7f9af6f560c7d37904a81a3798dc58c.lean/declarations/iscartansubalgebra--c2141a0b426724e4f6741e4b.md) | 54 | `declaration-track:c2141a0b426724e4f6741e4b4e2ac9461a9eae29497272b6e31008cba509634f` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variantd1e271f2d121d352fbb6c18c42320ba3b7f9af6f560c7d37904a81a3798dc58c.lean/declarations/instance--e8a6e0b19c41bd0dd77e6af0.md) | 58 | `declaration-track:e8a6e0b19c41bd0dd77e6af04c9fab96b26e9ade1f82d2efa806b4adebaeac7c` |
| 4 | `theorem` | [normalizer_eq_self_of_isCartanSubalgebra](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variantd1e271f2d121d352fbb6c18c42320ba3b7f9af6f560c7d37904a81a3798dc58c.lean/declarations/normalizer-eq-self-of-iscartansubalgebra--e16895227ffa16c8149fef76.md) | 62 | `result-track:e16895227ffa16c8149fef7667bf88b43222c3706b36ca53f91fbdd18bafabc3` |
| 5 | `theorem` | [ucs_eq_self_of_isCartanSubalgebra](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variantd1e271f2d121d352fbb6c18c42320ba3b7f9af6f560c7d37904a81a3798dc58c.lean/declarations/ucs-eq-self-of-iscartansubalgebra--445875b86c1c9de87c2817e4.md) | 68 | `result-track:445875b86c1c9de87c2817e439c8ff2134a86a125682f9f2d0a6abbb99c14ee5` |
| 6 | `theorem` | [isCartanSubalgebra_iff_isUcsLimit](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variantd1e271f2d121d352fbb6c18c42320ba3b7f9af6f560c7d37904a81a3798dc58c.lean/declarations/iscartansubalgebra-iff-isucslimit--2162d7e1492f19d0d064821a.md) | 74 | `result-track:2162d7e1492f19d0d064821a979296e1919d0797c13543fbc362907efba33711` |
| 7 | `lemma` | [ne_bot_of_isCartanSubalgebra](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variantd1e271f2d121d352fbb6c18c42320ba3b7f9af6f560c7d37904a81a3798dc58c.lean/declarations/ne-bot-of-iscartansubalgebra--3480d716485661874530793a.md) | 101 | `result-track:3480d716485661874530793a1e1893c3c1ec0fbf42bb0a78b9ac2fdd58b54ba3` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variantd1e271f2d121d352fbb6c18c42320ba3b7f9af6f560c7d37904a81a3798dc58c.lean/declarations/instance--3a1975992826206ccba89362.md) | 108 | `declaration-track:3a1975992826206ccba89362357f476db20259a12bbbee95902837ddf31ebbf5` |
| 9 | `theorem` | [LieIdeal.normalizer_eq_top](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variantd1e271f2d121d352fbb6c18c42320ba3b7f9af6f560c7d37904a81a3798dc58c.lean/declarations/lieideal-normalizer-eq-top--0cb350224f1f6dec9abdcb92.md) | 118 | `result-track:0cb350224f1f6dec9abdcb92769d3069bcb68cb9199ac91cbdab706273892b6c` |
| 10 | `instance` | [LieAlgebra.top_isCartanSubalgebra_of_nilpotent](../../../../../mathematics/Algebra/UniversalAlgebra/CartanSubalgebra/Variantd1e271f2d121d352fbb6c18c42320ba3b7f9af6f560c7d37904a81a3798dc58c.lean/declarations/liealgebra-top-iscartansubalgebra-of-nilpotent--d9f58304682ce434cd19a16a.md) | 127 | `declaration-track:d9f58304682ce434cd19a16ad072e712d67ff4b7da04cb57029e5c4f199bc95a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
