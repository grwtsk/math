# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PositiveDilationAttempt08.Variant3dba9bbcb321e25f22c65236e432fa8345503f03ba9e5e39adea68439d64e6fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45cc80b9b888177fa8e633e5693ae43b802d2254",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant3dba9bbcb321e25f22c65236e432fa8345503f03ba9e5e39adea68439d64e6fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant3dba9bbcb321e25f22c65236e432fa8345503f03ba9e5e39adea68439d64e6fb.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant3dba9bbcb321e25f22c65236e432fa8345503f03ba9e5e39adea68439d64e6fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45cc80b9b888177fa8e633e5693ae43b802d2254`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant3dba9bbcb321e25f22c65236e432fa8345503f03ba9e5e39adea68439d64e6fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant3dba9bbcb321e25f22c65236e432fa8345503f03ba9e5e39adea68439d64e6fb.lean.json)

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
| 1 | `def` | [positiveMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant3dba9bbcb321e25f22c65236e432fa8345503f03ba9e5e39adea68439d64e6fb.lean/declarations/positivemeasure--60550b920884b94cf0755c99.md) | 22 | `declaration-track:60550b920884b94cf0755c99ad54e466420526359666d2e233f6e18975a876ff` |
| 2 | `abbrev` | [PositiveL2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant3dba9bbcb321e25f22c65236e432fa8345503f03ba9e5e39adea68439d64e6fb.lean/declarations/positivel2--851d0095c237fdc1f3459525.md) | 23 | `declaration-track:851d0095c237fdc1f34595256a4b45437859e268befd34cdfad588d6453caea1` |
| 3 | `def` | [dilateFunc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant3dba9bbcb321e25f22c65236e432fa8345503f03ba9e5e39adea68439d64e6fb.lean/declarations/dilatefunc--dce85188983cb2cd82cab1b0.md) | 25 | `declaration-track:dce85188983cb2cd82cab1b089bc805c4337be40d2517276797738717571182f` |
| 4 | `theorem` | [positiveMeasure_map_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant3dba9bbcb321e25f22c65236e432fa8345503f03ba9e5e39adea68439d64e6fb.lean/declarations/positivemeasure-map-mul--c1e0724d8f24a530a2c0c581.md) | 27 | `result-track:c1e0724d8f24a530a2c0c5816c43bddf7c775806439b29dca6138faf1d03697e` |
| 5 | `theorem` | [positive_mul_quasi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant3dba9bbcb321e25f22c65236e432fa8345503f03ba9e5e39adea68439d64e6fb.lean/declarations/positive-mul-quasi--6be948943dcdc0a0e383b906.md) | 36 | `result-track:6be948943dcdc0a0e383b9066be8d09a03c89a84392656bd7617da1ca99be91d` |
| 6 | `theorem` | [dilateFunc_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant3dba9bbcb321e25f22c65236e432fa8345503f03ba9e5e39adea68439d64e6fb.lean/declarations/dilatefunc-memlp--0aed92cb1610b90bf4f68b22.md) | 42 | `result-track:0aed92cb1610b90bf4f68b225b99cb1a6e45b90a4aed4e80878d06e6a1694473` |
| 7 | `def` | [dilate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant3dba9bbcb321e25f22c65236e432fa8345503f03ba9e5e39adea68439d64e6fb.lean/declarations/dilate--1cb63a111366b23a29a82f94.md) | 49 | `declaration-track:1cb63a111366b23a29a82f945574038e9dc2b6f561e480a9ee256a62fb88710a` |
| 8 | `theorem` | [dilate_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant3dba9bbcb321e25f22c65236e432fa8345503f03ba9e5e39adea68439d64e6fb.lean/declarations/dilate-ae--93469b0b9d4fff91af2177ed.md) | 52 | `result-track:93469b0b9d4fff91af2177ed394458cf31ad309a1ce0f27b26e4e09634ccd198` |
| 9 | `theorem` | [norm_sq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant3dba9bbcb321e25f22c65236e432fa8345503f03ba9e5e39adea68439d64e6fb.lean/declarations/norm-sq-integral--4198d7c1d77ec8f6a437a5b8.md) | 56 | `result-track:4198d7c1d77ec8f6a437a5b83e9aede1de43c25d5b9072fa59c801be7a60ab3c` |
| 10 | `theorem` | [dilate_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant3dba9bbcb321e25f22c65236e432fa8345503f03ba9e5e39adea68439d64e6fb.lean/declarations/dilate-norm-sq--0d9cd9df31a1023701415c0e.md) | 72 | `result-track:0d9cd9df31a1023701415c0e32dc0544902e40486c8959537c9e0fa0b9d8b553` |
| 11 | `theorem` | [dilate_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant3dba9bbcb321e25f22c65236e432fa8345503f03ba9e5e39adea68439d64e6fb.lean/declarations/dilate-norm--6ddbcbb7d2f7b142775ce644.md) | 86 | `result-track:6ddbcbb7d2f7b142775ce64407417fdd146e8ac65e7d0bb1477c2ca77b06fca5` |
| 12 | `theorem` | [dilate_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant3dba9bbcb321e25f22c65236e432fa8345503f03ba9e5e39adea68439d64e6fb.lean/declarations/dilate-one--fdf28cabcdd98cfc1f97964b.md) | 89 | `result-track:fdf28cabcdd98cfc1f97964b875a1869db6a636d2216a235cd1229be62c9c2d4` |
| 13 | `theorem` | [dilate_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant3dba9bbcb321e25f22c65236e432fa8345503f03ba9e5e39adea68439d64e6fb.lean/declarations/dilate-comp--1b4831e3b77c1e516c567f6f.md) | 94 | `result-track:1b4831e3b77c1e516c567f6f28c55b8e44d6f50f19211b16fe9990e48419886d` |
| 14 | `theorem` | [dilate_inverse](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant3dba9bbcb321e25f22c65236e432fa8345503f03ba9e5e39adea68439d64e6fb.lean/declarations/dilate-inverse--5f7da085fe9e62c700e1a28f.md) | 106 | `result-track:5f7da085fe9e62c700e1a28fa59bdf4b675a26c74c7785c0b959d23e1cb78215` |
| 15 | `theorem` | [dilate_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant3dba9bbcb321e25f22c65236e432fa8345503f03ba9e5e39adea68439d64e6fb.lean/declarations/dilate-add--3b88d32978bdeb74267c9ea2.md) | 111 | `result-track:3b88d32978bdeb74267c9ea29223501bde621ac9d8a27374f397905315059dc0` |
| 16 | `theorem` | [dilate_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant3dba9bbcb321e25f22c65236e432fa8345503f03ba9e5e39adea68439d64e6fb.lean/declarations/dilate-smul--a0f58e5efdcbda20838aaee0.md) | 121 | `result-track:a0f58e5efdcbda20838aaee01879c46c2bcce7d3957d123ae23c77b008c61f90` |
| 17 | `def` | [dilationIsometry](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant3dba9bbcb321e25f22c65236e432fa8345503f03ba9e5e39adea68439d64e6fb.lean/declarations/dilationisometry--d116eadb9fef7cab011b27c2.md) | 132 | `declaration-track:d116eadb9fef7cab011b27c2831bccfd937bf1994832521e1bc6ffb722988456` |
| 18 | `def` | [dilationEquiv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant3dba9bbcb321e25f22c65236e432fa8345503f03ba9e5e39adea68439d64e6fb.lean/declarations/dilationequiv--7b0f31b467d3e7eb5f342b7e.md) | 138 | `declaration-track:7b0f31b467d3e7eb5f342b7ec1c4383cb3ddeaeb086457c836a5de8bb9454a87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
