# Verification target: GRWTSK.Algebra.CommutativeAlgebra.AdmissibleCardPowDegree.Variantda4baa62d9f0a601ade31b7396f064fa2749fd7d2030a4b98e80ea09192cbd87

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae31d8f9921fbaf35028390b03adde936ccf34ec",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variantda4baa62d9f0a601ade31b7396f064fa2749fd7d2030a4b98e80ea09192cbd87.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variantda4baa62d9f0a601ade31b7396f064fa2749fd7d2030a4b98e80ea09192cbd87.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variantda4baa62d9f0a601ade31b7396f064fa2749fd7d2030a4b98e80ea09192cbd87.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae31d8f9921fbaf35028390b03adde936ccf34ec`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variantda4baa62d9f0a601ade31b7396f064fa2749fd7d2030a4b98e80ea09192cbd87.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variantda4baa62d9f0a601ade31b7396f064fa2749fd7d2030a4b98e80ea09192cbd87.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Degree.CardPowDegree` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ClassNumber.AdmissibleAbsoluteValue` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_eq_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variantda4baa62d9f0a601ade31b7396f064fa2749fd7d2030a4b98e80ea09192cbd87.lean/declarations/exists-eq-polynomial--e289be268d8344f1b93d4bff.md) | 40 | `result-track:e289be268d8344f1b93d4bffb41326ca971c350b80c218d15d1f8b95ae6a3d50` |
| 2 | `theorem` | [exists_approx_polynomial_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variantda4baa62d9f0a601ade31b7396f064fa2749fd7d2030a4b98e80ea09192cbd87.lean/declarations/exists-approx-polynomial-aux--41d6d11c591343442bca7280.md) | 66 | `result-track:41d6d11c591343442bca728097b44ca0e3aaaee7d084497ca58c5a1b64554a26` |
| 3 | `theorem` | [exists_approx_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variantda4baa62d9f0a601ade31b7396f064fa2749fd7d2030a4b98e80ea09192cbd87.lean/declarations/exists-approx-polynomial--fd5198889997baeee5a4d831.md) | 108 | `result-track:fd5198889997baeee5a4d831795f19ecdab7b72f230ddadc9f73490097a3e6fd` |
| 4 | `theorem` | [cardPowDegree_anti_archimedean](../../../../../mathematics/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variantda4baa62d9f0a601ade31b7396f064fa2749fd7d2030a4b98e80ea09192cbd87.lean/declarations/cardpowdegree-anti-archimedean--f481731db94b994ebcae5e7f.md) | 154 | `result-track:f481731db94b994ebcae5e7ffb67f82d6f9540e95a5ef89a2a50aeb79ff250bf` |
| 5 | `theorem` | [exists_partition_polynomial_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variantda4baa62d9f0a601ade31b7396f064fa2749fd7d2030a4b98e80ea09192cbd87.lean/declarations/exists-partition-polynomial-aux--146bd820580af7d81aedfb4b.md) | 178 | `result-track:146bd820580af7d81aedfb4b0d1ce96c276f8e3a3d76139e41b469ad5b9457f2` |
| 6 | `theorem` | [exists_partition_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variantda4baa62d9f0a601ade31b7396f064fa2749fd7d2030a4b98e80ea09192cbd87.lean/declarations/exists-partition-polynomial--a5114a7b861cf7ad202b7522.md) | 246 | `result-track:a5114a7b861cf7ad202b752261c56b0e6bee6f76cb8b6ebd398de4ba18fac8b9` |
| 7 | `def` | [cardPowDegreeIsAdmissible](../../../../../mathematics/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variantda4baa62d9f0a601ade31b7396f064fa2749fd7d2030a4b98e80ea09192cbd87.lean/declarations/cardpowdegreeisadmissible--17e12adb4f468fdec48a90f8.md) | 255 | `declaration-track:17e12adb4f468fdec48a90f83dafb07b37cc132004fdf778431075bbcd56ae79` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
