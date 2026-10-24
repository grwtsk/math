# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FirstPrimeAbelAudit.Variant12b2346acad20c7dd61d438b106959c04f937e8792089eb8ae3eb533cceee6ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b111b688992e3b15c161c4b605b22d6dbb11d6cc",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelAudit/Variant12b2346acad20c7dd61d438b106959c04f937e8792089eb8ae3eb533cceee6ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelAudit/Variant12b2346acad20c7dd61d438b106959c04f937e8792089eb8ae3eb533cceee6ef.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelAudit/Variant12b2346acad20c7dd61d438b106959c04f937e8792089eb8ae3eb533cceee6ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b111b688992e3b15c161c4b605b22d6dbb11d6cc`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelAudit/Variant12b2346acad20c7dd61d438b106959c04f937e8792089eb8ae3eb533cceee6ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelAudit/Variant12b2346acad20c7dd61d438b106959c04f937e8792089eb8ae3eb533cceee6ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSector` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareAbel` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [firstPrimeWeight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelAudit/Variant12b2346acad20c7dd61d438b106959c04f937e8792089eb8ae3eb533cceee6ef.lean/declarations/firstprimeweight--ad69e636b8d38ea2723a1d0b.md) | 16 | `declaration-track:ad69e636b8d38ea2723a1d0b3d2ff5f3391fed0e9ba15607c3df82a3f4c45da9` |
| 2 | `def` | [firstPrimeRemainder](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelAudit/Variant12b2346acad20c7dd61d438b106959c04f937e8792089eb8ae3eb533cceee6ef.lean/declarations/firstprimeremainder--e1c5edd30ac7365454414474.md) | 20 | `declaration-track:e1c5edd30ac7365454414474f4af6d6e9d6ae5b2fd002dc2bc5998ceb51dbbd0` |
| 3 | `def` | [firstPrimeDecayingMain](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelAudit/Variant12b2346acad20c7dd61d438b106959c04f937e8792089eb8ae3eb533cceee6ef.lean/declarations/firstprimedecayingmain--5d0b4aa3fd83aa21f98d412e.md) | 24 | `declaration-track:5d0b4aa3fd83aa21f98d412e7c101507285113a17f5db01a9ea9027f0772bbce` |
| 4 | `theorem` | [firstPrimeWeight_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelAudit/Variant12b2346acad20c7dd61d438b106959c04f937e8792089eb8ae3eb533cceee6ef.lean/declarations/firstprimeweight-hasderivat--bf0f5df0cadc4bf8a8d91a57.md) | 28 | `result-track:bf0f5df0cadc4bf8a8d91a57c09ff8c4dc2fc61fdcbac09299ea7664259bc5f2` |
| 5 | `theorem` | [firstPrimeWeight_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelAudit/Variant12b2346acad20c7dd61d438b106959c04f937e8792089eb8ae3eb533cceee6ef.lean/declarations/firstprimeweight-contdiff--41b538990208c5cc7ec785cc.md) | 38 | `result-track:41b538990208c5cc7ec785cc8cd0f0d1686377b32d0c56a37e7fad637593ecea` |
| 6 | `theorem` | [firstPrimeWeight_zero_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelAudit/Variant12b2346acad20c7dd61d438b106959c04f937e8792089eb8ae3eb533cceee6ef.lean/declarations/firstprimeweight-zero-endpoint--ecaa4e9e771aa3cca88852b9.md) | 41 | `result-track:ecaa4e9e771aa3cca88852b913bc0ecef1a713ee89484196f00dd57482897790` |
| 7 | `theorem` | [firstPrimeWeight_at_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelAudit/Variant12b2346acad20c7dd61d438b106959c04f937e8792089eb8ae3eb533cceee6ef.lean/declarations/firstprimeweight-at-zero--4245f219b448c0731701c314.md) | 45 | `result-track:4245f219b448c0731701c314c0b8bd42d9158707d639af91363c83a791c29ca1` |
| 8 | `theorem` | [first_prime_summand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelAudit/Variant12b2346acad20c7dd61d438b106959c04f937e8792089eb8ae3eb533cceee6ef.lean/declarations/first-prime-summand--548c0157504bb2e023e8248a.md) | 50 | `result-track:548c0157504bb2e023e8248a3a3e5cfa2be0b856ebcdb86d1add591f11fd8724` |
| 9 | `theorem` | [primeContribution_eq_closed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelAudit/Variant12b2346acad20c7dd61d438b106959c04f937e8792089eb8ae3eb533cceee6ef.lean/declarations/primecontribution-eq-closed--afa2ebb1a7a71bff934aea20.md) | 64 | `result-track:afa2ebb1a7a71bff934aea204232236fa367cbf82f9978592856e9e5d14469a5` |
| 10 | `theorem` | [firstPrimeWeight_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelAudit/Variant12b2346acad20c7dd61d438b106959c04f937e8792089eb8ae3eb533cceee6ef.lean/declarations/firstprimeweight-intervalintegrable--dc862689ccd6db10eb16074e.md) | 97 | `result-track:dc862689ccd6db10eb16074e320510846627865eb13513181af22d5117423d68` |
| 11 | `theorem` | [firstPrimeRemainder_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelAudit/Variant12b2346acad20c7dd61d438b106959c04f937e8792089eb8ae3eb533cceee6ef.lean/declarations/firstprimeremainder-intervalintegrable--6648b1215f18b5a3ac68fc3e.md) | 102 | `result-track:6648b1215f18b5a3ac68fc3ea6d0fa035b251b05e658e5d3b68d8189abd5dac8` |
| 12 | `theorem` | [primeContribution_centered_abel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelAudit/Variant12b2346acad20c7dd61d438b106959c04f937e8792089eb8ae3eb533cceee6ef.lean/declarations/primecontribution-centered-abel--2d5b079f6c973adfebd23290.md) | 109 | `result-track:2d5b079f6c973adfebd23290cd0838ecb59636df57a403bcd8f90cd5128259e6` |
| 13 | `theorem` | [firstPrimeWeight_integral_eq_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelAudit/Variant12b2346acad20c7dd61d438b106959c04f937e8792089eb8ae3eb533cceee6ef.lean/declarations/firstprimeweight-integral-eq-neg--16c420c0ade11f175ee72d7f.md) | 119 | `result-track:16c420c0ade11f175ee72d7f74cf864a10f7fb5ca1123089cf2cc75a8b3bfe40` |
| 14 | `theorem` | [primeContribution_eq_remainder](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelAudit/Variant12b2346acad20c7dd61d438b106959c04f937e8792089eb8ae3eb533cceee6ef.lean/declarations/primecontribution-eq-remainder--fd115aad7a2efd850bf325e1.md) | 126 | `result-track:fd115aad7a2efd850bf325e12cf1fe720fb144767a5a89eb5c0cc507d871e6e7` |
| 15 | `theorem` | [firstPrimeDecayingMain_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelAudit/Variant12b2346acad20c7dd61d438b106959c04f937e8792089eb8ae3eb533cceee6ef.lean/declarations/firstprimedecayingmain-intervalintegrable--dfe7b28b58dff31968d1743f.md) | 132 | `result-track:dfe7b28b58dff31968d1743f9f09a01f6fe9b7de41a637932bc3cba40ce1c799` |
| 16 | `theorem` | [firstPrimeDecayingMain_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelAudit/Variant12b2346acad20c7dd61d438b106959c04f937e8792089eb8ae3eb533cceee6ef.lean/declarations/firstprimedecayingmain-abs-le--24e723f464cc3a7eb1d32ba5.md) | 139 | `result-track:24e723f464cc3a7eb1d32ba5415e700d8c87175cb8b07fd701cb2fe59b8fdea4` |
| 17 | `theorem` | [firstPrimeWeight_derivative_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelAudit/Variant12b2346acad20c7dd61d438b106959c04f937e8792089eb8ae3eb533cceee6ef.lean/declarations/firstprimeweight-derivative-abs-le--c242adeafcc4ff5328993bb7.md) | 173 | `result-track:c242adeafcc4ff5328993bb7f228147bf0bcaa818d8919bd5f0c81e3d306e5fa` |
| 18 | `theorem` | [primeContribution_add_remainder_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelAudit/Variant12b2346acad20c7dd61d438b106959c04f937e8792089eb8ae3eb533cceee6ef.lean/declarations/primecontribution-add-remainder-abs-le--374f0c7ae77b3a8e49a88d84.md) | 189 | `result-track:374f0c7ae77b3a8e49a88d846341fa5bc64c686dec4e4bd97b43cbd7aebdc938` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
