# Verification target: GRWTSK.Algebra.GroupTheory.Submonoid.Variant4b1480b106d2f658375334b763e5e82392fde4cee207573fe13e8944aba8c7b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0eb434fe81648b5056d63f3958d7b163b87d817",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Submonoid/Variant4b1480b106d2f658375334b763e5e82392fde4cee207573fe13e8944aba8c7b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variant4b1480b106d2f658375334b763e5e82392fde4cee207573fe13e8944aba8c7b4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variant4b1480b106d2f658375334b763e5e82392fde4cee207573fe13e8944aba8c7b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0eb434fe81648b5056d63f3958d7b163b87d817`.

Source path: `GRWTSK/Algebra/GroupTheory/Submonoid/Variant4b1480b106d2f658375334b763e5e82392fde4cee207573fe13e8944aba8c7b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Submonoid/Variant4b1480b106d2f658375334b763e5e82392fde4cee207573fe13e8944aba8c7b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variant4b1480b106d2f658375334b763e5e82392fde4cee207573fe13e8944aba8c7b4.lean/declarations/instance--ed69c46c02da83565c00a19f.md) | 30 | `declaration-track:ed69c46c02da83565c00a19fdd13fb5bea05bdfcbfc3ca686f66b677441f25b1` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variant4b1480b106d2f658375334b763e5e82392fde4cee207573fe13e8944aba8c7b4.lean/declarations/instance--ddcee01b515444408021de5f.md) | 39 | `declaration-track:ddcee01b515444408021de5f2a06101734039a89a887ba1ed51917dabb8079c2` |
| 3 | `instance` | [toIsOrderedMonoid](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variant4b1480b106d2f658375334b763e5e82392fde4cee207573fe13e8944aba8c7b4.lean/declarations/toisorderedmonoid--067b0a28f08b51d517b6e4bd.md) | 52 | `declaration-track:067b0a28f08b51d517b6e4bd4bf664296731906bac0442fdffdac088b8b8ad5d` |
| 4 | `instance` | [toIsOrderedCancelMonoid](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variant4b1480b106d2f658375334b763e5e82392fde4cee207573fe13e8944aba8c7b4.lean/declarations/toisorderedcancelmonoid--3e53f89a4f83cdaf04892834.md) | 60 | `declaration-track:3e53f89a4f83cdaf04892834e9541ad10e4c0d58ba99f992826fd9d730af9684` |
| 5 | `def` | [oneLE](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variant4b1480b106d2f658375334b763e5e82392fde4cee207573fe13e8944aba8c7b4.lean/declarations/onele--b357855e334ef2e2520265a9.md) | 70 | `declaration-track:b357855e334ef2e2520265a9a131a0ec02ecc52303bdb8bf5a6ff24313ab1075` |
| 6 | `lemma` | [mem_oneLE](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variant4b1480b106d2f658375334b763e5e82392fde4cee207573fe13e8944aba8c7b4.lean/declarations/mem-onele--d0ef42adf86b6faad72f025c.md) | 77 | `result-track:d0ef42adf86b6faad72f025c455b2630bbfd0f09be7084a47aa1b090b248cc40` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
