# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyParameterSeries

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a88278d8aef331ffdf6ceee7e4d40a4208212fb",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyParameterSeries.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyParameterSeries.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyParameterSeries.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a88278d8aef331ffdf6ceee7e4d40a4208212fb`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyParameterSeries.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyParameterSeries.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetQuotient`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.RingTheory.PowerSeries.Trunc` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Div` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Pi` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coefficient](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyParameterSeries.lean/declarations/coefficient--35da97d014578eaca377a986.md) | 27 | `declaration-track:35da97d014578eaca377a9866769ab516087cb3d144e79f65a06bd713192dbd2` |
| 2 | `theorem` | [coefficient_mk](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyParameterSeries.lean/declarations/coefficient-mk--36dcc6e07adb557fa8f15b2f.md) | 31 | `result-track:36dcc6e07adb557fa8f15b2f7114cd732a78f4b70e45fd5267d4ff87b2537114` |
| 3 | `theorem` | [coefficient_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyParameterSeries.lean/declarations/coefficient-zero--48a6282cc3293e0e867f7e25.md) | 41 | `result-track:48a6282cc3293e0e867f7e250883591a7426147e1e44e492fa8607524c508d44` |
| 4 | `theorem` | [coefficient_ext](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyParameterSeries.lean/declarations/coefficient-ext--eecd826b10eb3369a3b82bc8.md) | 45 | `result-track:eecd826b10eb3369a3b82bc8b68d1409ec6a3288e3ec3c17918b2e8ed09b0941` |
| 5 | `theorem` | [parameterTruncate_mk](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyParameterSeries.lean/declarations/parametertruncate-mk--56112dbdfd07d6565c0408e5.md) | 57 | `result-track:56112dbdfd07d6565c0408e562dd37895493a29f42096bdf477d8eea727ef517` |
| 6 | `theorem` | [coefficient_truncate](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyParameterSeries.lean/declarations/coefficient-truncate--96ea269b552d5353c62a7759.md) | 72 | `result-track:96ea269b552d5353c62a77596050d75c02bc250b93690d81586fd2136a74f821` |
| 7 | `def` | [seriesTrunc](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyParameterSeries.lean/declarations/seriestrunc--5cc4c37a617bf9ca27b3aa25.md) | 80 | `declaration-track:5cc4c37a617bf9ca27b3aa2588585f2edb466b09e938307d87c971987d69886d` |
| 8 | `theorem` | [coefficient_seriesTrunc](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyParameterSeries.lean/declarations/coefficient-seriestrunc--4b927571164afc0be653d1a9.md) | 84 | `result-track:4b927571164afc0be653d1a9ce32e34d45e68a6c126bcafc60663888c0a7f7cc` |
| 9 | `theorem` | [seriesTrunc_mul](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyParameterSeries.lean/declarations/seriestrunc-mul--a786f452bf5a67d990723bf0.md) | 91 | `result-track:a786f452bf5a67d990723bf0fdd92282a475e203d0148f003f8fd75195a7f93f` |
| 10 | `def` | [seriesTruncAlg](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyParameterSeries.lean/declarations/seriestruncalg--cb53020b9614e8034d65af58.md) | 103 | `declaration-track:cb53020b9614e8034d65af583ff6b56138ea4b1367a72000ab70f5886b6769c9` |
| 11 | `theorem` | [seriesTrunc_compatible](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyParameterSeries.lean/declarations/seriestrunc-compatible--2c79007887c4b706c48ddb7b.md) | 114 | `result-track:2c79007887c4b706c48ddb7b21ab98219e37b27cc25ec6bb632c67fca78c5639` |
| 12 | `def` | [compatibleParameters](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyParameterSeries.lean/declarations/compatibleparameters--99f4b1d378572e9b81295406.md) | 123 | `declaration-track:99f4b1d378572e9b812954060eff84eb4b15c4f7d1b2fc79f7dfebba4a465fb8` |
| 13 | `abbrev` | [Limit](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyParameterSeries.lean/declarations/limit--dd9da2260f51249e945438ec.md) | 145 | `declaration-track:dd9da2260f51249e945438ec59456ae30c9a97fc2b4d5d52595704f5b98ef57d` |
| 14 | `def` | [fromSeries](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyParameterSeries.lean/declarations/fromseries--9ef88546c185b6e7bc160f91.md) | 148 | `declaration-track:9ef88546c185b6e7bc160f91f885ac097c9d36aebbe60d0ac975a09cab4e5b4c` |
| 15 | `def` | [toSeries](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyParameterSeries.lean/declarations/toseries--46ed3f3f7a71842a76455ffd.md) | 158 | `declaration-track:46ed3f3f7a71842a76455ffdd1b29fdd67db3c83ef7211338257f83e0c654544` |
| 16 | `theorem` | [seriesTrunc_toSeries](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyParameterSeries.lean/declarations/seriestrunc-toseries--23dca4d74735fb11da8fb237.md) | 162 | `result-track:23dca4d74735fb11da8fb237b7826ce784ac3b3536ad34ff75ffeccc0f06a24f` |
| 17 | `theorem` | [toSeries_fromSeries](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyParameterSeries.lean/declarations/toseries-fromseries--86064f4ce358f37324d4f8d5.md) | 172 | `result-track:86064f4ce358f37324d4f8d5b3114ec8131693e331b57db44449269cf62ba1a9` |
| 18 | `theorem` | [fromSeries_toSeries](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyParameterSeries.lean/declarations/fromseries-toseries--e170c927dd19ad1200487c2d.md) | 178 | `result-track:e170c927dd19ad1200487c2d8b0cf8012e51b3a263dcf72841071d20bce633cd` |
| 19 | `def` | [seriesEquiv](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyParameterSeries.lean/declarations/seriesequiv--23da612f6eb446405749f992.md) | 184 | `declaration-track:23da612f6eb446405749f992f4eda47e1b1bd52a770eff923bf53d0069e86564` |
| 20 | `theorem` | [series_ext](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyParameterSeries.lean/declarations/series-ext--b0a132aeb622cffa86a2732c.md) | 194 | `result-track:b0a132aeb622cffa86a2732cc6fe9d4fc249552a4cb0465fcae2368199c2d1f0` |
| 21 | `theorem` | [seriesTrunc_eq_zero_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyParameterSeries.lean/declarations/seriestrunc-eq-zero-iff--d936001d389e9aabcce08c64.md) | 202 | `result-track:d936001d389e9aabcce08c643e9d289681209b936cad3ed5cc76f761f00ca008` |
| 22 | `theorem` | [seriesTrunc_X](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyParameterSeries.lean/declarations/seriestrunc-x--b3d6bab31dfae6d30e0cc8df.md) | 216 | `result-track:b3d6bab31dfae6d30e0cc8dfa5556c66bb86aa3fc793ced137b7fff88a914c51` |
| 23 | `theorem` | [invisible_tail](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyParameterSeries.lean/declarations/invisible-tail--dcc44835cc4708fef26f75e8.md) | 227 | `result-track:dcc44835cc4708fef26f75e8d2750eec11937f586df9d52367e987274de1a4eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
