# Verification target: GRWTSK.Geometry.AlgebraicGeometry.OpenImmersion.Variant69ecda159471328694c78289645c4e5d67cd0c60d0761c3baad2fb279a84ec97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60ffa081d3d766e27fce6bc51cdbcc0532ccafed",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant69ecda159471328694c78289645c4e5d67cd0c60d0761c3baad2fb279a84ec97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/OpenImmersion/Variant69ecda159471328694c78289645c4e5d67cd0c60d0761c3baad2fb279a84ec97.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/OpenImmersion/Variant69ecda159471328694c78289645c4e5d67cd0c60d0761c3baad2fb279a84ec97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60ffa081d3d766e27fce6bc51cdbcc0532ccafed`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant69ecda159471328694c78289645c4e5d67cd0c60d0761c3baad2fb279a84ec97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/OpenImmersion/Variant69ecda159471328694c78289645c4e5d67cd0c60d0761c3baad2fb279a84ec97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.UnderlyingMap` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isOpenImmersion_SpecMap_iff_of_surjective](../../../../../mathematics/Geometry/AlgebraicGeometry/OpenImmersion/Variant69ecda159471328694c78289645c4e5d67cd0c60d0761c3baad2fb279a84ec97.lean/declarations/isopenimmersion-specmap-iff-of-surjective--be70e7453d0fe6f3fadba6b3.md) | 30 | `result-track:be70e7453d0fe6f3fadba6b3db6a2eade2ca0ed5aa0ddf7d669482a6ea6aca9c` |
| 2 | `theorem` | [isOpenImmersion_iff_stalk](../../../../../mathematics/Geometry/AlgebraicGeometry/OpenImmersion/Variant69ecda159471328694c78289645c4e5d67cd0c60d0761c3baad2fb279a84ec97.lean/declarations/isopenimmersion-iff-stalk--ac34016b9bb0295b23896f6b.md) | 64 | `result-track:ac34016b9bb0295b23896f6b6b7526ec95c9c507a9164aa640feccd34f7bc434` |
| 3 | `theorem` | [isOpenImmersion_eq_inf](../../../../../mathematics/Geometry/AlgebraicGeometry/OpenImmersion/Variant69ecda159471328694c78289645c4e5d67cd0c60d0761c3baad2fb279a84ec97.lean/declarations/isopenimmersion-eq-inf--1833772522c5c74a98779d03.md) | 70 | `result-track:1833772522c5c74a98779d033bbf21f78fe37e80f1828cd8962193f1e751e9d4` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/OpenImmersion/Variant69ecda159471328694c78289645c4e5d67cd0c60d0761c3baad2fb279a84ec97.lean/declarations/instance--dc4f460cdb8180cc6fa125db.md) | 77 | `declaration-track:dc4f460cdb8180cc6fa125dbd848f4c6fe2c47d68fb8ae5b852569ba9631d802` |
| 5 | `instance` | [isOpenImmersion_isLocalAtTarget](../../../../../mathematics/Geometry/AlgebraicGeometry/OpenImmersion/Variant69ecda159471328694c78289645c4e5d67cd0c60d0761c3baad2fb279a84ec97.lean/declarations/isopenimmersion-islocalattarget--7140f138e4c8f93d6347ca72.md) | 84 | `declaration-track:7140f138e4c8f93d6347ca72495f179f78f1f4efb06c182aa21e46859ac48412` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
