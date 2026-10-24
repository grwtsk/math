# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Stalks.Variant9a6be14f6893915686f1db54991f9b17f2a7552603d7fa5c41a4d943af99abb0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4752822f1559fc8296adb1ec55b018763baa8aa",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9a6be14f6893915686f1db54991f9b17f2a7552603d7fa5c41a4d943af99abb0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9a6be14f6893915686f1db54991f9b17f2a7552603d7fa5c41a4d943af99abb0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9a6be14f6893915686f1db54991f9b17f2a7552603d7fa5c41a4d943af99abb0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4752822f1559fc8296adb1ec55b018763baa8aa`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9a6be14f6893915686f1db54991f9b17f2a7552603d7fa5c41a4d943af99abb0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9a6be14f6893915686f1db54991f9b17f2a7552603d7fa5c41a4d943af99abb0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.RingedSpace.PresheafedSpace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Final` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Stalks` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Hom.stalkMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9a6be14f6893915686f1db54991f9b17f2a7552603d7fa5c41a4d943af99abb0.lean/declarations/hom-stalkmap--3517440cc9814cf8f19bddf2.md) | 48 | `declaration-track:3517440cc9814cf8f19bddf26e70349f3c6704c19bc25d485e4a5bc4aac84a26` |
| 2 | `theorem` | [stalkMap_germ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9a6be14f6893915686f1db54991f9b17f2a7552603d7fa5c41a4d943af99abb0.lean/declarations/stalkmap-germ--8581955d7db987b60b904e92.md) | 53 | `result-track:8581955d7db987b60b904e92a90f47390ba80e76feb8dccd9d4b742967546cc7` |
| 3 | `def` | [restrictStalkIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9a6be14f6893915686f1db54991f9b17f2a7552603d7fa5c41a4d943af99abb0.lean/declarations/restrictstalkiso--b77c71b835cd09c54f8206b9.md) | 64 | `declaration-track:b77c71b835cd09c54f8206b918c01036773bb8e66b09b6997d60d85635a22862` |
| 4 | `theorem` | [restrictStalkIso_hom_eq_germ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9a6be14f6893915686f1db54991f9b17f2a7552603d7fa5c41a4d943af99abb0.lean/declarations/restrictstalkiso-hom-eq-germ--6d09f1c6fab3aff30f4c59c9.md) | 74 | `result-track:6d09f1c6fab3aff30f4c59c97cddf13a095b94fc3be209c03226ffbdbc1a7757` |
| 5 | `theorem` | [restrictStalkIso_inv_eq_germ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9a6be14f6893915686f1db54991f9b17f2a7552603d7fa5c41a4d943af99abb0.lean/declarations/restrictstalkiso-inv-eq-germ--2e0b9fadf4ca0ad1afe24958.md) | 84 | `result-track:2e0b9fadf4ca0ad1afe249585859be2d176d28fbab0cb96657c837d8fff352b4` |
| 6 | `theorem` | [restrictStalkIso_inv_eq_ofRestrict](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9a6be14f6893915686f1db54991f9b17f2a7552603d7fa5c41a4d943af99abb0.lean/declarations/restrictstalkiso-inv-eq-ofrestrict--6a743bace1ee92a703181469.md) | 91 | `result-track:6a743bace1ee92a703181469432caa441d8c63d4c590f4d311add52a00c411ec` |
| 7 | `instance` | [ofRestrict_stalkMap_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9a6be14f6893915686f1db54991f9b17f2a7552603d7fa5c41a4d943af99abb0.lean/declarations/ofrestrict-stalkmap-isiso--d32dd11bb1a0b6728298eaaf.md) | 106 | `declaration-track:d32dd11bb1a0b6728298eaaf2e481a646bf47d1bee61fa9079ef4a1ce65ffcae` |
| 8 | `theorem` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9a6be14f6893915686f1db54991f9b17f2a7552603d7fa5c41a4d943af99abb0.lean/declarations/id--56102050aa8c4dffda493e5a.md) | 116 | `result-track:56102050aa8c4dffda493e5a86f186915de1aca570bd504cad273a69acd9bb51` |
| 9 | `theorem` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9a6be14f6893915686f1db54991f9b17f2a7552603d7fa5c41a4d943af99abb0.lean/declarations/comp--11d769e595f4898d290f1920.md) | 127 | `result-track:11d769e595f4898d290f19208121c9991e15b3d5cd2783fbc31152dccaef09e4` |
| 10 | `theorem` | [congr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9a6be14f6893915686f1db54991f9b17f2a7552603d7fa5c41a4d943af99abb0.lean/declarations/congr--e60eeb2d3d7cfbbd15a8e351.md) | 142 | `result-track:e60eeb2d3d7cfbbd15a8e35191745bfe7186e3874ea7e40a084c89548e4a7242` |
| 11 | `theorem` | [congr_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9a6be14f6893915686f1db54991f9b17f2a7552603d7fa5c41a4d943af99abb0.lean/declarations/congr-hom--efcc4f4a0f48488f8ea5edd9.md) | 151 | `result-track:efcc4f4a0f48488f8ea5edd952748d417a98565c3d3d34ddd1821c1fdccd1e6d` |
| 12 | `theorem` | [congr_point](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9a6be14f6893915686f1db54991f9b17f2a7552603d7fa5c41a4d943af99abb0.lean/declarations/congr-point--29847910bce0b11ad6e2da83.md) | 157 | `result-track:29847910bce0b11ad6e2da834b40fa69096dfdfae9b619e0c071054bbd27f254` |
| 13 | `instance` | [isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9a6be14f6893915686f1db54991f9b17f2a7552603d7fa5c41a4d943af99abb0.lean/declarations/isiso--7a0cca2da6dad87c4f701b5b.md) | 164 | `declaration-track:7a0cca2da6dad87c4f701b5b1292c6b5e04eb461dfe932aa6fc320e82198cc40` |
| 14 | `def` | [stalkIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9a6be14f6893915686f1db54991f9b17f2a7552603d7fa5c41a4d943af99abb0.lean/declarations/stalkiso--0e77707246032503c10ec757.md) | 188 | `declaration-track:0e77707246032503c10ec7578dcab3e0fe8237166c11ad56be912f945902ab8f` |
| 15 | `theorem` | [stalkSpecializes_stalkMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9a6be14f6893915686f1db54991f9b17f2a7552603d7fa5c41a4d943af99abb0.lean/declarations/stalkspecializes-stalkmap--4341f76b1758285169d59fcf.md) | 194 | `result-track:4341f76b1758285169d59fcf5805675dd834f903553321bc1adf94dfc6e588ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
