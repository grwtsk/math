# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpiMono.Variantf1eb4d7280721652154d12f5f320b02d04ed329c455ea2bf03f85a3bbcfc7097

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "474c957079d867e9dd34695e05d446054e551b24",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1eb4d7280721652154d12f5f320b02d04ed329c455ea2bf03f85a3bbcfc7097.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1eb4d7280721652154d12f5f320b02d04ed329c455ea2bf03f85a3bbcfc7097.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1eb4d7280721652154d12f5f320b02d04ed329c455ea2bf03f85a3bbcfc7097.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `474c957079d867e9dd34695e05d446054e551b24`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1eb4d7280721652154d12f5f320b02d04ed329c455ea2bf03f85a3bbcfc7097.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1eb4d7280721652154d12f5f320b02d04ed329c455ea2bf03f85a3bbcfc7097.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.Mono` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Pullbacks` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [preserves_mono_of_preservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1eb4d7280721652154d12f5f320b02d04ed329c455ea2bf03f85a3bbcfc7097.lean/declarations/preserves-mono-of-preserveslimit--0fe1ff9fa59865859eedba67.md) | 30 | `result-track:0fe1ff9fa59865859eedba67ecf4efb5077d5ad9a8d2f09342b24a57d9729842` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1eb4d7280721652154d12f5f320b02d04ed329c455ea2bf03f85a3bbcfc7097.lean/declarations/instance--82d2ee3cc87ed3e974489c55.md) | 36 | `declaration-track:82d2ee3cc87ed3e974489c55c7a64971c7a5e77df4464412e8f54a351fc5c35e` |
| 3 | `theorem` | [reflects_mono_of_reflectsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1eb4d7280721652154d12f5f320b02d04ed329c455ea2bf03f85a3bbcfc7097.lean/declarations/reflects-mono-of-reflectslimit--8d1baeb63c5b69732fa86737.md) | 41 | `result-track:8d1baeb63c5b69732fa867379605e63a4f81cac7ea43cff73998d88d29e5a734` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1eb4d7280721652154d12f5f320b02d04ed329c455ea2bf03f85a3bbcfc7097.lean/declarations/instance--d5af317df2cafc50c709e25d.md) | 47 | `declaration-track:d5af317df2cafc50c709e25d374a4b91d126e26b11b6d071a1f7aa791fb9a4a0` |
| 5 | `theorem` | [preserves_epi_of_preservesColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1eb4d7280721652154d12f5f320b02d04ed329c455ea2bf03f85a3bbcfc7097.lean/declarations/preserves-epi-of-preservescolimit--b4a404296f474461d0de8ae1.md) | 52 | `result-track:b4a404296f474461d0de8ae12620966328f840a5e17b19a03053b7c4dae6fc34` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1eb4d7280721652154d12f5f320b02d04ed329c455ea2bf03f85a3bbcfc7097.lean/declarations/instance--b4bde91e400f41cd1209cedd.md) | 58 | `declaration-track:b4bde91e400f41cd1209cedd38fd20ad824d9778098fc0c09b1320a362b5c470` |
| 7 | `theorem` | [reflects_epi_of_reflectsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1eb4d7280721652154d12f5f320b02d04ed329c455ea2bf03f85a3bbcfc7097.lean/declarations/reflects-epi-of-reflectscolimit--068544080fb575995fd16e72.md) | 63 | `result-track:068544080fb575995fd16e72b9f60945ad14dc61c97973c34882abab363a3e29` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantf1eb4d7280721652154d12f5f320b02d04ed329c455ea2bf03f85a3bbcfc7097.lean/declarations/instance--da6bb2b32926d6f88537f946.md) | 71 | `declaration-track:da6bb2b32926d6f88537f94647541a1b4a81d52516d240e24b20d57ee10fd350` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
