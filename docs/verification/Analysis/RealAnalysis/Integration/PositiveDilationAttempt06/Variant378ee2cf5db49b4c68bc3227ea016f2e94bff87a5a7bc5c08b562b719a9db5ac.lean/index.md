# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PositiveDilationAttempt06.Variant378ee2cf5db49b4c68bc3227ea016f2e94bff87a5a7bc5c08b562b719a9db5ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32d1b0966f3476a8b491605ea24ec3efacfba000",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt06/Variant378ee2cf5db49b4c68bc3227ea016f2e94bff87a5a7bc5c08b562b719a9db5ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt06/Variant378ee2cf5db49b4c68bc3227ea016f2e94bff87a5a7bc5c08b562b719a9db5ac.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt06/Variant378ee2cf5db49b4c68bc3227ea016f2e94bff87a5a7bc5c08b562b719a9db5ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32d1b0966f3476a8b491605ea24ec3efacfba000`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt06/Variant378ee2cf5db49b4c68bc3227ea016f2e94bff87a5a7bc5c08b562b719a9db5ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PositiveDilationAttempt06/Variant378ee2cf5db49b4c68bc3227ea016f2e94bff87a5a7bc5c08b562b719a9db5ac.lean.json)

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
| 1 | `def` | [positiveMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt06/Variant378ee2cf5db49b4c68bc3227ea016f2e94bff87a5a7bc5c08b562b719a9db5ac.lean/declarations/positivemeasure--9cf234e2c092df536f4fd91a.md) | 22 | `declaration-track:9cf234e2c092df536f4fd91a7d4f3aaa0b8c393db5e2acaf60377d73096d7121` |
| 2 | `abbrev` | [PositiveL2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt06/Variant378ee2cf5db49b4c68bc3227ea016f2e94bff87a5a7bc5c08b562b719a9db5ac.lean/declarations/positivel2--d16d5992f6912903edc54aca.md) | 23 | `declaration-track:d16d5992f6912903edc54aca3eb60f98fdfc87f6af7345ea5e2c1a589f93b224` |
| 3 | `def` | [dilateFunc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt06/Variant378ee2cf5db49b4c68bc3227ea016f2e94bff87a5a7bc5c08b562b719a9db5ac.lean/declarations/dilatefunc--5af7eec30351d097e6b70793.md) | 25 | `declaration-track:5af7eec30351d097e6b707937c2446b324a8ba68e454458b674d304d81ca225c` |
| 4 | `theorem` | [positiveMeasure_map_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt06/Variant378ee2cf5db49b4c68bc3227ea016f2e94bff87a5a7bc5c08b562b719a9db5ac.lean/declarations/positivemeasure-map-mul--2e23a5a560b75d257a70cec9.md) | 27 | `result-track:2e23a5a560b75d257a70cec9ea1ec4ff1d718afa17020e997c861d8253fc7ed2` |
| 5 | `theorem` | [positive_mul_quasi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt06/Variant378ee2cf5db49b4c68bc3227ea016f2e94bff87a5a7bc5c08b562b719a9db5ac.lean/declarations/positive-mul-quasi--f2905a9eced60b55d3180aee.md) | 36 | `result-track:f2905a9eced60b55d3180aeebc6dd83cace074b582309926f3afe68a06c01e0b` |
| 6 | `theorem` | [dilateFunc_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt06/Variant378ee2cf5db49b4c68bc3227ea016f2e94bff87a5a7bc5c08b562b719a9db5ac.lean/declarations/dilatefunc-memlp--9645384b9bc2381cf8e48058.md) | 42 | `result-track:9645384b9bc2381cf8e48058987fd33813d633b1335d6ede52f3112a68ab8adf` |
| 7 | `def` | [dilate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt06/Variant378ee2cf5db49b4c68bc3227ea016f2e94bff87a5a7bc5c08b562b719a9db5ac.lean/declarations/dilate--2f1619a9a04c9e0281195d3c.md) | 49 | `declaration-track:2f1619a9a04c9e0281195d3c37705891c7211c5ffa7a2f61bcf12c98e805f914` |
| 8 | `theorem` | [dilate_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt06/Variant378ee2cf5db49b4c68bc3227ea016f2e94bff87a5a7bc5c08b562b719a9db5ac.lean/declarations/dilate-ae--6cb607466daf30baec6ee1e4.md) | 52 | `result-track:6cb607466daf30baec6ee1e40f9cdb60bbf99479d10f63663351247a1c9c7e87` |
| 9 | `theorem` | [norm_sq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt06/Variant378ee2cf5db49b4c68bc3227ea016f2e94bff87a5a7bc5c08b562b719a9db5ac.lean/declarations/norm-sq-integral--65479b8b9e281f75d6428262.md) | 56 | `result-track:65479b8b9e281f75d64282620943eda08c977866772c18077e531f75ee319931` |
| 10 | `theorem` | [dilate_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt06/Variant378ee2cf5db49b4c68bc3227ea016f2e94bff87a5a7bc5c08b562b719a9db5ac.lean/declarations/dilate-norm-sq--3efe188081cacbbe706759a8.md) | 71 | `result-track:3efe188081cacbbe706759a81b9d3a295093284beb3e81458310ed6717cf799b` |
| 11 | `theorem` | [dilate_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt06/Variant378ee2cf5db49b4c68bc3227ea016f2e94bff87a5a7bc5c08b562b719a9db5ac.lean/declarations/dilate-norm--5e286badab4fba56cd875cbb.md) | 85 | `result-track:5e286badab4fba56cd875cbb198a2700b14de7e8b67a512ebe3a41cd9ce1ed51` |
| 12 | `theorem` | [dilate_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt06/Variant378ee2cf5db49b4c68bc3227ea016f2e94bff87a5a7bc5c08b562b719a9db5ac.lean/declarations/dilate-one--73f4a287f49cf6b0c01e18e7.md) | 88 | `result-track:73f4a287f49cf6b0c01e18e76126fb3148c58c1245837b1dcdff243509f33830` |
| 13 | `theorem` | [dilate_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt06/Variant378ee2cf5db49b4c68bc3227ea016f2e94bff87a5a7bc5c08b562b719a9db5ac.lean/declarations/dilate-comp--b00017e9425c2ea72e096f67.md) | 93 | `result-track:b00017e9425c2ea72e096f676285397db4e64b493d057b14412e4eee79dee15c` |
| 14 | `theorem` | [dilate_inverse](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt06/Variant378ee2cf5db49b4c68bc3227ea016f2e94bff87a5a7bc5c08b562b719a9db5ac.lean/declarations/dilate-inverse--ff33b62db3bbb16e6effb960.md) | 105 | `result-track:ff33b62db3bbb16e6effb960a5df16c87c901ecb8f6502ab20cce56bc07dfa61` |
| 15 | `theorem` | [dilate_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt06/Variant378ee2cf5db49b4c68bc3227ea016f2e94bff87a5a7bc5c08b562b719a9db5ac.lean/declarations/dilate-add--32bae2bbcb3e1ecdfde56fd8.md) | 110 | `result-track:32bae2bbcb3e1ecdfde56fd8ad32a496c4ccc0b758d7a5a1ddc54adb7c930145` |
| 16 | `theorem` | [dilate_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt06/Variant378ee2cf5db49b4c68bc3227ea016f2e94bff87a5a7bc5c08b562b719a9db5ac.lean/declarations/dilate-smul--dead21aeac3ccf594c04e320.md) | 120 | `result-track:dead21aeac3ccf594c04e320e85f59fb1b8bbde0c87fe36dbc000d93eacbe244` |
| 17 | `def` | [dilationIsometry](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt06/Variant378ee2cf5db49b4c68bc3227ea016f2e94bff87a5a7bc5c08b562b719a9db5ac.lean/declarations/dilationisometry--abdaee2ba979681e1b19e0f1.md) | 131 | `declaration-track:abdaee2ba979681e1b19e0f1054c896b5605801c8fcf852cfa018277f7efc790` |
| 18 | `def` | [dilationEquiv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt06/Variant378ee2cf5db49b4c68bc3227ea016f2e94bff87a5a7bc5c08b562b719a9db5ac.lean/declarations/dilationequiv--4c75a212bffcda61f348468d.md) | 137 | `declaration-track:4c75a212bffcda61f348468d3f08abf45fe64d05e4e1d26ecea98fb37ebdc0c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
