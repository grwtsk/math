# Verification target: GRWTSK.Spectral.FreeDirichletSpectrum

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc3e996eb210b7f07723e8bbf74109850c19d158",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Spectral/FreeDirichletSpectrum.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrencef14e2b956791152acf42c1a1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrencef14e2b956791152acf42c1a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc3e996eb210b7f07723e8bbf74109850c19d158`.

Source path: `GRWTSK/Spectral/FreeDirichletSpectrum.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Spectral/FreeDirichletSpectrum.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Spectral.SturmianFiniteVolume`](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume__SourceOccurrence0eaf5f3ed7013eca5a2410e5.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Inverse` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Charpoly` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Lemmas` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [angle](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrencef14e2b956791152acf42c1a1.lean/declarations/angle--e5696f2e3a5a5f2f994b0fbf.md) | 17 | `declaration-track:e5696f2e3a5a5f2f994b0fbf5df7b3abd81f9b1b850e22662267c4d38d64c066` |
| 2 | `def` | [eigenvalue](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrencef14e2b956791152acf42c1a1.lean/declarations/eigenvalue--4fbb62d18e4dc22426ad0eb2.md) | 18 | `declaration-track:4fbb62d18e4dc22426ad0eb222e922ae67a37c5dda221a3d1d762d86cb96aa44` |
| 3 | `def` | [sineVector](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrencef14e2b956791152acf42c1a1.lean/declarations/sinevector--42b0f14e4ece39c4172e28ec.md) | 19 | `declaration-track:42b0f14e4ece39c4172e28ec1ced4860ab32ae090aa29c2745f3d51f7ac28de6` |
| 4 | `theorem` | [angle_pos](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrencef14e2b956791152acf42c1a1.lean/declarations/angle-pos--645ec8634f258818001ee085.md) | 22 | `result-track:645ec8634f258818001ee085b4ef190c24337f5d281aec7dbc59cb8a0af3c222` |
| 5 | `theorem` | [angle_lt_pi](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrencef14e2b956791152acf42c1a1.lean/declarations/angle-lt-pi--22c5638854c302fb5caf8c67.md) | 26 | `result-track:22c5638854c302fb5caf8c67fb227e773f7ebe569cf6c776f53161a5690fce4c` |
| 6 | `theorem` | [eigenvalue_strictAnti](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrencef14e2b956791152acf42c1a1.lean/declarations/eigenvalue-strictanti--cbafac74f17c2f1d9d1d519e.md) | 33 | `result-track:cbafac74f17c2f1d9d1d519e39a8d2e4f404a994643adb13e7509a75b189f0f9` |
| 7 | `theorem` | [freeDirichlet_mulVec_of_boundary](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrencef14e2b956791152acf42c1a1.lean/declarations/freedirichlet-mulvec-of-boundary--058ed931657cd807479c20e2.md) | 47 | `result-track:058ed931657cd807479c20e21b559b2e96f6b0e4486bb9b95373e4d1d3159ebd` |
| 8 | `theorem` | [sineVector_eigen_equation](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrencef14e2b956791152acf42c1a1.lean/declarations/sinevector-eigen-equation--2e92c0ef47215d1ff062976b.md) | 98 | `result-track:2e92c0ef47215d1ff062976b6a8794a55491ed42b593165bd31e7d283ea24dcb` |
| 9 | `theorem` | [sineVector_ne_zero](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrencef14e2b956791152acf42c1a1.lean/declarations/sinevector-ne-zero--76e94a22c1943769c36e374b.md) | 120 | `result-track:76e94a22c1943769c36e374b0b5d4e92b77caa5da14b3bf34989d18485d6dd60` |
| 10 | `theorem` | [sineVector_hasEigenvector](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrencef14e2b956791152acf42c1a1.lean/declarations/sinevector-haseigenvector--54e3c1532d0fb8878617a561.md) | 128 | `result-track:54e3c1532d0fb8878617a561fe759a4d922bde6a58905333700534dcaed99bf1` |
| 11 | `theorem` | [sineVectors_linearIndependent](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrencef14e2b956791152acf42c1a1.lean/declarations/sinevectors-linearindependent--44ce4597710aa6b2ebe4b57a.md) | 134 | `result-track:44ce4597710aa6b2ebe4b57a186100f041e94d6f979ee898613365395f8917b9` |
| 12 | `def` | [sineBasis](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrencef14e2b956791152acf42c1a1.lean/declarations/sinebasis--3a0ede3e8117d5576d79d43a.md) | 138 | `declaration-track:3a0ede3e8117d5576d79d43a657ded6ed691a4d23952545cadff229af631f67f` |
| 13 | `theorem` | [sineBasis_apply](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrencef14e2b956791152acf42c1a1.lean/declarations/sinebasis-apply--7b1db04337b62da5de3d9322.md) | 142 | `result-track:7b1db04337b62da5de3d9322d26a89ccd88b246f7c243373a4f95884f0a9f95c` |
| 14 | `theorem` | [free_toMatrix_sineBasis](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrencef14e2b956791152acf42c1a1.lean/declarations/free-tomatrix-sinebasis--debc68c339823d5701bc0e3e.md) | 145 | `result-track:debc68c339823d5701bc0e3eabb519023784626b9f8455e082d4a26bd4d6f8d2` |
| 15 | `theorem` | [free_charpoly](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrencef14e2b956791152acf42c1a1.lean/declarations/free-charpoly--13ad3e2358d345f866ddb6d4.md) | 157 | `result-track:13ad3e2358d345f866ddb6d4dff6cf1862f6fe24a06b4ad5ea1e5f7c514ea2f4` |
| 16 | `theorem` | [free_roots_charpoly](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrencef14e2b956791152acf42c1a1.lean/declarations/free-roots-charpoly--0118c47365cf5c5226c17c42.md) | 163 | `result-track:0118c47365cf5c5226c17c427f23a3142aed1731a3afc28e6f2a5351d03b353b` |
| 17 | `theorem` | [freeCount_eq_cosine_count](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/FreeDirichletSpectrum__SourceOccurrencef14e2b956791152acf42c1a1.lean/declarations/freecount-eq-cosine-count--045934339adc3c8bf44a5eac.md) | 169 | `result-track:045934339adc3c8bf44a5eac5ef025a22ac85d02245af0338830fc268aff603a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
