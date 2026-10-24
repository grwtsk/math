# Verification target: GRWTSK.Algebra.GroupTheory.Finsupp.Variant3d712938261ea71e1f8400f7a000b5538c2a88de7ecc3be6816f518f7821d515

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c246276c6c04cf42045b2a8f4217601f5c087ed8",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Finsupp/Variant3d712938261ea71e1f8400f7a000b5538c2a88de7ecc3be6816f518f7821d515.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant3d712938261ea71e1f8400f7a000b5538c2a88de7ecc3be6816f518f7821d515.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant3d712938261ea71e1f8400f7a000b5538c2a88de7ecc3be6816f518f7821d515.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c246276c6c04cf42045b2a8f4217601f5c087ed8`.

Source path: `GRWTSK/Algebra/GroupTheory/Finsupp/Variant3d712938261ea71e1f8400f7a000b5538c2a88de7ecc3be6816f518f7821d515.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Finsupp/Variant3d712938261ea71e1f8400f7a000b5538c2a88de7ecc3be6816f518f7821d515.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Finsupp.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Lattice` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_finsupp_of_mem_closure_range](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant3d712938261ea71e1f8400f7a000b5538c2a88de7ecc3be6816f518f7821d515.lean/declarations/exists-finsupp-of-mem-closure-range--03538d7688b0ee0f9706d5bb.md) | 18 | `result-track:03538d7688b0ee0f9706d5bb36ec549e9bcb348bb08977767d29a5fbf26e15ac` |
| 2 | `theorem` | [mem_closure_range_iff](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant3d712938261ea71e1f8400f7a000b5538c2a88de7ecc3be6816f518f7821d515.lean/declarations/mem-closure-range-iff--90c8687a5051da89f77fda84.md) | 39 | `result-track:90c8687a5051da89f77fda84ef14ec1e7e1f3a266a07210b231730ac715dd04a` |
| 3 | `theorem` | [exists_of_mem_closure_range](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant3d712938261ea71e1f8400f7a000b5538c2a88de7ecc3be6816f518f7821d515.lean/declarations/exists-of-mem-closure-range--e5e81437ba17217f88633e15.md) | 46 | `result-track:e5e81437ba17217f88633e15df0287de2f98afc0c0bf9871bbbcb653ae17f3ba` |
| 4 | `theorem` | [mem_closure_range_iff_of_fintype](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant3d712938261ea71e1f8400f7a000b5538c2a88de7ecc3be6816f518f7821d515.lean/declarations/mem-closure-range-iff-of-fintype--b4c084198926e4799829e99e.md) | 53 | `result-track:b4c084198926e4799829e99e6c2e5e7eba69516002f4c4248b4c086c0de64d98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
