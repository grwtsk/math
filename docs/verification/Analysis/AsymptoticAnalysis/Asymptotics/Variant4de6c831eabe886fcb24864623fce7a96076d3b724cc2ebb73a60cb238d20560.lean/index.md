# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Asymptotics.Variant4de6c831eabe886fcb24864623fce7a96076d3b724cc2ebb73a60cb238d20560

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69fecde8ba93fa02266b26bc08777e8e7a068afb",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant4de6c831eabe886fcb24864623fce7a96076d3b724cc2ebb73a60cb238d20560.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant4de6c831eabe886fcb24864623fce7a96076d3b724cc2ebb73a60cb238d20560.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant4de6c831eabe886fcb24864623fce7a96076d3b724cc2ebb73a60cb238d20560.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69fecde8ba93fa02266b26bc08777e8e7a068afb`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant4de6c831eabe886fcb24864623fce7a96076d3b724cc2ebb73a60cb238d20560.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Asymptotics/Variant4de6c831eabe886fcb24864623fce7a96076d3b724cc2ebb73a60cb238d20560.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Group.Measure` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsBigO.integrableAtFilter](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant4de6c831eabe886fcb24864623fce7a96076d3b724cc2ebb73a60cb238d20560.lean/declarations/isbigo-integrableatfilter--adc37c6ea1e3563880e44e28.md) | 40 | `result-track:adc37c6ea1e3563880e44e285d8f5e8e69a0f57c277f5812ee2c2b2b3bb915f7` |
| 2 | `theorem` | [IsBigO.integrable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant4de6c831eabe886fcb24864623fce7a96076d3b724cc2ebb73a60cb238d20560.lean/declarations/isbigo-integrable--2fa32bd7745b7608a5b93be9.md) | 51 | `result-track:2fa32bd7745b7608a5b93be99f6b70ff5b2918185c0d3def02856697ab43cd11` |
| 3 | `theorem` | [IsBigO.eventually_integrableOn](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant4de6c831eabe886fcb24864623fce7a96076d3b724cc2ebb73a60cb238d20560.lean/declarations/isbigo-eventually-integrableon--f3a4b7394bbaa46ca44df050.md) | 62 | `result-track:f3a4b7394bbaa46ca44df050322cbf7adc5d7374c5578043e6a1a83c5c8d5ece` |
| 4 | `theorem` | [IsBigO.set_integral_isBigO](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant4de6c831eabe886fcb24864623fce7a96076d3b724cc2ebb73a60cb238d20560.lean/declarations/isbigo-set-integral-isbigo--99c215a9c38fd9256afb83ff.md) | 82 | `result-track:99c215a9c38fd9256afb83ff5bd123983b1f36b8bf8cf1fb5d9b4b6dad8ce06b` |
| 5 | `theorem` | [LocallyIntegrable.integrable_of_isBigO_cocompact](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant4de6c831eabe886fcb24864623fce7a96076d3b724cc2ebb73a60cb238d20560.lean/declarations/locallyintegrable-integrable-of-isbigo-cocompact--bcf41f5ae24bfdbf810384b4.md) | 108 | `result-track:bcf41f5ae24bfdbf810384b40797f8958dc94bc0584045e63c94377148a2501c` |
| 6 | `theorem` | [LocallyIntegrable.integrable_of_isBigO_atBot_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant4de6c831eabe886fcb24864623fce7a96076d3b724cc2ebb73a60cb238d20560.lean/declarations/locallyintegrable-integrable-of-isbigo-atbot-attop--ff30238e8308d41079eb2c35.md) | 120 | `result-track:ff30238e8308d41079eb2c35d3b99a76dccd59a9dd7cd00be03ed58dd52a64e9` |
| 7 | `theorem` | [LocallyIntegrableOn.integrableOn_of_isBigO_atBot](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant4de6c831eabe886fcb24864623fce7a96076d3b724cc2ebb73a60cb238d20560.lean/declarations/locallyintegrableon-integrableon-of-isbigo-atbot--c599f5e48f31fcb0a45afda2.md) | 131 | `result-track:c599f5e48f31fcb0a45afda2998f42cf02c708609ff8c199aded8417d656b9d9` |
| 8 | `theorem` | [LocallyIntegrableOn.integrableOn_of_isBigO_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant4de6c831eabe886fcb24864623fce7a96076d3b724cc2ebb73a60cb238d20560.lean/declarations/locallyintegrableon-integrableon-of-isbigo-attop--8730702e51181188c901f072.md) | 139 | `result-track:8730702e51181188c901f0728176083e6e9d289fb0521152020b767bdae91047` |
| 9 | `theorem` | [LocallyIntegrable.integrable_of_isBigO_atBot](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant4de6c831eabe886fcb24864623fce7a96076d3b724cc2ebb73a60cb238d20560.lean/declarations/locallyintegrable-integrable-of-isbigo-atbot--08218959e9e2b3493c589932.md) | 147 | `result-track:08218959e9e2b3493c589932231984a74191c5d1d07755f5726cb231bc657093` |
| 10 | `theorem` | [LocallyIntegrable.integrable_of_isBigO_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant4de6c831eabe886fcb24864623fce7a96076d3b724cc2ebb73a60cb238d20560.lean/declarations/locallyintegrable-integrable-of-isbigo-attop--56f9cfc9255043b210694aba.md) | 155 | `result-track:56f9cfc9255043b210694aba5c830ae387dafbebe95febaab456d6596b03a00a` |
| 11 | `theorem` | [LocallyIntegrable.integrable_of_isBigO_atTop_of_norm_isNegInvariant](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant4de6c831eabe886fcb24864623fce7a96076d3b724cc2ebb73a60cb238d20560.lean/declarations/locallyintegrable-integrable-of-isbigo-attop-of-norm-isneginvariant--035fd53c23ba8a11814ac150.md) | 169 | `result-track:035fd53c23ba8a11814ac15084f764caef5b318cbcb315c07da2ddc4fdf44d22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
