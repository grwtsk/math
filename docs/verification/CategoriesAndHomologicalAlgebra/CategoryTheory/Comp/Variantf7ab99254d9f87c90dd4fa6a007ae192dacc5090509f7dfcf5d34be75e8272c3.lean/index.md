# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Comp.Variantf7ab99254d9f87c90dd4fa6a007ae192dacc5090509f7dfcf5d34be75e8272c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75f288243f7d1dcd0d63fb73e1201b5ac58224e6",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variantf7ab99254d9f87c90dd4fa6a007ae192dacc5090509f7dfcf5d34be75e8272c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variantf7ab99254d9f87c90dd4fa6a007ae192dacc5090509f7dfcf5d34be75e8272c3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variantf7ab99254d9f87c90dd4fa6a007ae192dacc5090509f7dfcf5d34be75e8272c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75f288243f7d1dcd0d63fb73e1201b5ac58224e6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variantf7ab99254d9f87c90dd4fa6a007ae192dacc5090509f7dfcf5d34be75e8272c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variantf7ab99254d9f87c90dd4fa6a007ae192dacc5090509f7dfcf5d34be75e8272c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.PFunctor.Multivariate.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.QPF.Multivariate.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variantf7ab99254d9f87c90dd4fa6a007ae192dacc5090509f7dfcf5d34be75e8272c3.lean/declarations/comp--7aa9f185f12471ecf5e3eba4.md) | 27 | `declaration-track:7aa9f185f12471ecf5e3eba4b6832d110dd603684cc8223c5f4de1b9ef724156` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variantf7ab99254d9f87c90dd4fa6a007ae192dacc5090509f7dfcf5d34be75e8272c3.lean/declarations/instance--df735a283a30516fbf36bb80.md) | 36 | `declaration-track:df735a283a30516fbf36bb80ce124d35093fd11b42153dedc86614880745c5ce` |
| 3 | `def` | [mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variantf7ab99254d9f87c90dd4fa6a007ae192dacc5090509f7dfcf5d34be75e8272c3.lean/declarations/mk--25321749fb47905ffbeadf77.md) | 39 | `declaration-track:25321749fb47905ffbeadf77cd5da56e7a52447fcfd74c1b7de58109ce1f31fc` |
| 4 | `def` | [get](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variantf7ab99254d9f87c90dd4fa6a007ae192dacc5090509f7dfcf5d34be75e8272c3.lean/declarations/get--82f48ac4acf3aeb467416bfc.md) | 42 | `declaration-track:82f48ac4acf3aeb467416bfc099952f979fa2103e001ee9232ad46bc0cbb4542` |
| 5 | `theorem` | [mk_get](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variantf7ab99254d9f87c90dd4fa6a007ae192dacc5090509f7dfcf5d34be75e8272c3.lean/declarations/mk-get--0ae7da536e0a27ac9d205a20.md) | 45 | `result-track:0ae7da536e0a27ac9d205a20120f491ab24350fff801d8a54389bcaea0cc8f52` |
| 6 | `theorem` | [get_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variantf7ab99254d9f87c90dd4fa6a007ae192dacc5090509f7dfcf5d34be75e8272c3.lean/declarations/get-mk--39999463aa812a2bd80e8341.md) | 48 | `result-track:39999463aa812a2bd80e8341a27961000f40472ac622956d10bf16651f07ddf9` |
| 7 | `def` | [map'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variantf7ab99254d9f87c90dd4fa6a007ae192dacc5090509f7dfcf5d34be75e8272c3.lean/declarations/map--a4a23eaea098114b547801c1.md) | 54 | `declaration-track:a4a23eaea098114b547801c1f15e46fb92bc18ac0081172c2c71bb38c78bc0a4` |
| 8 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variantf7ab99254d9f87c90dd4fa6a007ae192dacc5090509f7dfcf5d34be75e8272c3.lean/declarations/map--f6b39710fe154cfc7da496c5.md) | 57 | `declaration-track:f6b39710fe154cfc7da496c53ef250f29a0bdeb2c68124aa43455ddc1fbe9dbb` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variantf7ab99254d9f87c90dd4fa6a007ae192dacc5090509f7dfcf5d34be75e8272c3.lean/declarations/instance--3c53195cce928ab1f3a89db5.md) | 60 | `declaration-track:3c53195cce928ab1f3a89db596fcd51b6c4d8b9cbaacb69973d6fff53d6df636` |
| 10 | `theorem` | [map_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variantf7ab99254d9f87c90dd4fa6a007ae192dacc5090509f7dfcf5d34be75e8272c3.lean/declarations/map-mk--15e3ab0a5d37b56c061b58b8.md) | 62 | `result-track:15e3ab0a5d37b56c061b58b8660a8b29ace5683567c2e1d070e9dcc8835939b4` |
| 11 | `theorem` | [get_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variantf7ab99254d9f87c90dd4fa6a007ae192dacc5090509f7dfcf5d34be75e8272c3.lean/declarations/get-map--7c5e47d130f1de84cee11d89.md) | 65 | `result-track:7c5e47d130f1de84cee11d89ae29fe4640596048ce4abde86e1466badb4af685` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variantf7ab99254d9f87c90dd4fa6a007ae192dacc5090509f7dfcf5d34be75e8272c3.lean/declarations/instance--2635de9686a99595df4d539f.md) | 70 | `declaration-track:2635de9686a99595df4d539f7ad5220fbace78ad0fc857548e5921e77480cd0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
