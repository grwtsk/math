# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Attempt02.Variant387bbeae558e179c22342451e3af7d51b5e1cb8b342f240bfc391390752f7521

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a45408cc3cab556045ed212d8e92f9dc0c36d884",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variant387bbeae558e179c22342451e3af7d51b5e1cb8b342f240bfc391390752f7521.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387bbeae558e179c22342451e3af7d51b5e1cb8b342f240bfc391390752f7521.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387bbeae558e179c22342451e3af7d51b5e1cb8b342f240bfc391390752f7521.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a45408cc3cab556045ed212d8e92f9dc0c36d884`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variant387bbeae558e179c22342451e3af7d51b5e1cb8b342f240bfc391390752f7521.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt02/Variant387bbeae558e179c22342451e3af7d51b5e1cb8b342f240bfc391390752f7521.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.WeightedPrimeAbel` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourcePairedPrimeAverages` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.GeomSum` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Summable` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [mangoldtError](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387bbeae558e179c22342451e3af7d51b5e1cb8b342f240bfc391390752f7521.lean/declarations/mangoldterror--908fb4484264652c01a71be1.md) | 29 | `declaration-track:908fb4484264652c01a71be1ccfcc3d35130ef4b7186ae8c6de06b908b6db8ef` |
| 2 | `abbrev` | [primeError](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387bbeae558e179c22342451e3af7d51b5e1cb8b342f240bfc391390752f7521.lean/declarations/primeerror--6ae043c25e5a90b90bf5995d.md) | 31 | `declaration-track:6ae043c25e5a90b90bf5995d2b4f8368fcc68a3dd0085a4fcfa1489a35d5687c` |
| 3 | `abbrev` | [E₁](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387bbeae558e179c22342451e3af7d51b5e1cb8b342f240bfc391390752f7521.lean/declarations/e--cae343d7263f181d40c3082f.md) | 34 | `declaration-track:cae343d7263f181d40c3082fabc1da11e2017a090b74dd4dd06a57165156601b` |
| 4 | `lemma` | [E₁.summand_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387bbeae558e179c22342451e3af7d51b5e1cb8b342f240bfc391390752f7521.lean/declarations/e-summand-nonneg--9512b786828da0a0be46dbb5.md) | 36 | `result-track:9512b786828da0a0be46dbb5ea623a1cc6a41bf15d80d39751872a171ab59036` |
| 5 | `theorem` | [E₁.summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387bbeae558e179c22342451e3af7d51b5e1cb8b342f240bfc391390752f7521.lean/declarations/e-summable--c943d205772eee0374e28173.md) | 43 | `result-track:c943d205772eee0374e28173ce8db3da8f825ce6e3fc20f0550c9f4c3c99f4c6` |
| 6 | `lemma` | [antitoneOn_log_div_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387bbeae558e179c22342451e3af7d51b5e1cb8b342f240bfc391390752f7521.lean/declarations/antitoneon-log-div-sq--92c47285496e6be48e901796.md) | 67 | `result-track:92c47285496e6be48e901796a7733babb99978ea117386df3244b7267e92046d` |
| 7 | `lemma` | [log_div_sq_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387bbeae558e179c22342451e3af7d51b5e1cb8b342f240bfc391390752f7521.lean/declarations/log-div-sq-nonneg--af961944abc937906ed5a81b.md) | 88 | `result-track:af961944abc937906ed5a81be691af9fa8c87f85911d82c3b8b11b2c1eb823df` |
| 8 | `lemma` | [log_div_sq_is_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387bbeae558e179c22342451e3af7d51b5e1cb8b342f240bfc391390752f7521.lean/declarations/log-div-sq-is-deriv--213f06c2bdadd6a6cf26b18f.md) | 92 | `result-track:213f06c2bdadd6a6cf26b18f3944e3014f7581a4d97e9fc28e08d1cf0a444770` |
| 9 | `lemma` | [tendsto_antideriv_log_div_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387bbeae558e179c22342451e3af7d51b5e1cb8b342f240bfc391390752f7521.lean/declarations/tendsto-antideriv-log-div-sq--855625a8a49d48c6bdac0783.md) | 105 | `result-track:855625a8a49d48c6bdac0783452f0f069da49a9a45328b724310a5ae8dd0af85` |
| 10 | `lemma` | [integrableOn_log_div_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387bbeae558e179c22342451e3af7d51b5e1cb8b342f240bfc391390752f7521.lean/declarations/integrableon-log-div-sq--a173183eec18942db430ae3c.md) | 116 | `result-track:a173183eec18942db430ae3c279c7e3ab29d7424151d12e7f52e51d584e3f78f` |
| 11 | `lemma` | [integral_log_div_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387bbeae558e179c22342451e3af7d51b5e1cb8b342f240bfc391390752f7521.lean/declarations/integral-log-div-sq--022326468b0c1f3d979ce37b.md) | 120 | `result-track:022326468b0c1f3d979ce37be7a6d06f5f10c7671db90ef8f2261dc8c882c75e` |
| 12 | `lemma` | [summable_log_div_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387bbeae558e179c22342451e3af7d51b5e1cb8b342f240bfc391390752f7521.lean/declarations/summable-log-div-sq--eee0af9164c36f43fcb5e165.md) | 125 | `result-track:eee0af9164c36f43fcb5e1650cca150182bb143bd7a0ebb62ffd20857175278f` |
| 13 | `lemma` | [sum_log_div_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387bbeae558e179c22342451e3af7d51b5e1cb8b342f240bfc391390752f7521.lean/declarations/sum-log-div-sq-le--a808afbf8c16ecb87faef9d7.md) | 135 | `result-track:a808afbf8c16ecb87faef9d780063c6f3419c873be8bc9800ae7fe866cce9d45` |
| 14 | `theorem` | [E₁.le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387bbeae558e179c22342451e3af7d51b5e1cb8b342f240bfc391390752f7521.lean/declarations/e-le--9c018b26d2c54a5cd7986398.md) | 149 | `result-track:9c018b26d2c54a5cd7986398aed2162da138d2ee7f3dc4fef6e77fac4418eb22` |
| 15 | `theorem` | [E₁.nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387bbeae558e179c22342451e3af7d51b5e1cb8b342f240bfc391390752f7521.lean/declarations/e-nonneg--4f2da4040f8bb07c80e6f87e.md) | 175 | `result-track:4f2da4040f8bb07c80e6f87efdc1671909a723fc08b390745036ad25745ec162` |
| 16 | `theorem` | [mangoldtError.le_primeError_add_E₁](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387bbeae558e179c22342451e3af7d51b5e1cb8b342f240bfc391390752f7521.lean/declarations/mangoldterror-le-primeerror-add-e--050a06b41a88ea52d001d6dc.md) | 178 | `result-track:050a06b41a88ea52d001d6dc89bc872aa470aa4734d68016eea730648109e2c4` |
| 17 | `theorem` | [mangoldtError_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387bbeae558e179c22342451e3af7d51b5e1cb8b342f240bfc391390752f7521.lean/declarations/mangoldterror-bounds--ded88a94a54efcfc72efe38a.md) | 224 | `result-track:ded88a94a54efcfc72efe38af20d52f10a4d9c91bc7f6b54a5d3dc661c42baa5` |
| 18 | `theorem` | [primeError_le_mangoldtError](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387bbeae558e179c22342451e3af7d51b5e1cb8b342f240bfc391390752f7521.lean/declarations/primeerror-le-mangoldterror--165941a56a534eb6ad105ccf.md) | 236 | `result-track:165941a56a534eb6ad105ccf1c6ffde630958326dab7a2a94ac0ce2fc1787773` |
| 19 | `theorem` | [primeError_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387bbeae558e179c22342451e3af7d51b5e1cb8b342f240bfc391390752f7521.lean/declarations/primeerror-bounds--0b6277037b5e0fb200129da4.md) | 243 | `result-track:0b6277037b5e0fb200129da413a73df3df6358bd033f5908d881f7b69ea1b3aa` |
| 20 | `theorem` | [log_four_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387bbeae558e179c22342451e3af7d51b5e1cb8b342f240bfc391390752f7521.lean/declarations/log-four-eq--619ad70e8a08d2657f1cc992.md) | 249 | `result-track:619ad70e8a08d2657f1cc99234c116b16ae4f50b1513b76e5869efcee41d5654` |
| 21 | `theorem` | [primeError_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387bbeae558e179c22342451e3af7d51b5e1cb8b342f240bfc391390752f7521.lean/declarations/primeerror-abs-le--a2dfc9f11670eb06c44f8e04.md) | 254 | `result-track:a2dfc9f11670eb06c44f8e04ba840ad99225da8af4740773b4cf692e36d63b35` |
| 22 | `theorem` | [actual_primeLogError_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387bbeae558e179c22342451e3af7d51b5e1cb8b342f240bfc391390752f7521.lean/declarations/actual-primelogerror-eq--f4eb4b827630fd1756b55e85.md) | 262 | `result-track:f4eb4b827630fd1756b55e859d951d0183a446b6756ac339bcc4ff6ac3fcd555` |
| 23 | `theorem` | [actual_primeLogError_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387bbeae558e179c22342451e3af7d51b5e1cb8b342f240bfc391390752f7521.lean/declarations/actual-primelogerror-bounds--e88a08b8a43fb15f7f6c085a.md) | 266 | `result-track:e88a08b8a43fb15f7f6c085a7bb5632fdb1d2dfb1b26efe4671febdc9a384e9b` |
| 24 | `theorem` | [actual_primeLogError_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387bbeae558e179c22342451e3af7d51b5e1cb8b342f240bfc391390752f7521.lean/declarations/actual-primelogerror-abs-le--b958179ed1d30ee8d0711673.md) | 271 | `result-track:b958179ed1d30ee8d0711673e879ab8bbeb4cdd656046e7c2a5c10696cc45894` |
| 25 | `theorem` | [explicit_prime_budget_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387bbeae558e179c22342451e3af7d51b5e1cb8b342f240bfc391390752f7521.lean/declarations/explicit-prime-budget-lt--bc170aeaf8198a725678ea4c.md) | 276 | `result-track:bc170aeaf8198a725678ea4c75dbb1bc127527d542fa4de78e27589614d5b2a3` |
| 26 | `theorem` | [actual_primeLogError_abs_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387bbeae558e179c22342451e3af7d51b5e1cb8b342f240bfc391390752f7521.lean/declarations/actual-primelogerror-abs-lt--e59c749b182500ba2d671d6c.md) | 280 | `result-track:e59c749b182500ba2d671d6ccfe83753e66c844a52d1dd664d6daa5a8518d1a8` |
| 27 | `theorem` | [actual_negativeErrorMean_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387bbeae558e179c22342451e3af7d51b5e1cb8b342f240bfc391390752f7521.lean/declarations/actual-negativeerrormean-abs-le--e0e039f89bebe6a4e9012d14.md) | 285 | `result-track:e0e039f89bebe6a4e9012d148ec0189e25669f519ac8d2685515c0aca966d3ac` |
| 28 | `theorem` | [actual_negativeErrorMean_abs_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387bbeae558e179c22342451e3af7d51b5e1cb8b342f240bfc391390752f7521.lean/declarations/actual-negativeerrormean-abs-lt--c371487d70a4364c70269bf9.md) | 289 | `result-track:c371487d70a4364c70269bf9af825b80901c4ca32a4cd25a056e07071f3b789b` |
| 29 | `theorem` | [actual_negativeErrorMean_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant387bbeae558e179c22342451e3af7d51b5e1cb8b342f240bfc391390752f7521.lean/declarations/actual-negativeerrormean-lower--b8350787f75a6e88c8e64315.md) | 294 | `result-track:b8350787f75a6e88c8e64315f81a0c846446b1e034313d40991c82e612b3c908` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
