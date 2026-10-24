# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.Mertens.Variant8df79fab65cdc6b9f28c4f2e5f39e0d8d284ac17ac4e06b3cb1f5d4cb8ae3be4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa1774ae9ecb334b91d963bbfdadd6ead018e022",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Mertens/Variant8df79fab65cdc6b9f28c4f2e5f39e0d8d284ac17ac4e06b3cb1f5d4cb8ae3be4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Mertens/Variant8df79fab65cdc6b9f28c4f2e5f39e0d8d284ac17ac4e06b3cb1f5d4cb8ae3be4.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Mertens/Variant8df79fab65cdc6b9f28c4f2e5f39e0d8d284ac17ac4e06b3cb1f5d4cb8ae3be4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa1774ae9ecb334b91d963bbfdadd6ead018e022`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/Mertens/Variant8df79fab65cdc6b9f28c4f2e5f39e0d8d284ac17ac4e06b3cb1f5d4cb8ae3be4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/Mertens/Variant8df79fab65cdc6b9f28c4f2e5f39e0d8d284ac17ac4e06b3cb1f5d4cb8ae3be4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Field.GeomSum` — import line 37; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 38; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Chebyshev` — import line 39; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.EulerMascheroni` — import line 40; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 41; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.GammaDeriv` — import line 42; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.Lemmas` — import line 43; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.BigOperators` — import line 44; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.EulerMaclaurin` — import line 45; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [sum_Ioc_one_eq_sum_Ioc_zero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Mertens/Variant8df79fab65cdc6b9f28c4f2e5f39e0d8d284ac17ac4e06b3cb1f5d4cb8ae3be4.lean/declarations/sum-ioc-one-eq-sum-ioc-zero--520e7196c8680cb53c42f6e6.md) | 55 | `result-track:520e7196c8680cb53c42f6e65461f1fde137224aa424e575bc38786033639439` |
| 2 | `theorem` | [sum_log_eq](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Mertens/Variant8df79fab65cdc6b9f28c4f2e5f39e0d8d284ac17ac4e06b3cb1f5d4cb8ae3be4.lean/declarations/sum-log-eq--fe32c3251711ec30bcf10764.md) | 61 | `result-track:fe32c3251711ec30bcf107649131cb800975e72eb58169f147124d236127e473` |
| 3 | `theorem` | [sum_log_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Mertens/Variant8df79fab65cdc6b9f28c4f2e5f39e0d8d284ac17ac4e06b3cb1f5d4cb8ae3be4.lean/declarations/sum-log-le--206905666a2bd353569fa7bd.md) | 79 | `result-track:206905666a2bd353569fa7bd9dd12da9a09713ccd961f52c636b480acb499b8d` |
| 4 | `lemma` | [integral_log_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Mertens/Variant8df79fab65cdc6b9f28c4f2e5f39e0d8d284ac17ac4e06b3cb1f5d4cb8ae3be4.lean/declarations/integral-log-le--51c3d413a1e5d45d37022113.md) | 93 | `result-track:51c3d413a1e5d45d37022113d99edad8a0729017ff0cb3afa8a5753381c5d06e` |
| 5 | `theorem` | [sum_log_ge](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Mertens/Variant8df79fab65cdc6b9f28c4f2e5f39e0d8d284ac17ac4e06b3cb1f5d4cb8ae3be4.lean/declarations/sum-log-ge--7eeb0b61c3d0b840970818e1.md) | 105 | `result-track:7eeb0b61c3d0b840970818e14f37ccd05e7c7e47e9a6b30878ff9d670af016a4` |
| 6 | `theorem` | [sum_log_eq_log_factorial](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Mertens/Variant8df79fab65cdc6b9f28c4f2e5f39e0d8d284ac17ac4e06b3cb1f5d4cb8ae3be4.lean/declarations/sum-log-eq-log-factorial--818615ef338dfc57b06615e1.md) | 134 | `result-track:818615ef338dfc57b06615e13707936b708d38bc110deb87ac7806c0e6ded72d` |
| 7 | `theorem` | [sum_log_eq_sum_mangoldt](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Mertens/Variant8df79fab65cdc6b9f28c4f2e5f39e0d8d284ac17ac4e06b3cb1f5d4cb8ae3be4.lean/declarations/sum-log-eq-sum-mangoldt--5aedf71cdabeb723115b3117.md) | 143 | `result-track:5aedf71cdabeb723115b3117e1770ec384c351f908a28655982098e98b6db69f` |
| 8 | `abbrev` | [E₁Λ](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Mertens/Variant8df79fab65cdc6b9f28c4f2e5f39e0d8d284ac17ac4e06b3cb1f5d4cb8ae3be4.lean/declarations/e--4847652141818c715deafe1e.md) | 149 | `declaration-track:4847652141818c715deafe1e523201a95061adf434f9b16fc3426c34fb1e9422` |
| 9 | `theorem` | [sum_mangoldt_div_eq](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Mertens/Variant8df79fab65cdc6b9f28c4f2e5f39e0d8d284ac17ac4e06b3cb1f5d4cb8ae3be4.lean/declarations/sum-mangoldt-div-eq--4c66b21ace4bd56283a56518.md) | 151 | `result-track:4c66b21ace4bd56283a5651854d2e9cff6c7cc7fab921113f91e21756a98fa98` |
| 10 | `theorem` | [E₁Λ.ge](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Mertens/Variant8df79fab65cdc6b9f28c4f2e5f39e0d8d284ac17ac4e06b3cb1f5d4cb8ae3be4.lean/declarations/e-ge--d352a98f870b272742c1d585.md) | 155 | `result-track:d352a98f870b272742c1d5855867d9eb7228aa1c9c2c8fb3298ab5b62e6fa421` |
| 11 | `theorem` | [E₁Λ.le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Mertens/Variant8df79fab65cdc6b9f28c4f2e5f39e0d8d284ac17ac4e06b3cb1f5d4cb8ae3be4.lean/declarations/e-le--54199eb3f315ae7123bd8ea3.md) | 173 | `result-track:54199eb3f315ae7123bd8ea3330215efd8f9973953016de1203a92646b825621` |
| 12 | `theorem` | [sum_mangoldt_div_eq_log](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Mertens/Variant8df79fab65cdc6b9f28c4f2e5f39e0d8d284ac17ac4e06b3cb1f5d4cb8ae3be4.lean/declarations/sum-mangoldt-div-eq-log--ab96612aad74702d92b30aea.md) | 195 | `result-track:ab96612aad74702d92b30aea2ad5c9023c243685df522e407465f6b449a82147` |
| 13 | `theorem` | [E₁Λ.bounded'](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Mertens/Variant8df79fab65cdc6b9f28c4f2e5f39e0d8d284ac17ac4e06b3cb1f5d4cb8ae3be4.lean/declarations/e-bounded--42d050e3e246b26146af1e17.md) | 199 | `result-track:42d050e3e246b26146af1e17c3a301cb492a687dd5dd73bcfc56f9176fa7f737` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
