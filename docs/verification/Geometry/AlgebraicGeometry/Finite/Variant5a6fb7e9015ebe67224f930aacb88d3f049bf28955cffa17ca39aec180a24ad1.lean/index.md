# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Finite.Variant5a6fb7e9015ebe67224f930aacb88d3f049bf28955cffa17ca39aec180a24ad1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4d254dae0e2c1bd8ceb4ce6accb356ec05d9467",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Finite/Variant5a6fb7e9015ebe67224f930aacb88d3f049bf28955cffa17ca39aec180a24ad1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant5a6fb7e9015ebe67224f930aacb88d3f049bf28955cffa17ca39aec180a24ad1.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant5a6fb7e9015ebe67224f930aacb88d3f049bf28955cffa17ca39aec180a24ad1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4d254dae0e2c1bd8ceb4ce6accb356ec05d9467`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Finite/Variant5a6fb7e9015ebe67224f930aacb88d3f049bf28955cffa17ca39aec180a24ad1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Finite/Variant5a6fb7e9015ebe67224f930aacb88d3f049bf28955cffa17ca39aec180a24ad1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.Integral` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Epi` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsFinite](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant5a6fb7e9015ebe67224f930aacb88d3f049bf28955cffa17ca39aec180a24ad1.lean/declarations/isfinite--17b96a9f1cf76f41c2688c75.md) | 34 | `declaration-track:17b96a9f1cf76f41c2688c758155c5ee6927442784a0a9c8b0956731e758f34d` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant5a6fb7e9015ebe67224f930aacb88d3f049bf28955cffa17ca39aec180a24ad1.lean/declarations/instance--0cc1b5c11943a5454f28114e.md) | 39 | `declaration-track:0cc1b5c11943a5454f28114e0c82bca822b252e6d30d2be6a502daf9135ffe5d` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant5a6fb7e9015ebe67224f930aacb88d3f049bf28955cffa17ca39aec180a24ad1.lean/declarations/instance--e4c3c3bc18b4350b6c5f09ac.md) | 46 | `declaration-track:e4c3c3bc18b4350b6c5f09acc4f0e2a0ebbaca25a21dae7b7229b11f08f000f9` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant5a6fb7e9015ebe67224f930aacb88d3f049bf28955cffa17ca39aec180a24ad1.lean/declarations/instance--2152d7d636be751e393635b7.md) | 50 | `declaration-track:2152d7d636be751e393635b7e6e0de05245911728b401187dcf63058114be5c1` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant5a6fb7e9015ebe67224f930aacb88d3f049bf28955cffa17ca39aec180a24ad1.lean/declarations/instance--39710a50d4887a8a4b39f228.md) | 54 | `declaration-track:39710a50d4887a8a4b39f228219944e7d8b50a3c9f2c5a10a7ab9e66cfebee23` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant5a6fb7e9015ebe67224f930aacb88d3f049bf28955cffa17ca39aec180a24ad1.lean/declarations/instance--9e99ee07a79947ddf86f253e.md) | 58 | `declaration-track:9e99ee07a79947ddf86f253eebc7d2e515e1df87aa7a80654c49853f898aa30e` |
| 7 | `lemma` | [SpecMap_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant5a6fb7e9015ebe67224f930aacb88d3f049bf28955cffa17ca39aec180a24ad1.lean/declarations/specmap-iff--4b36d3055f99442572e15bee.md) | 60 | `result-track:4b36d3055f99442572e15bee5b1ca47ef46fd339b47604318b281ed2a0ea8446` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant5a6fb7e9015ebe67224f930aacb88d3f049bf28955cffa17ca39aec180a24ad1.lean/declarations/instance--b0420ecc56669d356a6fa6cf.md) | 67 | `declaration-track:b0420ecc56669d356a6fa6cf873c32566ee9da81b1cf862c4da6aec0c273cc8d` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant5a6fb7e9015ebe67224f930aacb88d3f049bf28955cffa17ca39aec180a24ad1.lean/declarations/instance--67dd11013593cba180eec559.md) | 69 | `declaration-track:67dd11013593cba180eec559079082a6593959e71bd8a619cd138ed5441fef9d` |
| 10 | `lemma` | [iff_isIntegralHom_and_locallyOfFiniteType](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant5a6fb7e9015ebe67224f930aacb88d3f049bf28955cffa17ca39aec180a24ad1.lean/declarations/iff-isintegralhom-and-locallyoffinitetype--868f21d185f43baf6bf17e35.md) | 72 | `result-track:868f21d185f43baf6bf17e352af6afd0fce59587a58fba8589e8e72467f45d06` |
| 11 | `lemma` | [eq_inf](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant5a6fb7e9015ebe67224f930aacb88d3f049bf28955cffa17ca39aec180a24ad1.lean/declarations/eq-inf--918bea4a0dac49c699d37b23.md) | 85 | `result-track:918bea4a0dac49c699d37b23910ad7e350850ee8bd18849d908b96eca6ecbad2` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant5a6fb7e9015ebe67224f930aacb88d3f049bf28955cffa17ca39aec180a24ad1.lean/declarations/instance--09a998e7a5f4f633cdd11f64.md) | 89 | `declaration-track:09a998e7a5f4f633cdd11f640e250fd670805eab53b76274f5cf2cef0e341a5e` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant5a6fb7e9015ebe67224f930aacb88d3f049bf28955cffa17ca39aec180a24ad1.lean/declarations/instance--febf206a463c4adf876bf3e7.md) | 92 | `declaration-track:febf206a463c4adf876bf3e758f289aa6a13557051a02b960f92a39dd867fa82` |
| 14 | `lemma` | [_root_.AlgebraicGeometry.IsClosedImmersion.iff_isFinite_and_mono](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant5a6fb7e9015ebe67224f930aacb88d3f049bf28955cffa17ca39aec180a24ad1.lean/declarations/root-algebraicgeometry-isclosedimmersion-iff-isfinite-and-mono--3698430ffd837e61b6ad2865.md) | 95 | `result-track:3698430ffd837e61b6ad28657d13dcb2f60091b340dd0526b1543321033b40bd` |
| 15 | `lemma` | [_root_.AlgebraicGeometry.IsClosedImmersion.eq_isFinite_inf_mono](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant5a6fb7e9015ebe67224f930aacb88d3f049bf28955cffa17ca39aec180a24ad1.lean/declarations/root-algebraicgeometry-isclosedimmersion-eq-isfinite-inf-mono--e557a009574f841c42bf9361.md) | 112 | `result-track:e557a009574f841c42bf936140c05a741f44f0066d19a344e2285f2226788b2b` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant5a6fb7e9015ebe67224f930aacb88d3f049bf28955cffa17ca39aec180a24ad1.lean/declarations/instance--eea1e48b5d98697585c22ec0.md) | 116 | `declaration-track:eea1e48b5d98697585c22ec0b1f4403deac8a7d5b6a05fc1041b08968de627f7` |
| 17 | `lemma` | [isFinite_iff_locallyOfFiniteType_of_jacobsonSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant5a6fb7e9015ebe67224f930aacb88d3f049bf28955cffa17ca39aec180a24ad1.lean/declarations/isfinite-iff-locallyoffinitetype-of-jacobsonspace--d04fa34ec5c87c8c56fa0f2d.md) | 124 | `result-track:d04fa34ec5c87c8c56fa0f2d311c428a612d7b29ed8788d4f3acb85bd92f5a95` |
| 18 | `lemma` | [Scheme.Hom.closePoints_subset_preimage_closedPoints](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant5a6fb7e9015ebe67224f930aacb88d3f049bf28955cffa17ca39aec180a24ad1.lean/declarations/scheme-hom-closepoints-subset-preimage-closedpoints--0728d06c8d0a2447f5201944.md) | 155 | `result-track:0728d06c8d0a2447f5201944b908e028c87a96e3a8f4d1821e110b37ec30b253` |
| 19 | `lemma` | [isClosed_singleton_iff_locallyOfFiniteType](../../../../../mathematics/Geometry/AlgebraicGeometry/Finite/Variant5a6fb7e9015ebe67224f930aacb88d3f049bf28955cffa17ca39aec180a24ad1.lean/declarations/isclosed-singleton-iff-locallyoffinitetype--237f95aff8b87e16851f0bfa.md) | 166 | `result-track:237f95aff8b87e16851f0bfaf248f205b6fe6c282711370d369daf866156f8f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
