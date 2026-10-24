# Verification target: GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientFactorization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fba2b5e6a7489233821d323ad897eff83fc10234",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachProgressionCoefficientFactorization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionCoefficientFactorization.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionCoefficientFactorization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fba2b5e6a7489233821d323ad897eff83fc10234`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachProgressionCoefficientFactorization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachProgressionCoefficientFactorization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachProgressionArcBoundary`](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goldbachFiniteSingularKernel](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionCoefficientFactorization.lean/declarations/goldbachfinitesingularkernel--604672a525be4821eb0cad1b.md) | 48 | `declaration-track:604672a525be4821eb0cad1b693288bcd55deb671befe2dbd2100213ef4dd304` |
| 2 | `def` | [goldbachProgressionArithmeticCoefficient](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionCoefficientFactorization.lean/declarations/goldbachprogressionarithmeticcoefficient--d78a54f489016d7900db329f.md) | 55 | `declaration-track:d78a54f489016d7900db329f30954659dea7a7cda745c4c8d125819e8e63dbec` |
| 3 | `theorem` | [goldbachProgressionCircleKernel_factor](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionCoefficientFactorization.lean/declarations/goldbachprogressioncirclekernel-factor--086fc5e23cf4d8ad7d8f3895.md) | 64 | `result-track:086fc5e23cf4d8ad7d8f3895065a88962e93ecb39e368263d3d214e31eb3211d` |
| 4 | `def` | [goldbachProgressionArcSingularIntegral](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionCoefficientFactorization.lean/declarations/goldbachprogressionarcsingularintegral--7cf692faa3a9c26694014848.md) | 78 | `declaration-track:7cf692faa3a9c26694014848d36e60692ce51fb8858d50e16c3f86524ecf8272` |
| 5 | `theorem` | [continuous_goldbachFiniteSingularKernel](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionCoefficientFactorization.lean/declarations/continuous-goldbachfinitesingularkernel--2e080d636e7b246c9cda630d.md) | 86 | `result-track:2e080d636e7b246c9cda630d83bb435c6f4f07875ec4067538e25390646c3243` |
| 6 | `theorem` | [norm_goldbachFiniteSingularKernel_le](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionCoefficientFactorization.lean/declarations/norm-goldbachfinitesingularkernel-le--66312e77dfd7b852271793f9.md) | 94 | `result-track:66312e77dfd7b852271793f9b06f4e353d87324f93cc211195098b54e858e596` |
| 7 | `theorem` | [norm_goldbachProgressionArithmeticCoefficient_le_one](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionCoefficientFactorization.lean/declarations/norm-goldbachprogressionarithmeticcoefficient-le-one--96c7f1cf59dce933a312c663.md) | 107 | `result-track:96c7f1cf59dce933a312c66361d123e3ac6d29391529785bba2d9e4a2b42540d` |
| 8 | `theorem` | [goldbachProgressionArcModelContribution_factor](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionCoefficientFactorization.lean/declarations/goldbachprogressionarcmodelcontribution-factor--9fa47c12c8a722f76a8c48b1.md) | 124 | `result-track:9fa47c12c8a722f76a8c48b1156a86f7aa96b885f2e1481e08abcba9e846adfd` |
| 9 | `def` | [goldbachProgressionFactoredMajorSum](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionCoefficientFactorization.lean/declarations/goldbachprogressionfactoredmajorsum--f15133f9ffe79c7816311c51.md) | 144 | `declaration-track:f15133f9ffe79c7816311c51a263b7a0570372d1b8bac7b7e55d1dce9d8f5b79` |
| 10 | `theorem` | [goldbachProgressionArcModelMajorSum_eq_factored](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionCoefficientFactorization.lean/declarations/goldbachprogressionarcmodelmajorsum-eq-factored--cb090042014a25b603ee4628.md) | 151 | `result-track:cb090042014a25b603ee46289ea0e85092d189bdd506cf9aaca0d92bc3b1aee6` |
| 11 | `theorem` | [norm_goldbachProgressionArcSingularIntegral_le](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionCoefficientFactorization.lean/declarations/norm-goldbachprogressionarcsingularintegral-le--c1ca9113441b24b5b02d5906.md) | 165 | `result-track:c1ca9113441b24b5b02d59061e1d8fd54d687cdcd0effe1f9a7d69f25048e3a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
