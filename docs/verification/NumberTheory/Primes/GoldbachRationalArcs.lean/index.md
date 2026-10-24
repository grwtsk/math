# Verification target: GRWTSK.NumberTheory.Primes.GoldbachRationalArcs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c92a51a853dc9e3c4f18bb4d0126fd222c589244",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachRationalArcs.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcs.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c92a51a853dc9e3c4f18bb4d0126fd222c589244`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachRationalArcs.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachRationalArcs.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.GCD.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goldbachRationalArcIndices](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcs.lean/declarations/goldbachrationalarcindices--9cd963b0e26caae4b01fbc1d.md) | 37 | `declaration-track:9cd963b0e26caae4b01fbc1d18379a2abde911f11380bd0518e0d0556ec8f04e` |
| 2 | `theorem` | [mem_goldbachRationalArcIndices](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcs.lean/declarations/mem-goldbachrationalarcindices--bce06a7e4c17f5629025b0da.md) | 42 | `result-track:bce06a7e4c17f5629025b0da761636041f26398e4b461d09397f43f78ee31150` |
| 3 | `theorem` | [goldbachRationalArcIndices_zero](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcs.lean/declarations/goldbachrationalarcindices-zero--7956bd9cf19cac284d2925cf.md) | 51 | `result-track:7956bd9cf19cac284d2925cf84b51e1ac25f666792f65dcf6f028fec6b09da40` |
| 4 | `theorem` | [zero_one_mem_goldbachRationalArcIndices](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcs.lean/declarations/zero-one-mem-goldbachrationalarcindices--3ad5adb68835acb2cf779f4f.md) | 59 | `result-track:3ad5adb68835acb2cf779f4f31aa3302e6e2ec33b7cae4217a9cf888a8a49944` |
| 5 | `theorem` | [one_two_mem_goldbachRationalArcIndices](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcs.lean/declarations/one-two-mem-goldbachrationalarcindices--c011c99284381caf407779ae.md) | 65 | `result-track:c011c99284381caf407779ae3df77b533e0f4ad83e602d9d5704c31f559e1de8` |
| 6 | `def` | [goldbachRationalArcCenter](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcs.lean/declarations/goldbachrationalarccenter--ee63d3af0c2b8ab8c14ef9e1.md) | 71 | `declaration-track:ee63d3af0c2b8ab8c14ef9e1874547558da830f87d649d8dd74e53bb8a04ef71` |
| 7 | `def` | [goldbachRationalArcRadius](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcs.lean/declarations/goldbachrationalarcradius--ebb838d27caa716adcad6a24.md) | 76 | `declaration-track:ebb838d27caa716adcad6a2481c6099beba0723b7e5a1f6f3a7105f8b9959235` |
| 8 | `theorem` | [goldbachRationalArcRadius_nonneg](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcs.lean/declarations/goldbachrationalarcradius-nonneg--62bb26061ca0523a695e1700.md) | 80 | `result-track:62bb26061ca0523a695e1700d2034f2c5793c9584166021bfe351ab190d19d0f` |
| 9 | `theorem` | [goldbachRationalArcRadius_pos](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcs.lean/declarations/goldbachrationalarcradius-pos--e8b49cd064a84471f736faa3.md) | 86 | `result-track:e8b49cd064a84471f736faa36ec60d3d122a077b853ea2f6426b51a854e699c2` |
| 10 | `def` | [goldbachPeriodizedRationalArc](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcs.lean/declarations/goldbachperiodizedrationalarc--3bc852b24167e60362bd3a31.md) | 97 | `declaration-track:3bc852b24167e60362bd3a31d854bc6be6547c610a52e7186d096f3defc3d8ba` |
| 11 | `theorem` | [measurable_goldbachPeriodizedRationalArc](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcs.lean/declarations/measurable-goldbachperiodizedrationalarc--52bc5f0d6e10a907f6fae78f.md) | 106 | `result-track:52bc5f0d6e10a907f6fae78f8a9a4cce67393737b14a163c09775730721f0007` |
| 12 | `theorem` | [goldbachRationalArcCenter_mem](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcs.lean/declarations/goldbachrationalarccenter-mem--2b0d1b8973438284eacf73bf.md) | 114 | `result-track:2b0d1b8973438284eacf73bfd6205751c75c5c5f2e8050368c77bd0bf455919b` |
| 13 | `theorem` | [goldbachRationalArcCenter_add_one_mem](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcs.lean/declarations/goldbachrationalarccenter-add-one-mem--076e145782e676371210a4c4.md) | 124 | `result-track:076e145782e676371210a4c49f2a80d58af297a5ac6bc60ba2263f39d3960ff7` |
| 14 | `theorem` | [goldbachRationalArcCenter_sub_one_mem](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcs.lean/declarations/goldbachrationalarccenter-sub-one-mem--9d8d0cbc88cdd2efdc42574f.md) | 134 | `result-track:9d8d0cbc88cdd2efdc42574fd7299e416c6109a3711427a9e86dc8e6f156769b` |
| 15 | `def` | [goldbachRationalMajorRegion](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcs.lean/declarations/goldbachrationalmajorregion--b1b98a2f9dbcfa7b5e9056a3.md) | 144 | `declaration-track:b1b98a2f9dbcfa7b5e9056a3c061420ff9c0cafa7e75c0d8b78ecb5cc22d9ede` |
| 16 | `theorem` | [mem_goldbachRationalMajorRegion](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcs.lean/declarations/mem-goldbachrationalmajorregion--17ea6d368a49d392f4ed5fac.md) | 149 | `result-track:17ea6d368a49d392f4ed5fac18d041828ed77164e0b403a15959760d82b5ae12` |
| 17 | `theorem` | [measurable_goldbachRationalMajorRegion](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcs.lean/declarations/measurable-goldbachrationalmajorregion--3199f82e1463e163a054e38f.md) | 156 | `result-track:3199f82e1463e163a054e38fb2d32ad8fbbaeec5c4db5f3e0e84b31ef6597a5a` |
| 18 | `theorem` | [goldbachPeriodizedRationalArc_subset_majorRegion](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcs.lean/declarations/goldbachperiodizedrationalarc-subset-majorregion--fe71062f2d213268e9fe13dc.md) | 164 | `result-track:fe71062f2d213268e9fe13dc2cd11edb27112d0707aae6822a95d3786bda6940` |
| 19 | `theorem` | [goldbachRationalMajorRegion_zero_cutoff](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcs.lean/declarations/goldbachrationalmajorregion-zero-cutoff--a61533578f12d51192f42a34.md) | 174 | `result-track:a61533578f12d51192f42a341be968a284f4a3b38b5f6da406e4816827ab55d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
