# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetCounting

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "947876811c9527101185978b472bf13ecb875edb",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetCounting.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetCounting.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetCounting.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `947876811c9527101185978b472bf13ecb875edb`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetCounting.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetCounting.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.EquivalentForms`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/EquivalentForms.lean/index.md) — import line 12; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.AnatomicFactorization`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicFactorization.lean/index.md) — import line 13; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetAnalyticBounds`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticBounds.lean/index.md) — import line 14; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.MomentReindexing`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/MomentReindexing.lean/index.md) — import line 15; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetOptimization`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetOptimization.lean/index.md) — import line 16; pinned internal source present.
- `Mathlib.Tactic` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exponentExceptionalSet](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetCounting.lean/declarations/exponentexceptionalset--7faac347cdf635a3edbd9527.md) | 28 | `declaration-track:7faac347cdf635a3edbd95274dc19a6cb2170f049a61a2b0c6dbc10549c1b931` |
| 2 | `theorem` | [radical_lt_height_rpow_iff_quality](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetCounting.lean/declarations/radical-lt-height-rpow-iff-quality--660852292adfabaaac26c6b4.md) | 37 | `result-track:660852292adfabaaac26c6b445d7aca28a769e807ed3a6c25b64ecd706a4c61f` |
| 3 | `def` | [boundedExponentExceptionalTriples](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetCounting.lean/declarations/boundedexponentexceptionaltriples--e2bf5b1c673172f3c1377c06.md) | 51 | `declaration-track:e2bf5b1c673172f3c1377c06becb6a0e7061922acb41e4a10cb3a67d1f8a2575` |
| 4 | `theorem` | [mem_boundedExponentExceptionalTriples](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetCounting.lean/declarations/mem-boundedexponentexceptionaltriples--a8e0614a93fbcfbd56ff6cd2.md) | 56 | `result-track:a8e0614a93fbcfbd56ff6cd2b9c696fc401d566a6c7d7fff4a3ff7df66d84733` |
| 5 | `def` | [exponentExceptionalCount](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetCounting.lean/declarations/exponentexceptionalcount--7bbcd95717258efbe951b10d.md) | 65 | `declaration-track:7bbcd95717258efbe951b10defee5ea04352acefcf57f0c87df7f6f59e76087f` |
| 6 | `theorem` | [boundedExponentExceptionalTriples_mono](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetCounting.lean/declarations/boundedexponentexceptionaltriples-mono--0c807566b0d867d6ae5fddb0.md) | 68 | `result-track:0c807566b0d867d6ae5fddb0e896fd0ef2ab55711e131edd27665a4c86d6b2ef` |
| 7 | `theorem` | [exponentExceptionalCount_mono](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetCounting.lean/declarations/exponentexceptionalcount-mono--1cd9bb528ccdb3a02bb50d0a.md) | 77 | `result-track:1cd9bb528ccdb3a02bb50d0a05f9d7a0410f0379b79969b24c209c5f5394fd07` |
| 8 | `def` | [FrequentlyAtLeastPower](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetCounting.lean/declarations/frequentlyatleastpower--5f394da02c601d458014d71e.md) | 85 | `declaration-track:5f394da02c601d458014d71ea13980dc2a2e26738e57f968c9f439c55e1687c5` |
| 9 | `def` | [EventuallyBelowPower](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetCounting.lean/declarations/eventuallybelowpower--32ac7966befee343c403e238.md) | 92 | `declaration-track:32ac7966befee343c403e23866d2e3a0b66733c3fd9cd5ac99362eb8adcc25ed` |
| 10 | `theorem` | [eventuallyBelowPower_of_not_frequentlyAtLeastPower](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetCounting.lean/declarations/eventuallybelowpower-of-not-frequentlyatleastpower--e6072b4c9d5ad46b9b135b5b.md) | 96 | `result-track:e6072b4c9d5ad46b9b135b5b833c4b1e920f5223446160168230ba2d16d17d0a` |
| 11 | `theorem` | [not_frequentlyAtLeastPower_of_eventuallyBelowPower](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetCounting.lean/declarations/not-frequentlyatleastpower-of-eventuallybelowpower--6ac000e698161c8bb792511c.md) | 106 | `result-track:6ac000e698161c8bb792511c1bcceff89b84be086c19bc300f9bef275fb11374` |
| 12 | `def` | [HasOptimizationCertificate](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetCounting.lean/declarations/hasoptimizationcertificate--61bb19a44fa59dc9c3443c67.md) | 117 | `declaration-track:61bb19a44fa59dc9c3443c672e84674ec2b936ae386c4de5618bdfec71a46e0c` |
| 13 | `theorem` | [exponent_le_three_fifths_of_certificate](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetCounting.lean/declarations/exponent-le-three-fifths-of-certificate--622f3b3a9c36663df3c39272.md) | 121 | `result-track:622f3b3a9c36663df3c392725599c42f3dc6b171d63f94823e6e2a0d1743f6a2` |
| 14 | `structure` | [ExceptionalSetAnalyticSupplier](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetCounting.lean/declarations/exceptionalsetanalyticsupplier--9b12495fa34ed8c9ee3e130d.md) | 132 | `declaration-track:9b12495fa34ed8c9ee3e130dfc6af40e3c3a817efb6fc10995b7c38994136607` |
| 15 | `structure` | [ExceptionalSetOptimizationExtractor](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetCounting.lean/declarations/exceptionalsetoptimizationextractor--5dcacd2d11268cc801223590.md) | 144 | `declaration-track:5dcacd2d11268cc80122359026faf0d2c1d2c03ca9e17b0b8a7a615a4137a690` |
| 16 | `structure` | [SplitExceptionalSetAnalyticSupplier](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetCounting.lean/declarations/splitexceptionalsetanalyticsupplier--11339d0f81720851beb60d15.md) | 155 | `declaration-track:11339d0f81720851beb60d152e5357fe4fa8476ada2aaee83cd590b1518c204f` |
| 17 | `theorem` | [SplitExceptionalSetAnalyticSupplier.toAnalyticSupplier](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetCounting.lean/declarations/splitexceptionalsetanalyticsupplier-toanalyticsupplier--873f310d6b36fc558dbbfb69.md) | 164 | `result-track:873f310d6b36fc558dbbfb6921c4e033e320c0521158014ef19695656a46f130` |
| 18 | `theorem` | [not_frequentlyAtLeastPower_of_supplier](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetCounting.lean/declarations/not-frequentlyatleastpower-of-supplier--7e715aeec887ed010c076296.md) | 174 | `result-track:7e715aeec887ed010c07629661078d77991dbd81e4370c6e23e1d191fd8a5656` |
| 19 | `theorem` | [not_frequentlyAtLeastPower_of_split_supplier](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetCounting.lean/declarations/not-frequentlyatleastpower-of-split-supplier--8d52d864482c98224f6be2b3.md) | 183 | `result-track:8d52d864482c98224f6be2b3bb59fe793576b291f1aca0659e637199e4947bb0` |
| 20 | `theorem` | [eventuallyBelowPower_of_supplier](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetCounting.lean/declarations/eventuallybelowpower-of-supplier--6b811cfec4a80a94748a50e3.md) | 189 | `result-track:6b811cfec4a80a94748a50e3218810e3d90177f1ddb92f51d672e22989450cc7` |
| 21 | `theorem` | [eventuallyBelowPower_of_split_supplier](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetCounting.lean/declarations/eventuallybelowpower-of-split-supplier--1e48f3a5afafd132d3be9dda.md) | 196 | `result-track:1e48f3a5afafd132d3be9dda282240d26e1a2818ab91511dd2ae523327e14277` |
| 22 | `def` | [HasThreeFifthsExceptionalBound](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetCounting.lean/declarations/hasthreefifthsexceptionalbound--e37b688fcb3135c4bd9420af.md) | 205 | `declaration-track:e37b688fcb3135c4bd9420af0b75d580e234458ce0530dff0555c9c5f8ed4fd0` |
| 23 | `theorem` | [hasThreeFifthsExceptionalBound_of_supplier](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetCounting.lean/declarations/hasthreefifthsexceptionalbound-of-supplier--45de0d76d02913c4f5682095.md) | 209 | `result-track:45de0d76d02913c4f568209503037b1a5e7cad10eba6d3baee79f92591ba9cf3` |
| 24 | `theorem` | [hasThreeFifthsExceptionalBound_of_split_supplier](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetCounting.lean/declarations/hasthreefifthsexceptionalbound-of-split-supplier--1caa567e0a044652cf49bf0d.md) | 215 | `result-track:1caa567e0a044652cf49bf0d74f2cf715400895b670a04ac01e7b041cabe0746` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
