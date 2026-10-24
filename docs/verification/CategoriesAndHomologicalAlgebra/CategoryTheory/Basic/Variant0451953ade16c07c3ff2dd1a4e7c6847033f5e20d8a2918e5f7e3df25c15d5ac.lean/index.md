# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant0451953ade16c07c3ff2dd1a4e7c6847033f5e20d8a2918e5f7e3df25c15d5ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e165d2f4966e9851b5b7cbfa584941968308e6f5",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0451953ade16c07c3ff2dd1a4e7c6847033f5e20d8a2918e5f7e3df25c15d5ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0451953ade16c07c3ff2dd1a4e7c6847033f5e20d8a2918e5f7e3df25c15d5ac.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0451953ade16c07c3ff2dd1a4e7c6847033f5e20d8a2918e5f7e3df25c15d5ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e165d2f4966e9851b5b7cbfa584941968308e6f5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0451953ade16c07c3ff2dd1a4e7c6847033f5e20d8a2918e5f7e3df25c15d5ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0451953ade16c07c3ff2dd1a4e7c6847033f5e20d8a2918e5f7e3df25c15d5ac.lean.json)

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
| 1 | `class` | [NormalMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0451953ade16c07c3ff2dd1a4e7c6847033f5e20d8a2918e5f7e3df25c15d5ac.lean/declarations/normalmono--2a29af0034e99e3425c97b58.md) | 55 | `declaration-track:2a29af0034e99e3425c97b585fa8016f116ef06f18f030e46ca9540652976a82` |
| 2 | `def` | [equivalenceReflectsNormalMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0451953ade16c07c3ff2dd1a4e7c6847033f5e20d8a2918e5f7e3df25c15d5ac.lean/declarations/equivalencereflectsnormalmono--b6492916363af9834dadc0a0.md) | 68 | `declaration-track:b6492916363af9834dadc0a03384c88e599ec4a4a825ffcf574d3d7056ffd6f2` |
| 3 | `def` | [NormalMono.regularMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0451953ade16c07c3ff2dd1a4e7c6847033f5e20d8a2918e5f7e3df25c15d5ac.lean/declarations/normalmono-regularmono--140fe2f6657d233ba7251a3b.md) | 85 | `declaration-track:140fe2f6657d233ba7251a3b9c0cfc09affd380f6bfc707ed18048c9fb60f017` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0451953ade16c07c3ff2dd1a4e7c6847033f5e20d8a2918e5f7e3df25c15d5ac.lean/declarations/instance--b2d7b0721470336456178b28.md) | 91 | `declaration-track:b2d7b0721470336456178b289c500bfe06973cdaaf1fdd3fa9c75455f3c4f94a` |
| 5 | `def` | [NormalMono.lift'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0451953ade16c07c3ff2dd1a4e7c6847033f5e20d8a2918e5f7e3df25c15d5ac.lean/declarations/normalmono-lift--9baffff8940e7140b384ba0d.md) | 95 | `declaration-track:9baffff8940e7140b384ba0dd75091a9b6387f2407d068a47c4cf8dc0da8027f` |
| 6 | `def` | [normalOfIsPullbackSndOfNormal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0451953ade16c07c3ff2dd1a4e7c6847033f5e20d8a2918e5f7e3df25c15d5ac.lean/declarations/normalofispullbacksndofnormal--ba3835a9930515a3aa81521c.md) | 105 | `declaration-track:ba3835a9930515a3aa81521c392cfa10d1154f70bd4278656a6c17bb9a5ec3a2` |
| 7 | `def` | [normalOfIsPullbackFstOfNormal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0451953ade16c07c3ff2dd1a4e7c6847033f5e20d8a2918e5f7e3df25c15d5ac.lean/declarations/normalofispullbackfstofnormal--eba6c65e46c7a7841abca3f2.md) | 125 | `declaration-track:eba6c65e46c7a7841abca3f2c881e77b906d0aad05de8057469313ad45913d06` |
| 8 | `def` | [NormalMono.ofArrowIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0451953ade16c07c3ff2dd1a4e7c6847033f5e20d8a2918e5f7e3df25c15d5ac.lean/declarations/normalmono-ofarrowiso--5869f022bab58361406a5ba2.md) | 134 | `declaration-track:5869f022bab58361406a5ba22d47cfa61bf2f45fb026f1340fe6cbfc09c53190` |
| 9 | `class` | [IsNormalMonoCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0451953ade16c07c3ff2dd1a4e7c6847033f5e20d8a2918e5f7e3df25c15d5ac.lean/declarations/isnormalmonocategory--aece0c04627ba98afbe6b8ea.md) | 153 | `declaration-track:aece0c04627ba98afbe6b8ea7deeb3de1802e3bc82880794458289394cd6bf1c` |
| 10 | `def` | [normalMonoOfMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0451953ade16c07c3ff2dd1a4e7c6847033f5e20d8a2918e5f7e3df25c15d5ac.lean/declarations/normalmonoofmono--7bf5d05f7fa52e87cfa68117.md) | 163 | `declaration-track:7bf5d05f7fa52e87cfa681175d82b0943d2248a23b291815208df63e74389fda` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0451953ade16c07c3ff2dd1a4e7c6847033f5e20d8a2918e5f7e3df25c15d5ac.lean/declarations/instance--e9976dc0117b050d21086c6e.md) | 166 | `declaration-track:e9976dc0117b050d21086c6e6ab4978a96d95e0be5fcba30cbea2362d5bfe5f3` |
| 12 | `class` | [NormalEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0451953ade16c07c3ff2dd1a4e7c6847033f5e20d8a2918e5f7e3df25c15d5ac.lean/declarations/normalepi--f6d42df34745554460f1f97a.md) | 179 | `declaration-track:f6d42df34745554460f1f97a2ab4f685f4f274610628f398d94d4a65accdfa7b` |
| 13 | `def` | [equivalenceReflectsNormalEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0451953ade16c07c3ff2dd1a4e7c6847033f5e20d8a2918e5f7e3df25c15d5ac.lean/declarations/equivalencereflectsnormalepi--fb6a9432ad17abc1ee93c4ba.md) | 192 | `declaration-track:fb6a9432ad17abc1ee93c4bab8a43de9ffaa542a794e3add3fb253683d6a27a1` |
| 14 | `def` | [NormalEpi.regularEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0451953ade16c07c3ff2dd1a4e7c6847033f5e20d8a2918e5f7e3df25c15d5ac.lean/declarations/normalepi-regularepi--a650878ad353305301af696f.md) | 206 | `declaration-track:a650878ad353305301af696fd1779e2b9b4786f36a86488f82ad4b903ad3991e` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0451953ade16c07c3ff2dd1a4e7c6847033f5e20d8a2918e5f7e3df25c15d5ac.lean/declarations/instance--d79f1b4175c61fc30a6e7022.md) | 212 | `declaration-track:d79f1b4175c61fc30a6e7022f7ca749d58c4507abac128db2974d5267508965c` |
| 16 | `def` | [NormalEpi.desc'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0451953ade16c07c3ff2dd1a4e7c6847033f5e20d8a2918e5f7e3df25c15d5ac.lean/declarations/normalepi-desc--b66f1a8c9479eadc5255d392.md) | 216 | `declaration-track:b66f1a8c9479eadc5255d392e17785daf1390b0c0f7329ba28fe439eac47aabb` |
| 17 | `def` | [normalOfIsPushoutSndOfNormal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0451953ade16c07c3ff2dd1a4e7c6847033f5e20d8a2918e5f7e3df25c15d5ac.lean/declarations/normalofispushoutsndofnormal--fc0fe9d93e2d5ea9e8784ca2.md) | 226 | `declaration-track:fc0fe9d93e2d5ea9e8784ca24c8e51a42999a890491bfe869e7ed6b570017a8b` |
| 18 | `def` | [normalOfIsPushoutFstOfNormal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0451953ade16c07c3ff2dd1a4e7c6847033f5e20d8a2918e5f7e3df25c15d5ac.lean/declarations/normalofispushoutfstofnormal--cbf49a229bfee93328ad1a31.md) | 246 | `declaration-track:cbf49a229bfee93328ad1a31fb23860866dea37ea0b9faa35ccf9a107863ae4e` |
| 19 | `def` | [NormalEpi.ofArrowIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0451953ade16c07c3ff2dd1a4e7c6847033f5e20d8a2918e5f7e3df25c15d5ac.lean/declarations/normalepi-ofarrowiso--ed99b148c51dabf533fed1bc.md) | 261 | `declaration-track:ed99b148c51dabf533fed1bc14c80f62e38b9a03335a4dfc2e78b219c46bc804` |
| 20 | `def` | [normalEpiOfNormalMonoUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0451953ade16c07c3ff2dd1a4e7c6847033f5e20d8a2918e5f7e3df25c15d5ac.lean/declarations/normalepiofnormalmonounop--f43766f488f880a941f7e8db.md) | 279 | `declaration-track:f43766f488f880a941f7e8db9e35efad790ba4d3cbefc378ed74b45bbca98bc9` |
| 21 | `def` | [normalMonoOfNormalEpiUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0451953ade16c07c3ff2dd1a4e7c6847033f5e20d8a2918e5f7e3df25c15d5ac.lean/declarations/normalmonoofnormalepiunop--d508397312c7fbf5304249aa.md) | 299 | `declaration-track:d508397312c7fbf5304249aa9608e51ba2d6223cec004323007246a8297054a8` |
| 22 | `class` | [IsNormalEpiCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0451953ade16c07c3ff2dd1a4e7c6847033f5e20d8a2918e5f7e3df25c15d5ac.lean/declarations/isnormalepicategory--3d2d5c1fa78189107edc0d74.md) | 321 | `declaration-track:3d2d5c1fa78189107edc0d74df7f30bdff34b85998318f64662ed1ddb5af5f9c` |
| 23 | `def` | [normalEpiOfEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0451953ade16c07c3ff2dd1a4e7c6847033f5e20d8a2918e5f7e3df25c15d5ac.lean/declarations/normalepiofepi--2cde5fe0ce96afa47f2bbb00.md) | 331 | `declaration-track:2cde5fe0ce96afa47f2bbb00fbd5e56a676aba83b5d73ba0b06019a282c016a8` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0451953ade16c07c3ff2dd1a4e7c6847033f5e20d8a2918e5f7e3df25c15d5ac.lean/declarations/instance--fb134c9bf55ab88fc7453ee6.md) | 334 | `declaration-track:fb134c9bf55ab88fc7453ee6923a6b859e28ff2e26d5ac8a149c9a3beb9a2108` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
