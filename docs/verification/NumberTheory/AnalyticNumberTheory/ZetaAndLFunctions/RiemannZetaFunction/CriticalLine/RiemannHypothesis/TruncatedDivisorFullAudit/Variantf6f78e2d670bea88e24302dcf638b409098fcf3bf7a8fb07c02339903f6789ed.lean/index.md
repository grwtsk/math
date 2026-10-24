# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TruncatedDivisorFullAudit.Variantf6f78e2d670bea88e24302dcf638b409098fcf3bf7a8fb07c02339903f6789ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a69fb3bc6cac742646e703937ae5faf7457fba5",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorFullAudit/Variantf6f78e2d670bea88e24302dcf638b409098fcf3bf7a8fb07c02339903f6789ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorFullAudit/Variantf6f78e2d670bea88e24302dcf638b409098fcf3bf7a8fb07c02339903f6789ed.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorFullAudit/Variantf6f78e2d670bea88e24302dcf638b409098fcf3bf7a8fb07c02339903f6789ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a69fb3bc6cac742646e703937ae5faf7457fba5`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorFullAudit/Variantf6f78e2d670bea88e24302dcf638b409098fcf3bf7a8fb07c02339903f6789ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorFullAudit/Variantf6f78e2d670bea88e24302dcf638b409098fcf3bf7a8fb07c02339903f6789ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.CoprimeCount` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.LogarithmicResidualTail` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dampedDivisorCoefficient](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorFullAudit/Variantf6f78e2d670bea88e24302dcf638b409098fcf3bf7a8fb07c02339903f6789ed.lean/declarations/dampeddivisorcoefficient--6642bca151bf42d84e80e38b.md) | 7 | `declaration-track:6642bca151bf42d84e80e38beeb3e410b544b14abf470674fdb59be26bd51010` |
| 2 | `theorem` | [floor_sum_divisors](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorFullAudit/Variantf6f78e2d670bea88e24302dcf638b409098fcf3bf7a8fb07c02339903f6789ed.lean/declarations/floor-sum-divisors--f3f0981b8d163149dde29cc3.md) | 24 | `result-track:f3f0981b8d163149dde29cc33ff4c089172d623d795c02aa0198f40cec1f9e0a` |
| 3 | `theorem` | [divisor_prefix_eq_floor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorFullAudit/Variantf6f78e2d670bea88e24302dcf638b409098fcf3bf7a8fb07c02339903f6789ed.lean/declarations/divisor-prefix-eq-floor--70cd0dd46f13b51924d72510.md) | 54 | `result-track:70cd0dd46f13b51924d72510d009bc79ad612347db7e5aed12a2f998aa1dd1ab` |
| 4 | `theorem` | [residual_floor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorFullAudit/Variantf6f78e2d670bea88e24302dcf638b409098fcf3bf7a8fb07c02339903f6789ed.lean/declarations/residual-floor--beaedb84bee04b5a64c82245.md) | 60 | `result-track:beaedb84bee04b5a64c82245b9fae192fb8bce11caad023a5b53b4da76cd016a` |
| 5 | `theorem` | [damped_floor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorFullAudit/Variantf6f78e2d670bea88e24302dcf638b409098fcf3bf7a8fb07c02339903f6789ed.lean/declarations/damped-floor--09544ff640398dbc2ec8c81b.md) | 75 | `result-track:09544ff640398dbc2ec8c81b357dc47c8b6c11a1d97b4d55390672c4b0a74af6` |
| 6 | `theorem` | [arithmeticResidual_eq_divisor_prefix_closed](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorFullAudit/Variantf6f78e2d670bea88e24302dcf638b409098fcf3bf7a8fb07c02339903f6789ed.lean/declarations/arithmeticresidual-eq-divisor-prefix-closed--153dd539285b5dad532037ca.md) | 87 | `result-track:153dd539285b5dad532037ca2d6d54d520227badc103caf513ed1fdfb4516c9c` |
| 7 | `theorem` | [arithmeticResidual_eq_divisor_prefix](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorFullAudit/Variantf6f78e2d670bea88e24302dcf638b409098fcf3bf7a8fb07c02339903f6789ed.lean/declarations/arithmeticresidual-eq-divisor-prefix--239daae78e3488b2efd6c04a.md) | 100 | `result-track:239daae78e3488b2efd6c04a67a9e726a51e17e0c6def9e3d9d6a5ae044826b4` |
| 8 | `theorem` | [arithmeticResidual_zero_of_lt_cutoff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorFullAudit/Variantf6f78e2d670bea88e24302dcf638b409098fcf3bf7a8fb07c02339903f6789ed.lean/declarations/arithmeticresidual-zero-of-lt-cutoff--4694b7e191e8611bc99be7dd.md) | 111 | `result-track:4694b7e191e8611bc99be7dd664450149aa21224dd28146878645d2ab66ab3f3` |
| 9 | `theorem` | [arithmeticResidual_zero_damping_endpoint](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorFullAudit/Variantf6f78e2d670bea88e24302dcf638b409098fcf3bf7a8fb07c02339903f6789ed.lean/declarations/arithmeticresidual-zero-damping-endpoint--931e023abbbda4ed66b7cc6f.md) | 121 | `result-track:931e023abbbda4ed66b7cc6ff8572888545d38bb8347035f495cc5551f09f1af` |
| 10 | `def` | [truncatedDivisorCoefficient](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorFullAudit/Variantf6f78e2d670bea88e24302dcf638b409098fcf3bf7a8fb07c02339903f6789ed.lean/declarations/truncateddivisorcoefficient--c0f102845461ace37aaaee92.md) | 148 | `declaration-track:c0f102845461ace37aaaee92b6f27d05b3c548c0e53183d9a5a6dc1a44643fb9` |
| 11 | `theorem` | [truncatedDivisorCoefficient_eq_full](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorFullAudit/Variantf6f78e2d670bea88e24302dcf638b409098fcf3bf7a8fb07c02339903f6789ed.lean/declarations/truncateddivisorcoefficient-eq-full--2221d8e14ee078bbed9e871e.md) | 153 | `result-track:2221d8e14ee078bbed9e871e4e0896b6f1be8725501b444e240ef0035bbdc68a` |
| 12 | `theorem` | [finite_floor_prefix](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorFullAudit/Variantf6f78e2d670bea88e24302dcf638b409098fcf3bf7a8fb07c02339903f6789ed.lean/declarations/finite-floor-prefix--d012e45b14145e513fce81d0.md) | 161 | `result-track:d012e45b14145e513fce81d0dd475ebcab41b87fed6e8c5b6b1d1f5d088234a4` |
| 13 | `theorem` | [damped_floor_eq_truncated_prefix](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorFullAudit/Variantf6f78e2d670bea88e24302dcf638b409098fcf3bf7a8fb07c02339903f6789ed.lean/declarations/damped-floor-eq-truncated-prefix--bb21e97bfc6c692d63660261.md) | 190 | `result-track:bb21e97bfc6c692d63660261cdbb7132046c28a32d4867beabff26afa37e9a5e` |
| 14 | `theorem` | [residual_floor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorFullAudit/Variantf6f78e2d670bea88e24302dcf638b409098fcf3bf7a8fb07c02339903f6789ed.lean/declarations/residual-floor--6cd523690733f8430e470bdc.md) | 200 | `result-track:6cd523690733f8430e470bdcc85511f1347a0f140571d49bdee09d7d7d97b4dd` |
| 15 | `theorem` | [arithmeticResidual_eq_truncated_prefix](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorFullAudit/Variantf6f78e2d670bea88e24302dcf638b409098fcf3bf7a8fb07c02339903f6789ed.lean/declarations/arithmeticresidual-eq-truncated-prefix--6a6246b6792a9e0e9bec2e7a.md) | 218 | `result-track:6a6246b6792a9e0e9bec2e7a8ba50e43f15a23eafc17fb449bea4d6d7cae1130` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
