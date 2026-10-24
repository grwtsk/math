# Verification target: GRWTSK.Topology.AlgebraicTopology.KanComplex.Variant5ca1f67e85c1e87b6842d59779d1d51fbeedd34fe691f05ec73fe61eb317e91e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "797e1662dea07f26821815efc9ca8c36166e92a2",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/KanComplex/Variant5ca1f67e85c1e87b6842d59779d1d51fbeedd34fe691f05ec73fe61eb317e91e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/KanComplex/Variant5ca1f67e85c1e87b6842d59779d1d51fbeedd34fe691f05ec73fe61eb317e91e.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/KanComplex/Variant5ca1f67e85c1e87b6842d59779d1d51fbeedd34fe691f05ec73fe61eb317e91e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `797e1662dea07f26821815efc9ca8c36166e92a2`.

Source path: `GRWTSK/Topology/AlgebraicTopology/KanComplex/Variant5ca1f67e85c1e87b6842d59779d1d51fbeedd34fe691f05ec73fe61eb317e91e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/KanComplex/Variant5ca1f67e85c1e87b6842d59779d1d51fbeedd34fe691f05ec73fe61eb317e91e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.ModelCategory.IsCofibrant` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.SimplicialSet.CategoryWithFibrations` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.SimplicialSet.Subcomplex` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [KanComplex](../../../../../mathematics/Topology/AlgebraicTopology/KanComplex/Variant5ca1f67e85c1e87b6842d59779d1d51fbeedd34fe691f05ec73fe61eb317e91e.lean/declarations/kancomplex--9de73fca484fdc9d40d049ea.md) | 43 | `declaration-track:9de73fca484fdc9d40d049ea65f44f227bf5affa4f4c797097b5d2603c20965b` |
| 2 | `lemma` | [KanComplex.hornFilling](../../../../../mathematics/Topology/AlgebraicTopology/KanComplex/Variant5ca1f67e85c1e87b6842d59779d1d51fbeedd34fe691f05ec73fe61eb317e91e.lean/declarations/kancomplex-hornfilling--1ce01122fb1604e08d05f1a8.md) | 48 | `result-track:1ce01122fb1604e08d05f1a846d6dee87e61b7af9bd3bc85fdea56d9727b82c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
