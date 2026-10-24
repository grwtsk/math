# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MulExpNegMulSqIntegral.Variant9c059b66bb7b9687afa88196ddb4205dcad169722ac375a3ff7020f9a5c0e3ad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8d3a0b9ba2ab7be63444af783ce2d44aa9c4365",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variant9c059b66bb7b9687afa88196ddb4205dcad169722ac375a3ff7020f9a5c0e3ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variant9c059b66bb7b9687afa88196ddb4205dcad169722ac375a3ff7020f9a5c0e3ad.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variant9c059b66bb7b9687afa88196ddb4205dcad169722ac375a3ff7020f9a5c0e3ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8d3a0b9ba2ab7be63444af783ce2d44aa9c4365`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variant9c059b66bb7b9687afa88196ddb4205dcad169722ac375a3ff7020f9a5c0e3ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variant9c059b66bb7b9687afa88196ddb4205dcad169722ac375a3ff7020f9a5c0e3ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integrable_mulExpNegMulSq_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variant9c059b66bb7b9687afa88196ddb4205dcad169722ac375a3ff7020f9a5c0e3ad.lean/declarations/integrable-mulexpnegmulsq-comp--f87db5e13c39d5642f4d122d.md) | 59 | `result-track:f87db5e13c39d5642f4d122d1bcb82face95bb863ef43f2841deaf1a504966be` |
| 2 | `theorem` | [integrable_mulExpNegMulSq_comp_restrict_of_isCompact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variant9c059b66bb7b9687afa88196ddb4205dcad169722ac375a3ff7020f9a5c0e3ad.lean/declarations/integrable-mulexpnegmulsq-comp-restrict-of-iscompact--9e9be1a7a217a12abe6d76a7.md) | 64 | `result-track:9e9be1a7a217a12abe6d76a7c58ce64c9b857fc4dc8151120dd253911eed8089` |
| 3 | `theorem` | [tendsto_integral_mulExpNegMulSq_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variant9c059b66bb7b9687afa88196ddb4205dcad169722ac375a3ff7020f9a5c0e3ad.lean/declarations/tendsto-integral-mulexpnegmulsq-comp--aaec72c63780a449560484cc.md) | 71 | `result-track:aaec72c63780a449560484cc4f60d745c27451de01a139e1601cb867b52bddba` |
| 4 | `theorem` | [tendsto_integral_mul_one_add_inv_smul_sq_pow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variant9c059b66bb7b9687afa88196ddb4205dcad169722ac375a3ff7020f9a5c0e3ad.lean/declarations/tendsto-integral-mul-one-add-inv-smul-sq-pow--e3e4841b809a009608b7b50c.md) | 89 | `result-track:e3e4841b809a009608b7b50cf82ea780a1f1d68af064737fa8ed58721378e643` |
| 5 | `theorem` | [integral_mulExpNegMulSq_comp_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variant9c059b66bb7b9687afa88196ddb4205dcad169722ac375a3ff7020f9a5c0e3ad.lean/declarations/integral-mulexpnegmulsq-comp-eq--b4517f28578b0cb0098de520.md) | 127 | `result-track:b4517f28578b0cb0098de5203ed0003a9e13740e51eb43d3abc7c4d0a3518751` |
| 6 | `theorem` | [abs_integral_sub_setIntegral_mulExpNegMulSq_comp_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variant9c059b66bb7b9687afa88196ddb4205dcad169722ac375a3ff7020f9a5c0e3ad.lean/declarations/abs-integral-sub-setintegral-mulexpnegmulsq-comp-lt--c4c0fb1c4c5bb4817b3320ad.md) | 142 | `result-track:c4c0fb1c4c5bb4817b3320ad0378614e0a6aa20c66a3329214bc57dcbc46ee29` |
| 7 | `theorem` | [abs_setIntegral_mulExpNegMulSq_comp_sub_le_mul_measure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variant9c059b66bb7b9687afa88196ddb4205dcad169722ac375a3ff7020f9a5c0e3ad.lean/declarations/abs-setintegral-mulexpnegmulsq-comp-sub-le-mul-measure--e8dde2c22823d459e59788d7.md) | 151 | `result-track:e8dde2c22823d459e59788d79118057318e6b7cdaeb62c822bf0bc07b0904823` |
| 8 | `theorem` | [dist_integral_mulExpNegMulSq_comp_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variant9c059b66bb7b9687afa88196ddb4205dcad169722ac375a3ff7020f9a5c0e3ad.lean/declarations/dist-integral-mulexpnegmulsq-comp-le--b9968c178acd434d58603d22.md) | 168 | `result-track:b9968c178acd434d58603d225ef858238efd47a9855004d0e77750cb80e122dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
