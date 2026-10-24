# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EulerPrimeReciprocalDivergence.Variantdc61b474bca87d6d9df892b8b4adbba20de863273fe6e0410cc1d1e6e43c9503

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f953d9761bf00ed90f742ff7be64dd956fbd0b8",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variantdc61b474bca87d6d9df892b8b4adbba20de863273fe6e0410cc1d1e6e43c9503.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variantdc61b474bca87d6d9df892b8b4adbba20de863273fe6e0410cc1d1e6e43c9503.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variantdc61b474bca87d6d9df892b8b4adbba20de863273fe6e0410cc1d1e6e43c9503.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f953d9761bf00ed90f742ff7be64dd956fbd0b8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variantdc61b474bca87d6d9df892b8b4adbba20de863273fe6e0410cc1d1e6e43c9503.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variantdc61b474bca87d6d9df892b8b4adbba20de863273fe6e0410cc1d1e6e43c9503.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.PrimeReciprocalSums` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.AnalyticNumberTheory.RealEulerProductConvergence` — import line 7; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.NumberTheory.FiniteEulerLogDerivative` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteHarmonicEulerProduct](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variantdc61b474bca87d6d9df892b8b4adbba20de863273fe6e0410cc1d1e6e43c9503.lean/declarations/finiteharmoniceulerproduct--99f47f209826fa07fe58ca79.md) | 26 | `declaration-track:99f47f209826fa07fe58ca7939b179a3a722e28d1e38b343af763a3008ae5443` |
| 2 | `theorem` | [finiteHarmonicEulerProduct_expands](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variantdc61b474bca87d6d9df892b8b4adbba20de863273fe6e0410cc1d1e6e43c9503.lean/declarations/finiteharmoniceulerproduct-expands--34aa1ce9d8934aa62df26286.md) | 30 | `result-track:34aa1ce9d8934aa62df26286dcb8dc9ed9f1dd6b8c8023b8b73145ae480205a0` |
| 3 | `theorem` | [posWeightReal_one_eq_inv_nat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variantdc61b474bca87d6d9df892b8b4adbba20de863273fe6e0410cc1d1e6e43c9503.lean/declarations/posweightreal-one-eq-inv-nat--b3a40106845b86f85707eed6.md) | 41 | `result-track:b3a40106845b86f85707eed6ed7bb70d6efb37c46330a67ed3f1f79ea7bfa909` |
| 4 | `theorem` | [harmonicPartial_le_finiteHarmonicEulerProduct](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variantdc61b474bca87d6d9df892b8b4adbba20de863273fe6e0410cc1d1e6e43c9503.lean/declarations/harmonicpartial-le-finiteharmoniceulerproduct--03a3110f8d9161422c0037a1.md) | 48 | `result-track:03a3110f8d9161422c0037a1f5c515c23556f0c13e0b2ebde362dd067b3a6db2` |
| 5 | `def` | [reciprocalGeometricFactor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variantdc61b474bca87d6d9df892b8b4adbba20de863273fe6e0410cc1d1e6e43c9503.lean/declarations/reciprocalgeometricfactor--c4cf2b284fbe909b972644a1.md) | 63 | `declaration-track:c4cf2b284fbe909b972644a1b6164fc1e00c9085ebf053cb11b188ef524bd6df` |
| 6 | `theorem` | [finiteZetaEulerFactorReal_one_eq_reciprocalGeometricFactor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variantdc61b474bca87d6d9df892b8b4adbba20de863273fe6e0410cc1d1e6e43c9503.lean/declarations/finitezetaeulerfactorreal-one-eq-reciprocalgeometricfactor--9103ba31b93bee9e3e8d84f9.md) | 67 | `result-track:9103ba31b93bee9e3e8d84f98605a0f748b159f55ccd419ab33b8c5babb841cc` |
| 7 | `theorem` | [reciprocalGeometricFactor_le_inv_one_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variantdc61b474bca87d6d9df892b8b4adbba20de863273fe6e0410cc1d1e6e43c9503.lean/declarations/reciprocalgeometricfactor-le-inv-one-sub--6dd6e2f28aaf61bf7e5c6d57.md) | 80 | `result-track:6dd6e2f28aaf61bf7e5c6d57e4ec603b14b71ca8e8b09a604869672bb7cb811e` |
| 8 | `theorem` | [inv_one_sub_prime_inv_le_exp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variantdc61b474bca87d6d9df892b8b4adbba20de863273fe6e0410cc1d1e6e43c9503.lean/declarations/inv-one-sub-prime-inv-le-exp--c1ca27899157173036188074.md) | 102 | `result-track:c1ca27899157173036188074368d25851a3138e9df8d52610bb8385303b0d109` |
| 9 | `theorem` | [finiteHarmonicEulerProduct_le_exp_primeReciprocalPartial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variantdc61b474bca87d6d9df892b8b4adbba20de863273fe6e0410cc1d1e6e43c9503.lean/declarations/finiteharmoniceulerproduct-le-exp-primereciprocalpartial--80a9d3b35ac2dc7b9707095d.md) | 125 | `result-track:80a9d3b35ac2dc7b9707095ddbd34facdff3fa8a207a783ab1a9ae60bba64e20` |
| 10 | `theorem` | [primeReciprocalPartial_unbounded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variantdc61b474bca87d6d9df892b8b4adbba20de863273fe6e0410cc1d1e6e43c9503.lean/declarations/primereciprocalpartial-unbounded--91cc47ce94041b4fa4b80de0.md) | 159 | `result-track:91cc47ce94041b4fa4b80de0cb4e262ba399a44853156fce8bf6f8540a679fe1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
