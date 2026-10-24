# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Order.Variant443d93f189bba83763ae5805a51deb4800302e83c0db297db81eefd1e9a67425

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e420789b7716617c96a22a5ae7bed77e31acf41",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant443d93f189bba83763ae5805a51deb4800302e83c0db297db81eefd1e9a67425.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant443d93f189bba83763ae5805a51deb4800302e83c0db297db81eefd1e9a67425.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant443d93f189bba83763ae5805a51deb4800302e83c0db297db81eefd1e9a67425.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e420789b7716617c96a22a5ae7bed77e31acf41`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant443d93f189bba83763ae5805a51deb4800302e83c0db297db81eefd1e9a67425.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant443d93f189bba83763ae5805a51deb4800302e83c0db297db81eefd1e9a67425.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.InjSurj` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subsemiring.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FastInstance` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [toIsOrderedRing](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant443d93f189bba83763ae5805a51deb4800302e83c0db297db81eefd1e9a67425.lean/declarations/toisorderedring--8ade79e36161c00c51559e9a.md) | 19 | `declaration-track:8ade79e36161c00c51559e9af559279500075058fd9539751bd75b2fcc590c14` |
| 2 | `instance` | [toIsStrictOrderedRing](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant443d93f189bba83763ae5805a51deb4800302e83c0db297db81eefd1e9a67425.lean/declarations/toisstrictorderedring--b7a32c90f3add5dc9d9e40a6.md) | 25 | `declaration-track:b7a32c90f3add5dc9d9e40a61b0951a1b61d69c4616e449f07928811062504b1` |
| 3 | `instance` | [toIsOrderedRing](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant443d93f189bba83763ae5805a51deb4800302e83c0db297db81eefd1e9a67425.lean/declarations/toisorderedring--1ff3c3bf389c7634cd6b9678.md) | 37 | `declaration-track:1ff3c3bf389c7634cd6b9678cff52029e3e3d56a717f24712f8fb5d2fd4d47ac` |
| 4 | `instance` | [toIsStrictOrderedRing](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant443d93f189bba83763ae5805a51deb4800302e83c0db297db81eefd1e9a67425.lean/declarations/toisstrictorderedring--c4fb01ef9a3dbdd65b439085.md) | 43 | `declaration-track:c4fb01ef9a3dbdd65b439085cab47ae1f9174ea621fd227d57e4970e9a779c22` |
| 5 | `def` | [nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant443d93f189bba83763ae5805a51deb4800302e83c0db297db81eefd1e9a67425.lean/declarations/nonneg--4dbc9e259a513e5a1236125a.md) | 50 | `declaration-track:4dbc9e259a513e5a1236125ade9902c4405c09218830ab3cc1f2a4c080cd43d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
