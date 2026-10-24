# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Stalks.Variant88faa5626f61f6e89d30eafa5e4e7294d341bc1e45156f6527c3d33eea1b6800

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e7f89ef6c7538f8d341101e0cbbd990736b14e2",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88faa5626f61f6e89d30eafa5e4e7294d341bc1e45156f6527c3d33eea1b6800.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88faa5626f61f6e89d30eafa5e4e7294d341bc1e45156f6527c3d33eea1b6800.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88faa5626f61f6e89d30eafa5e4e7294d341bc1e45156f6527c3d33eea1b6800.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e7f89ef6c7538f8d341101e0cbbd990736b14e2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88faa5626f61f6e89d30eafa5e4e7294d341bc1e45156f6527c3d33eea1b6800.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88faa5626f61f6e89d30eafa5e4e7294d341bc1e45156f6527c3d33eea1b6800.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.PresheafedSpace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Final` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Stalks` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [stalk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88faa5626f61f6e89d30eafa5e4e7294d341bc1e45156f6527c3d33eea1b6800.lean/declarations/stalk--0b62def74fd2bfbb86fca080.md) | 50 | `declaration-track:0b62def74fd2bfbb86fca080df8488cac88ef7ea8a569d9b39a188e555a2ec40` |
| 2 | `def` | [stalkMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88faa5626f61f6e89d30eafa5e4e7294d341bc1e45156f6527c3d33eea1b6800.lean/declarations/stalkmap--0c613f23eb6bbfafdab20ce4.md) | 57 | `declaration-track:0c613f23eb6bbfafdab20ce4d0fb53edb443171c3afe209d7daf6d95c951bf76` |
| 3 | `theorem` | [stalkMap_germ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88faa5626f61f6e89d30eafa5e4e7294d341bc1e45156f6527c3d33eea1b6800.lean/declarations/stalkmap-germ--e681be6678606a2515b0d6ed.md) | 64 | `result-track:e681be6678606a2515b0d6ed66fac39977f9220d47694e94f0c76383ee662b6c` |
| 4 | `def` | [restrictStalkIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88faa5626f61f6e89d30eafa5e4e7294d341bc1e45156f6527c3d33eea1b6800.lean/declarations/restrictstalkiso--a7b56a53b4c7b417ce3d949f.md) | 76 | `declaration-track:a7b56a53b4c7b417ce3d949f7fa0c22ef9aafa166cc9ff8ea9816c8fd7a78005` |
| 5 | `theorem` | [restrictStalkIso_hom_eq_germ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88faa5626f61f6e89d30eafa5e4e7294d341bc1e45156f6527c3d33eea1b6800.lean/declarations/restrictstalkiso-hom-eq-germ--ae4a8e71f1f702bcb5a089fc.md) | 88 | `result-track:ae4a8e71f1f702bcb5a089fcba6d91b1102564d3b85bead8b2fefe85bbf0a02f` |
| 6 | `theorem` | [restrictStalkIso_inv_eq_germ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88faa5626f61f6e89d30eafa5e4e7294d341bc1e45156f6527c3d33eea1b6800.lean/declarations/restrictstalkiso-inv-eq-germ--74c6e3189f73491f6384f811.md) | 100 | `result-track:74c6e3189f73491f6384f811b65184f797ea139728f737b8454dc16999193a93` |
| 7 | `theorem` | [restrictStalkIso_inv_eq_ofRestrict](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88faa5626f61f6e89d30eafa5e4e7294d341bc1e45156f6527c3d33eea1b6800.lean/declarations/restrictstalkiso-inv-eq-ofrestrict--5e370e334bfe79caa9d5159a.md) | 109 | `result-track:5e370e334bfe79caa9d5159adc8f6143c4aff273f9a0a029c0a4ed864c81b690` |
| 8 | `instance` | [ofRestrict_stalkMap_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88faa5626f61f6e89d30eafa5e4e7294d341bc1e45156f6527c3d33eea1b6800.lean/declarations/ofrestrict-stalkmap-isiso--5425c9d73a48145c3f0f3442.md) | 126 | `declaration-track:5425c9d73a48145c3f0f3442318506fc051eda6de0141ec9d259ed45f19c88dc` |
| 9 | `theorem` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88faa5626f61f6e89d30eafa5e4e7294d341bc1e45156f6527c3d33eea1b6800.lean/declarations/id--92becac137392c5756972993.md) | 138 | `result-track:92becac137392c57569729933b156ebb8fa87c937710deb9e85c0422ef85099b` |
| 10 | `theorem` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88faa5626f61f6e89d30eafa5e4e7294d341bc1e45156f6527c3d33eea1b6800.lean/declarations/comp--3ffafce9cccc19c1df51831a.md) | 151 | `result-track:3ffafce9cccc19c1df51831a30ce847ed52bda23830aad215dad29faab3dd410` |
| 11 | `theorem` | [congr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88faa5626f61f6e89d30eafa5e4e7294d341bc1e45156f6527c3d33eea1b6800.lean/declarations/congr--042506e9abf00ee837c23025.md) | 172 | `result-track:042506e9abf00ee837c23025493ba26c45c9fdfefddc6a7f07cb3d6bdf981876` |
| 12 | `theorem` | [congr_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88faa5626f61f6e89d30eafa5e4e7294d341bc1e45156f6527c3d33eea1b6800.lean/declarations/congr-hom--d3c89d552f780613b5fed4ea.md) | 182 | `result-track:d3c89d552f780613b5fed4ea09881840089eecf1ae3ef416a974af43bf923ebb` |
| 13 | `theorem` | [congr_point](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88faa5626f61f6e89d30eafa5e4e7294d341bc1e45156f6527c3d33eea1b6800.lean/declarations/congr-point--89a290cd830220ce1ef1c753.md) | 189 | `result-track:89a290cd830220ce1ef1c753bc39298fb895d3e0fd4301da0753e9b69bdf6d50` |
| 14 | `instance` | [isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88faa5626f61f6e89d30eafa5e4e7294d341bc1e45156f6527c3d33eea1b6800.lean/declarations/isiso--62ca5992bd40b711f304c518.md) | 197 | `declaration-track:62ca5992bd40b711f304c518f8b1a8d0ae238e0c6db4ee96ecc52d6314b19b73` |
| 15 | `def` | [stalkIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88faa5626f61f6e89d30eafa5e4e7294d341bc1e45156f6527c3d33eea1b6800.lean/declarations/stalkiso--b532556862b36f0dfbf733b5.md) | 223 | `declaration-track:b532556862b36f0dfbf733b5d9c37416c8ea2b0557188080945a677f76a0a11f` |
| 16 | `theorem` | [stalkSpecializes_stalkMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88faa5626f61f6e89d30eafa5e4e7294d341bc1e45156f6527c3d33eea1b6800.lean/declarations/stalkspecializes-stalkmap--e49ed158bcd1687b58b223e4.md) | 230 | `result-track:e49ed158bcd1687b58b223e423d83a6758cb4a73383f89359faaa9cf150320e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
