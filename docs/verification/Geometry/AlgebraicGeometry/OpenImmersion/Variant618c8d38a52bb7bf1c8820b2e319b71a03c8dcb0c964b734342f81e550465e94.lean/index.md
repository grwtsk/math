# Verification target: GRWTSK.Geometry.AlgebraicGeometry.OpenImmersion.Variant618c8d38a52bb7bf1c8820b2e319b71a03c8dcb0c964b734342f81e550465e94

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f830968834f481e4869066165cfdb09960620fa8",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant618c8d38a52bb7bf1c8820b2e319b71a03c8dcb0c964b734342f81e550465e94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/OpenImmersion/Variant618c8d38a52bb7bf1c8820b2e319b71a03c8dcb0c964b734342f81e550465e94.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/OpenImmersion/Variant618c8d38a52bb7bf1c8820b2e319b71a03c8dcb0c964b734342f81e550465e94.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f830968834f481e4869066165cfdb09960620fa8`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant618c8d38a52bb7bf1c8820b2e319b71a03c8dcb0c964b734342f81e550465e94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/OpenImmersion/Variant618c8d38a52bb7bf1c8820b2e319b71a03c8dcb0c964b734342f81e550465e94.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.UnderlyingMap` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isOpenImmersion_SpecMap_iff_of_surjective](../../../../../mathematics/Geometry/AlgebraicGeometry/OpenImmersion/Variant618c8d38a52bb7bf1c8820b2e319b71a03c8dcb0c964b734342f81e550465e94.lean/declarations/isopenimmersion-specmap-iff-of-surjective--124c56749ffb7c72c718a05c.md) | 38 | `result-track:124c56749ffb7c72c718a05c09292b3c70cf67c37655857747cfa7b3cfb56660` |
| 2 | `theorem` | [isOpenImmersion_iff_stalk](../../../../../mathematics/Geometry/AlgebraicGeometry/OpenImmersion/Variant618c8d38a52bb7bf1c8820b2e319b71a03c8dcb0c964b734342f81e550465e94.lean/declarations/isopenimmersion-iff-stalk--c20bd153e6f1e99060899712.md) | 72 | `result-track:c20bd153e6f1e990608997123ea54bf3037e072cb08f16984dbd4e24f1db511d` |
| 3 | `theorem` | [isOpenImmersion_eq_inf](../../../../../mathematics/Geometry/AlgebraicGeometry/OpenImmersion/Variant618c8d38a52bb7bf1c8820b2e319b71a03c8dcb0c964b734342f81e550465e94.lean/declarations/isopenimmersion-eq-inf--f544d5a2091b7ac84d33e35c.md) | 78 | `result-track:f544d5a2091b7ac84d33e35cd3d2649abc1b5c57976e7d7e24695776524cc219` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/OpenImmersion/Variant618c8d38a52bb7bf1c8820b2e319b71a03c8dcb0c964b734342f81e550465e94.lean/declarations/instance--0155dae7ee120a13692a4cd9.md) | 85 | `declaration-track:0155dae7ee120a13692a4cd926f73ba82ef7db2393636884b2500211926dfbfd` |
| 5 | `instance` | [isOpenImmersion_isLocalAtTarget](../../../../../mathematics/Geometry/AlgebraicGeometry/OpenImmersion/Variant618c8d38a52bb7bf1c8820b2e319b71a03c8dcb0c964b734342f81e550465e94.lean/declarations/isopenimmersion-islocalattarget--77cb20c990ee917f1aa55b8c.md) | 92 | `declaration-track:77cb20c990ee917f1aa55b8c84eef9a2d26f5b0d303567fc40cb89f9608566d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
