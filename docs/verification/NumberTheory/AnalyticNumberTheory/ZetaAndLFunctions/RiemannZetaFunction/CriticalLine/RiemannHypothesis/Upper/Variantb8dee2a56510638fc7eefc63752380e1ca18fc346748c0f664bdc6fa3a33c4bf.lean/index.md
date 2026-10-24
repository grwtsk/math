# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Upper.Variantb8dee2a56510638fc7eefc63752380e1ca18fc346748c0f664bdc6fa3a33c4bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c60e8d08effd98dcb500b7a5c4ae72c83888fac1",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb8dee2a56510638fc7eefc63752380e1ca18fc346748c0f664bdc6fa3a33c4bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb8dee2a56510638fc7eefc63752380e1ca18fc346748c0f664bdc6fa3a33c4bf.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb8dee2a56510638fc7eefc63752380e1ca18fc346748c0f664bdc6fa3a33c4bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c60e8d08effd98dcb500b7a5c4ae72c83888fac1`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb8dee2a56510638fc7eefc63752380e1ca18fc346748c0f664bdc6fa3a33c4bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb8dee2a56510638fc7eefc63752380e1ca18fc346748c0f664bdc6fa3a33c4bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Coeff.PowerSums` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Exponential` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Chebyshev` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [two_pow_length_le_prod](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb8dee2a56510638fc7eefc63752380e1ca18fc346748c0f664bdc6fa3a33c4bf.lean/declarations/two-pow-length-le-prod--8fb91ae8fc812e56d24344ea.md) | 32 | `result-track:8fb91ae8fc812e56d24344ea395631cac7c6ae11ee9f1d882eb281a8155cd8ec` |
| 2 | `lemma` | [cardFactors_le_self](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb8dee2a56510638fc7eefc63752380e1ca18fc346748c0f664bdc6fa3a33c4bf.lean/declarations/cardfactors-le-self--b90c5d89397ec50e33e6eebf.md) | 42 | `result-track:b90c5d89397ec50e33e6eebf8304a7bf2648ad4837f6975eb19994008e14a59c` |
| 3 | `lemma` | [sq_sum_range_le_sum_two_pow_mul_sq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb8dee2a56510638fc7eefc63752380e1ca18fc346748c0f664bdc6fa3a33c4bf.lean/declarations/sq-sum-range-le-sum-two-pow-mul-sq--d4017ed1daff0410e6203f73.md) | 52 | `result-track:d4017ed1daff0410e6203f73f99ea11ee5e4ce1a5f8d38af107ad8d8f8e06849` |
| 4 | `def` | [CF](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb8dee2a56510638fc7eefc63752380e1ca18fc346748c0f664bdc6fa3a33c4bf.lean/declarations/cf--ce7998c14e8db15339617a84.md) | 70 | `declaration-track:ce7998c14e8db15339617a84d65bd5e0acc62c9d094ff8bc4e5fea5fea733ac4` |
| 5 | `lemma` | [CF_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb8dee2a56510638fc7eefc63752380e1ca18fc346748c0f664bdc6fa3a33c4bf.lean/declarations/cf-pos--06a4d2fd65151cbabc40feff.md) | 72 | `result-track:06a4d2fd65151cbabc40feffc490eaf6b12b99c5024b04f66ad1a0c8492fd656` |
| 6 | `lemma` | [term_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb8dee2a56510638fc7eefc63752380e1ca18fc346748c0f664bdc6fa3a33c4bf.lean/declarations/term-bound--f0b61b58ae5fe76d20f3aa48.md) | 75 | `result-track:f0b61b58ae5fe76d20f3aa481f415cf6458e912280228c83be78535474d70927` |
| 7 | `lemma` | [Fmaj_term_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb8dee2a56510638fc7eefc63752380e1ca18fc346748c0f664bdc6fa3a33c4bf.lean/declarations/fmaj-term-le--30284cf1e8b336c4e76848b8.md) | 117 | `result-track:30284cf1e8b336c4e76848b85496f8be4b61cdc7fa773bd20223eb6c4291e24e` |
| 8 | `theorem` | [sum_Fmaj_sq_div_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb8dee2a56510638fc7eefc63752380e1ca18fc346748c0f664bdc6fa3a33c4bf.lean/declarations/sum-fmaj-sq-div-le--0ec8cff5a8c089750286436f.md) | 139 | `result-track:0ec8cff5a8c089750286436ff20c61f81c68adf6bb2a8c45db57ad1459eae927` |
| 9 | `lemma` | [sum_vonMangoldt_sq_div_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb8dee2a56510638fc7eefc63752380e1ca18fc346748c0f664bdc6fa3a33c4bf.lean/declarations/sum-vonmangoldt-sq-div-le--f3e19d9b70d6ed4bb3690706.md) | 214 | `result-track:f3e19d9b70d6ed4bb36907062e2ddc7d12ad3be7a12f7704021de571bf7e71fa` |
| 10 | `def` | [CS](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb8dee2a56510638fc7eefc63752380e1ca18fc346748c0f664bdc6fa3a33c4bf.lean/declarations/cs--f65bed283856ec3e440ab398.md) | 225 | `declaration-track:f65bed283856ec3e440ab398e71a0d9c217fddb121ce489247a24313fa6f8dac` |
| 11 | `lemma` | [CS_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb8dee2a56510638fc7eefc63752380e1ca18fc346748c0f664bdc6fa3a33c4bf.lean/declarations/cs-pos--2de03d0ec7d57462b1f93ff3.md) | 227 | `result-track:2de03d0ec7d57462b1f93ff383475a12fa94f3422d39d1eb5a7556116c07797b` |
| 12 | `theorem` | [diagSum_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb8dee2a56510638fc7eefc63752380e1ca18fc346748c0f664bdc6fa3a33c4bf.lean/declarations/diagsum-le--52eeb8bdaa23fbe19a8b3e0d.md) | 231 | `result-track:52eeb8bdaa23fbe19a8b3e0dbaeec3e5c00ede60bb8700e7a4c5acedf6538561` |
| 13 | `def` | [T0coeff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb8dee2a56510638fc7eefc63752380e1ca18fc346748c0f664bdc6fa3a33c4bf.lean/declarations/t0coeff--3f486c2f6fd617e9e190f1a7.md) | 265 | `declaration-track:3f486c2f6fd617e9e190f1a7bddb866105200019197ec9d55f54702cc7e8835a` |
| 14 | `lemma` | [l_ge_of_T0coeff_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb8dee2a56510638fc7eefc63752380e1ca18fc346748c0f664bdc6fa3a33c4bf.lean/declarations/l-ge-of-t0coeff-le--5b0c92cb46cebab8c3c8cfc9.md) | 267 | `result-track:5b0c92cb46cebab8c3c8cfc9851ab8267a0c95d1cada83bb06c408c53f8c99b4` |
| 15 | `theorem` | [coeff_H2](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb8dee2a56510638fc7eefc63752380e1ca18fc346748c0f664bdc6fa3a33c4bf.lean/declarations/coeff-h2--419854d805507e8e21ffafd7.md) | 276 | `result-track:419854d805507e8e21ffafd744254c6134937d8c519700ad312861f845614816` |
| 16 | `theorem` | [coeff_H1](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb8dee2a56510638fc7eefc63752380e1ca18fc346748c0f664bdc6fa3a33c4bf.lean/declarations/coeff-h1--53569ac97e08c25c5a2c3ef9.md) | 310 | `result-track:53569ac97e08c25c5a2c3ef9abdcf58c3a7285885aada22963aacac4c8e01bec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
