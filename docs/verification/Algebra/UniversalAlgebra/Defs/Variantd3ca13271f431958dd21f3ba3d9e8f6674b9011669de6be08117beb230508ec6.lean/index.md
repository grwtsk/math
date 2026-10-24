# Verification target: GRWTSK.Algebra.UniversalAlgebra.Defs.Variantd3ca13271f431958dd21f3ba3d9e8f6674b9011669de6be08117beb230508ec6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22d738b38bd1c2c54748eb5f05509d403471789f",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Defs/Variantd3ca13271f431958dd21f3ba3d9e8f6674b9011669de6be08117beb230508ec6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variantd3ca13271f431958dd21f3ba3d9e8f6674b9011669de6be08117beb230508ec6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variantd3ca13271f431958dd21f3ba3d9e8f6674b9011669de6be08117beb230508ec6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22d738b38bd1c2c54748eb5f05509d403471789f`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Defs/Variantd3ca13271f431958dd21f3ba3d9e8f6674b9011669de6be08117beb230508ec6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Defs/Variantd3ca13271f431958dd21f3ba3d9e8f6674b9011669de6be08117beb230508ec6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Field.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Canonical` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.WithZero` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CanonicallyLinearOrderedSemifield](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variantd3ca13271f431958dd21f3ba3d9e8f6674b9011669de6be08117beb230508ec6.lean/declarations/canonicallylinearorderedsemifield--8792b1dabcf16290bd8c63a7.md) | 21 | `declaration-track:8792b1dabcf16290bd8c63a7a8db77863d54089cd263d9d8207168f1cbc53a8c` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variantd3ca13271f431958dd21f3ba3d9e8f6674b9011669de6be08117beb230508ec6.lean/declarations/instance--220fc00200a3c24c78ad151c.md) | 26 | `declaration-track:220fc00200a3c24c78ad151c790afec6a10d6926bae10172cc198e47ced74df7` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variantd3ca13271f431958dd21f3ba3d9e8f6674b9011669de6be08117beb230508ec6.lean/declarations/instance--b99d23ecf61f1e3ce4db86d5.md) | 33 | `declaration-track:b99d23ecf61f1e3ce4db86d579b8d333cd251c6592e1b5ecb01581ac4fd95404` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
