# Verification target: GRWTSK.Geometry.AlgebraicGeometry.UniversallyInjective.Variantf93c639cfc52826fd089f677f5f3e9632c0bd25dac879578e91e539a2be1d2b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b43fa217b2ce7d6488e670f7e2c290e1058f8756",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/UniversallyInjective/Variantf93c639cfc52826fd089f677f5f3e9632c0bd25dac879578e91e539a2be1d2b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variantf93c639cfc52826fd089f677f5f3e9632c0bd25dac879578e91e539a2be1d2b5.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variantf93c639cfc52826fd089f677f5f3e9632c0bd25dac879578e91e539a2be1d2b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b43fa217b2ce7d6488e670f7e2c290e1058f8756`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/UniversallyInjective/Variantf93c639cfc52826fd089f677f5f3e9632c0bd25dac879578e91e539a2be1d2b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/UniversallyInjective/Variantf93c639cfc52826fd089f677f5f3e9632c0bd25dac879578e91e539a2be1d2b5.lean.json)

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
| 1 | `class` | [UniversallyInjective](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variantf93c639cfc52826fd089f677f5f3e9632c0bd25dac879578e91e539a2be1d2b5.lean/declarations/universallyinjective--6560cd185f696549a41387e0.md) | 55 | `declaration-track:6560cd185f696549a41387e08a1f481ce08d5e3e5942b5be7066df23fa78b841` |
| 2 | `theorem` | [Scheme.Hom.injective](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variantf93c639cfc52826fd089f677f5f3e9632c0bd25dac879578e91e539a2be1d2b5.lean/declarations/scheme-hom-injective--a130fa2db48e811e592cc3b7.md) | 58 | `result-track:a130fa2db48e811e592cc3b7e2472c23aa01fdf83d823463d63247336fcbfcd6` |
| 3 | `theorem` | [universallyInjective_eq](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variantf93c639cfc52826fd089f677f5f3e9632c0bd25dac879578e91e539a2be1d2b5.lean/declarations/universallyinjective-eq--501f2299f9c3f825d8c59773.md) | 62 | `result-track:501f2299f9c3f825d8c597736b0c5e2132038a726ab9c0a0c1f9fa5ea71a07e6` |
| 4 | `theorem` | [universallyInjective_eq_diagonal](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variantf93c639cfc52826fd089f677f5f3e9632c0bd25dac879578e91e539a2be1d2b5.lean/declarations/universallyinjective-eq-diagonal--8ce1ff0ebd2d475280674099.md) | 67 | `result-track:8ce1ff0ebd2d4752806740993b6fb605d7229564bd2811109e738975778e9260` |
| 5 | `theorem` | [UniversallyInjective.iff_diagonal](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variantf93c639cfc52826fd089f677f5f3e9632c0bd25dac879578e91e539a2be1d2b5.lean/declarations/universallyinjective-iff-diagonal--98a0dc027dc653e528d50023.md) | 83 | `result-track:98a0dc027dc653e528d50023980aaa17c3c08af7bab925564608e4a9bc05d163` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variantf93c639cfc52826fd089f677f5f3e9632c0bd25dac879578e91e539a2be1d2b5.lean/declarations/instance--e129b5e725dcb8dfbe934a62.md) | 87 | `declaration-track:e129b5e725dcb8dfbe934a6277c24869acce8b303a4dcea20471618d90074719` |
| 7 | `theorem` | [UniversallyInjective.respectsIso](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variantf93c639cfc52826fd089f677f5f3e9632c0bd25dac879578e91e539a2be1d2b5.lean/declarations/universallyinjective-respectsiso--38b6d7d7e7d7d5683c534667.md) | 92 | `result-track:38b6d7d7e7d7d5683c534667e10eaf26ad2392bc142661cc7708c7fa877c5fd7` |
| 8 | `instance` | [UniversallyInjective.isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variantf93c639cfc52826fd089f677f5f3e9632c0bd25dac879578e91e539a2be1d2b5.lean/declarations/universallyinjective-isstableunderbasechange--b54cfc35065945e30a94ead5.md) | 96 | `declaration-track:b54cfc35065945e30a94ead5a73096c04f56b35801e5b54251339720d1570ec9` |
| 9 | `instance` | [universallyInjective_isStableUnderComposition](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variantf93c639cfc52826fd089f677f5f3e9632c0bd25dac879578e91e539a2be1d2b5.lean/declarations/universallyinjective-isstableundercomposition--faa5cbe4125aa392ef585242.md) | 100 | `declaration-track:faa5cbe4125aa392ef585242787bb1a200a6ed2d8f3a1c711819d5b4976ba47d` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variantf93c639cfc52826fd089f677f5f3e9632c0bd25dac879578e91e539a2be1d2b5.lean/declarations/instance--c329e3b25bb1279c22805f09.md) | 104 | `declaration-track:c329e3b25bb1279c22805f0931ba5105fab6fedb31642bd3477717e9a1b66ea5` |
| 11 | `instance` | [universallyInjective_isZariskiLocalAtTarget](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variantf93c639cfc52826fd089f677f5f3e9632c0bd25dac879578e91e539a2be1d2b5.lean/declarations/universallyinjective-iszariskilocalattarget--1a0909014730de0ae18b3a5e.md) | 108 | `declaration-track:1a0909014730de0ae18b3a5e8c8e5bff85ba4e1998661541d1a4b9280cffcef6` |
| 12 | `theorem` | [tfae_universallyInjective](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variantf93c639cfc52826fd089f677f5f3e9632c0bd25dac879578e91e539a2be1d2b5.lean/declarations/tfae-universallyinjective--cb30f1d27b719da42c8ffea5.md) | 115 | `result-track:cb30f1d27b719da42c8ffea5e0efc9bb2d556e5f5a2622d7ce0f4a1ed40b2f18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
