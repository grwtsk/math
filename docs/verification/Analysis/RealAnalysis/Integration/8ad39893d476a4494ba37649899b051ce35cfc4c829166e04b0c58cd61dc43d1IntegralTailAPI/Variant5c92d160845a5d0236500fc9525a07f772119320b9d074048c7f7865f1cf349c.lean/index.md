# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1IntegralTailAPI.Variant5c92d160845a5d0236500fc9525a07f772119320b9d074048c7f7865f1cf349c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0cb8fab5fa02c27b97b431595a927ce33eebc8c9",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1IntegralTailAPI/Variant5c92d160845a5d0236500fc9525a07f772119320b9d074048c7f7865f1cf349c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1IntegralTailAPI/Variant5c92d160845a5d0236500fc9525a07f772119320b9d074048c7f7865f1cf349c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1IntegralTailAPI/Variant5c92d160845a5d0236500fc9525a07f772119320b9d074048c7f7865f1cf349c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0cb8fab5fa02c27b97b431595a927ce33eebc8c9`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1IntegralTailAPI/Variant5c92d160845a5d0236500fc9525a07f772119320b9d074048c7f7865f1cf349c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1IntegralTailAPI/Variant5c92d160845a5d0236500fc9525a07f772119320b9d074048c7f7865f1cf349c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailDerivatives` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [integralTail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1IntegralTailAPI/Variant5c92d160845a5d0236500fc9525a07f772119320b9d074048c7f7865f1cf349c.lean/declarations/integraltail--8b8e3a8c9baef9542f5cd2a8.md) | 16 | `declaration-track:8b8e3a8c9baef9542f5cd2a815bb5be6cd904018f7212ecd588372fa753bdbb0` |
| 2 | `theorem` | [integrableOn_Ici_all](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1IntegralTailAPI/Variant5c92d160845a5d0236500fc9525a07f772119320b9d074048c7f7865f1cf349c.lean/declarations/integrableon-ici-all--3dea29513818fa4654a9be99.md) | 18 | `result-track:3dea29513818fa4654a9be99d94926c2a033c49414f793e2f2e46c771504492f` |
| 3 | `theorem` | [integralTail_eq_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1IntegralTailAPI/Variant5c92d160845a5d0236500fc9525a07f772119320b9d074048c7f7865f1cf349c.lean/declarations/integraltail-eq-sub--044bf8c3fbe0e9a7246c1fea.md) | 28 | `result-track:044bf8c3fbe0e9a7246c1feae1b78c0e07ed00052a3e6b34f19f7893ddf5d79e` |
| 4 | `theorem` | [hasDerivAt_integralTail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1IntegralTailAPI/Variant5c92d160845a5d0236500fc9525a07f772119320b9d074048c7f7865f1cf349c.lean/declarations/hasderivat-integraltail--6ef80697d7f0f779850e6eb6.md) | 35 | `result-track:6ef80697d7f0f779850e6eb65e38d632f96c028326c8f70dc3585a98dc28f763` |
| 5 | `theorem` | [integralTail_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1IntegralTailAPI/Variant5c92d160845a5d0236500fc9525a07f772119320b9d074048c7f7865f1cf349c.lean/declarations/integraltail-positive--d12e631b0c7a5288c80aedda.md) | 45 | `result-track:d12e631b0c7a5288c80aeddaedbb323b3be0aec5748dae1f20d148a68d72e4da` |
| 6 | `theorem` | [antitone_neg_reciprocal_ratio](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1IntegralTailAPI/Variant5c92d160845a5d0236500fc9525a07f772119320b9d074048c7f7865f1cf349c.lean/declarations/antitone-neg-reciprocal-ratio--0a7017bc82f268c340754ea2.md) | 59 | `result-track:0a7017bc82f268c340754ea2e029983895cfcf366110f23063ae3f632c2974e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
