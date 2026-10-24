# Verification target: GRWTSK.Algebra.GroupTheory.PerfectImageIntersection.Variant59494672645b057178153c09b7662af7c352019673224cdca02f95da6c9a4d30

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e58b9bdf0e960862417a47fc0bb013cdf16e29d",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/PerfectImageIntersection/Variant59494672645b057178153c09b7662af7c352019673224cdca02f95da6c9a4d30.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/PerfectImageIntersection/Variant59494672645b057178153c09b7662af7c352019673224cdca02f95da6c9a4d30.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/PerfectImageIntersection/Variant59494672645b057178153c09b7662af7c352019673224cdca02f95da6c9a4d30.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e58b9bdf0e960862417a47fc0bb013cdf16e29d`.

Source path: `GRWTSK/Algebra/GroupTheory/PerfectImageIntersection/Variant59494672645b057178153c09b7662af7c352019673224cdca02f95da6c9a4d30.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/PerfectImageIntersection/Variant59494672645b057178153c09b7662af7c352019673224cdca02f95da6c9a4d30.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Commutator.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompleteLattice.Finset` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [perfect_image_intersection](../../../../../mathematics/Algebra/GroupTheory/PerfectImageIntersection/Variant59494672645b057178153c09b7662af7c352019673224cdca02f95da6c9a4d30.lean/declarations/perfect-image-intersection--2da30836361a7dc424cce1ca.md) | 21 | `result-track:2da30836361a7dc424cce1ca8252ae85ab1964ea15be2df773ee48c8ab2cb93d` |
| 2 | `theorem` | [perfect_image_finset_intersection](../../../../../mathematics/Algebra/GroupTheory/PerfectImageIntersection/Variant59494672645b057178153c09b7662af7c352019673224cdca02f95da6c9a4d30.lean/declarations/perfect-image-finset-intersection--84cc013ac04f20ff2364f962.md) | 32 | `result-track:84cc013ac04f20ff2364f9624f06d62914cf0c0642ce980a35b8d22721b63588` |
| 3 | `theorem` | [perfect_cyclic_source_subgroup_eq_bot](../../../../../mathematics/Algebra/GroupTheory/PerfectImageIntersection/Variant59494672645b057178153c09b7662af7c352019673224cdca02f95da6c9a4d30.lean/declarations/perfect-cyclic-source-subgroup-eq-bot--627acbcd2af00c22716389f7.md) | 54 | `result-track:627acbcd2af00c22716389f77d82fd2bcfd657e383e9c9d484123f8cd18f897a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
