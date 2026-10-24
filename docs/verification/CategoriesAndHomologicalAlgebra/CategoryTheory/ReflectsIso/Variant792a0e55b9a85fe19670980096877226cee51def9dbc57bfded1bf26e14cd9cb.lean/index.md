# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ReflectsIso.Variant792a0e55b9a85fe19670980096877226cee51def9dbc57bfded1bf26e14cd9cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb444e7ea35c66461021f0ee1dfdd9abbfb0b19f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflectsIso/Variant792a0e55b9a85fe19670980096877226cee51def9dbc57bfded1bf26e14cd9cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflectsIso/Variant792a0e55b9a85fe19670980096877226cee51def9dbc57bfded1bf26e14cd9cb.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflectsIso/Variant792a0e55b9a85fe19670980096877226cee51def9dbc57bfded1bf26e14cd9cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb444e7ea35c66461021f0ee1dfdd9abbfb0b19f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflectsIso/Variant792a0e55b9a85fe19670980096877226cee51def9dbc57bfded1bf26e14cd9cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflectsIso/Variant792a0e55b9a85fe19670980096877226cee51def9dbc57bfded1bf26e14cd9cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Balanced` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.EpiMono` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.FullyFaithful` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ReflectsIsomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflectsIso/Variant792a0e55b9a85fe19670980096877226cee51def9dbc57bfded1bf26e14cd9cb.lean/declarations/reflectsisomorphisms--20f4fcc991007ad287198346.md) | 41 | `declaration-track:20f4fcc991007ad287198346aaf05bb41d422569dae0932a38740a1c6e2476b5` |
| 2 | `theorem` | [isIso_of_reflects_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflectsIso/Variant792a0e55b9a85fe19670980096877226cee51def9dbc57bfded1bf26e14cd9cb.lean/declarations/isiso-of-reflects-iso--ea5c1626b84e1fe17596d771.md) | 47 | `result-track:ea5c1626b84e1fe17596d771e49cf58151ccf813942d830f2df9ad9497aa22eb` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflectsIso/Variant792a0e55b9a85fe19670980096877226cee51def9dbc57bfded1bf26e14cd9cb.lean/declarations/instance--b6b73a7a1826f52e2e8cf3df.md) | 52 | `declaration-track:b6b73a7a1826f52e2e8cf3dfb6ed868ee111f3d9ab31604f8e7f421352d423ff` |
| 4 | `instance` | [reflectsIsomorphisms_of_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflectsIso/Variant792a0e55b9a85fe19670980096877226cee51def9dbc57bfded1bf26e14cd9cb.lean/declarations/reflectsisomorphisms-of-comp--42cd52cc8f913bf4096c28ac.md) | 59 | `declaration-track:42cd52cc8f913bf4096c28ac1d259b50d89323a92f3e0e90ec6832979dac305f` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflectsIso/Variant792a0e55b9a85fe19670980096877226cee51def9dbc57bfded1bf26e14cd9cb.lean/declarations/instance--07d5ffa75f97f62b508a2bc7.md) | 66 | `declaration-track:07d5ffa75f97f62b508a2bc7d35897d70f2f4d6efe37c7f71d3dd6b134619f22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
