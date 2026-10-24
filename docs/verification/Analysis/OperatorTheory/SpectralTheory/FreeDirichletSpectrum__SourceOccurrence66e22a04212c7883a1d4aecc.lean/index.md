# Verification target: GRWTSK.Analysis.OperatorTheory.SpectralTheory.FreeDirichletSpectrum

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be77fedc15e06ede9b036b4c1b5183d350a05e25",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrence66e22a04212c7883a1d4aecc.lean/index.md) · [Full source](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrence66e22a04212c7883a1d4aecc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be77fedc15e06ede9b036b4c1b5183d350a05e25`.

Source path: `GRWTSK/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.OperatorTheory.SpectralTheory.SturmianFiniteVolume`](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume__SourceOccurrence601e505310a970b18bd9abb2.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Inverse` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Charpoly` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Lemmas` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [angle](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrence66e22a04212c7883a1d4aecc.lean/declarations/angle--3dbea4324fb1dde53b94258a.md) | 17 | `declaration-track:3dbea4324fb1dde53b94258a28b1d2084f86aef8d891e38c6bcc043e6f481802` |
| 2 | `def` | [eigenvalue](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrence66e22a04212c7883a1d4aecc.lean/declarations/eigenvalue--1054e3f68b72099b8aaaae3a.md) | 18 | `declaration-track:1054e3f68b72099b8aaaae3a1189abdcc82424856c8a29d424c417b9eb6b4c14` |
| 3 | `def` | [sineVector](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrence66e22a04212c7883a1d4aecc.lean/declarations/sinevector--798f3137035b7fc9df64321e.md) | 19 | `declaration-track:798f3137035b7fc9df64321ef55e85aa7c22a744e09d70039fd322fa4cba7ef3` |
| 4 | `theorem` | [angle_pos](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrence66e22a04212c7883a1d4aecc.lean/declarations/angle-pos--902380c57fa11655b8fa46ba.md) | 22 | `result-track:902380c57fa11655b8fa46ba1b302e8f56e89a7006a63b0cea2cbe86fd80f823` |
| 5 | `theorem` | [angle_lt_pi](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrence66e22a04212c7883a1d4aecc.lean/declarations/angle-lt-pi--57de36f47b55db5d49656b97.md) | 26 | `result-track:57de36f47b55db5d49656b9701e1e7c853e10dc72a26ff35186b52fbbf93ccf0` |
| 6 | `theorem` | [eigenvalue_strictAnti](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrence66e22a04212c7883a1d4aecc.lean/declarations/eigenvalue-strictanti--3c5c3b9875f539246c85fe26.md) | 33 | `result-track:3c5c3b9875f539246c85fe2614b6634fb9c31b9fac43b99bab6d2087e02e1f25` |
| 7 | `theorem` | [freeDirichlet_mulVec_of_boundary](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrence66e22a04212c7883a1d4aecc.lean/declarations/freedirichlet-mulvec-of-boundary--d06aaa3afca66adf585f2316.md) | 47 | `result-track:d06aaa3afca66adf585f2316687bd0b3aca295193bc270d9f9d2abcd8ad90d34` |
| 8 | `theorem` | [sineVector_eigen_equation](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrence66e22a04212c7883a1d4aecc.lean/declarations/sinevector-eigen-equation--4417b32a4a83ca43d7269db5.md) | 98 | `result-track:4417b32a4a83ca43d7269db503880caf11ab94d76f4941c344c2fcf278837f2e` |
| 9 | `theorem` | [sineVector_ne_zero](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrence66e22a04212c7883a1d4aecc.lean/declarations/sinevector-ne-zero--de3b34cdd91e8fff13994d97.md) | 120 | `result-track:de3b34cdd91e8fff13994d974826f49e7eb76f600b5568de1fda53900808e212` |
| 10 | `theorem` | [sineVector_hasEigenvector](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrence66e22a04212c7883a1d4aecc.lean/declarations/sinevector-haseigenvector--7510a507f2655e53b352bca3.md) | 128 | `result-track:7510a507f2655e53b352bca3f5387dcdc0bd21d52d4454832b5c8fc4638c6dd5` |
| 11 | `theorem` | [sineVectors_linearIndependent](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrence66e22a04212c7883a1d4aecc.lean/declarations/sinevectors-linearindependent--7407dc456871b2a8445ed777.md) | 134 | `result-track:7407dc456871b2a8445ed77723e66266aac302bfee5eeec6b8df33b5fa44920f` |
| 12 | `def` | [sineBasis](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrence66e22a04212c7883a1d4aecc.lean/declarations/sinebasis--c7bff00968b00b77063d53dd.md) | 138 | `declaration-track:c7bff00968b00b77063d53dd280aa7b8d0e25d9f9af4505f2379238cc87ea94c` |
| 13 | `theorem` | [sineBasis_apply](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrence66e22a04212c7883a1d4aecc.lean/declarations/sinebasis-apply--77486ea2030094f092cae01a.md) | 142 | `result-track:77486ea2030094f092cae01aef394de929fc26ea0abc2829b55293bacbaa524b` |
| 14 | `theorem` | [free_toMatrix_sineBasis](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrence66e22a04212c7883a1d4aecc.lean/declarations/free-tomatrix-sinebasis--e02afe44c63b9838e2e0aa77.md) | 145 | `result-track:e02afe44c63b9838e2e0aa77cfbbf7c304aaeb738d8781f74f7d9058dc265c56` |
| 15 | `theorem` | [free_charpoly](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrence66e22a04212c7883a1d4aecc.lean/declarations/free-charpoly--24c4a876c97b9715c3dd75ed.md) | 157 | `result-track:24c4a876c97b9715c3dd75edc3e53a49d9f8954ece4cf2739c9a14067d4db72c` |
| 16 | `theorem` | [free_roots_charpoly](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrence66e22a04212c7883a1d4aecc.lean/declarations/free-roots-charpoly--4c3af09e6605130bc3642433.md) | 163 | `result-track:4c3af09e6605130bc3642433e3420fe0aec2f831b0d3aecb5feda70178fc97b4` |
| 17 | `theorem` | [freeCount_eq_cosine_count](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrence66e22a04212c7883a1d4aecc.lean/declarations/freecount-eq-cosine-count--7c020ae898917a7409fd92a9.md) | 169 | `result-track:7c020ae898917a7409fd92a9411e96e34e06589554eb99124f42ae5d6e2113bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
