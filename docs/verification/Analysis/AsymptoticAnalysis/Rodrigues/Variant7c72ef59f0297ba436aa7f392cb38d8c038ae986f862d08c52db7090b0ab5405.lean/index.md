# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Rodrigues.Variant7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f876424d785c866272bb0f4d4b9a16619e6bb4a",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Rodrigues/Variant7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variant7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variant7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f876424d785c866272bb0f4d4b9a16619e6bb4a`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Rodrigues/Variant7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Rodrigues/Variant7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Series` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RotationVector3](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variant7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405.lean/declarations/rotationvector3--1efcb9df918d698baea712a8.md) | 29 | `declaration-track:1efcb9df918d698baea712a8a15a671f9088a9d66f6d4c229e53c08beb9c320d` |
| 2 | `def` | [crossProductMatrix](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variant7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405.lean/declarations/crossproductmatrix--ffa076033d08ad0452fb038b.md) | 32 | `declaration-track:ffa076033d08ad0452fb038b9f82ed4a657a82627afbc5b1e2279432be11a4bc` |
| 3 | `def` | [cosc](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variant7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405.lean/declarations/cosc--8dd16c96dda178a5e2641e88.md) | 38 | `declaration-track:8dd16c96dda178a5e2641e88cdd5108278642cef9126be7f6ffbc8fe7b45d981` |
| 4 | `theorem` | [cosc_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variant7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405.lean/declarations/cosc-zero--d557e8bafe5dfc0329a4b084.md) | 42 | `result-track:d557e8bafe5dfc0329a4b0847c9f14a3b61c5cbf378c3dd6ddd5b31bf6f31d3d` |
| 5 | `theorem` | [cosc_of_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variant7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405.lean/declarations/cosc-of-ne-zero--e19d4afe67ec7e3026dac035.md) | 45 | `result-track:e19d4afe67ec7e3026dac035a1ed8c92b33312ce4cf5dd9bd2522d855310142b` |
| 6 | `theorem` | [cosc_eq_sinc_half_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variant7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405.lean/declarations/cosc-eq-sinc-half-sq--3a34193009d7e318308e6445.md) | 50 | `result-track:3a34193009d7e318308e6445447fef0d3e20dc8dc38ec77f152c80f3d294f458` |
| 7 | `theorem` | [continuous_cosc](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variant7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405.lean/declarations/continuous-cosc--f2deaa9a49ef94ea7fb4b88c.md) | 64 | `result-track:f2deaa9a49ef94ea7fb4b88c50d03955d5600a4a6f9c5a42ac80c2a444f40a71` |
| 8 | `theorem` | [exp_of_cube_eq_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variant7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405.lean/declarations/exp-of-cube-eq-zero--6dd2ddca2a3f6521bc4e15ab.md) | 72 | `result-track:6dd2ddca2a3f6521bc4e15ab50fae91fb41fa922dbb0e57d0101ff9669e7120e` |
| 9 | `theorem` | [odd_power_of_cube](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variant7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405.lean/declarations/odd-power-of-cube--4b29c20464448ab4e987de0b.md) | 83 | `result-track:4b29c20464448ab4e987de0b425491131da24a9034a16bc95d1d106726b77ef0` |
| 10 | `theorem` | [even_power_of_cube](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variant7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405.lean/declarations/even-power-of-cube--4595ae3b927b4e15e11d6d44.md) | 108 | `result-track:4595ae3b927b4e15e11d6d440787b0860c909d1493fca998f09755091a4d667a` |
| 11 | `theorem` | [expSeries_odd_of_cube](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variant7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405.lean/declarations/expseries-odd-of-cube--880a03d278f693e7cba44ef2.md) | 119 | `result-track:880a03d278f693e7cba44ef29be71aa0cd26728d1b6707fb4c00fcdeb0e957b8` |
| 12 | `theorem` | [expSeries_even_tail_of_cube](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variant7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405.lean/declarations/expseries-even-tail-of-cube--e8937b6ea991c7e192506540.md) | 128 | `result-track:e8937b6ea991c7e192506540d0b737698f90b7cbff9d9ba48d0d54afe70c1e7d` |
| 13 | `theorem` | [hasSum_cos_tail](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variant7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405.lean/declarations/hassum-cos-tail--20f18a2a8e95940fdfc98cee.md) | 138 | `result-track:20f18a2a8e95940fdfc98ceef09b05381f7e17b26e2227adfa215392aceb564e` |
| 14 | `theorem` | [hasSum_expSeries_odd_of_cube](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variant7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405.lean/declarations/hassum-expseries-odd-of-cube--ea4bb61443a796874d4d38c0.md) | 146 | `result-track:ea4bb61443a796874d4d38c049e7dffbdae9c56fd98e59500ba6edbd9780918e` |
| 15 | `theorem` | [hasSum_expSeries_even_tail_of_cube](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variant7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405.lean/declarations/hassum-expseries-even-tail-of-cube--e3db5da825a79e3762ef406f.md) | 158 | `result-track:e3db5da825a79e3762ef406fdffe46d81cf14f379d1e84c709eb48ce2c2ffe0e` |
| 16 | `theorem` | [hasSum_expSeries_even_of_cube](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variant7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405.lean/declarations/hassum-expseries-even-of-cube--ae649924106446acadcf7a31.md) | 175 | `result-track:ae649924106446acadcf7a319e9b4e6607b6b1928c082def6d7017c67f6c0ff1` |
| 17 | `theorem` | [hasSum_expSeries_of_cube_of_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variant7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405.lean/declarations/hassum-expseries-of-cube-of-ne-zero--83d6508dc59575cf5180aa8a.md) | 184 | `result-track:83d6508dc59575cf5180aa8a4bc5e9f20e7d9204988630b9789fa460cd74ca2a` |
| 18 | `theorem` | [exp_eq_rodrigues_of_cube_of_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variant7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405.lean/declarations/exp-eq-rodrigues-of-cube-of-ne-zero--98d351c3b59fad2cbfe58dfd.md) | 197 | `result-track:98d351c3b59fad2cbfe58dfda1195ba9152b65b21d4bb573d3d8a0ddc57d75a6` |
| 19 | `theorem` | [exp_eq_rodrigues_of_cube](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variant7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405.lean/declarations/exp-eq-rodrigues-of-cube--67925ce6a03ec6d6107cacf8.md) | 204 | `result-track:67925ce6a03ec6d6107cacf889b36316f8bcc51b96901dd0a605a940a5d27ca2` |
| 20 | `theorem` | [crossProductMatrix_mulVec](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variant7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405.lean/declarations/crossproductmatrix-mulvec--053755a6b9d788f43793ff25.md) | 215 | `result-track:053755a6b9d788f43793ff25a4aeeebdeb760f5e54b71115c372acbdbc68fabc` |
| 21 | `theorem` | [crossProductMatrix_cube](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variant7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405.lean/declarations/crossproductmatrix-cube--af25b0da3d1f8be24b7ac06d.md) | 223 | `result-track:af25b0da3d1f8be24b7ac06d8cc28cdbb306d540b7f3085ca9a32251636dba9e` |
| 22 | `theorem` | [rodrigues_matrix_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Rodrigues/Variant7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405.lean/declarations/rodrigues-matrix-exp--45931eb452cd5a20ad54c1eb.md) | 239 | `result-track:45931eb452cd5a20ad54c1eb0cf0d4709206b18741ce5284763ddae50082bda3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
