# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.00a2a889384f51c873e9SourceCubicUpperLogMoments.Variant00a2a889384f51c873e962e1ad47576e811ac61df55d8ba57f67194be19f24ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce2d52f630ec274745be9552a44092446177056f",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variant00a2a889384f51c873e962e1ad47576e811ac61df55d8ba57f67194be19f24ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variant00a2a889384f51c873e962e1ad47576e811ac61df55d8ba57f67194be19f24ff.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variant00a2a889384f51c873e962e1ad47576e811ac61df55d8ba57f67194be19f24ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce2d52f630ec274745be9552a44092446177056f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variant00a2a889384f51c873e962e1ad47576e811ac61df55d8ba57f67194be19f24ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variant00a2a889384f51c873e962e1ad47576e811ac61df55d8ba57f67194be19f24ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceSamplingCoefficients` — import line 1; external provider; requires a separately pinned dependency.
- `SourceSignedSamplingExplicitBudget` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [upperLogWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variant00a2a889384f51c873e962e1ad47576e811ac61df55d8ba57f67194be19f24ff.lean/declarations/upperlogweight--64b4a840987b41bc27638007.md) | 28 | `declaration-track:64b4a840987b41bc2763800783a11b8f3bd0a14a26f65cad5cbe516d7f0bbc07` |
| 2 | `theorem` | [exp_mul_upperLogWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variant00a2a889384f51c873e962e1ad47576e811ac61df55d8ba57f67194be19f24ff.lean/declarations/exp-mul-upperlogweight--4e95be60efccbf71cc3712b3.md) | 31 | `result-track:4e95be60efccbf71cc3712b31b67cc04132e77dd69079681d44716490c0ec95b` |
| 3 | `theorem` | [upperLogWeight_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variant00a2a889384f51c873e962e1ad47576e811ac61df55d8ba57f67194be19f24ff.lean/declarations/upperlogweight-integral--7a4ac99a47f4cdaf551abb61.md) | 40 | `result-track:7a4ac99a47f4cdaf551abb6195a8848b26ce48279779b224361f51bdd0e3a92a` |
| 4 | `theorem` | [upperLogWeight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variant00a2a889384f51c873e962e1ad47576e811ac61df55d8ba57f67194be19f24ff.lean/declarations/upperlogweight-integrable--7730a0cc63556ab017c89be4.md) | 50 | `result-track:7730a0cc63556ab017c89be429a3111caa1895ea4a08bae0a1fd34a1ddb62dd5` |
| 5 | `theorem` | [upperLogWeight_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variant00a2a889384f51c873e962e1ad47576e811ac61df55d8ba57f67194be19f24ff.lean/declarations/upperlogweight-nonneg--49dc0c8afb8772f084cd7b5a.md) | 54 | `result-track:49dc0c8afb8772f084cd7b5a9272026ef4a81109194e8a13a081b7d4cc3a2969` |
| 6 | `theorem` | [upper_fourth_log_moment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variant00a2a889384f51c873e962e1ad47576e811ac61df55d8ba57f67194be19f24ff.lean/declarations/upper-fourth-log-moment--e3be361b996bdd4ae1e68426.md) | 60 | `result-track:e3be361b996bdd4ae1e68426eb20d686824436f9d8c510fa58e2bfb816a478e5` |
| 7 | `theorem` | [upper_fifth_log_moment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variant00a2a889384f51c873e962e1ad47576e811ac61df55d8ba57f67194be19f24ff.lean/declarations/upper-fifth-log-moment--9d20cfc9723e2bbe800c7226.md) | 66 | `result-track:9d20cfc9723e2bbe800c722642afb73ba74427a5d862a42a9718e38059779a1b` |
| 8 | `def` | [cubicUpperMajorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variant00a2a889384f51c873e962e1ad47576e811ac61df55d8ba57f67194be19f24ff.lean/declarations/cubicuppermajorant--9b1d7db4c5a48d2728f5bf44.md) | 73 | `declaration-track:9b1d7db4c5a48d2728f5bf446d385c6fb39fbc740fa0475bf36b374bd68683aa` |
| 9 | `theorem` | [cubicUpperMajorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variant00a2a889384f51c873e962e1ad47576e811ac61df55d8ba57f67194be19f24ff.lean/declarations/cubicuppermajorant-integrable--849e1df451c0bc831137ec2f.md) | 77 | `result-track:849e1df451c0bc831137ec2f37a41067535ef3112f0635a9bb2820e49692b480` |
| 10 | `theorem` | [cubicUpperMajorant_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variant00a2a889384f51c873e962e1ad47576e811ac61df55d8ba57f67194be19f24ff.lean/declarations/cubicuppermajorant-nonneg--fe5b04886eacafd8b390abc0.md) | 82 | `result-track:fe5b04886eacafd8b390abc039e90d16b1c299500ce81cd70eb4e28f3a66fb05` |
| 11 | `theorem` | [cubicUpperMajorant_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variant00a2a889384f51c873e962e1ad47576e811ac61df55d8ba57f67194be19f24ff.lean/declarations/cubicuppermajorant-integral--74cd9cd5e5b5ea244f4908e2.md) | 90 | `result-track:74cd9cd5e5b5ea244f4908e2616353bae7e18176021f3bb19d7206b89ee304a4` |
| 12 | `def` | [centeredSawtooth](../../../../../../mathematics/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variant00a2a889384f51c873e962e1ad47576e811ac61df55d8ba57f67194be19f24ff.lean/declarations/centeredsawtooth--ce13bb60ed25dc5161df4a50.md) | 102 | `declaration-track:ce13bb60ed25dc5161df4a50856e0be461e769cc3c4ea6da3251318191b1d32a` |
| 13 | `theorem` | [centeredSawtooth_abs_le_half](../../../../../../mathematics/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variant00a2a889384f51c873e962e1ad47576e811ac61df55d8ba57f67194be19f24ff.lean/declarations/centeredsawtooth-abs-le-half--76369c81d48281e6bbb7034d.md) | 104 | `result-track:76369c81d48281e6bbb7034da12a919814f48594406bdbd9ce4c5bc6f7586dc6` |
| 14 | `theorem` | [centeredSawtooth_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variant00a2a889384f51c873e962e1ad47576e811ac61df55d8ba57f67194be19f24ff.lean/declarations/centeredsawtooth-measurable--c0a49e5492080d118709f5ee.md) | 111 | `result-track:c0a49e5492080d118709f5eec3c5e6a68ca7c52d6dc20306193f9e436da5c496` |
| 15 | `theorem` | [centered_cubic_row_integrable_of_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variant00a2a889384f51c873e962e1ad47576e811ac61df55d8ba57f67194be19f24ff.lean/declarations/centered-cubic-row-integrable-of-bound--0afdebd995ec577362d0bb97.md) | 115 | `result-track:0afdebd995ec577362d0bb975131a08f9c1d3376c4bfaaeffd6c7f2897e51b4f` |
| 16 | `theorem` | [centered_cubic_row_abs_le_of_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variant00a2a889384f51c873e962e1ad47576e811ac61df55d8ba57f67194be19f24ff.lean/declarations/centered-cubic-row-abs-le-of-bound--6c01c23da6d4651a842c712c.md) | 130 | `result-track:6c01c23da6d4651a842c712c88a0d7170554450304f0c5911f19fd7e23f1ede0` |
| 17 | `theorem` | [full_short_divisor_row_sum_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variant00a2a889384f51c873e962e1ad47576e811ac61df55d8ba57f67194be19f24ff.lean/declarations/full-short-divisor-row-sum-abs-le--3badbbbe016b778cb2338771.md) | 149 | `result-track:3badbbbe016b778cb23387713b9eaa9725b6b89b9b6ebfdfdbeb0b0761d3f697` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
