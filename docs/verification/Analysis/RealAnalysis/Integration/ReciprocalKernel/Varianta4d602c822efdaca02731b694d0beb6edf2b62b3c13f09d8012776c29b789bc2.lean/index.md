# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ReciprocalKernel.Varianta4d602c822efdaca02731b694d0beb6edf2b62b3c13f09d8012776c29b789bc2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31eb5ead228c3e87f9d46f968aa17b75f447a4e7",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ReciprocalKernel/Varianta4d602c822efdaca02731b694d0beb6edf2b62b3c13f09d8012776c29b789bc2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Varianta4d602c822efdaca02731b694d0beb6edf2b62b3c13f09d8012776c29b789bc2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Varianta4d602c822efdaca02731b694d0beb6edf2b62b3c13f09d8012776c29b789bc2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31eb5ead228c3e87f9d46f968aa17b75f447a4e7`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ReciprocalKernel/Varianta4d602c822efdaca02731b694d0beb6edf2b62b3c13f09d8012776c29b789bc2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ReciprocalKernel/Varianta4d602c822efdaca02731b694d0beb6edf2b62b3c13f09d8012776c29b789bc2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SumIntegralComparisons` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Varianta4d602c822efdaca02731b694d0beb6edf2b62b3c13f09d8012776c29b789bc2.lean/declarations/kernel--5b8e23ee6997e3065ba22bcd.md) | 20 | `declaration-track:5b8e23ee6997e3065ba22bcd9bb25c5d73f719893c97a4ed3f9a76dcc4a7152c` |
| 2 | `theorem` | [kernel_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Varianta4d602c822efdaca02731b694d0beb6edf2b62b3c13f09d8012776c29b789bc2.lean/declarations/kernel-zero--93ff2d9481f606b8d34dfbc9.md) | 23 | `result-track:93ff2d9481f606b8d34dfbc97a40dceacd613db5bdfda119acd452552de92e9b` |
| 3 | `theorem` | [kernel_zero_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Varianta4d602c822efdaca02731b694d0beb6edf2b62b3c13f09d8012776c29b789bc2.lean/declarations/kernel-zero-sum--9a461783b5bc96536a2bb41e.md) | 26 | `result-track:9a461783b5bc96536a2bb41e25ce69a29f13a4834875bc04072db1e859405548` |
| 4 | `theorem` | [kernel_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Varianta4d602c822efdaca02731b694d0beb6edf2b62b3c13f09d8012776c29b789bc2.lean/declarations/kernel-nonneg--b115007c81cf856190d719c0.md) | 30 | `result-track:b115007c81cf856190d719c0cd88929fd798b700997608c2ca9feabaa5bf7e03` |
| 5 | `theorem` | [kernel_antitone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Varianta4d602c822efdaca02731b694d0beb6edf2b62b3c13f09d8012776c29b789bc2.lean/declarations/kernel-antitone--d44e4fc5fd20bc8aa61a47a5.md) | 35 | `result-track:d44e4fc5fd20bc8aa61a47a5a985d92f9bb210b9345120517f6eee3fe497377d` |
| 6 | `theorem` | [kernel_quarter_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Varianta4d602c822efdaca02731b694d0beb6edf2b62b3c13f09d8012776c29b789bc2.lean/declarations/kernel-quarter-le--93eac7838cceb02f8d984380.md) | 44 | `result-track:93eac7838cceb02f8d98438016bef3ca67833106da5274f88656c267c64abcbf` |
| 7 | `def` | [primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Varianta4d602c822efdaca02731b694d0beb6edf2b62b3c13f09d8012776c29b789bc2.lean/declarations/primitive--6247d964a7bb5711250eaf1f.md) | 50 | `declaration-track:6247d964a7bb5711250eaf1f010b056b8bd442f3fdc9d2ebae693b6a33569355` |
| 8 | `theorem` | [hasDerivAt_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Varianta4d602c822efdaca02731b694d0beb6edf2b62b3c13f09d8012776c29b789bc2.lean/declarations/hasderivat-primitive--caa6efec231940d92840ce61.md) | 53 | `result-track:caa6efec231940d92840ce61504f8ca45e61c4062157348b2b91b88cd53f16ad` |
| 9 | `theorem` | [primitive_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Varianta4d602c822efdaca02731b694d0beb6edf2b62b3c13f09d8012776c29b789bc2.lean/declarations/primitive-tendsto--ae9041bad42e8baf43ad4908.md) | 65 | `result-track:ae9041bad42e8baf43ad49082db24ce69db4bdcd9012f0883ca08e2275638a76` |
| 10 | `theorem` | [kernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Varianta4d602c822efdaca02731b694d0beb6edf2b62b3c13f09d8012776c29b789bc2.lean/declarations/kernel-integrable--834ea21513afdf21d6b3b31f.md) | 73 | `result-track:834ea21513afdf21d6b3b31ffb6220b624977401a1c75b72942d04d467c6b95e` |
| 11 | `theorem` | [kernel_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Varianta4d602c822efdaca02731b694d0beb6edf2b62b3c13f09d8012776c29b789bc2.lean/declarations/kernel-integral--41f2ab0735c980b8a4f34262.md) | 80 | `result-track:41f2ab0735c980b8a4f34262b6002965af347242e8bff2d41cbdb9b04ccdf763` |
| 12 | `theorem` | [kernel_integral_quarter](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Varianta4d602c822efdaca02731b694d0beb6edf2b62b3c13f09d8012776c29b789bc2.lean/declarations/kernel-integral-quarter--5913338cdf5d90cd91fbcf2a.md) | 88 | `result-track:5913338cdf5d90cd91fbcf2ab548ee7c408c56f3c49b6d2a1a86b85c14ba9925` |
| 13 | `theorem` | [shifted_primitive_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Varianta4d602c822efdaca02731b694d0beb6edf2b62b3c13f09d8012776c29b789bc2.lean/declarations/shifted-primitive-tendsto--40af321aec16b680614c7c02.md) | 97 | `result-track:40af321aec16b680614c7c0210012d00f972f8bd71db07ba8e6d362624e8414e` |
| 14 | `theorem` | [shifted_kernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Varianta4d602c822efdaca02731b694d0beb6edf2b62b3c13f09d8012776c29b789bc2.lean/declarations/shifted-kernel-integrable--547b700611aac98cc71c1e16.md) | 102 | `result-track:547b700611aac98cc71c1e167932c7aca28e196a8551091cee7da8a2911b2aa0` |
| 15 | `theorem` | [shifted_kernel_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Varianta4d602c822efdaca02731b694d0beb6edf2b62b3c13f09d8012776c29b789bc2.lean/declarations/shifted-kernel-integral--d83eb49137c81acc4d933d62.md) | 116 | `result-track:d83eb49137c81acc4d933d622989d7cd8ef6b4dc60fa542be2f3bc456055c427` |
| 16 | `theorem` | [decreasing_sum_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Varianta4d602c822efdaca02731b694d0beb6edf2b62b3c13f09d8012776c29b789bc2.lean/declarations/decreasing-sum-bounds--98d0211f3521e37becd8e2c5.md) | 131 | `result-track:98d0211f3521e37becd8e2c5195889bfff736de6cc52f4d7179d459801925cf4` |
| 17 | `theorem` | [shifted_kernel_antitone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Varianta4d602c822efdaca02731b694d0beb6edf2b62b3c13f09d8012776c29b789bc2.lean/declarations/shifted-kernel-antitone--73d2d6ed286b920d6d0190d0.md) | 139 | `result-track:73d2d6ed286b920d6d0190d04854e6bf1521db503f2c254b527d8a1c45d5a5ab` |
| 18 | `theorem` | [kernel_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Varianta4d602c822efdaca02731b694d0beb6edf2b62b3c13f09d8012776c29b789bc2.lean/declarations/kernel-summable--9ac3424bc4ced7fb990299f4.md) | 148 | `result-track:9ac3424bc4ced7fb990299f41af34c40d9c60c756d65b431a6354114051943df` |
| 19 | `theorem` | [kernel_sum_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Varianta4d602c822efdaca02731b694d0beb6edf2b62b3c13f09d8012776c29b789bc2.lean/declarations/kernel-sum-bounds--f328e95feb99c38760d4b8f3.md) | 155 | `result-track:f328e95feb99c38760d4b8f3ee2a176d505d28f6f2e17fb88a46cdadca121031` |
| 20 | `theorem` | [sum_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Varianta4d602c822efdaca02731b694d0beb6edf2b62b3c13f09d8012776c29b789bc2.lean/declarations/sum-bounds--9e4e4e47c8a42da8bb0e1221.md) | 167 | `result-track:9e4e4e47c8a42da8bb0e1221bf67d80e37ec1a73523300bba5c542b73ce1b0aa` |
| 21 | `theorem` | [frequency_sum_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ReciprocalKernel/Varianta4d602c822efdaca02731b694d0beb6edf2b62b3c13f09d8012776c29b789bc2.lean/declarations/frequency-sum-bounds--539a68b83a20835dcbe64fe8.md) | 176 | `result-track:539a68b83a20835dcbe64fe84820eb9e9e88ff75b1d846df1f119d045e38d033` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
