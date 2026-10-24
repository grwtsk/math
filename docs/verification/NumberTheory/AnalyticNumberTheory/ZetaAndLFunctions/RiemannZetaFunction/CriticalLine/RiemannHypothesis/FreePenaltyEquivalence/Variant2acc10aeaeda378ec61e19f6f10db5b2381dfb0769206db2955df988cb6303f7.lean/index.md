# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FreePenaltyEquivalence.Variant2acc10aeaeda378ec61e19f6f10db5b2381dfb0769206db2955df988cb6303f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "865029e37941e3876a925f4b8714fc36c07d051f",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FreePenaltyEquivalence/Variant2acc10aeaeda378ec61e19f6f10db5b2381dfb0769206db2955df988cb6303f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FreePenaltyEquivalence/Variant2acc10aeaeda378ec61e19f6f10db5b2381dfb0769206db2955df988cb6303f7.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FreePenaltyEquivalence/Variant2acc10aeaeda378ec61e19f6f10db5b2381dfb0769206db2955df988cb6303f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `865029e37941e3876a925f4b8714fc36c07d051f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FreePenaltyEquivalence/Variant2acc10aeaeda378ec61e19f6f10db5b2381dfb0769206db2955df988cb6303f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FreePenaltyEquivalence/Variant2acc10aeaeda378ec61e19f6f10db5b2381dfb0769206db2955df988cb6303f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.PolynomialMertensReduction` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Conversation.MatrixLeakage` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [repairQuadratic](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FreePenaltyEquivalence/Variant2acc10aeaeda378ec61e19f6f10db5b2381dfb0769206db2955df988cb6303f7.lean/declarations/repairquadratic--62d454261f8907b889c446c6.md) | 29 | `declaration-track:62d454261f8907b889c446c65e1287b3a509e6b5f8f891eaefa483eb9042948f` |
| 2 | `def` | [repairPositive](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FreePenaltyEquivalence/Variant2acc10aeaeda378ec61e19f6f10db5b2381dfb0769206db2955df988cb6303f7.lean/declarations/repairpositive--52d73feddc0d740d163920bf.md) | 35 | `declaration-track:52d73feddc0d740d163920bf922e9d8b6d4d7d2570ea18a045966b7e6cc4e289` |
| 3 | `theorem` | [positive_slack_schur](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FreePenaltyEquivalence/Variant2acc10aeaeda378ec61e19f6f10db5b2381dfb0769206db2955df988cb6303f7.lean/declarations/positive-slack-schur--41f38c6abc350607c825b62e.md) | 37 | `result-track:41f38c6abc350607c825b62ecc5b14dba938d829a6028cb6024c848867e14eba` |
| 4 | `theorem` | [positive_slack_has_nonnegative_repair](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FreePenaltyEquivalence/Variant2acc10aeaeda378ec61e19f6f10db5b2381dfb0769206db2955df988cb6303f7.lean/declarations/positive-slack-has-nonnegative-repair--4e31352cd09c402c1da03138.md) | 51 | `result-track:4e31352cd09c402c1da03138136471ce3142becce5ac25151e7ce334c523a398` |
| 5 | `theorem` | [repair_requires_source_nonnegative](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FreePenaltyEquivalence/Variant2acc10aeaeda378ec61e19f6f10db5b2381dfb0769206db2955df988cb6303f7.lean/declarations/repair-requires-source-nonnegative--2fb166ec1745e6b39ffcd54a.md) | 55 | `result-track:2fb166ec1745e6b39ffcd54ac193bc8812d8879283c0ab0e65ef659ac4deebaf` |
| 6 | `theorem` | [zero_slack_requires_zero_cross](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FreePenaltyEquivalence/Variant2acc10aeaeda378ec61e19f6f10db5b2381dfb0769206db2955df988cb6303f7.lean/declarations/zero-slack-requires-zero-cross--afe88196dc698e2a437a0f04.md) | 59 | `result-track:afe88196dc698e2a437a0f0450545646235df16f8694731946c4bb0ffc820444` |
| 7 | `theorem` | [unrestricted_repair_iff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FreePenaltyEquivalence/Variant2acc10aeaeda378ec61e19f6f10db5b2381dfb0769206db2955df988cb6303f7.lean/declarations/unrestricted-repair-iff--588dc375d6c85186112cca98.md) | 69 | `result-track:588dc375d6c85186112cca98d929fc5832955c9e9e39473d9a1a4b502fd0a359` |
| 8 | `def` | [EventuallyFreePenalty](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FreePenaltyEquivalence/Variant2acc10aeaeda378ec61e19f6f10db5b2381dfb0769206db2955df988cb6303f7.lean/declarations/eventuallyfreepenalty--0187d82bebcde0dfbb476026.md) | 92 | `declaration-track:0187d82bebcde0dfbb476026ece0689abcf9454b8e3617aa59acf5e1ef5fe856` |
| 9 | `theorem` | [unrestricted_family_iff_source_upper](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FreePenaltyEquivalence/Variant2acc10aeaeda378ec61e19f6f10db5b2381dfb0769206db2955df988cb6303f7.lean/declarations/unrestricted-family-iff-source-upper--9e83253adcfab340611e4fb0.md) | 96 | `result-track:9e83253adcfab340611e4fb0b8a5a8fc0a83ee4184edce44ad4441c52da79e6f` |
| 10 | `theorem` | [actual_prime_free_certificate_iff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FreePenaltyEquivalence/Variant2acc10aeaeda378ec61e19f6f10db5b2381dfb0769206db2955df988cb6303f7.lean/declarations/actual-prime-free-certificate-iff--1aefa41e9789cc45e51e5c8c.md) | 118 | `result-track:1aefa41e9789cc45e51e5c8c37dbd6693fbef215eb06c2f8a94861d9dfe4ec7d` |
| 11 | `theorem` | [actual_free_certificate_iff_signed_mertens](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FreePenaltyEquivalence/Variant2acc10aeaeda378ec61e19f6f10db5b2381dfb0769206db2955df988cb6303f7.lean/declarations/actual-free-certificate-iff-signed-mertens--bcd729fb195720df781f2ac4.md) | 124 | `result-track:bcd729fb195720df781f2ac486a3679a6c2a4c72a22568e807528454f47122bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
