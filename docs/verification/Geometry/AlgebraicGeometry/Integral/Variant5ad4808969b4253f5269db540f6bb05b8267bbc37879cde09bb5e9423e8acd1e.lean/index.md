# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Integral.Variant5ad4808969b4253f5269db540f6bb05b8267bbc37879cde09bb5e9423e8acd1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b6b590853f40da9582fef0bd8e9b06a2a725fb6",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Integral/Variant5ad4808969b4253f5269db540f6bb05b8267bbc37879cde09bb5e9423e8acd1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variant5ad4808969b4253f5269db540f6bb05b8267bbc37879cde09bb5e9423e8acd1e.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variant5ad4808969b4253f5269db540f6bb05b8267bbc37879cde09bb5e9423e8acd1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b6b590853f40da9582fef0bd8e9b06a2a725fb6`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Integral/Variant5ad4808969b4253f5269db540f6bb05b8267bbc37879cde09bb5e9423e8acd1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Integral/Variant5ad4808969b4253f5269db540f6bb05b8267bbc37879cde09bb5e9423e8acd1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.AffineAnd` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.ClosedImmersion` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.UniversallyClosed` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RingHom.Integral` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PolynomialAlgebra` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsIntegralHom](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variant5ad4808969b4253f5269db540f6bb05b8267bbc37879cde09bb5e9423e8acd1e.lean/declarations/isintegralhom--270180c25a4248fa645661b7.md) | 42 | `declaration-track:270180c25a4248fa645661b7a667956ee36e6e846899af767b9d190f462638dd` |
| 2 | `instance` | [hasAffineProperty](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variant5ad4808969b4253f5269db540f6bb05b8267bbc37879cde09bb5e9423e8acd1e.lean/declarations/hasaffineproperty--5403d295eb12d8cec0150d9e.md) | 47 | `declaration-track:5403d295eb12d8cec0150d9e1363d8f604c91eb67b4ad370517fef6b92b82e37` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variant5ad4808969b4253f5269db540f6bb05b8267bbc37879cde09bb5e9423e8acd1e.lean/declarations/instance--561056a3286b8f1f2a41f687.md) | 55 | `declaration-track:561056a3286b8f1f2a41f687204f6bc2a01417ec1c15b2b9165512881e3ec4be` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variant5ad4808969b4253f5269db540f6bb05b8267bbc37879cde09bb5e9423e8acd1e.lean/declarations/instance--f1984e73bf6b90b8cb8c6d46.md) | 59 | `declaration-track:f1984e73bf6b90b8cb8c6d467c95f5fef8b091326ff2415d9bad47a13b3197ed` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variant5ad4808969b4253f5269db540f6bb05b8267bbc37879cde09bb5e9423e8acd1e.lean/declarations/instance--4f66fdcd3eac7aed1544654f.md) | 63 | `declaration-track:4f66fdcd3eac7aed1544654fb38ea1fe9b011b346c62e26c64aade7d77a5d965` |
| 6 | `lemma` | [SpecMap_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variant5ad4808969b4253f5269db540f6bb05b8267bbc37879cde09bb5e9423e8acd1e.lean/declarations/specmap-iff--d50f74810a7de62345686a0b.md) | 66 | `result-track:d50f74810a7de62345686a0b125bae5d5b8694a6193057de91f7c3e9f8534777` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variant5ad4808969b4253f5269db540f6bb05b8267bbc37879cde09bb5e9423e8acd1e.lean/declarations/instance--4d6c3b0fc58f32c50055f2f7.md) | 73 | `declaration-track:4d6c3b0fc58f32c50055f2f77008141abc55ad968b82d1f561eee9d2abd05b1e` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variant5ad4808969b4253f5269db540f6bb05b8267bbc37879cde09bb5e9423e8acd1e.lean/declarations/instance--bcfc35a052afcf039a4ef5bb.md) | 75 | `declaration-track:bcfc35a052afcf039a4ef5bb8da473312e62d8ac90a6348d7ad533ecf3ebaa13` |
| 9 | `lemma` | [iff_universallyClosed_and_isAffineHom](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variant5ad4808969b4253f5269db540f6bb05b8267bbc37879cde09bb5e9423e8acd1e.lean/declarations/iff-universallyclosed-and-isaffinehom--d18d71716d081c505e573c91.md) | 97 | `result-track:d18d71716d081c505e573c9183b54c682aac123d317051335644eb724cccba0c` |
| 10 | `lemma` | [eq_universallyClosed_inf_isAffineHom](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variant5ad4808969b4253f5269db540f6bb05b8267bbc37879cde09bb5e9423e8acd1e.lean/declarations/eq-universallyclosed-inf-isaffinehom--1f7fa1e78a62eeab38c275fd.md) | 123 | `result-track:1f7fa1e78a62eeab38c275fd74f27006a71e7544a60871ddb3d0f236d6ada9d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
