# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceAttempt05.Variant166b7b7ec5acbabd1488dd422c613161aef6d7634e42771acc42645f1e13a0d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "abde6ddf92f3fe19b3fd6d529e4699a561969757",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt05/Variant166b7b7ec5acbabd1488dd422c613161aef6d7634e42771acc42645f1e13a0d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variant166b7b7ec5acbabd1488dd422c613161aef6d7634e42771acc42645f1e13a0d2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variant166b7b7ec5acbabd1488dd422c613161aef6d7634e42771acc42645f1e13a0d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `abde6ddf92f3fe19b3fd6d529e4699a561969757`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt05/Variant166b7b7ec5acbabd1488dd422c613161aef6d7634e42771acc42645f1e13a0d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceAttempt05/Variant166b7b7ec5acbabd1488dd422c613161aef6d7634e42771acc42645f1e13a0d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variant166b7b7ec5acbabd1488dd422c613161aef6d7634e42771acc42645f1e13a0d2.lean/declarations/kernel--de6445eda2b1306951352b14.md) | 21 | `declaration-track:de6445eda2b1306951352b14e413f35af9f375e4e6cca0af5acfff3a7b10c040` |
| 2 | `def` | [secondMomentIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variant166b7b7ec5acbabd1488dd422c613161aef6d7634e42771acc42645f1e13a0d2.lean/declarations/secondmomentintegrand--b011bb4dbbf1054515d07048.md) | 22 | `declaration-track:b011bb4dbbf1054515d0704874396b75c18b3ef62b53d5859c747298f11cdc00` |
| 3 | `def` | [majorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variant166b7b7ec5acbabd1488dd422c613161aef6d7634e42771acc42645f1e13a0d2.lean/declarations/majorant--235c92bbe896fb123c09e587.md) | 23 | `declaration-track:235c92bbe896fb123c09e58704350c9ccf757f0db34e3de77ff78b93c1be5424` |
| 4 | `theorem` | [denominator_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variant166b7b7ec5acbabd1488dd422c613161aef6d7634e42771acc42645f1e13a0d2.lean/declarations/denominator-pos--468e0d8725e7ab0280bb6d4a.md) | 25 | `result-track:468e0d8725e7ab0280bb6d4a277bf77cf7fed9161f8550e6b6e1126eec9b93b8` |
| 5 | `theorem` | [kernel_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variant166b7b7ec5acbabd1488dd422c613161aef6d7634e42771acc42645f1e13a0d2.lean/declarations/kernel-nonneg--a1cbba4c9f87a345b7501456.md) | 30 | `result-track:a1cbba4c9f87a345b7501456e37c369aacf72d69b7414202934cf0dc5499180d` |
| 6 | `theorem` | [reciprocal_denominator_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variant166b7b7ec5acbabd1488dd422c613161aef6d7634e42771acc42645f1e13a0d2.lean/declarations/reciprocal-denominator-bound--9cbb6d6b575aea84f67cd78f.md) | 33 | `result-track:9cbb6d6b575aea84f67cd78fe3c7db2d269ee0686ef3d2ae994bc78caecf7486` |
| 7 | `theorem` | [secondMoment_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variant166b7b7ec5acbabd1488dd422c613161aef6d7634e42771acc42645f1e13a0d2.lean/declarations/secondmoment-bound--6271d70f3936cdbe37d7aa85.md) | 45 | `result-track:6271d70f3936cdbe37d7aa8597c2b5bfe372e7688fb002e1589552327199534f` |
| 8 | `theorem` | [polynomial_exp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variant166b7b7ec5acbabd1488dd422c613161aef6d7634e42771acc42645f1e13a0d2.lean/declarations/polynomial-exp-integrable--2b20648fae60ac353607a47e.md) | 57 | `result-track:2b20648fae60ac353607a47e811e3e46f94c84565920525858d17792ecc50cf7` |
| 9 | `theorem` | [polynomial_exp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variant166b7b7ec5acbabd1488dd422c613161aef6d7634e42771acc42645f1e13a0d2.lean/declarations/polynomial-exp-integral--5a9bf9e573b53d79f45a9c12.md) | 66 | `result-track:5a9bf9e573b53d79f45a9c1283797a84acd14acd74c2558db76f5ddd0a41e6e7` |
| 10 | `theorem` | [majorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variant166b7b7ec5acbabd1488dd422c613161aef6d7634e42771acc42645f1e13a0d2.lean/declarations/majorant-integrable--692b6dbaab781f4528fde6f7.md) | 76 | `result-track:692b6dbaab781f4528fde6f702e4b3a8b94dfc21263d2a8afc8af2be50045743` |
| 11 | `theorem` | [majorant_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variant166b7b7ec5acbabd1488dd422c613161aef6d7634e42771acc42645f1e13a0d2.lean/declarations/majorant-integral--0a6ee09f0305f3dab0fab81e.md) | 83 | `result-track:0a6ee09f0305f3dab0fab81e97d82f8ddc33e5a0abcbf57c47f69e14657bae59` |
| 12 | `theorem` | [secondMoment_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variant166b7b7ec5acbabd1488dd422c613161aef6d7634e42771acc42645f1e13a0d2.lean/declarations/secondmoment-measurable--4fce143adcdcb58fd441f3bd.md) | 93 | `result-track:4fce143adcdcb58fd441f3bd1da14859f08461bd22d90889473cc83c9f05c589` |
| 13 | `theorem` | [secondMoment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variant166b7b7ec5acbabd1488dd422c613161aef6d7634e42771acc42645f1e13a0d2.lean/declarations/secondmoment-integrable--f929bb023b7da2ab3077b19b.md) | 97 | `result-track:f929bb023b7da2ab3077b19bfccee8e927cc80310a696151353fd02640154703` |
| 14 | `theorem` | [secondMoment_integral_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variant166b7b7ec5acbabd1488dd422c613161aef6d7634e42771acc42645f1e13a0d2.lean/declarations/secondmoment-integral-nonneg--4130a1c0fe58a1e04b1fc510.md) | 104 | `result-track:4130a1c0fe58a1e04b1fc5108a0f4a379218e2c8443ad2bf68f7ae8d77610147` |
| 15 | `theorem` | [secondMoment_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variant166b7b7ec5acbabd1488dd422c613161aef6d7634e42771acc42645f1e13a0d2.lean/declarations/secondmoment-integral-le--57a5c12bf5b742820b624ef5.md) | 109 | `result-track:57a5c12bf5b742820b624ef5a0281b85aed9151f1d37907b5e170f59926483a0` |
| 16 | `def` | [weightedDeficit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variant166b7b7ec5acbabd1488dd422c613161aef6d7634e42771acc42645f1e13a0d2.lean/declarations/weighteddeficit--12108fabd28c97802e5f7613.md) | 115 | `declaration-track:12108fabd28c97802e5f7613a02d484e58c1c77f87e25eec897138af89f10887` |
| 17 | `theorem` | [weightedDeficit_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variant166b7b7ec5acbabd1488dd422c613161aef6d7634e42771acc42645f1e13a0d2.lean/declarations/weighteddeficit-measurable--65198ee2945d5188924e7450.md) | 117 | `result-track:65198ee2945d5188924e7450af92cda1bdc02b931993d4f0197bd2167263780a` |
| 18 | `theorem` | [weightedDeficit_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variant166b7b7ec5acbabd1488dd422c613161aef6d7634e42771acc42645f1e13a0d2.lean/declarations/weighteddeficit-bound--ca95cd17d67b1e07e55cf663.md) | 122 | `result-track:ca95cd17d67b1e07e55cf663baccf3e4b7de260c09312d9a3601f3fc605756b8` |
| 19 | `theorem` | [weightedDeficit_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variant166b7b7ec5acbabd1488dd422c613161aef6d7634e42771acc42645f1e13a0d2.lean/declarations/weighteddeficit-integrable--c6c4cf5ce767a831ed0c5ac4.md) | 130 | `result-track:c6c4cf5ce767a831ed0c5ac404e6d1c25c09bedd020da99d027d9d6fdd189dbc` |
| 20 | `theorem` | [weightedDeficit_integral_budget](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variant166b7b7ec5acbabd1488dd422c613161aef6d7634e42771acc42645f1e13a0d2.lean/declarations/weighteddeficit-integral-budget--3686514074c859c56f69b342.md) | 140 | `result-track:3686514074c859c56f69b342c76f070cc12a8ec56d22e7c95c7d63bc4c962ecd` |
| 21 | `theorem` | [gamma_budget_from_identity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variant166b7b7ec5acbabd1488dd422c613161aef6d7634e42771acc42645f1e13a0d2.lean/declarations/gamma-budget-from-identity--d90cfaf94402bfe57a2dcb7d.md) | 160 | `result-track:d90cfaf94402bfe57a2dcb7dba76fd91222eb49e833cae6a08a857e9a6c974f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
