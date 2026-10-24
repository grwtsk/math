# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Uniform.Variantcf52ac964db6ee1fab781ca27d9a70edcf334e04bf5c67570ba4cf3c873e7b59

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db86b215fbfb6aefbd719a7bb4114f39e046594d",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Uniform/Variantcf52ac964db6ee1fab781ca27d9a70edcf334e04bf5c67570ba4cf3c873e7b59.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variantcf52ac964db6ee1fab781ca27d9a70edcf334e04bf5c67570ba4cf3c873e7b59.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variantcf52ac964db6ee1fab781ca27d9a70edcf334e04bf5c67570ba4cf3c873e7b59.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db86b215fbfb6aefbd719a7bb4114f39e046594d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Uniform/Variantcf52ac964db6ee1fab781ca27d9a70edcf334e04bf5c67570ba4cf3c873e7b59.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Uniform/Variantcf52ac964db6ee1fab781ca27d9a70edcf334e04bf5c67570ba4cf3c873e7b59.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.ProbabilityMassFunction.Constructions` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [uniformOfFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variantcf52ac964db6ee1fab781ca27d9a70edcf334e04bf5c67570ba4cf3c873e7b59.lean/declarations/uniformoffinset--19533306e37bf95f2c1679b4.md) | 38 | `declaration-track:19533306e37bf95f2c1679b4d3751c42a9d7af5766a64935c22f174003fd2098` |
| 2 | `theorem` | [uniformOfFinset_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variantcf52ac964db6ee1fab781ca27d9a70edcf334e04bf5c67570ba4cf3c873e7b59.lean/declarations/uniformoffinset-apply--1518e43645e03af0e1dd9b21.md) | 51 | `result-track:1518e43645e03af0e1dd9b21a9273683ac11927dad9752b769ad6b213e5ab124` |
| 3 | `theorem` | [uniformOfFinset_apply_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variantcf52ac964db6ee1fab781ca27d9a70edcf334e04bf5c67570ba4cf3c873e7b59.lean/declarations/uniformoffinset-apply-of-mem--d8a43ffa01e0242dee89fab4.md) | 56 | `result-track:d8a43ffa01e0242dee89fab44b3e7a2253ddb9fa36e527b004953d18592160e1` |
| 4 | `theorem` | [uniformOfFinset_apply_of_not_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variantcf52ac964db6ee1fab781ca27d9a70edcf334e04bf5c67570ba4cf3c873e7b59.lean/declarations/uniformoffinset-apply-of-not-mem--73263a436f8f05e0017c65aa.md) | 60 | `result-track:73263a436f8f05e0017c65aad0e10f8e7439772c27f14484a246b967c2966609` |
| 5 | `theorem` | [support_uniformOfFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variantcf52ac964db6ee1fab781ca27d9a70edcf334e04bf5c67570ba4cf3c873e7b59.lean/declarations/support-uniformoffinset--d5b9bc115b62bd6e83008329.md) | 64 | `result-track:d5b9bc115b62bd6e830083290112b243666633ef70a66e3448eecec090847477` |
| 6 | `theorem` | [mem_support_uniformOfFinset_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variantcf52ac964db6ee1fab781ca27d9a70edcf334e04bf5c67570ba4cf3c873e7b59.lean/declarations/mem-support-uniformoffinset-iff--4824fec4d13a8d468b601514.md) | 71 | `result-track:4824fec4d13a8d468b601514c3524c6afeac3f91b71303ca87c2d4c3923d34eb` |
| 7 | `theorem` | [toOuterMeasure_uniformOfFinset_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variantcf52ac964db6ee1fab781ca27d9a70edcf334e04bf5c67570ba4cf3c873e7b59.lean/declarations/tooutermeasure-uniformoffinset-apply--114cae31e642b7390fbbe915.md) | 80 | `result-track:114cae31e642b7390fbbe915b541f66eb43935386d2a69e80d3721849030d525` |
| 8 | `theorem` | [toMeasure_uniformOfFinset_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variantcf52ac964db6ee1fab781ca27d9a70edcf334e04bf5c67570ba4cf3c873e7b59.lean/declarations/tomeasure-uniformoffinset-apply--8c724f3ee1812587094789bf.md) | 99 | `result-track:8c724f3ee1812587094789bff05fb62c67668b99018321e1fac999e00325625c` |
| 9 | `def` | [uniformOfFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variantcf52ac964db6ee1fab781ca27d9a70edcf334e04bf5c67570ba4cf3c873e7b59.lean/declarations/uniformoffintype--465f8bceaa038f1ed8354622.md) | 111 | `declaration-track:465f8bceaa038f1ed83546222ad1421ca41bd3eaf735141a08f5821a25756b12` |
| 10 | `theorem` | [uniformOfFintype_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variantcf52ac964db6ee1fab781ca27d9a70edcf334e04bf5c67570ba4cf3c873e7b59.lean/declarations/uniformoffintype-apply--6517d318546bc60b3dea43d9.md) | 118 | `result-track:6517d318546bc60b3dea43d9fe54a648e37286483b9b68476ec2fc515792582a` |
| 11 | `theorem` | [support_uniformOfFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variantcf52ac964db6ee1fab781ca27d9a70edcf334e04bf5c67570ba4cf3c873e7b59.lean/declarations/support-uniformoffintype--d89528a89900e7e853488d11.md) | 124 | `result-track:d89528a89900e7e853488d1137799ab6845d20a75932b9d89469e82657eec43b` |
| 12 | `theorem` | [mem_support_uniformOfFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variantcf52ac964db6ee1fab781ca27d9a70edcf334e04bf5c67570ba4cf3c873e7b59.lean/declarations/mem-support-uniformoffintype--2892ddb4b342cd25e9a0c8d0.md) | 129 | `result-track:2892ddb4b342cd25e9a0c8d05521c4d434b7b4efd7ec4540ef915a18a57d99b1` |
| 13 | `theorem` | [toOuterMeasure_uniformOfFintype_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variantcf52ac964db6ee1fab781ca27d9a70edcf334e04bf5c67570ba4cf3c873e7b59.lean/declarations/tooutermeasure-uniformoffintype-apply--7bf024d53760f95721ee2115.md) | 136 | `result-track:7bf024d53760f95721ee2115a7982b168aa1f2f54b6832f058cd4a07d0754d66` |
| 14 | `theorem` | [toMeasure_uniformOfFintype_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variantcf52ac964db6ee1fab781ca27d9a70edcf334e04bf5c67570ba4cf3c873e7b59.lean/declarations/tomeasure-uniformoffintype-apply--90d05f98402321e8c69e32f0.md) | 142 | `result-track:90d05f98402321e8c69e32f027b7cd8b91b181b47d49e3008d14b4726206a170` |
| 15 | `def` | [ofMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variantcf52ac964db6ee1fab781ca27d9a70edcf334e04bf5c67570ba4cf3c873e7b59.lean/declarations/ofmultiset--e5f658ccec755fbe63161167.md) | 156 | `declaration-track:e5f658ccec755fbe631611670c76f7d488eff0bff6ad4d0f5f8e1b2bf34243a8` |
| 16 | `theorem` | [ofMultiset_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variantcf52ac964db6ee1fab781ca27d9a70edcf334e04bf5c67570ba4cf3c873e7b59.lean/declarations/ofmultiset-apply--46f79d1e31523dede120d2f3.md) | 177 | `result-track:46f79d1e31523dede120d2f3be17add3f0ae604ae6918d7222c7e728979736e5` |
| 17 | `theorem` | [support_ofMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variantcf52ac964db6ee1fab781ca27d9a70edcf334e04bf5c67570ba4cf3c873e7b59.lean/declarations/support-ofmultiset--6a5c4d8706f452bf5cc55ce1.md) | 182 | `result-track:6a5c4d8706f452bf5cc55ce165c298e0673ab886af3f434082071b7fe473c7c2` |
| 18 | `theorem` | [mem_support_ofMultiset_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variantcf52ac964db6ee1fab781ca27d9a70edcf334e04bf5c67570ba4cf3c873e7b59.lean/declarations/mem-support-ofmultiset-iff--19dadd5c6907150a40a01ae4.md) | 186 | `result-track:19dadd5c6907150a40a01ae470aaf471404aca1759b65ab3cfa5938974d46bbf` |
| 19 | `theorem` | [ofMultiset_apply_of_not_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variantcf52ac964db6ee1fab781ca27d9a70edcf334e04bf5c67570ba4cf3c873e7b59.lean/declarations/ofmultiset-apply-of-not-mem--cd59b0816171d8a896d6d34b.md) | 190 | `result-track:cd59b0816171d8a896d6d34b41e07143617d4c6556b680827ba09625f60b2286` |
| 20 | `theorem` | [toOuterMeasure_ofMultiset_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variantcf52ac964db6ee1fab781ca27d9a70edcf334e04bf5c67570ba4cf3c873e7b59.lean/declarations/tooutermeasure-ofmultiset-apply--4e94f4d158aafa645e3f43fb.md) | 200 | `result-track:4e94f4d158aafa645e3f43fb89e310fd08c0a058ee93f7723d869b27c116af4e` |
| 21 | `theorem` | [toMeasure_ofMultiset_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variantcf52ac964db6ee1fab781ca27d9a70edcf334e04bf5c67570ba4cf3c873e7b59.lean/declarations/tomeasure-ofmultiset-apply--54ea7adccb7b7b41c04bf3cd.md) | 209 | `result-track:54ea7adccb7b7b41c04bf3cd613751557fa2f6cd607aefb6c2008b6df4a01374` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
