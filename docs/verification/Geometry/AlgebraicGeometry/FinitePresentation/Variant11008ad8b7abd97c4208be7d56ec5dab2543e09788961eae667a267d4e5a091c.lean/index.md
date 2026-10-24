# Verification target: GRWTSK.Geometry.AlgebraicGeometry.FinitePresentation.Variant11008ad8b7abd97c4208be7d56ec5dab2543e09788961eae667a267d4e5a091c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "472d80f4edc71f7d011ca0e3e6dcd116f729c5c9",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/FinitePresentation/Variant11008ad8b7abd97c4208be7d56ec5dab2543e09788961eae667a267d4e5a091c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Variant11008ad8b7abd97c4208be7d56ec5dab2543e09788961eae667a267d4e5a091c.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Variant11008ad8b7abd97c4208be7d56ec5dab2543e09788961eae667a267d4e5a091c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `472d80f4edc71f7d011ca0e3e6dcd116f729c5c9`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/FinitePresentation/Variant11008ad8b7abd97c4208be7d56ec5dab2543e09788961eae667a267d4e5a091c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/FinitePresentation/Variant11008ad8b7abd97c4208be7d56ec5dab2543e09788961eae667a267d4e5a091c.lean.json)

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
| 1 | `class` | [LocallyOfFinitePresentation](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Variant11008ad8b7abd97c4208be7d56ec5dab2543e09788961eae667a267d4e5a091c.lean/declarations/locallyoffinitepresentation--4573de380aed7899437e41a5.md) | 53 | `declaration-track:4573de380aed7899437e41a57d2f4a49105a38d25577e26492bb80976d3be298` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Variant11008ad8b7abd97c4208be7d56ec5dab2543e09788961eae667a267d4e5a091c.lean/declarations/instance--35cf25df9747319d28331208.md) | 60 | `declaration-track:35cf25df9747319d28331208c774305535a27d696663abe72eedd2157834047c` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Variant11008ad8b7abd97c4208be7d56ec5dab2543e09788961eae667a267d4e5a091c.lean/declarations/instance--9e25d683240fb8d28d1c8960.md) | 66 | `declaration-track:9e25d683240fb8d28d1c89606943cfee458872161c0410479e5074cec588cae4` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Variant11008ad8b7abd97c4208be7d56ec5dab2543e09788961eae667a267d4e5a091c.lean/declarations/instance--13c3fbc8abbb1f9f1a14d225.md) | 71 | `declaration-track:13c3fbc8abbb1f9f1a14d22582923df74cdbbd934bc168dbdace256e65a03b46` |
| 5 | `lemma` | [LocallyOfFinitePresentation.SpecMap_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Variant11008ad8b7abd97c4208be7d56ec5dab2543e09788961eae667a267d4e5a091c.lean/declarations/locallyoffinitepresentation-specmap-iff--e718a03d361b5a1114bee5a1.md) | 75 | `result-track:e718a03d361b5a1114bee5a1b2608dfbc27f7a296e80e769fd3db8a456821cf4` |
| 6 | `lemma` | [Scheme.Hom.finitePresentation_appTop](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Variant11008ad8b7abd97c4208be7d56ec5dab2543e09788961eae667a267d4e5a091c.lean/declarations/scheme-hom-finitepresentation-apptop--06952950fbf4d2ffd178aaf8.md) | 79 | `result-track:06952950fbf4d2ffd178aaf8036e066b89cad54d76e0d9015d8c9044edbbe8c4` |
| 7 | `instance` | [locallyOfFinitePresentation_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Variant11008ad8b7abd97c4208be7d56ec5dab2543e09788961eae667a267d4e5a091c.lean/declarations/locallyoffinitepresentation-comp--4b9ec2352a143109ccfcf168.md) | 84 | `declaration-track:4b9ec2352a143109ccfcf168ba24051a566602aaaff8e2cfdc471a82d2adcc21` |
| 8 | `instance` | [locallyOfFinitePresentation_isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Variant11008ad8b7abd97c4208be7d56ec5dab2543e09788961eae667a267d4e5a091c.lean/declarations/locallyoffinitepresentation-isstableunderbasechange--a023284e684a26a330fd73ef.md) | 89 | `declaration-track:a023284e684a26a330fd73ef3c63cc2e0cd8c7720a3e8d88eda427447d3a0637` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Variant11008ad8b7abd97c4208be7d56ec5dab2543e09788961eae667a267d4e5a091c.lean/declarations/instance--25fb5572dbeddfb67f97ac1a.md) | 94 | `declaration-track:25fb5572dbeddfb67f97ac1ac48ce26e21c43405e4f32ba65a722760095e3d34` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Variant11008ad8b7abd97c4208be7d56ec5dab2543e09788961eae667a267d4e5a091c.lean/declarations/instance--1ea48d211b0b8c60d768dcf3.md) | 99 | `declaration-track:1ea48d211b0b8c60d768dcf3da0473c3bb6d89e7d68e73792c18bd6c383a642e` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Variant11008ad8b7abd97c4208be7d56ec5dab2543e09788961eae667a267d4e5a091c.lean/declarations/instance--616beda6833cdec6ded9d3df.md) | 104 | `declaration-track:616beda6833cdec6ded9d3df7b1fc74510f9af05aed3b16825e5c533f7599177` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Variant11008ad8b7abd97c4208be7d56ec5dab2543e09788961eae667a267d4e5a091c.lean/declarations/instance--ff15ee23c9d3122e2cdb8f3f.md) | 108 | `declaration-track:ff15ee23c9d3122e2cdb8f3f261276b623bb5f2d4166a3cd438a216f75c5b079` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Variant11008ad8b7abd97c4208be7d56ec5dab2543e09788961eae667a267d4e5a091c.lean/declarations/instance--e2fe9b666bb7cfe56e03c0bf.md) | 112 | `declaration-track:e2fe9b666bb7cfe56e03c0bf97e1531a136c38e2962b439a09f02c072760e2c5` |
| 14 | `lemma` | [Scheme.Hom.isLocallyConstructible_image](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Variant11008ad8b7abd97c4208be7d56ec5dab2543e09788961eae667a267d4e5a091c.lean/declarations/scheme-hom-islocallyconstructible-image--198576f7ff2f9bc68aa7acfa.md) | 125 | `result-track:198576f7ff2f9bc68aa7acfad494d07f9dd53974fde3a5cf321b2f00acc83ad3` |
| 15 | `lemma` | [Scheme.Hom.isConstructible_image](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Variant11008ad8b7abd97c4208be7d56ec5dab2543e09788961eae667a267d4e5a091c.lean/declarations/scheme-hom-isconstructible-image--33a050a7f40063bea6582e5c.md) | 169 | `result-track:33a050a7f40063bea6582e5cb7c404458e42034a9ce02ef8d26e07c1c92b2b95` |
| 16 | `lemma` | [Scheme.Hom.isConstructible_preimage](../../../../../mathematics/Geometry/AlgebraicGeometry/FinitePresentation/Variant11008ad8b7abd97c4208be7d56ec5dab2543e09788961eae667a267d4e5a091c.lean/declarations/scheme-hom-isconstructible-preimage--af8c9bc9b1c9d78aa470d8a7.md) | 176 | `result-track:af8c9bc9b1c9d78aa470d8a78d0d56c0032f8d554d934660689da88a1c514af0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
