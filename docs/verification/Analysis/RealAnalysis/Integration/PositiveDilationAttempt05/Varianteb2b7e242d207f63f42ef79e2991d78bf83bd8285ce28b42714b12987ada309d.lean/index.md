# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PositiveDilationAttempt05.Varianteb2b7e242d207f63f42ef79e2991d78bf83bd8285ce28b42714b12987ada309d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f106c558ae916e78230895512c3f09951e58074",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt05/Varianteb2b7e242d207f63f42ef79e2991d78bf83bd8285ce28b42714b12987ada309d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt05/Varianteb2b7e242d207f63f42ef79e2991d78bf83bd8285ce28b42714b12987ada309d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt05/Varianteb2b7e242d207f63f42ef79e2991d78bf83bd8285ce28b42714b12987ada309d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f106c558ae916e78230895512c3f09951e58074`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt05/Varianteb2b7e242d207f63f42ef79e2991d78bf83bd8285ce28b42714b12987ada309d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PositiveDilationAttempt05/Varianteb2b7e242d207f63f42ef79e2991d78bf83bd8285ce28b42714b12987ada309d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMuntzBound` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt05/Varianteb2b7e242d207f63f42ef79e2991d78bf83bd8285ce28b42714b12987ada309d.lean/declarations/positivemeasure--06e004cb10a3ddcda2765024.md) | 22 | `declaration-track:06e004cb10a3ddcda27650249894123858e1f886e114b2d95f3a5ac10ed56dda` |
| 2 | `abbrev` | [PositiveL2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt05/Varianteb2b7e242d207f63f42ef79e2991d78bf83bd8285ce28b42714b12987ada309d.lean/declarations/positivel2--9caa8f395a6fb8a0dbca07a6.md) | 23 | `declaration-track:9caa8f395a6fb8a0dbca07a6a79f7618d0a9c7a6c8d8ee16eb62f048be20630e` |
| 3 | `def` | [dilateFunc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt05/Varianteb2b7e242d207f63f42ef79e2991d78bf83bd8285ce28b42714b12987ada309d.lean/declarations/dilatefunc--f9775f266b17b77773336f07.md) | 25 | `declaration-track:f9775f266b17b77773336f07900de4dd90d125996e70c592a04d5f3042ebdfa2` |
| 4 | `theorem` | [positiveMeasure_map_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt05/Varianteb2b7e242d207f63f42ef79e2991d78bf83bd8285ce28b42714b12987ada309d.lean/declarations/positivemeasure-map-mul--d96143db37592f8f7f05afb8.md) | 27 | `result-track:d96143db37592f8f7f05afb8af079c79b9087e6f263115dc144d68b021557de5` |
| 5 | `theorem` | [positive_mul_quasi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt05/Varianteb2b7e242d207f63f42ef79e2991d78bf83bd8285ce28b42714b12987ada309d.lean/declarations/positive-mul-quasi--303d7f37580863b376a7dd33.md) | 36 | `result-track:303d7f37580863b376a7dd33ab261a0b6dc21f0d78dde58a9ba6cda0c80b9002` |
| 6 | `theorem` | [dilateFunc_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt05/Varianteb2b7e242d207f63f42ef79e2991d78bf83bd8285ce28b42714b12987ada309d.lean/declarations/dilatefunc-memlp--85c020525ce4e9f73cf3fbb2.md) | 42 | `result-track:85c020525ce4e9f73cf3fbb2f6da9843ccb525414b28ced670b077dad4d40940` |
| 7 | `def` | [dilate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt05/Varianteb2b7e242d207f63f42ef79e2991d78bf83bd8285ce28b42714b12987ada309d.lean/declarations/dilate--a317782803157f31b85dcfb8.md) | 49 | `declaration-track:a317782803157f31b85dcfb83f0a48e9f8a6f1597f30f501065f2b2989553c13` |
| 8 | `theorem` | [dilate_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt05/Varianteb2b7e242d207f63f42ef79e2991d78bf83bd8285ce28b42714b12987ada309d.lean/declarations/dilate-ae--272196dfaa4dc3cb2cd0f5f0.md) | 52 | `result-track:272196dfaa4dc3cb2cd0f5f08068b9a391c467c7b65b9e593b9967d3104fbefc` |
| 9 | `theorem` | [norm_sq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt05/Varianteb2b7e242d207f63f42ef79e2991d78bf83bd8285ce28b42714b12987ada309d.lean/declarations/norm-sq-integral--d44490b5d60694be532fbc7c.md) | 56 | `result-track:d44490b5d60694be532fbc7ccd7c439cc7faced85314e94d3562f0e38ceb9ef7` |
| 10 | `theorem` | [dilate_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt05/Varianteb2b7e242d207f63f42ef79e2991d78bf83bd8285ce28b42714b12987ada309d.lean/declarations/dilate-norm-sq--bd95f9a172fa423e54eb803a.md) | 71 | `result-track:bd95f9a172fa423e54eb803a5360151ee3d4e446e791fd082886f438db2d8db4` |
| 11 | `theorem` | [dilate_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt05/Varianteb2b7e242d207f63f42ef79e2991d78bf83bd8285ce28b42714b12987ada309d.lean/declarations/dilate-norm--4cd60cd74f625bd3bdf01a9a.md) | 85 | `result-track:4cd60cd74f625bd3bdf01a9a2f5640b1d9a446cbe5b9f453bc99f9ed4edb25dc` |
| 12 | `theorem` | [dilate_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt05/Varianteb2b7e242d207f63f42ef79e2991d78bf83bd8285ce28b42714b12987ada309d.lean/declarations/dilate-one--77513c9fdf850f74156a9988.md) | 88 | `result-track:77513c9fdf850f74156a998892ee5717560d82fdfca1929ffc724d71765d6055` |
| 13 | `theorem` | [dilate_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt05/Varianteb2b7e242d207f63f42ef79e2991d78bf83bd8285ce28b42714b12987ada309d.lean/declarations/dilate-comp--bc56a700d719202b105fcf9c.md) | 93 | `result-track:bc56a700d719202b105fcf9c31358b65681f2d5a25761fbbacbbad8e6db9e755` |
| 14 | `theorem` | [dilate_inverse](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt05/Varianteb2b7e242d207f63f42ef79e2991d78bf83bd8285ce28b42714b12987ada309d.lean/declarations/dilate-inverse--39fac54f2cbb86d9eafa77a4.md) | 105 | `result-track:39fac54f2cbb86d9eafa77a47fd158ba92dfccc76a174ed9f1b67d7e704ee94b` |
| 15 | `theorem` | [dilate_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt05/Varianteb2b7e242d207f63f42ef79e2991d78bf83bd8285ce28b42714b12987ada309d.lean/declarations/dilate-add--f029c299620ec2b009446de0.md) | 110 | `result-track:f029c299620ec2b009446de09a2d501f0d70269632c9a31e184b826879abb13c` |
| 16 | `theorem` | [dilate_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt05/Varianteb2b7e242d207f63f42ef79e2991d78bf83bd8285ce28b42714b12987ada309d.lean/declarations/dilate-smul--d5143e610643d387f5923639.md) | 120 | `result-track:d5143e610643d387f5923639f7caa932acb31887eeee99bb71bacca54d8f5922` |
| 17 | `def` | [dilationIsometry](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt05/Varianteb2b7e242d207f63f42ef79e2991d78bf83bd8285ce28b42714b12987ada309d.lean/declarations/dilationisometry--3e5ace70eb28160539d4fcd5.md) | 131 | `declaration-track:3e5ace70eb28160539d4fcd5549155ea63387c1cedada18aea3d695125901a76` |
| 18 | `def` | [dilationEquiv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt05/Varianteb2b7e242d207f63f42ef79e2991d78bf83bd8285ce28b42714b12987ada309d.lean/declarations/dilationequiv--e52b6f142e1450efc7c24786.md) | 137 | `declaration-track:e52b6f142e1450efc7c24786b773db89b397339395abd665a02134a9eb04eb4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
