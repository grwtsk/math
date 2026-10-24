# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ThetaPositiveLift.Variantd537c73acafd79b4ff35b94af2fba6c9aec5b0980e197a50e0eb6b87ea420899

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ffcc4206d0aa16f35ac094970578554f7e32b23",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantd537c73acafd79b4ff35b94af2fba6c9aec5b0980e197a50e0eb6b87ea420899.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantd537c73acafd79b4ff35b94af2fba6c9aec5b0980e197a50e0eb6b87ea420899.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantd537c73acafd79b4ff35b94af2fba6c9aec5b0980e197a50e0eb6b87ea420899.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ffcc4206d0aa16f35ac094970578554f7e32b23`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantd537c73acafd79b4ff35b94af2fba6c9aec5b0980e197a50e0eb6b87ea420899.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantd537c73acafd79b4ff35b94af2fba6c9aec5b0980e197a50e0eb6b87ea420899.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailCalculus` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourcePowerTail](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantd537c73acafd79b4ff35b94af2fba6c9aec5b0980e197a50e0eb6b87ea420899.lean/declarations/sourcepowertail--afefa50138cd0bd5f491407e.md) | 34 | `declaration-track:afefa50138cd0bd5f491407e04953bb797d9e54ad5be6ac6543f1d35a85c8ba0` |
| 2 | `theorem` | [source_power_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantd537c73acafd79b4ff35b94af2fba6c9aec5b0980e197a50e0eb6b87ea420899.lean/declarations/source-power-integrable--059944b2a611ad60cfb68171.md) | 37 | `result-track:059944b2a611ad60cfb6817111ccfbb52f1be4c571f001727c9ba615ad426c5b` |
| 3 | `theorem` | [sourcePowerTail_eq_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantd537c73acafd79b4ff35b94af2fba6c9aec5b0980e197a50e0eb6b87ea420899.lean/declarations/sourcepowertail-eq-sub--febc2d82dbfe1e591a5d69e2.md) | 52 | `result-track:febc2d82dbfe1e591a5d69e20386cdf4084c62b03bd95af9fe0e13dfa0777c0f` |
| 4 | `theorem` | [hasDerivAt_sourcePowerTail](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantd537c73acafd79b4ff35b94af2fba6c9aec5b0980e197a50e0eb6b87ea420899.lean/declarations/hasderivat-sourcepowertail--e1249f6301ec45bb18db16c8.md) | 60 | `result-track:e1249f6301ec45bb18db16c8cfd54db375e45ef0945f2ae400385a92082703aa` |
| 5 | `def` | [tailBinomialCoeff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantd537c73acafd79b4ff35b94af2fba6c9aec5b0980e197a50e0eb6b87ea420899.lean/declarations/tailbinomialcoeff--7192e78edef17237add5d353.md) | 70 | `declaration-track:7192e78edef17237add5d3537f0bb9d0a7881e52fbb7db04138bce8f5872f722` |
| 6 | `theorem` | [tailBinomialCoeff_sum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantd537c73acafd79b4ff35b94af2fba6c9aec5b0980e197a50e0eb6b87ea420899.lean/declarations/tailbinomialcoeff-sum--38ea1ebb44e2b1f1b7f3cfa9.md) | 73 | `result-track:38ea1ebb44e2b1f1b7f3cfa9a1bab198c7445d630d8fe7533f509bdd5b81e6b0` |
| 7 | `theorem` | [hasDerivAt_tailBinomialCoeff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantd537c73acafd79b4ff35b94af2fba6c9aec5b0980e197a50e0eb6b87ea420899.lean/declarations/hasderivat-tailbinomialcoeff--2be167d24e6c2fce9f58f328.md) | 81 | `result-track:2be167d24e6c2fce9f58f328507ee7e561ca914f8b4b3410fc76e2683f5fa5ea` |
| 8 | `theorem` | [tailBinomialCoeff_deriv_sum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantd537c73acafd79b4ff35b94af2fba6c9aec5b0980e197a50e0eb6b87ea420899.lean/declarations/tailbinomialcoeff-deriv-sum--5ea39a3357be61a3a575a703.md) | 87 | `result-track:5ea39a3357be61a3a575a70330d68851d4f87bac9f6f24d12889aab3e60c2cda` |
| 9 | `theorem` | [integral_source_coeff_sum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantd537c73acafd79b4ff35b94af2fba6c9aec5b0980e197a50e0eb6b87ea420899.lean/declarations/integral-source-coeff-sum--14b0e3cf751f20a8d6b406a0.md) | 104 | `result-track:14b0e3cf751f20a8d6b406a0aa0d0444c4674c439e06faa6922be11d56586fe8` |
| 10 | `theorem` | [thetaTail_eq_binomial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantd537c73acafd79b4ff35b94af2fba6c9aec5b0980e197a50e0eb6b87ea420899.lean/declarations/thetatail-eq-binomial--672932f977dc8d94dcbbf225.md) | 115 | `result-track:672932f977dc8d94dcbbf225c44ff1d78d41dfc92415cd2145b5209f37a5b9d8` |
| 11 | `theorem` | [hasDerivAt_thetaTail_succ_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantd537c73acafd79b4ff35b94af2fba6c9aec5b0980e197a50e0eb6b87ea420899.lean/declarations/hasderivat-thetatail-succ-succ--fbea6547c85d73b41948aa59.md) | 124 | `result-track:fbea6547c85d73b41948aa5997fd8adf88e6418fb3fcfcb2cad340061464a3c7` |
| 12 | `theorem` | [hasDerivAt_thetaTail_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantd537c73acafd79b4ff35b94af2fba6c9aec5b0980e197a50e0eb6b87ea420899.lean/declarations/hasderivat-thetatail-succ--f526dbedd2bc8b81cc96c426.md) | 160 | `result-track:f526dbedd2bc8b81cc96c4264f7f5a4b3ccc7245cfa37fa57fb6ebb0607388d6` |
| 13 | `theorem` | [deriv_thetaTail_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantd537c73acafd79b4ff35b94af2fba6c9aec5b0980e197a50e0eb6b87ea420899.lean/declarations/deriv-thetatail-succ--7e168aece3c13b672cb8f290.md) | 167 | `result-track:7e168aece3c13b672cb8f2908b214f790f6deb10d4499cd3211c64b70ddcf292` |
| 14 | `theorem` | [iteratedDeriv_thetaTail_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantd537c73acafd79b4ff35b94af2fba6c9aec5b0980e197a50e0eb6b87ea420899.lean/declarations/iteratedderiv-thetatail-add--686b77b5fe98f21b999b3537.md) | 173 | `result-track:686b77b5fe98f21b999b35373923cae8ac5c0bff0937890f3379d368b713c241` |
| 15 | `theorem` | [iteratedDeriv_thetaTail](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantd537c73acafd79b4ff35b94af2fba6c9aec5b0980e197a50e0eb6b87ea420899.lean/declarations/iteratedderiv-thetatail--f42c53003f645433c90f5128.md) | 187 | `result-track:f42c53003f645433c90f51288c4adc610c61350eaa50ec05f77601ae9515276e` |
| 16 | `theorem` | [continuous_thetaTail](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantd537c73acafd79b4ff35b94af2fba6c9aec5b0980e197a50e0eb6b87ea420899.lean/declarations/continuous-thetatail--9ff6d56d5a2d752c16640648.md) | 193 | `result-track:9ff6d56d5a2d752c16640648791bad486da2af0a221d930557cdbfc45e6a8792` |
| 17 | `theorem` | [contDiff_thetaTail_order](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantd537c73acafd79b4ff35b94af2fba6c9aec5b0980e197a50e0eb6b87ea420899.lean/declarations/contdiff-thetatail-order--8b9a9f93ac20ccd93819056f.md) | 200 | `result-track:8b9a9f93ac20ccd93819056fb448d3cf50d135f897cfcb765c3f29dc7938c7a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
