# Verification target: GRWTSK.Algebra.Nullstellensatz.Variant09e879e4e17ba7419cceeb09fe4febd50b30591a8b3aabec791194d3a2a4d39f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b0c0206f2ad211b81a60224396d32cec6fb6d9a",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Nullstellensatz/Variant09e879e4e17ba7419cceeb09fe4febd50b30591a8b3aabec791194d3a2a4d39f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Nullstellensatz/Variant09e879e4e17ba7419cceeb09fe4febd50b30591a8b3aabec791194d3a2a4d39f.lean/index.md) · [Full source](../../../../mathematics/Algebra/Nullstellensatz/Variant09e879e4e17ba7419cceeb09fe4febd50b30591a8b3aabec791194d3a2a4d39f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b0c0206f2ad211b81a60224396d32cec6fb6d9a`.

Source path: `GRWTSK/Algebra/Nullstellensatz/Variant09e879e4e17ba7419cceeb09fe4febd50b30591a8b3aabec791194d3a2a4d39f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Nullstellensatz/Variant09e879e4e17ba7419cceeb09fe4febd50b30591a8b3aabec791194d3a2a4d39f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Jacobson.Ring` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zeroLocus](../../../../mathematics/Algebra/Nullstellensatz/Variant09e879e4e17ba7419cceeb09fe4febd50b30591a8b3aabec791194d3a2a4d39f.lean/declarations/zerolocus--a7dc752ead6a83a9486133fe.md) | 42 | `declaration-track:a7dc752ead6a83a9486133fe32c78ebb667b1ecb876cfca8fef750df497b1177` |
| 2 | `theorem` | [mem_zeroLocus_iff](../../../../mathematics/Algebra/Nullstellensatz/Variant09e879e4e17ba7419cceeb09fe4febd50b30591a8b3aabec791194d3a2a4d39f.lean/declarations/mem-zerolocus-iff--bfe43c7fce49882aad294643.md) | 46 | `result-track:bfe43c7fce49882aad294643d499f9d836a93546f79d1b5ad54c4b4748a3cb7e` |
| 3 | `theorem` | [zeroLocus_anti_mono](../../../../mathematics/Algebra/Nullstellensatz/Variant09e879e4e17ba7419cceeb09fe4febd50b30591a8b3aabec791194d3a2a4d39f.lean/declarations/zerolocus-anti-mono--e41929bd0f48e44ca77230e4.md) | 50 | `result-track:e41929bd0f48e44ca77230e4ccc00374a707d872a99f511325fb59e23eacfb73` |
| 4 | `theorem` | [zeroLocus_bot](../../../../mathematics/Algebra/Nullstellensatz/Variant09e879e4e17ba7419cceeb09fe4febd50b30591a8b3aabec791194d3a2a4d39f.lean/declarations/zerolocus-bot--897779f591fbb840f5cc6d64.md) | 54 | `result-track:897779f591fbb840f5cc6d64fcb6f4f1c6c092cc5306ece84d08a11f3d760580` |
| 5 | `theorem` | [zeroLocus_top](../../../../mathematics/Algebra/Nullstellensatz/Variant09e879e4e17ba7419cceeb09fe4febd50b30591a8b3aabec791194d3a2a4d39f.lean/declarations/zerolocus-top--03c80e40363cee0aa520e244.md) | 58 | `result-track:03c80e40363cee0aa520e244839f66a13c9f48384c9665ddb3c67c544a899607` |
| 6 | `def` | [vanishingIdeal](../../../../mathematics/Algebra/Nullstellensatz/Variant09e879e4e17ba7419cceeb09fe4febd50b30591a8b3aabec791194d3a2a4d39f.lean/declarations/vanishingideal--9a6591d958aec60e1e0cf89c.md) | 62 | `declaration-track:9a6591d958aec60e1e0cf89ccc6910fff7388b74e7001d47cf2555ba9759f6c8` |
| 7 | `theorem` | [mem_vanishingIdeal_iff](../../../../mathematics/Algebra/Nullstellensatz/Variant09e879e4e17ba7419cceeb09fe4febd50b30591a8b3aabec791194d3a2a4d39f.lean/declarations/mem-vanishingideal-iff--211e013d3987a236d0f4c298.md) | 70 | `result-track:211e013d3987a236d0f4c298c4307d58531ffe563869385123c1242eec7f34e5` |
| 8 | `theorem` | [vanishingIdeal_anti_mono](../../../../mathematics/Algebra/Nullstellensatz/Variant09e879e4e17ba7419cceeb09fe4febd50b30591a8b3aabec791194d3a2a4d39f.lean/declarations/vanishingideal-anti-mono--aa44974eb8ba22b497e3fc07.md) | 74 | `result-track:aa44974eb8ba22b497e3fc0722ab08da292a6a8912a06046a8d0807da086a6f8` |
| 9 | `theorem` | [vanishingIdeal_empty](../../../../mathematics/Algebra/Nullstellensatz/Variant09e879e4e17ba7419cceeb09fe4febd50b30591a8b3aabec791194d3a2a4d39f.lean/declarations/vanishingideal-empty--060762e8371cd3f70e67bade.md) | 77 | `result-track:060762e8371cd3f70e67bade84d65cb9a09208f81d25dc83ef40a21498393756` |
| 10 | `theorem` | [le_vanishingIdeal_zeroLocus](../../../../mathematics/Algebra/Nullstellensatz/Variant09e879e4e17ba7419cceeb09fe4febd50b30591a8b3aabec791194d3a2a4d39f.lean/declarations/le-vanishingideal-zerolocus--419cf8f30a4e2d5adb20dd46.md) | 80 | `result-track:419cf8f30a4e2d5adb20dd46cca82f796fb61859d8a27d62fb267bc8bc276d06` |
| 11 | `theorem` | [zeroLocus_vanishingIdeal_le](../../../../mathematics/Algebra/Nullstellensatz/Variant09e879e4e17ba7419cceeb09fe4febd50b30591a8b3aabec791194d3a2a4d39f.lean/declarations/zerolocus-vanishingideal-le--416968de7e3c18d390ce2a10.md) | 83 | `result-track:416968de7e3c18d390ce2a105b0730eb61964aff2218e7550b6b34bc7f855087` |
| 12 | `theorem` | [zeroLocus_vanishingIdeal_galoisConnection](../../../../mathematics/Algebra/Nullstellensatz/Variant09e879e4e17ba7419cceeb09fe4febd50b30591a8b3aabec791194d3a2a4d39f.lean/declarations/zerolocus-vanishingideal-galoisconnection--2cd7113c2c11b9f4c85bcefd.md) | 86 | `result-track:2cd7113c2c11b9f4c85bcefddc52261e10d81a31970aa075151223320bd39ee2` |
| 13 | `theorem` | [le_zeroLocus_iff_le_vanishingIdeal](../../../../mathematics/Algebra/Nullstellensatz/Variant09e879e4e17ba7419cceeb09fe4febd50b30591a8b3aabec791194d3a2a4d39f.lean/declarations/le-zerolocus-iff-le-vanishingideal--437706bc930e3be767929908.md) | 91 | `result-track:437706bc930e3be76792990847da2c2341cd15f1a35574e6b9a514f0ce8b952d` |
| 14 | `theorem` | [zeroLocus_span](../../../../mathematics/Algebra/Nullstellensatz/Variant09e879e4e17ba7419cceeb09fe4febd50b30591a8b3aabec791194d3a2a4d39f.lean/declarations/zerolocus-span--b5a5b6b1823ee24fe47509ff.md) | 95 | `result-track:b5a5b6b1823ee24fe47509ff3653bc606707b97836056d0fef9738e50a7a4873` |
| 15 | `theorem` | [mem_vanishingIdeal_singleton_iff](../../../../mathematics/Algebra/Nullstellensatz/Variant09e879e4e17ba7419cceeb09fe4febd50b30591a8b3aabec791194d3a2a4d39f.lean/declarations/mem-vanishingideal-singleton-iff--a76bfdfc03a1e6fa622fab06.md) | 100 | `result-track:a76bfdfc03a1e6fa622fab065fe92cccf825bc5ccd33a66e47c2a6420ec7ee10` |
| 16 | `instance` | [vanishingIdeal_singleton_isMaximal](../../../../mathematics/Algebra/Nullstellensatz/Variant09e879e4e17ba7419cceeb09fe4febd50b30591a8b3aabec791194d3a2a4d39f.lean/declarations/vanishingideal-singleton-ismaximal--122282e249d3f631237cffad.md) | 104 | `declaration-track:122282e249d3f631237cffad829d489a1ccc5068d5e67c5d2f9d9e1d210ff531` |
| 17 | `theorem` | [radical_le_vanishingIdeal_zeroLocus](../../../../mathematics/Algebra/Nullstellensatz/Variant09e879e4e17ba7419cceeb09fe4febd50b30591a8b3aabec791194d3a2a4d39f.lean/declarations/radical-le-vanishingideal-zerolocus--bd72751b7ada2170ae3d4081.md) | 116 | `result-track:bd72751b7ada2170ae3d4081c0e26b5aea1d8004de8003a09025f046918575e8` |
| 18 | `def` | [pointToPoint](../../../../mathematics/Algebra/Nullstellensatz/Variant09e879e4e17ba7419cceeb09fe4febd50b30591a8b3aabec791194d3a2a4d39f.lean/declarations/pointtopoint--907b1cabde0ffbdd00c502fd.md) | 128 | `declaration-track:907b1cabde0ffbdd00c502fd4262b74e3324a2b0cad6b2fbc5e3f83fae11c410` |
| 19 | `theorem` | [vanishingIdeal_pointToPoint](../../../../mathematics/Algebra/Nullstellensatz/Variant09e879e4e17ba7419cceeb09fe4febd50b30591a8b3aabec791194d3a2a4d39f.lean/declarations/vanishingideal-pointtopoint--b99d004f0b0cfadcc6fbfb4f.md) | 132 | `result-track:b99d004f0b0cfadcc6fbfb4f421844084dedc21c832bcca813f8ab2f549647cf` |
| 20 | `theorem` | [pointToPoint_zeroLocus_le](../../../../mathematics/Algebra/Nullstellensatz/Variant09e879e4e17ba7419cceeb09fe4febd50b30591a8b3aabec791194d3a2a4d39f.lean/declarations/pointtopoint-zerolocus-le--435a8727c946f95787fe55d2.md) | 144 | `result-track:435a8727c946f95787fe55d2742fed85678fbfb5b99be631d5c8be10d806969c` |
| 21 | `theorem` | [isMaximal_iff_eq_vanishingIdeal_singleton](../../../../mathematics/Algebra/Nullstellensatz/Variant09e879e4e17ba7419cceeb09fe4febd50b30591a8b3aabec791194d3a2a4d39f.lean/declarations/ismaximal-iff-eq-vanishingideal-singleton--51defe01902b6bbaed47c822.md) | 153 | `result-track:51defe01902b6bbaed47c82202bce00ade6bcaf948aad81c899de5f231dcc8d5` |
| 22 | `theorem` | [vanishingIdeal_zeroLocus_eq_radical](../../../../mathematics/Algebra/Nullstellensatz/Variant09e879e4e17ba7419cceeb09fe4febd50b30591a8b3aabec791194d3a2a4d39f.lean/declarations/vanishingideal-zerolocus-eq-radical--e752714bf9c405503b226c08.md) | 178 | `result-track:e752714bf9c405503b226c0846d05f1351e98d56669ef9a6cab847a7a9f46f10` |
| 23 | `theorem` | [IsPrime.vanishingIdeal_zeroLocus](../../../../mathematics/Algebra/Nullstellensatz/Variant09e879e4e17ba7419cceeb09fe4febd50b30591a8b3aabec791194d3a2a4d39f.lean/declarations/isprime-vanishingideal-zerolocus--6a90187bcb2fa1bbb926fcfb.md) | 194 | `result-track:6a90187bcb2fa1bbb926fcfb23015ecf8cfc60daf82f5bac01f7d172155fabe7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
