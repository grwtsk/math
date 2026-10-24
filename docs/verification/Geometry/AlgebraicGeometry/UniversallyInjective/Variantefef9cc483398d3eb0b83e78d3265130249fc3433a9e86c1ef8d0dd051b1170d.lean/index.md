# Verification target: GRWTSK.Geometry.AlgebraicGeometry.UniversallyInjective.Variantefef9cc483398d3eb0b83e78d3265130249fc3433a9e86c1ef8d0dd051b1170d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d2ffaed1bed9d743401777f0d7bad153c2fbc72",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/UniversallyInjective/Variantefef9cc483398d3eb0b83e78d3265130249fc3433a9e86c1ef8d0dd051b1170d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variantefef9cc483398d3eb0b83e78d3265130249fc3433a9e86c1ef8d0dd051b1170d.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variantefef9cc483398d3eb0b83e78d3265130249fc3433a9e86c1ef8d0dd051b1170d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d2ffaed1bed9d743401777f0d7bad153c2fbc72`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/UniversallyInjective/Variantefef9cc483398d3eb0b83e78d3265130249fc3433a9e86c1ef8d0dd051b1170d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/UniversallyInjective/Variantefef9cc483398d3eb0b83e78d3265130249fc3433a9e86c1ef8d0dd051b1170d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [UniversallyInjective](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variantefef9cc483398d3eb0b83e78d3265130249fc3433a9e86c1ef8d0dd051b1170d.lean/declarations/universallyinjective--bdb48b3f730fb8905e73725f.md) | 47 | `declaration-track:bdb48b3f730fb8905e73725f02f8eeb5683e9db70ee903ee97749e9f15287f70` |
| 2 | `theorem` | [Scheme.Hom.injective](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variantefef9cc483398d3eb0b83e78d3265130249fc3433a9e86c1ef8d0dd051b1170d.lean/declarations/scheme-hom-injective--aebe7e6da740e9896a6ee5df.md) | 50 | `result-track:aebe7e6da740e9896a6ee5dfe962b017d913c563252f87cee84a6da7ad1a3631` |
| 3 | `theorem` | [universallyInjective_eq](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variantefef9cc483398d3eb0b83e78d3265130249fc3433a9e86c1ef8d0dd051b1170d.lean/declarations/universallyinjective-eq--dcd807779aa300f22929ea70.md) | 54 | `result-track:dcd807779aa300f22929ea7070ecfa94b1fe1b10cf3d9b11bbe6bac9fe8ad907` |
| 4 | `theorem` | [universallyInjective_eq_diagonal](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variantefef9cc483398d3eb0b83e78d3265130249fc3433a9e86c1ef8d0dd051b1170d.lean/declarations/universallyinjective-eq-diagonal--2af72fa5e6f6fed9016b4552.md) | 59 | `result-track:2af72fa5e6f6fed9016b4552f2b69fbfbb9af80d362953c46c20d46ad888f835` |
| 5 | `theorem` | [UniversallyInjective.iff_diagonal](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variantefef9cc483398d3eb0b83e78d3265130249fc3433a9e86c1ef8d0dd051b1170d.lean/declarations/universallyinjective-iff-diagonal--eb8e5a25a9b3ea97f460baa1.md) | 75 | `result-track:eb8e5a25a9b3ea97f460baa1b808c452c4351271e220956bcaa52ba86c01b1e7` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variantefef9cc483398d3eb0b83e78d3265130249fc3433a9e86c1ef8d0dd051b1170d.lean/declarations/instance--113eded3cbc53d81a9e6ee73.md) | 79 | `declaration-track:113eded3cbc53d81a9e6ee73e2f096916035b3fd3887cd3aff1c62624f8399a3` |
| 7 | `theorem` | [UniversallyInjective.respectsIso](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variantefef9cc483398d3eb0b83e78d3265130249fc3433a9e86c1ef8d0dd051b1170d.lean/declarations/universallyinjective-respectsiso--0395a2a21f41e27c171ba102.md) | 84 | `result-track:0395a2a21f41e27c171ba102b4fdb126b99a1f70361c44e9189dc63b7e057085` |
| 8 | `instance` | [UniversallyInjective.isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variantefef9cc483398d3eb0b83e78d3265130249fc3433a9e86c1ef8d0dd051b1170d.lean/declarations/universallyinjective-isstableunderbasechange--4831d103611af187d6ff493e.md) | 88 | `declaration-track:4831d103611af187d6ff493e6283f8be4e016113086c968a6ad235cc174de832` |
| 9 | `instance` | [universallyInjective_isStableUnderComposition](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variantefef9cc483398d3eb0b83e78d3265130249fc3433a9e86c1ef8d0dd051b1170d.lean/declarations/universallyinjective-isstableundercomposition--1315a21b867a277191de0dae.md) | 92 | `declaration-track:1315a21b867a277191de0daeb2e99e304d681b4c83ea939ff7b2234b6e6a72b0` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variantefef9cc483398d3eb0b83e78d3265130249fc3433a9e86c1ef8d0dd051b1170d.lean/declarations/instance--ea49d9c527f1fb49f46f90ef.md) | 96 | `declaration-track:ea49d9c527f1fb49f46f90ef6ad050e1388be5a2bb46d3f9f7cd71646d0a66b0` |
| 11 | `instance` | [universallyInjective_isZariskiLocalAtTarget](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variantefef9cc483398d3eb0b83e78d3265130249fc3433a9e86c1ef8d0dd051b1170d.lean/declarations/universallyinjective-iszariskilocalattarget--7fa2183680dd785dd945459e.md) | 100 | `declaration-track:7fa2183680dd785dd945459ec5860fcafed52a370aaaa1555fd4ba832b615b9f` |
| 12 | `theorem` | [tfae_universallyInjective](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variantefef9cc483398d3eb0b83e78d3265130249fc3433a9e86c1ef8d0dd051b1170d.lean/declarations/tfae-universallyinjective--a140ef58cc70204ef3de5a43.md) | 107 | `result-track:a140ef58cc70204ef3de5a43c537d5bf7f23c4c0bb77bc24455b3d26f2a24d85` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
