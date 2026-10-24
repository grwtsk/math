# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SpectralObject.Variant2a61064ba9223655fb971404a53e27b396ebc9d120e9d9caca36c592ad66ef27

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a838e2f4532fce6d296362a8c987f9aa031b2a5",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant2a61064ba9223655fb971404a53e27b396ebc9d120e9d9caca36c592ad66ef27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant2a61064ba9223655fb971404a53e27b396ebc9d120e9d9caca36c592ad66ef27.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant2a61064ba9223655fb971404a53e27b396ebc9d120e9d9caca36c592ad66ef27.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a838e2f4532fce6d296362a8c987f9aa031b2a5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant2a61064ba9223655fb971404a53e27b396ebc9d120e9d9caca36c592ad66ef27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant2a61064ba9223655fb971404a53e27b396ebc9d120e9d9caca36c592ad66ef27.lean.json)

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
| 1 | `def` | [ω₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant2a61064ba9223655fb971404a53e27b396ebc9d120e9d9caca36c592ad66ef27.lean/declarations/anonymous--fd9639b16e753a0bd03db22d.md) | 52 | `declaration-track:fd9639b16e753a0bd03db22d8d222a1b0abd16d15c538aa64f40ef6e51c48158` |
| 2 | `def` | [ω₁δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant2a61064ba9223655fb971404a53e27b396ebc9d120e9d9caca36c592ad66ef27.lean/declarations/anonymous--143d812a5a4beadce8c54b81.md) | 66 | `declaration-track:143d812a5a4beadce8c54b81242ed78398f999aa1baf3f535c1791fc920b963a` |
| 3 | `lemma` | [ω₁δ_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant2a61064ba9223655fb971404a53e27b396ebc9d120e9d9caca36c592ad66ef27.lean/declarations/naturality--c013fcf02174dd84de0f0828.md) | 77 | `result-track:c013fcf02174dd84de0f08288b1cad260ac2f761213af851947add19b7333827` |
| 4 | `def` | [triangleω₁δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant2a61064ba9223655fb971404a53e27b396ebc9d120e9d9caca36c592ad66ef27.lean/declarations/triangle--8408e6d997519002ab338246.md) | 97 | `declaration-track:8408e6d997519002ab338246340d083a39baa63c667db61d85a74f197abc189b` |
| 5 | `def` | [triangleω₁δObjIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant2a61064ba9223655fb971404a53e27b396ebc9d120e9d9caca36c592ad66ef27.lean/declarations/triangle-objiso--ecf8e97e57a034897e632f19.md) | 105 | `declaration-track:ecf8e97e57a034897e632f191fd0ce18828544d9b621506c8748538b4b090245` |
| 6 | `lemma` | [triangleω₁δ_distinguished](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant2a61064ba9223655fb971404a53e27b396ebc9d120e9d9caca36c592ad66ef27.lean/declarations/triangle-distinguished--475f522ff153cad09a540f0e.md) | 124 | `result-track:475f522ff153cad09a540f0ec895fb67a251104a89148f3347118eda56a0df9e` |
| 7 | `def` | [spectralObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant2a61064ba9223655fb971404a53e27b396ebc9d120e9d9caca36c592ad66ef27.lean/declarations/spectralobject--d57578ec6a216f90acc46317.md) | 133 | `declaration-track:d57578ec6a216f90acc46317a3a390877642ff6ee4d33f0a5ba7230604c3008b` |
| 8 | `lemma` | [spectralObject_δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant2a61064ba9223655fb971404a53e27b396ebc9d120e9d9caca36c592ad66ef27.lean/declarations/spectralobject--5037be0fc79d65eff21087b9.md) | 147 | `result-track:5037be0fc79d65eff21087b920238b26b03f14c1c4aa9f281b5bc8fef5a893e0` |
| 9 | `def` | [spectralObjectFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant2a61064ba9223655fb971404a53e27b396ebc9d120e9d9caca36c592ad66ef27.lean/declarations/spectralobjectfunctor--2771e62394e938bfa9d0c6b2.md) | 153 | `declaration-track:2771e62394e938bfa9d0c6b24c5276dc57e5f1302e0dd8cba61bfa896571c517` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
