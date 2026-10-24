# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125XiSectionMoments.Variant8f027cfa88354283d499a5e841405928898be9374bb6b5b6fba82112ab9f4baa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0752982356d57261b597f25eb74a9ea7173b8bce",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125XiSectionMoments/Variant8f027cfa88354283d499a5e841405928898be9374bb6b5b6fba82112ab9f4baa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125XiSectionMoments/Variant8f027cfa88354283d499a5e841405928898be9374bb6b5b6fba82112ab9f4baa.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125XiSectionMoments/Variant8f027cfa88354283d499a5e841405928898be9374bb6b5b6fba82112ab9f4baa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0752982356d57261b597f25eb74a9ea7173b8bce`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125XiSectionMoments/Variant8f027cfa88354283d499a5e841405928898be9374bb6b5b6fba82112ab9f4baa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125XiSectionMoments/Variant8f027cfa88354283d499a5e841405928898be9374bb6b5b6fba82112ab9f4baa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaXiCoefficientFormula` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.QuadraticDiscriminant` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaMoment](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125XiSectionMoments/Variant8f027cfa88354283d499a5e841405928898be9374bb6b5b6fba82112ab9f4baa.lean/declarations/thetamoment--9c0e8e1d42a97ff32a956157.md) | 18 | `declaration-track:9c0e8e1d42a97ff32a9561577fa9c5c7fd7bd2c5d357e9701fd8b27334f07340` |
| 2 | `theorem` | [thetaMoment_integrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125XiSectionMoments/Variant8f027cfa88354283d499a5e841405928898be9374bb6b5b6fba82112ab9f4baa.lean/declarations/thetamoment-integrable--9f88b46c428c84f4cee047b3.md) | 21 | `result-track:9f88b46c428c84f4cee047b3823bcf0091835bd35a8ba09b1f090a90f8552ce4` |
| 3 | `theorem` | [coefficient_eq_moment](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125XiSectionMoments/Variant8f027cfa88354283d499a5e841405928898be9374bb6b5b6fba82112ab9f4baa.lean/declarations/coefficient-eq-moment--074c3fd8ead01b96fd0070a4.md) | 26 | `result-track:074c3fd8ead01b96fd0070a4250b07a52a22cc7c54e8643cce5b61caebf15c3e` |
| 4 | `theorem` | [thetaMoment_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125XiSectionMoments/Variant8f027cfa88354283d499a5e841405928898be9374bb6b5b6fba82112ab9f4baa.lean/declarations/thetamoment-pos--2a821835eab43f6ec5e759b1.md) | 31 | `result-track:2a821835eab43f6ec5e759b18b416039c9b79d2b66cda767df06d01994d3cd4d` |
| 5 | `theorem` | [thetaMoment_quadratic_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125XiSectionMoments/Variant8f027cfa88354283d499a5e841405928898be9374bb6b5b6fba82112ab9f4baa.lean/declarations/thetamoment-quadratic-nonneg--c500281a6b1865e8b5aa9a81.md) | 38 | `result-track:c500281a6b1865e8b5aa9a814a2fde32e8ba836e1946fb17d46ff03b48a8272a` |
| 6 | `theorem` | [thetaMoment_logConvex](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125XiSectionMoments/Variant8f027cfa88354283d499a5e841405928898be9374bb6b5b6fba82112ab9f4baa.lean/declarations/thetamoment-logconvex--e2344f71b15b627c3bc7123e.md) | 65 | `result-track:e2344f71b15b627c3bc7123e22979b48a8c64694eafdfe0f3d170ae0ba15ab41` |
| 7 | `theorem` | [coefficient_mul_factorial](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125XiSectionMoments/Variant8f027cfa88354283d499a5e841405928898be9374bb6b5b6fba82112ab9f4baa.lean/declarations/coefficient-mul-factorial--abb5a4035aa5c9ab93b3c602.md) | 73 | `result-track:abb5a4035aa5c9ab93b3c602c29797cf0071ccb42dc051430cb0b959e60e61a8` |
| 8 | `theorem` | [coefficient_logConvex_factorial](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125XiSectionMoments/Variant8f027cfa88354283d499a5e841405928898be9374bb6b5b6fba82112ab9f4baa.lean/declarations/coefficient-logconvex-factorial--ddf07226dc50d35b86895288.md) | 77 | `result-track:ddf07226dc50d35b86895288c63d355dfa2e040d76335055c5eb886ad7472295` |
| 9 | `theorem` | [coefficient_fourth_obstruction](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125XiSectionMoments/Variant8f027cfa88354283d499a5e841405928898be9374bb6b5b6fba82112ab9f4baa.lean/declarations/coefficient-fourth-obstruction--35c145e342702e94c24543d9.md) | 114 | `result-track:35c145e342702e94c24543d9876fcad235b5f5514effe915f455e48afb9d6462` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
