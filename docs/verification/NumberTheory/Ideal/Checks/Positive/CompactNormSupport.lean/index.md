# Verification target: GRWTSK.NumberTheory.Ideal.Checks.Positive.CompactNormSupport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8907a247a43cb0643fcc4b21fc98c48bb6d09d2",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Ideal/Checks/Positive/CompactNormSupport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Ideal/Checks/Positive/CompactNormSupport.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Ideal/Checks/Positive/CompactNormSupport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8907a247a43cb0643fcc4b21fc98c48bb6d09d2`.

Source path: `GRWTSK/NumberTheory/Ideal/Checks/Positive/CompactNormSupport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Ideal/Checks/Positive/CompactNormSupport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Ideal.CompactNormSupport`](../../../../../../mathematics/NumberTheory/Ideal/CompactNormSupport.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.CompactCutoff`](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompactCutoff.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [integerWindow](../../../../../../mathematics/NumberTheory/Ideal/Checks/Positive/CompactNormSupport.lean/declarations/integerwindow--9b8238c74e3cad9c27fbdd0d.md) | 10 | `declaration-track:9b8238c74e3cad9c27fbdd0de4068baba59b17f88f49a6ff06da0fe2401053aa` |
| 2 | `lemma` | [integerWindow_compact](../../../../../../mathematics/NumberTheory/Ideal/Checks/Positive/CompactNormSupport.lean/declarations/integerwindow-compact--756db5e16cdaeb61e1dfd18e.md) | 11 | `result-track:756db5e16cdaeb61e1dfd18e67a395856255f9dc8dfc21c3b45744120458b3b9` |
| 3 | `lemma` | [integerWindow_zero](../../../../../../mathematics/NumberTheory/Ideal/Checks/Positive/CompactNormSupport.lean/declarations/integerwindow-zero--f83954b2ac8cbbdf968e2c91.md) | 12 | `result-track:f83954b2ac8cbbdf968e2c91f273fd7f17fd3564ed7a841671487083ce4bc21d` |
| 4 | `lemma` | [integerWindow_one](../../../../../../mathematics/NumberTheory/Ideal/Checks/Positive/CompactNormSupport.lean/declarations/integerwindow-one--0796457391e632ab0e8a47ed.md) | 13 | `result-track:0796457391e632ab0e8a47ed0578fdbeca23a9feb194784f002b2b6e1cd681d9` |
| 5 | `def` | [integerTriple](../../../../../../mathematics/NumberTheory/Ideal/Checks/Positive/CompactNormSupport.lean/declarations/integertriple--8f092a81574db547d9abbe0f.md) | 16 | `declaration-track:8f092a81574db547d9abbe0f3dc633c2892656d236421703b99f4f0276cf7731` |
| 6 | `lemma` | [integerTriple_zero](../../../../../../mathematics/NumberTheory/Ideal/Checks/Positive/CompactNormSupport.lean/declarations/integertriple-zero--28bd950b60e9281470a22da9.md) | 20 | `result-track:28bd950b60e9281470a22da9079883ca873f75931cf3197e4557c0213ddaaf1e` |
| 7 | `lemma` | [integerTriple_window](../../../../../../mathematics/NumberTheory/Ideal/Checks/Positive/CompactNormSupport.lean/declarations/integertriple-window--faaed528178ea197ecb1704c.md) | 24 | `result-track:faaed528178ea197ecb1704ca77b291d465e1b4fe503b1338a75a2f68a061bca` |
| 8 | `theorem` | [actual_integer_finite_support](../../../../../../mathematics/NumberTheory/Ideal/Checks/Positive/CompactNormSupport.lean/declarations/actual-integer-finite-support--1e4e1dc38d1e1f79731d1c2f.md) | 32 | `result-track:1e4e1dc38d1e1f79731d1c2f096bf03d181f47cc4519479fb9e348e72ddfd1e5` |
| 9 | `lemma` | [actual_unit_triple_nonzero](../../../../../../mathematics/NumberTheory/Ideal/Checks/Positive/CompactNormSupport.lean/declarations/actual-unit-triple-nonzero--cdc41c533488a76469d4ce29.md) | 36 | `result-track:cdc41c533488a76469d4ce29486ad62a892678bc70debc966d82b9b0e240430f` |
| 10 | `lemma` | [integer_span_nat_injective](../../../../../../mathematics/NumberTheory/Ideal/Checks/Positive/CompactNormSupport.lean/declarations/integer-span-nat-injective--6b1f405ce30e65b8d6977d94.md) | 40 | `result-track:6b1f405ce30e65b8d6977d94a49dfcf37657ef7b7589e5cb1922e0ba82b1d4f4` |
| 11 | `def` | [zeroFiber](../../../../../../mathematics/NumberTheory/Ideal/Checks/Positive/CompactNormSupport.lean/declarations/zerofiber--c253de6422a414fc208d990b.md) | 46 | `declaration-track:c253de6422a414fc208d990bc1c29761c48005136b2de9722be79ad727242740` |
| 12 | `lemma` | [zeroFiber_window](../../../../../../mathematics/NumberTheory/Ideal/Checks/Positive/CompactNormSupport.lean/declarations/zerofiber-window--ab894b76f32f30e6965ddb9b.md) | 48 | `result-track:ab894b76f32f30e6965ddb9b12b829a95562117510f2e03b811f09439f53d156` |
| 13 | `lemma` | [zeroFiber_zero_nonzero](../../../../../../mathematics/NumberTheory/Ideal/Checks/Positive/CompactNormSupport.lean/declarations/zerofiber-zero-nonzero--12dc951698704547a9682eac.md) | 58 | `result-track:12dc951698704547a9682eac2783175bf0dfb5bcd02980d7415e4abc328c43bb` |
| 14 | `lemma` | [zeroFiber_zero_cancellation_false](../../../../../../mathematics/NumberTheory/Ideal/Checks/Positive/CompactNormSupport.lean/declarations/zerofiber-zero-cancellation-false--111d4cdb907df8c96a9dda55.md) | 60 | `result-track:111d4cdb907df8c96a9dda559d3542479fed8abb0e036f9a4f1e73f306b7894d` |
| 15 | `theorem` | [actual_zeroFiber_support_infinite](../../../../../../mathematics/NumberTheory/Ideal/Checks/Positive/CompactNormSupport.lean/declarations/actual-zerofiber-support-infinite--c894d1710c6a133ea17194dd.md) | 68 | `result-track:c894d1710c6a133ea17194dd9963d10411902ac2c2944fa8de3f5f5c587975c1` |
| 16 | `theorem` | [actual_missing_zero_counterexample](../../../../../../mathematics/NumberTheory/Ideal/Checks/Positive/CompactNormSupport.lean/declarations/actual-missing-zero-counterexample--2c5791725baae9bf1a52f103.md) | 79 | `result-track:2c5791725baae9bf1a52f1033e7a5b0b94a178d717c2685978bda5fa9fc19999` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
