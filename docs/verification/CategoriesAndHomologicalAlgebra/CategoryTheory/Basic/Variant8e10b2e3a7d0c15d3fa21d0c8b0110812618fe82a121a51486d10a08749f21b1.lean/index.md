# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant8e10b2e3a7d0c15d3fa21d0c8b0110812618fe82a121a51486d10a08749f21b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3998a97256b84f5237f7f6a151cbd6dc43b86bcb",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e10b2e3a7d0c15d3fa21d0c8b0110812618fe82a121a51486d10a08749f21b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e10b2e3a7d0c15d3fa21d0c8b0110812618fe82a121a51486d10a08749f21b1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e10b2e3a7d0c15d3fa21d0c8b0110812618fe82a121a51486d10a08749f21b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3998a97256b84f5237f7f6a151cbd6dc43b86bcb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e10b2e3a7d0c15d3fa21d0c8b0110812618fe82a121a51486d10a08749f21b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e10b2e3a7d0c15d3fa21d0c8b0110812618fe82a121a51486d10a08749f21b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.RegularMono` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Kernels` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NormalMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e10b2e3a7d0c15d3fa21d0c8b0110812618fe82a121a51486d10a08749f21b1.lean/declarations/normalmono--ec35088ac19f9bb0f2c1775a.md) | 46 | `declaration-track:ec35088ac19f9bb0f2c1775aac9376ed7ef8564f7ddbb52d647069e4ed257da9` |
| 2 | `def` | [equivalenceReflectsNormalMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e10b2e3a7d0c15d3fa21d0c8b0110812618fe82a121a51486d10a08749f21b1.lean/declarations/equivalencereflectsnormalmono--a0cfd25259b21e54a3253765.md) | 63 | `declaration-track:a0cfd25259b21e54a3253765e3a0e3b6ddd00b0bce0cd2fc5bb86104d025993c` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e10b2e3a7d0c15d3fa21d0c8b0110812618fe82a121a51486d10a08749f21b1.lean/declarations/instance--80d6d338a06f1678dc37c2d9.md) | 86 | `declaration-track:80d6d338a06f1678dc37c2d9be558fb0ce24d9440ac6013093365b07441dcb9e` |
| 4 | `def` | [NormalMono.lift'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e10b2e3a7d0c15d3fa21d0c8b0110812618fe82a121a51486d10a08749f21b1.lean/declarations/normalmono-lift--d3dc4e1104b0a9971d860ce7.md) | 95 | `declaration-track:d3dc4e1104b0a9971d860ce7797195533c69b7e7f6046d5200a1fb6f794e04b1` |
| 5 | `def` | [normalOfIsPullbackSndOfNormal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e10b2e3a7d0c15d3fa21d0c8b0110812618fe82a121a51486d10a08749f21b1.lean/declarations/normalofispullbacksndofnormal--98a8513459961d319d542f73.md) | 105 | `declaration-track:98a8513459961d319d542f736765a128936c6e2da4687554a6cef78ee15b3f10` |
| 6 | `def` | [normalOfIsPullbackFstOfNormal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e10b2e3a7d0c15d3fa21d0c8b0110812618fe82a121a51486d10a08749f21b1.lean/declarations/normalofispullbackfstofnormal--e495e886c25183761d8a7679.md) | 125 | `declaration-track:e495e886c25183761d8a76791bc367709c78e85c78e542b77a7f98162e57ea90` |
| 7 | `class` | [NormalMonoCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e10b2e3a7d0c15d3fa21d0c8b0110812618fe82a121a51486d10a08749f21b1.lean/declarations/normalmonocategory--4115f0e84c903b6644ef9aa6.md) | 136 | `declaration-track:4115f0e84c903b6644ef9aa6c52d265c18e3ed61b326fb978c8e537c88d24e9b` |
| 8 | `def` | [normalMonoOfMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e10b2e3a7d0c15d3fa21d0c8b0110812618fe82a121a51486d10a08749f21b1.lean/declarations/normalmonoofmono--1cfb899dfafa583c46145035.md) | 147 | `declaration-track:1cfb899dfafa583c46145035379d8c8f7e213797a77caaa1e11fdc5f82c8e734` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e10b2e3a7d0c15d3fa21d0c8b0110812618fe82a121a51486d10a08749f21b1.lean/declarations/instance--f1cde8e2f2cd243fe51be1e7.md) | 151 | `declaration-track:f1cde8e2f2cd243fe51be1e7b0b81598a4e768905d311e9b92101288b2976a73` |
| 10 | `class` | [NormalEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e10b2e3a7d0c15d3fa21d0c8b0110812618fe82a121a51486d10a08749f21b1.lean/declarations/normalepi--265df3da2d78123d3bda159d.md) | 165 | `declaration-track:265df3da2d78123d3bda159dce46e53c7babfa57e4fd061b3c02b7e9f1e043c6` |
| 11 | `def` | [equivalenceReflectsNormalEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e10b2e3a7d0c15d3fa21d0c8b0110812618fe82a121a51486d10a08749f21b1.lean/declarations/equivalencereflectsnormalepi--af662200993ff7a27c99adcd.md) | 182 | `declaration-track:af662200993ff7a27c99adcd5bb0b785b2e345984692c56d1c7b5918894435c6` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e10b2e3a7d0c15d3fa21d0c8b0110812618fe82a121a51486d10a08749f21b1.lean/declarations/instance--0d652ce24f081b2fd9f129ce.md) | 200 | `declaration-track:0d652ce24f081b2fd9f129ce1b387f6e9478da73c6b72ffe6ce7c959c72361a3` |
| 13 | `def` | [NormalEpi.desc'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e10b2e3a7d0c15d3fa21d0c8b0110812618fe82a121a51486d10a08749f21b1.lean/declarations/normalepi-desc--8a0bb9291e9dc113033c2c50.md) | 209 | `declaration-track:8a0bb9291e9dc113033c2c50a825f5d7d4e4ac90f0790dd34004cbabbcc15f20` |
| 14 | `def` | [normalOfIsPushoutSndOfNormal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e10b2e3a7d0c15d3fa21d0c8b0110812618fe82a121a51486d10a08749f21b1.lean/declarations/normalofispushoutsndofnormal--8d9d8c9041703cc96209aae4.md) | 219 | `declaration-track:8d9d8c9041703cc96209aae499e2e47dfc010e906a46f1400957cfb1cace3443` |
| 15 | `def` | [normalOfIsPushoutFstOfNormal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e10b2e3a7d0c15d3fa21d0c8b0110812618fe82a121a51486d10a08749f21b1.lean/declarations/normalofispushoutfstofnormal--85784fd80691d644ec706b55.md) | 239 | `declaration-track:85784fd80691d644ec706b5568c5b6662dce020d32081a4d0785aa391f614fb5` |
| 16 | `def` | [normalEpiOfNormalMonoUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e10b2e3a7d0c15d3fa21d0c8b0110812618fe82a121a51486d10a08749f21b1.lean/declarations/normalepiofnormalmonounop--a83e55184be2aa6467632ad4.md) | 252 | `declaration-track:a83e55184be2aa6467632ad4fb71522e70665642a332dad769bf0996ec57b56e` |
| 17 | `def` | [normalMonoOfNormalEpiUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e10b2e3a7d0c15d3fa21d0c8b0110812618fe82a121a51486d10a08749f21b1.lean/declarations/normalmonoofnormalepiunop--a8a5ce663ba63cc13c3dd4b7.md) | 272 | `declaration-track:a8a5ce663ba63cc13c3dd4b7b26b18034debc1da84ddc7e82804a37dadece267` |
| 18 | `class` | [NormalEpiCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e10b2e3a7d0c15d3fa21d0c8b0110812618fe82a121a51486d10a08749f21b1.lean/declarations/normalepicategory--db98cb79048747fc1b57e723.md) | 296 | `declaration-track:db98cb79048747fc1b57e723692c8c79f316352ebaedb42248eaf8e2a31a2a64` |
| 19 | `def` | [normalEpiOfEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e10b2e3a7d0c15d3fa21d0c8b0110812618fe82a121a51486d10a08749f21b1.lean/declarations/normalepiofepi--cbb6a140002701d430f2d106.md) | 307 | `declaration-track:cbb6a140002701d430f2d1066c266346772d1e1d7cb77a5c42ee5487e076b1a2` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e10b2e3a7d0c15d3fa21d0c8b0110812618fe82a121a51486d10a08749f21b1.lean/declarations/instance--efee5a2acae67201a29382c9.md) | 311 | `declaration-track:efee5a2acae67201a29382c9dcd6b36e03778deb56d5c3bba1accf92a8ddc4d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
