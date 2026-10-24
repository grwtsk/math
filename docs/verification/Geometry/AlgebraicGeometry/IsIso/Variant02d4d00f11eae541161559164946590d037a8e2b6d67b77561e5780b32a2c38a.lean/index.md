# Verification target: GRWTSK.Geometry.AlgebraicGeometry.IsIso.Variant02d4d00f11eae541161559164946590d037a8e2b6d67b77561e5780b32a2c38a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba67a9dcac9481a6df635dbce557b0a6586f4517",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/IsIso/Variant02d4d00f11eae541161559164946590d037a8e2b6d67b77561e5780b32a2c38a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/IsIso/Variant02d4d00f11eae541161559164946590d037a8e2b6d67b77561e5780b32a2c38a.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/IsIso/Variant02d4d00f11eae541161559164946590d037a8e2b6d67b77561e5780b32a2c38a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba67a9dcac9481a6df635dbce557b0a6586f4517`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/IsIso/Variant02d4d00f11eae541161559164946590d037a8e2b6d67b77561e5780b32a2c38a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/IsIso/Variant02d4d00f11eae541161559164946590d037a8e2b6d67b77561e5780b32a2c38a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.OpenImmersion` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isomorphisms_eq_isOpenImmersion_inf_surjective](../../../../../mathematics/Geometry/AlgebraicGeometry/IsIso/Variant02d4d00f11eae541161559164946590d037a8e2b6d67b77561e5780b32a2c38a.lean/declarations/isomorphisms-eq-isopenimmersion-inf-surjective--ce34ff599a70a724c3d410b4.md) | 26 | `result-track:ce34ff599a70a724c3d410b43c055fd4c3413f9155567c28e3f01d927fb955e5` |
| 2 | `lemma` | [isomorphisms_eq_stalkwise](../../../../../mathematics/Geometry/AlgebraicGeometry/IsIso/Variant02d4d00f11eae541161559164946590d037a8e2b6d67b77561e5780b32a2c38a.lean/declarations/isomorphisms-eq-stalkwise--309036282291ac51bca90467.md) | 32 | `result-track:309036282291ac51bca904676639b42686975d26f84844232ddcf096bdd2316a` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/IsIso/Variant02d4d00f11eae541161559164946590d037a8e2b6d67b77561e5780b32a2c38a.lean/declarations/instance--a1d136aeff6b01791e9bfabc.md) | 43 | `declaration-track:a1d136aeff6b01791e9bfabce5396a9c97cb2ad00b198eeabd6a1985066503c9` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/IsIso/Variant02d4d00f11eae541161559164946590d037a8e2b6d67b77561e5780b32a2c38a.lean/declarations/instance--cb794dcc97964fa30b103ca7.md) | 46 | `declaration-track:cb794dcc97964fa30b103ca72df7be885994d42bcccaccebf44fc512aaa9a16d` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/IsIso/Variant02d4d00f11eae541161559164946590d037a8e2b6d67b77561e5780b32a2c38a.lean/declarations/instance--a955a36a280c3ee23f47a145.md) | 52 | `declaration-track:a955a36a280c3ee23f47a145e4704f49a6f569521b19314afe1c98bbbd205451` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
