# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CategoryTheory.Variant9f493242bfec77885edbb03801bcdfd46bf9456f81f0292755322317340fc79e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2d0f2df02893dac8e5e51dc415d12cbedf477a0",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variant9f493242bfec77885edbb03801bcdfd46bf9456f81f0292755322317340fc79e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variant9f493242bfec77885edbb03801bcdfd46bf9456f81f0292755322317340fc79e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variant9f493242bfec77885edbb03801bcdfd46bf9456f81f0292755322317340fc79e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2d0f2df02893dac8e5e51dc415d12cbedf477a0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variant9f493242bfec77885edbb03801bcdfd46bf9456f81f0292755322317340fc79e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variant9f493242bfec77885edbb03801bcdfd46bf9456f81f0292755322317340fc79e.lean.json)

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
| 1 | `lemma` | [lTensor_shortComplex_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variant9f493242bfec77885edbb03801bcdfd46bf9456f81f0292755322317340fc79e.lean/declarations/ltensor-shortcomplex-exact--5e4cff0045fbfda3183bdffa.md) | 41 | `result-track:5e4cff0045fbfda3183bdffa3b5e37717dcbaf9e1655b91c2db7e292a7f032e5` |
| 2 | `lemma` | [rTensor_shortComplex_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variant9f493242bfec77885edbb03801bcdfd46bf9456f81f0292755322317340fc79e.lean/declarations/rtensor-shortcomplex-exact--9aaa3bb606c191eabb36e3e2.md) | 46 | `result-track:9aaa3bb606c191eabb36e3e2d6742df4c819dbeea855f3c4b40714894e7f0c2d` |
| 3 | `lemma` | [iff_lTensor_preserves_shortComplex_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variant9f493242bfec77885edbb03801bcdfd46bf9456f81f0292755322317340fc79e.lean/declarations/iff-ltensor-preserves-shortcomplex-exact--c5c95ec94cb5e2da32b603db.md) | 51 | `result-track:c5c95ec94cb5e2da32b603db4d9f50f4c144ff34ba3b7a8b8c8f0fb77d1d5bfb` |
| 4 | `lemma` | [iff_rTensor_preserves_shortComplex_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variant9f493242bfec77885edbb03801bcdfd46bf9456f81f0292755322317340fc79e.lean/declarations/iff-rtensor-preserves-shortcomplex-exact--20a0ec9b2ec30b33cc130b13.md) | 61 | `result-track:20a0ec9b2ec30b33cc130b13e9c45d0ee40e99a871e03b111bf1ebcaa5ff1e16` |
| 5 | `lemma` | [iff_preservesFiniteLimits_tensorLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variant9f493242bfec77885edbb03801bcdfd46bf9456f81f0292755322317340fc79e.lean/declarations/iff-preservesfinitelimits-tensorleft--68866ab58ed2367900fedd31.md) | 73 | `result-track:68866ab58ed2367900fedd313b0aeb6553898b1c9f1a01bde5482b027e48d44d` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variant9f493242bfec77885edbb03801bcdfd46bf9456f81f0292755322317340fc79e.lean/declarations/instance--631e7098889a47173701917d.md) | 79 | `declaration-track:631e7098889a47173701917d1f891caeec1da1d47b2d51cc90705047b0a463d7` |
| 7 | `lemma` | [iff_preservesFiniteLimits_tensorRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variant9f493242bfec77885edbb03801bcdfd46bf9456f81f0292755322317340fc79e.lean/declarations/iff-preservesfinitelimits-tensorright--45750d6cd6e36f9d71be88e3.md) | 83 | `result-track:45750d6cd6e36f9d71be88e3f6eb601eb6610e11162669dea8487514b9333f24` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variant9f493242bfec77885edbb03801bcdfd46bf9456f81f0292755322317340fc79e.lean/declarations/instance--0d0f391234e270090342b1d7.md) | 90 | `declaration-track:0d0f391234e270090342b1d780a18c2c6631d1c706cace8b073230323b996787` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
