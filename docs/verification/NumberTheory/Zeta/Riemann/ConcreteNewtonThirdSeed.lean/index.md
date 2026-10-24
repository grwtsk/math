# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonThirdSeed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b90ac2c3a8eab147d460e3e35c555d3432e35b38",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b90ac2c3a8eab147d460e3e35c555d3432e35b38`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.IntegerTaylorPolynomial`](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerTaylorPolynomial.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonPacket`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonPacket.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic.NormNum` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [argDen](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean/declarations/argden--5b5cccfff11c0c4be38f77eb.md) | 32 | `declaration-track:5b5cccfff11c0c4be38f77eb85be5ca43e52ef0fbd5d098d8aac6a9dbdbcad51` |
| 2 | `def` | [argNum](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean/declarations/argnum--553a873529e94d294982ec2a.md) | 34 | `declaration-track:553a873529e94d294982ec2a53e674268e6a9e281e97370f876f7351baaf6bba` |
| 3 | `def` | [radiusNum](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean/declarations/radiusnum--ab394182196dcaada4325706.md) | 37 | `declaration-track:ab394182196dcaada4325706b5d7e2c1c3ae64109897330dfc45311558e77986` |
| 4 | `def` | [radiusDen](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean/declarations/radiusden--b4c3c7035a914e7ead5c53f4.md) | 38 | `declaration-track:b4c3c7035a914e7ead5c53f4e65f8fb431842422ad112867f8ff26a872ffb84d` |
| 5 | `def` | [displacementNum](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean/declarations/displacementnum--fa2ef692ae03d5b16eb7267a.md) | 40 | `declaration-track:fa2ef692ae03d5b16eb7267af78fd787047b34df04d7095a58bc3f631bba0949` |
| 6 | `def` | [displacementDen](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean/declarations/displacementden--9f0acfd5702d52aa2e5bfb1d.md) | 41 | `declaration-track:9f0acfd5702d52aa2e5bfb1d733c493398ae17a5b0b7bfc69309f1a0ab997139` |
| 7 | `theorem` | [reduction_data](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean/declarations/reduction-data--18031e36399f39f944e06178.md) | 44 | `result-track:18031e36399f39f944e06178da6afe9198030b36dc37ff34a8ca39a7d28b0f06` |
| 8 | `theorem` | [mantissa_width](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean/declarations/mantissa-width--d303f43affe966048990384b.md) | 50 | `result-track:d303f43affe966048990384b70f097947ed975ea6998f6955b477935fdf4ea52` |
| 9 | `theorem` | [log_decomposition](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean/declarations/log-decomposition--4dd008fee15534967f11b94a.md) | 55 | `result-track:4dd008fee15534967f11b94a272f0ca9ad3e39be4421960248b6f7d5e1e551c6` |
| 10 | `theorem` | [log_data](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean/declarations/log-data--56729458c71e03572a178b6d.md) | 65 | `result-track:56729458c71e03572a178b6d0d49c1d25f2d946cd97de643f30eb3edd005d43b` |
| 11 | `theorem` | [argument_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean/declarations/argument-identity--eb20291bf6322215df6944ab.md) | 75 | `result-track:eb20291bf6322215df6944abb079c138b7993e0d117b9bac5bc987f48f1b4606` |
| 12 | `theorem` | [radius_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean/declarations/radius-identity--37e6e0a6c6ab4920c4df4c5b.md) | 82 | `result-track:37e6e0a6c6ab4920c4df4c5b9f8f566e4659b56115d0fa6b55be16797b5f1b67` |
| 13 | `theorem` | [displacement_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean/declarations/displacement-identity--3bbcbf9f60c4962a30dc814e.md) | 89 | `result-track:3bbcbf9f60c4962a30dc814e753a0d712b1ee389b91bcd101ea78c8dedc25a8f` |
| 14 | `theorem` | [third_admissible](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean/declarations/third-admissible--4063f988efd8c9a90cffbc1c.md) | 97 | `result-track:4063f988efd8c9a90cffbc1c42af3407edbbadbdfd0128f884b0cdd0b17a8382` |
| 15 | `def` | [seedNum](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean/declarations/seednum--54993ebaad5755ecbd0f6a28.md) | 108 | `declaration-track:54993ebaad5755ecbd0f6a285ceac7c45576832ae6b7b7902918e97a1d84b86b` |
| 16 | `def` | [seedDen](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean/declarations/seedden--f62349c2518d05b0bb9cf7a7.md) | 109 | `declaration-track:f62349c2518d05b0bb9cf7a7e4fc1e2ae33e706e12edf84232106514d45791aa` |
| 17 | `def` | [taylorNum](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean/declarations/taylornum--8dca3d1d0142102aee193d8f.md) | 111 | `declaration-track:8dca3d1d0142102aee193d8f118108894200f97c5aba466858906327a016fbb8` |
| 18 | `def` | [taylorDen](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean/declarations/taylorden--45509a373d25997c07bc00e2.md) | 112 | `declaration-track:45509a373d25997c07bc00e2aed8f0b153a916dcf46628530ac0747a943d6da2` |
| 19 | `def` | [errorNum](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean/declarations/errornum--675d173ce7d2a1a1d1a704bc.md) | 115 | `declaration-track:675d173ce7d2a1a1d1a704bcac3fd94fb903d93172dfde8feb3ec3e6b3291d05` |
| 20 | `def` | [errorDen](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean/declarations/errorden--0ce29196841d826fe9e49aa0.md) | 119 | `declaration-track:0ce29196841d826fe9e49aa0471fcc52cdf6067ce24aa061d3ae08d732508c7e` |
| 21 | `def` | [start](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean/declarations/start--498b7da9422d79b6ada800d9.md) | 121 | `declaration-track:498b7da9422d79b6ada800d9d0486a6e56323a211daf6e227f2d8ef61db20491` |
| 22 | `theorem` | [denominators_pos](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean/declarations/denominators-pos--d7660a07f6a61258066f3cf4.md) | 123 | `result-track:d7660a07f6a61258066f3cf410c7084b2f6b7c46850f9fa41d5d6303e600de1c` |
| 23 | `theorem` | [seed_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean/declarations/seed-identity--368d9c70bf538b79cbfaf415.md) | 131 | `result-track:368d9c70bf538b79cbfaf4158eca4734b16e693b5033e659d0fe076161202411` |
| 24 | `theorem` | [seed_error_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean/declarations/seed-error-identity--c2ed9528a4e6fddff3913331.md) | 138 | `result-track:c2ed9528a4e6fddff3913331d1b3a0625729420fe45c4fabc5754dec0ed46302` |
| 25 | `theorem` | [errorNum_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean/declarations/errornum-nonneg--fcfdbbfb6d0f441b1c30da0f.md) | 155 | `result-track:fcfdbbfb6d0f441b1c30da0f31c366bb77cc4430c209d9e56f6f4be579d1bf0a` |
| 26 | `theorem` | [real_integer_window](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean/declarations/real-integer-window--81a3c5e6c860d6a9dd766ef3.md) | 165 | `result-track:81a3c5e6c860d6a9dd766ef3935afa0670533451b5dc931ca28e1cf5ae05d2e0` |
| 27 | `theorem` | [imag_integer_window](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean/declarations/imag-integer-window--e9e236e54723638e43e3aed2.md) | 169 | `result-track:e9e236e54723638e43e3aed22adb28731aab0c4573be928272dc666c43210778` |
| 28 | `theorem` | [error_integer_window](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean/declarations/error-integer-window--f124ede9c3b378d4f821ebf3.md) | 173 | `result-track:f124ede9c3b378d4f821ebf3ada7e3a71ed4bcfd35d652bfa09c507b6832adec` |
| 29 | `theorem` | [original_seed_valid](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean/declarations/original-seed-valid--035dda49f2cfde391fc3e520.md) | 181 | `result-track:035dda49f2cfde391fc3e520831f54913622672f73995b79d513e6bbdb51dd5a` |
| 30 | `theorem` | [initial_state_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean/declarations/initial-state-eq--c675f147913c059341c00f79.md) | 206 | `result-track:c675f147913c059341c00f7902beaa9157dcb0cb61ef0188fadf29dd9eb2235c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
