# Verification target: GRWTSK.Analysis.Operator.HolomorphicMultiplierNorming

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aac63e791fc42f87e7ec9873699d57cd343389f6",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Operator/HolomorphicMultiplierNorming.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorming.lean/index.md) · [Full source](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorming.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aac63e791fc42f87e7ec9873699d57cd343389f6`.

Source path: `GRWTSK/Analysis/Operator/HolomorphicMultiplierNorming.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Operator/HolomorphicMultiplierNorming.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Operator.HolomorphicMultiplierComplete`](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierComplete.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PointEvaluationPort](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorming.lean/declarations/pointevaluationport--d399e02ddd2d33fe719b911c.md) | 40 | `declaration-track:d399e02ddd2d33fe719b911cf64d7cb9b73b81ad70cdfcee886639cf4fc1faff` |
| 2 | `theorem` | [eigenfunctional](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorming.lean/declarations/eigenfunctional--6c015d972eaf6b18314e498d.md) | 53 | `result-track:6c015d972eaf6b18314e498def9e718e197108826025c99c64f752428c8db733` |
| 3 | `theorem` | [value_norm_le](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorming.lean/declarations/value-norm-le--466133b539ba4046a1d74b11.md) | 64 | `result-track:466133b539ba4046a1d74b116abab54f9cda6ea0cc031941f4aaa99c61399396` |
| 4 | `theorem` | [value_norm_le_completed](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorming.lean/declarations/value-norm-le-completed--07f08746d7da80f954b08e98.md) | 77 | `result-track:07f08746d7da80f954b08e98d193192b3cd8c6d28dc5b211bef1a42d4d5e0c5d` |
| 5 | `theorem` | [completedRepresentation_norm_eq](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorming.lean/declarations/completedrepresentation-norm-eq--99f8dc6135a93785316402b1.md) | 86 | `result-track:99f8dc6135a93785316402b19e1989dcccfc029d1c0d6f85cf16f8476409e481` |
| 6 | `theorem` | [quotientRepresentation_norm_eq](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorming.lean/declarations/quotientrepresentation-norm-eq--dc2a853f5f9599458dac4a61.md) | 102 | `result-track:dc2a853f5f9599458dac4a6120cdfed55f3fd1fb2543b24c176610730612b482` |
| 7 | `def` | [representationLinearIsometry](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorming.lean/declarations/representationlinearisometry--7a6a493f83d36115d66c9111.md) | 112 | `declaration-track:7a6a493f83d36115d66c9111affaba691f094d236c700e6f10c5a7863d1ae0be` |
| 8 | `theorem` | [representationLinearIsometry_apply](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorming.lean/declarations/representationlinearisometry-apply--8ac6f9f674af0693cbbf4331.md) | 120 | `result-track:8ac6f9f674af0693cbbf4331809665ed46154162f80c2fc6cbaae156b195c686` |
| 9 | `theorem` | [representationLinearIsometry_toLinearMap](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorming.lean/declarations/representationlinearisometry-tolinearmap--7733ae94a7a2f447d1319c84.md) | 126 | `result-track:7733ae94a7a2f447d1319c84cf1d58557b5671046b64a88da116dd4582d6063d` |
| 10 | `theorem` | [represented_range_isClosed](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorming.lean/declarations/represented-range-isclosed--d618a7dc8fc918c0e57039a2.md) | 133 | `result-track:d618a7dc8fc918c0e57039a280e3bf214c885c453b43eb0ac7cfb1eda173d88b` |
| 11 | `theorem` | [existsUnique_symbol_of_operator_limit](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorming.lean/declarations/existsunique-symbol-of-operator-limit--583e7fe233a63aa5f01e1055.md) | 142 | `result-track:583e7fe233a63aa5f01e10557af373599797d7db45e2379ab81cbf3982cf4748` |
| 12 | `def` | [diracValue](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorming.lean/declarations/diracvalue--aee5675793e670cfb82d8a20.md) | 163 | `declaration-track:aee5675793e670cfb82d8a20a19f0d85f978934c8f7e05e06b503121147a5440` |
| 13 | `theorem` | [diracValue_classOf](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorming.lean/declarations/diracvalue-classof--15ceb24a20cec06c1c27894b.md) | 170 | `result-track:15ceb24a20cec06c1c27894b259a7252ab90c87fc2375ed1d2416e8d8134f047` |
| 14 | `theorem` | [diracValue_norm](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorming.lean/declarations/diracvalue-norm--8dc410f2a603a5e6df8212df.md) | 176 | `result-track:8dc410f2a603a5e6df8212df20935485f29c05082656c4fec5f639141502f401` |
| 15 | `def` | [diracEvaluation](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorming.lean/declarations/diracevaluation--d9cf22a5885b9a35517b0266.md) | 187 | `declaration-track:d9cf22a5885b9a35517b0266f0d5273e00ad65101b2da120545db6cfc4374710` |
| 16 | `theorem` | [diracEvaluation_ne_zero](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorming.lean/declarations/diracevaluation-ne-zero--b2cfa67cf44def8d9c23172d.md) | 202 | `result-track:b2cfa67cf44def8d9c23172d962bae7486efc53e88d10a17e7fbfc7a257a9298` |
| 17 | `def` | [diracPointEvaluationPort](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorming.lean/declarations/diracpointevaluationport--1ea2df67e3208d3940fc5108.md) | 212 | `declaration-track:1ea2df67e3208d3940fc5108b891ab009c7a63c5ffffb282ebdf565e439127a3` |
| 18 | `theorem` | [quotientRepresentation_dirac](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorming.lean/declarations/quotientrepresentation-dirac--bb8c35dcac8b077fc17f7a81.md) | 219 | `result-track:bb8c35dcac8b077fc17f7a81ca50feb336619d3e9eef26d40a0c5ef9eb48315f` |
| 19 | `theorem` | [completedRepresentation_dirac_norm](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorming.lean/declarations/completedrepresentation-dirac-norm--212e7c0461379efe40a4e69c.md) | 233 | `result-track:212e7c0461379efe40a4e69cc432ff85a28a7597780bd6cae9b733e690945d44` |
| 20 | `theorem` | [disk_exact_dirac_norms](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorming.lean/declarations/disk-exact-dirac-norms--f342a7ccacbbe11533365f88.md) | 253 | `result-track:f342a7ccacbbe11533365f8831c0bbb61c81742e82a10b7204b866b332bb60cd` |
| 21 | `theorem` | [no_off_support_valueMap](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorming.lean/declarations/no-off-support-valuemap--ad2728d15e22571da0212f96.md) | 267 | `result-track:ad2728d15e22571da0212f96a42b6449f907770d5d4b3fcd1d3c2c24d5cb7ce2` |
| 22 | `theorem` | [no_off_support_evaluation](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorming.lean/declarations/no-off-support-evaluation--590a59b0688a2b578612e4b7.md) | 287 | `result-track:590a59b0688a2b578612e4b738d7f0a4230cae93bdcae37be18fb0f68c32c9e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
