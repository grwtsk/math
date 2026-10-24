# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Asymptotics.Variant55075dee02b78179e5674dfc0477e513a02ad918568e4b9a108d9e6de893ee9a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "945adfca053a8335c7c7a117b3cfa30250d9adb9",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant55075dee02b78179e5674dfc0477e513a02ad918568e4b9a108d9e6de893ee9a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant55075dee02b78179e5674dfc0477e513a02ad918568e4b9a108d9e6de893ee9a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant55075dee02b78179e5674dfc0477e513a02ad918568e4b9a108d9e6de893ee9a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `945adfca053a8335c7c7a117b3cfa30250d9adb9`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant55075dee02b78179e5674dfc0477e513a02ad918568e4b9a108d9e6de893ee9a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Asymptotics/Variant55075dee02b78179e5674dfc0477e513a02ad918568e4b9a108d9e6de893ee9a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Group.Measure` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsBigO.integrableAtFilter](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant55075dee02b78179e5674dfc0477e513a02ad918568e4b9a108d9e6de893ee9a.lean/declarations/isbigo-integrableatfilter--2ac0f5d450d166d9e30ae307.md) | 48 | `result-track:2ac0f5d450d166d9e30ae307ba4892ff2c09dc7b305d26e2daceddd7f6a4e4cd` |
| 2 | `theorem` | [IsBigO.integrable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant55075dee02b78179e5674dfc0477e513a02ad918568e4b9a108d9e6de893ee9a.lean/declarations/isbigo-integrable--95594bf2ff5f32f7c8fd471d.md) | 59 | `result-track:95594bf2ff5f32f7c8fd471df5cda61b7da99557e58e4b7f203a4a30cd279bd0` |
| 3 | `theorem` | [IsBigO.eventually_integrableOn](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant55075dee02b78179e5674dfc0477e513a02ad918568e4b9a108d9e6de893ee9a.lean/declarations/isbigo-eventually-integrableon--1d4e866cbbf7a40f841ab3fa.md) | 70 | `result-track:1d4e866cbbf7a40f841ab3fab5bd5b3596edecec3af0a736b387af42c53a5389` |
| 4 | `theorem` | [IsBigO.set_integral_isBigO](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant55075dee02b78179e5674dfc0477e513a02ad918568e4b9a108d9e6de893ee9a.lean/declarations/isbigo-set-integral-isbigo--2fb822b8534ae6588546675a.md) | 90 | `result-track:2fb822b8534ae6588546675ad0fb5043d4e7ea4d836f6cf8fbea74c6e9308891` |
| 5 | `theorem` | [LocallyIntegrable.integrable_of_isBigO_cocompact](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant55075dee02b78179e5674dfc0477e513a02ad918568e4b9a108d9e6de893ee9a.lean/declarations/locallyintegrable-integrable-of-isbigo-cocompact--3e2c9c64a92a31b0b5207571.md) | 116 | `result-track:3e2c9c64a92a31b0b520757109b2eb497d3769cc2d85febaf03b1cfb44d7318b` |
| 6 | `theorem` | [LocallyIntegrable.integrable_of_isBigO_atBot_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant55075dee02b78179e5674dfc0477e513a02ad918568e4b9a108d9e6de893ee9a.lean/declarations/locallyintegrable-integrable-of-isbigo-atbot-attop--b563d790c8120b7414a043e3.md) | 128 | `result-track:b563d790c8120b7414a043e3321ff73694d6b1b92e66fcdf7f9aaeba680d5028` |
| 7 | `theorem` | [LocallyIntegrableOn.integrableOn_of_isBigO_atBot](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant55075dee02b78179e5674dfc0477e513a02ad918568e4b9a108d9e6de893ee9a.lean/declarations/locallyintegrableon-integrableon-of-isbigo-atbot--74d349f415be4f7cbc197f4d.md) | 139 | `result-track:74d349f415be4f7cbc197f4dd3cebfe496a95e504152e3691af8a74309fb80d9` |
| 8 | `theorem` | [LocallyIntegrableOn.integrableOn_of_isBigO_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant55075dee02b78179e5674dfc0477e513a02ad918568e4b9a108d9e6de893ee9a.lean/declarations/locallyintegrableon-integrableon-of-isbigo-attop--170bc8f7da91fd1157716237.md) | 147 | `result-track:170bc8f7da91fd115771623761b65354581a229f351c229fda7bcac565771bc6` |
| 9 | `theorem` | [LocallyIntegrable.integrable_of_isBigO_atBot](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant55075dee02b78179e5674dfc0477e513a02ad918568e4b9a108d9e6de893ee9a.lean/declarations/locallyintegrable-integrable-of-isbigo-atbot--6d6e0f8ee13dd4aa57734353.md) | 155 | `result-track:6d6e0f8ee13dd4aa577343538102358a0c6f6e5724e1c595b16db550c17124aa` |
| 10 | `theorem` | [LocallyIntegrable.integrable_of_isBigO_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant55075dee02b78179e5674dfc0477e513a02ad918568e4b9a108d9e6de893ee9a.lean/declarations/locallyintegrable-integrable-of-isbigo-attop--112b7b8dd44b6d87e0a8b105.md) | 163 | `result-track:112b7b8dd44b6d87e0a8b105f9bba40600764d5c65f4c9f43c9f16ff634b0cff` |
| 11 | `theorem` | [LocallyIntegrable.integrable_of_isBigO_atTop_of_norm_isNegInvariant](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant55075dee02b78179e5674dfc0477e513a02ad918568e4b9a108d9e6de893ee9a.lean/declarations/locallyintegrable-integrable-of-isbigo-attop-of-norm-isneginvariant--3063228a5ce08f50eaf4d619.md) | 177 | `result-track:3063228a5ce08f50eaf4d6196918eae9256fe406df7ec01c7e1092c233c78722` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
