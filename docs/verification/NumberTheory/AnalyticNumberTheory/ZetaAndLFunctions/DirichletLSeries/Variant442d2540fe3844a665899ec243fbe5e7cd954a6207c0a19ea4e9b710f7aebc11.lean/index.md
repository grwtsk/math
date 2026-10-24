# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.DirichletLSeries.Variant442d2540fe3844a665899ec243fbe5e7cd954a6207c0a19ea4e9b710f7aebc11

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "585c3241e7d1d5892ae37b005844f615e0258d54",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant442d2540fe3844a665899ec243fbe5e7cd954a6207c0a19ea4e9b710f7aebc11.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant442d2540fe3844a665899ec243fbe5e7cd954a6207c0a19ea4e9b710f7aebc11.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant442d2540fe3844a665899ec243fbe5e7cd954a6207c0a19ea4e9b710f7aebc11.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `585c3241e7d1d5892ae37b005844f615e0258d54`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant442d2540fe3844a665899ec243fbe5e7cd954a6207c0a19ea4e9b710f7aebc11.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant442d2540fe3844a665899ec243fbe5e7cd954a6207c0a19ea4e9b710f7aebc11.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.EulerProduct.ExpLog` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [riemannZetaSummandHom](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant442d2540fe3844a665899ec243fbe5e7cd954a6207c0a19ea4e9b710f7aebc11.lean/declarations/riemannzetasummandhom--84adbba90c26443c40f229c5.md) | 39 | `declaration-track:84adbba90c26443c40f229c5d6844431aba6391277d92ad1d3b519073c09ba46` |
| 2 | `def` | [dirichletSummandHom](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant442d2540fe3844a665899ec243fbe5e7cd954a6207c0a19ea4e9b710f7aebc11.lean/declarations/dirichletsummandhom--b388d1501340a792e8d3e112.md) | 50 | `declaration-track:b388d1501340a792e8d3e112aad78c33ea5a6aedb29ded121e94c2d5c48bcf56` |
| 3 | `lemma` | [summable_riemannZetaSummand](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant442d2540fe3844a665899ec243fbe5e7cd954a6207c0a19ea4e9b710f7aebc11.lean/declarations/summable-riemannzetasummand--7517ab7492c568ff368793c0.md) | 61 | `result-track:7517ab7492c568ff368793c0ce91e67a71a8d108ca30030956b68da11a79dc66` |
| 4 | `lemma` | [tsum_riemannZetaSummand](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant442d2540fe3844a665899ec243fbe5e7cd954a6207c0a19ea4e9b710f7aebc11.lean/declarations/tsum-riemannzetasummand--b9b41a849831a273926371c2.md) | 69 | `result-track:b9b41a849831a273926371c28c5538f636692b2af5c636bc493cb79f1e5c6f85` |
| 5 | `lemma` | [summable_dirichletSummand](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant442d2540fe3844a665899ec243fbe5e7cd954a6207c0a19ea4e9b710f7aebc11.lean/declarations/summable-dirichletsummand--12a0ae0816fd0771f53294a3.md) | 77 | `result-track:12a0ae0816fd0771f53294a31a3223ee61aa77d51c1d1af7f98a0e7332595054` |
| 6 | `lemma` | [tsum_dirichletSummand](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant442d2540fe3844a665899ec243fbe5e7cd954a6207c0a19ea4e9b710f7aebc11.lean/declarations/tsum-dirichletsummand--ff202a7a4388c3f2d9b8fc4b.md) | 84 | `result-track:ff202a7a4388c3f2d9b8fc4b5916037b6477a4f7dc0fb3ba92a77364b259bf32` |
| 7 | `theorem` | [riemannZeta_eulerProduct_hasProd](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant442d2540fe3844a665899ec243fbe5e7cd954a6207c0a19ea4e9b710f7aebc11.lean/declarations/riemannzeta-eulerproduct-hasprod--c93b36fb986e7f08b7612221.md) | 93 | `result-track:c93b36fb986e7f08b7612221353e3d91a373d366fb605c2a71bd7e0bba35b6ff` |
| 8 | `theorem` | [riemannZeta_eulerProduct_tprod](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant442d2540fe3844a665899ec243fbe5e7cd954a6207c0a19ea4e9b710f7aebc11.lean/declarations/riemannzeta-eulerproduct-tprod--baed9290947f6fe123a8718a.md) | 100 | `result-track:baed9290947f6fe123a8718aafe8bde4b4454f36968b035055380bd3b593c16a` |
| 9 | `theorem` | [riemannZeta_eulerProduct](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant442d2540fe3844a665899ec243fbe5e7cd954a6207c0a19ea4e9b710f7aebc11.lean/declarations/riemannzeta-eulerproduct--8f508fc8e7e7a443405a3a4d.md) | 106 | `result-track:8f508fc8e7e7a443405a3a4d1be9dbefcb227f0cb0c95c1939f2475471f1e59a` |
| 10 | `theorem` | [DirichletCharacter.LSeries_eulerProduct_hasProd](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant442d2540fe3844a665899ec243fbe5e7cd954a6207c0a19ea4e9b710f7aebc11.lean/declarations/dirichletcharacter-lseries-eulerproduct-hasprod--a94416ec2b346fbb73a104d4.md) | 116 | `result-track:a94416ec2b346fbb73a104d46276eaed35ad59a77d50994fb023da8d674a0f14` |
| 11 | `theorem` | [DirichletCharacter.LSeries_eulerProduct_tprod](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant442d2540fe3844a665899ec243fbe5e7cd954a6207c0a19ea4e9b710f7aebc11.lean/declarations/dirichletcharacter-lseries-eulerproduct-tprod--df9e1d3d43647d037b1e1c51.md) | 127 | `result-track:df9e1d3d43647d037b1e1c512c08215867ff74d1f7bd58d39c53a1355152e9f2` |
| 12 | `theorem` | [DirichletCharacter.LSeries_eulerProduct](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant442d2540fe3844a665899ec243fbe5e7cd954a6207c0a19ea4e9b710f7aebc11.lean/declarations/dirichletcharacter-lseries-eulerproduct--31bd31d98bacf708c32acbfd.md) | 137 | `result-track:31bd31d98bacf708c32acbfd5abbc3b489e73dd02e50a29b6c1e0bbc760a0f52` |
| 13 | `theorem` | [DirichletCharacter.LSeries_eulerProduct_exp_log](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant442d2540fe3844a665899ec243fbe5e7cd954a6207c0a19ea4e9b710f7aebc11.lean/declarations/dirichletcharacter-lseries-eulerproduct-exp-log--aa924f8c0cc879c44df37279.md) | 150 | `result-track:aa924f8c0cc879c44df37279ef5d09c325cf4367035c883220bb50925d171db7` |
| 14 | `theorem` | [ArithmeticFunction.LSeries_zeta_eulerProduct_exp_log](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant442d2540fe3844a665899ec243fbe5e7cd954a6207c0a19ea4e9b710f7aebc11.lean/declarations/arithmeticfunction-lseries-zeta-eulerproduct-exp-log--d924a2891ffe32f2879d163f.md) | 165 | `result-track:d924a2891ffe32f2879d163f5e89a25e61b3c5733bf46092a08dfd97a285f364` |
| 15 | `theorem` | [riemannZeta_eulerProduct_exp_log](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant442d2540fe3844a665899ec243fbe5e7cd954a6207c0a19ea4e9b710f7aebc11.lean/declarations/riemannzeta-eulerproduct-exp-log--7005dda16146ac026a813e46.md) | 172 | `result-track:7005dda16146ac026a813e465b6e1d9f7d60478ff067bfeb8251c5b2a4e25727` |
| 16 | `lemma` | [DirichletCharacter.LSeries_changeLevel](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant442d2540fe3844a665899ec243fbe5e7cd954a6207c0a19ea4e9b710f7aebc11.lean/declarations/dirichletcharacter-lseries-changelevel--8e99b48a9dfe36e4f46bd35f.md) | 183 | `result-track:8e99b48a9dfe36e4f46bd35f3447af893c9a8aa466426fd7c52696a31c08a427` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
