# Verification target: GRWTSK.Algebra.UniversalAlgebra.Pi.Variant1c37bb844839e95ad39853568490df0fc22db79391f6be62cfb43136f34d51f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3bbc3621cff5ebe00850ff5a9de4d39505629aed",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Pi/Variant1c37bb844839e95ad39853568490df0fc22db79391f6be62cfb43136f34d51f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant1c37bb844839e95ad39853568490df0fc22db79391f6be62cfb43136f34d51f8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant1c37bb844839e95ad39853568490df0fc22db79391f6be62cfb43136f34d51f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3bbc3621cff5ebe00850ff5a9de4d39505629aed`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Pi/Variant1c37bb844839e95ad39853568490df0fc22db79391f6be62cfb43136f34d51f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Pi/Variant1c37bb844839e95ad39853568490df0fc22db79391f6be62cfb43136f34d51f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Divisibility.Prod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.BigOperators` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi.Units` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant1c37bb844839e95ad39853568490df0fc22db79391f6be62cfb43136f34d51f8.lean/declarations/instance--ab6945563ff020f4adb77c49.md) | 38 | `declaration-track:ab6945563ff020f4adb77c492f86c306fd6206c98902810b147c222fec146d7c` |
| 2 | `theorem` | [iff_map_piEvalRingHom](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant1c37bb844839e95ad39853568490df0fc22db79391f6be62cfb43136f34d51f8.lean/declarations/iff-map-pievalringhom--723b180973e405d98e4d3a99.md) | 50 | `result-track:723b180973e405d98e4d3a9906d5e6871943865cc91963f1d1456a2ca0f7391c` |
| 3 | `lemma` | [isUnit_piRingHom_algebraMap_comp_piEvalRingHom](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant1c37bb844839e95ad39853568490df0fc22db79391f6be62cfb43136f34d51f8.lean/declarations/isunit-piringhom-algebramap-comp-pievalringhom--a131c21ef5ea642d8cc8f874.md) | 65 | `result-track:a131c21ef5ea642d8cc8f8749be38637dc18a6785f6a1953bc17236c02fdbe75` |
| 4 | `theorem` | [bijective_lift_piRingHom_algebraMap_comp_piEvalRingHom](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant1c37bb844839e95ad39853568490df0fc22db79391f6be62cfb43136f34d51f8.lean/declarations/bijective-lift-piringhom-algebramap-comp-pievalringhom--0391cfa3fae890c12bc4577f.md) | 73 | `result-track:0391cfa3fae890c12bc4577f78c2da18a3bd6f867285c0ab57c94d9c602c153c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
