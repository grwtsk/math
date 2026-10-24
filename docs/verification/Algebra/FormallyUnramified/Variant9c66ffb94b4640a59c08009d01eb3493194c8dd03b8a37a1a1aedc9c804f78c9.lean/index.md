# Verification target: GRWTSK.Algebra.FormallyUnramified.Variant9c66ffb94b4640a59c08009d01eb3493194c8dd03b8a37a1a1aedc9c804f78c9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "735e902ec9414103241ae7c2d6d728af499678aa",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FormallyUnramified/Variant9c66ffb94b4640a59c08009d01eb3493194c8dd03b8a37a1a1aedc9c804f78c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FormallyUnramified/Variant9c66ffb94b4640a59c08009d01eb3493194c8dd03b8a37a1a1aedc9c804f78c9.lean/index.md) · [Full source](../../../../mathematics/Algebra/FormallyUnramified/Variant9c66ffb94b4640a59c08009d01eb3493194c8dd03b8a37a1a1aedc9c804f78c9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `735e902ec9414103241ae7c2d6d728af499678aa`.

Source path: `GRWTSK/Algebra/FormallyUnramified/Variant9c66ffb94b4640a59c08009d01eb3493194c8dd03b8a37a1a1aedc9c804f78c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FormallyUnramified/Variant9c66ffb94b4640a59c08009d01eb3493194c8dd03b8a37a1a1aedc9c804f78c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.Separated` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.IdempotentFG` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RingHom.Unramified` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Algebra.FormallyUnramified.isOpenImmersion_SpecMap_lmul](../../../../mathematics/Algebra/FormallyUnramified/Variant9c66ffb94b4640a59c08009d01eb3493194c8dd03b8a37a1a1aedc9c804f78c9.lean/declarations/algebra-formallyunramified-isopenimmersion-specmap-lmul--da0e9cd3f5a16dd7069822e5.md) | 39 | `declaration-track:da0e9cd3f5a16dd7069822e53af80f3a0524eeed76963e8d4ea9f86ed2d1c9e5` |
| 2 | `class` | [FormallyUnramified](../../../../mathematics/Algebra/FormallyUnramified/Variant9c66ffb94b4640a59c08009d01eb3493194c8dd03b8a37a1a1aedc9c804f78c9.lean/declarations/formallyunramified--aeda9e70717260780aec8630.md) | 54 | `declaration-track:aeda9e70717260780aec8630e93afa104fa20d1d741f2b04cffa7ea3db8a7b71` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FormallyUnramified/Variant9c66ffb94b4640a59c08009d01eb3493194c8dd03b8a37a1a1aedc9c804f78c9.lean/declarations/instance--6236fbfd1536699f8d990f6d.md) | 61 | `declaration-track:6236fbfd1536699f8d990f6d5d1fb76ac382ee725868f7480f183a31796d8483` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FormallyUnramified/Variant9c66ffb94b4640a59c08009d01eb3493194c8dd03b8a37a1a1aedc9c804f78c9.lean/declarations/instance--52836c15dc4caf85230eb353.md) | 67 | `declaration-track:52836c15dc4caf85230eb3531a2173b3c44d134faeeaf7687fc025cac0f63170` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FormallyUnramified/Variant9c66ffb94b4640a59c08009d01eb3493194c8dd03b8a37a1a1aedc9c804f78c9.lean/declarations/instance--69f8b23bbdb588bf0cff6d95.md) | 73 | `declaration-track:69f8b23bbdb588bf0cff6d95df88d9745bd2b3c19b11d3737b9fff9f4dcb54b7` |
| 6 | `theorem` | [of_comp](../../../../mathematics/Algebra/FormallyUnramified/Variant9c66ffb94b4640a59c08009d01eb3493194c8dd03b8a37a1a1aedc9c804f78c9.lean/declarations/of-comp--7f4a7aae53483b16c5ca8caa.md) | 105 | `result-track:7f4a7aae53483b16c5ca8caac07a4b6f480225af314d6953ebac35a8dccccfeb` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FormallyUnramified/Variant9c66ffb94b4640a59c08009d01eb3493194c8dd03b8a37a1a1aedc9c804f78c9.lean/declarations/instance--4cf5c0fd4e957d865e332e22.md) | 111 | `declaration-track:4cf5c0fd4e957d865e332e228de5312527e2b040ab6075f9eb931cc235661968` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FormallyUnramified/Variant9c66ffb94b4640a59c08009d01eb3493194c8dd03b8a37a1a1aedc9c804f78c9.lean/declarations/instance--da56968ce72c91d272061c2b.md) | 114 | `declaration-track:da56968ce72c91d272061c2b112140f00e67cc815f974db0e5d1b6d34afd013b` |
| 9 | `instance` | [isOpenImmersion_diagonal](../../../../mathematics/Algebra/FormallyUnramified/Variant9c66ffb94b4640a59c08009d01eb3493194c8dd03b8a37a1a1aedc9c804f78c9.lean/declarations/isopenimmersion-diagonal--46a63308cc88392067edc43a.md) | 119 | `declaration-track:46a63308cc88392067edc43aebbcef7807466c174c1494986051608d7e19c47e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
