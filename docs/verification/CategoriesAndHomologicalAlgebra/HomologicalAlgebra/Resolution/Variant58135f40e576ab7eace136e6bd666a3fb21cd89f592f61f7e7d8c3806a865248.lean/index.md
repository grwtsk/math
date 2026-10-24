# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Resolution.Variant58135f40e576ab7eace136e6bd666a3fb21cd89f592f61f7e7d8c3806a865248

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad3484b6f8c2d8ed9470053f97c3a9dce00c4e98",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant58135f40e576ab7eace136e6bd666a3fb21cd89f592f61f7e7d8c3806a865248.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant58135f40e576ab7eace136e6bd666a3fb21cd89f592f61f7e7d8c3806a865248.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant58135f40e576ab7eace136e6bd666a3fb21cd89f592f61f7e7d8c3806a865248.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad3484b6f8c2d8ed9470053f97c3a9dce00c4e98`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant58135f40e576ab7eace136e6bd666a3fb21cd89f592f61f7e7d8c3806a865248.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant58135f40e576ab7eace136e6bd666a3fb21cd89f592f61f7e7d8c3806a865248.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.QuasiIso` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.HomologicalComplex` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.SingleHomology` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Injective.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [InjectiveResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant58135f40e576ab7eace136e6bd666a3fb21cd89f592f61f7e7d8c3806a865248.lean/declarations/injectiveresolution--f39c35246ffce7171c6d16db.md) | 41 | `declaration-track:f39c35246ffce7171c6d16dbb7d2b67f4cb4e69a7b9a72b6cb61f33cca80fe51` |
| 2 | `class` | [HasInjectiveResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant58135f40e576ab7eace136e6bd666a3fb21cd89f592f61f7e7d8c3806a865248.lean/declarations/hasinjectiveresolution--bd86983ee16e8653fd0218f1.md) | 57 | `declaration-track:bd86983ee16e8653fd0218f1fee944a4caac8bcd0c2f1c64687b513320b5541c` |
| 3 | `class` | [HasInjectiveResolutions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant58135f40e576ab7eace136e6bd666a3fb21cd89f592f61f7e7d8c3806a865248.lean/declarations/hasinjectiveresolutions--4e3baef30fbd1de18f6977c4.md) | 68 | `declaration-track:4e3baef30fbd1de18f6977c4acbeeda96211fa7cfe21e99d89a7b1e780ca059c` |
| 4 | `lemma` | [cocomplex_exactAt_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant58135f40e576ab7eace136e6bd666a3fb21cd89f592f61f7e7d8c3806a865248.lean/declarations/cocomplex-exactat-succ--75ebf588b931f6415074d45f.md) | 79 | `result-track:75ebf588b931f6415074d45f0cdb5e4f3bc877c1179bf15fed8e048d8896c4a8` |
| 5 | `lemma` | [exact_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant58135f40e576ab7eace136e6bd666a3fb21cd89f592f61f7e7d8c3806a865248.lean/declarations/exact-succ--a221358e490a404f390903d7.md) | 84 | `result-track:a221358e490a404f390903d773db677cc0d00df67687d7b6590cf815f13b55fc` |
| 6 | `theorem` | [ι_f_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant58135f40e576ab7eace136e6bd666a3fb21cd89f592f61f7e7d8c3806a865248.lean/declarations/f-succ--f964c8fd23ec84cbe3fac28a.md) | 90 | `result-track:f964c8fd23ec84cbe3fac28afde6e5056ae5874f622c32c3202fb2cfb30f14dc` |
| 7 | `theorem` | [ι_f_zero_comp_complex_d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant58135f40e576ab7eace136e6bd666a3fb21cd89f592f61f7e7d8c3806a865248.lean/declarations/f-zero-comp-complex-d--78e115a19831be286da6fa9b.md) | 94 | `result-track:78e115a19831be286da6fa9b84b2e4fdb2c26969a439e1c42aea58520f8406f1` |
| 8 | `theorem` | [complex_d_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant58135f40e576ab7eace136e6bd666a3fb21cd89f592f61f7e7d8c3806a865248.lean/declarations/complex-d-comp--53c1f8397d10e044eb5e0a99.md) | 98 | `result-track:53c1f8397d10e044eb5e0a9942e86efafae0a8a469e3bba0660de6c02330de11` |
| 9 | `def` | [kernelFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant58135f40e576ab7eace136e6bd666a3fb21cd89f592f61f7e7d8c3806a865248.lean/declarations/kernelfork--728d44e23ff23143d5d9d9bb.md) | 105 | `declaration-track:728d44e23ff23143d5d9d9bb4484250dd68850831aea94b7c50fe1d71da4268d` |
| 10 | `def` | [isLimitKernelFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant58135f40e576ab7eace136e6bd666a3fb21cd89f592f61f7e7d8c3806a865248.lean/declarations/islimitkernelfork--e9ffe5a4e8f2feff212c5393.md) | 109 | `declaration-track:e9ffe5a4e8f2feff212c53936658eb72f34ecb778cc82697b601d062de040181` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant58135f40e576ab7eace136e6bd666a3fb21cd89f592f61f7e7d8c3806a865248.lean/declarations/instance--854797d8f3f18dced7c09f00.md) | 118 | `declaration-track:854797d8f3f18dced7c09f005cca530f54442d8902c157421e64abf8a5c135ff` |
| 12 | `def` | [self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant58135f40e576ab7eace136e6bd666a3fb21cd89f592f61f7e7d8c3806a865248.lean/declarations/self--4a45ff2462b6fde966211673.md) | 127 | `declaration-track:4a45ff2462b6fde9662116734810ae6d3f7b92bf3d206219739cc16d43e88ba4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
