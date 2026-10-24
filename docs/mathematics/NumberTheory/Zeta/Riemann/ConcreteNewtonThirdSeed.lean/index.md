# GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonThirdSeed

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b90ac2c3a8eab147d460e3e35c555d3432e35b38`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [argDen](declarations/argden--5b5cccfff11c0c4be38f77eb.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [argNum](declarations/argnum--553a873529e94d294982ec2a.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [radiusNum](declarations/radiusnum--ab394182196dcaada4325706.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [radiusDen](declarations/radiusden--b4c3c7035a914e7ead5c53f4.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [displacementNum](declarations/displacementnum--fa2ef692ae03d5b16eb7267a.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [displacementDen](declarations/displacementden--9f0acfd5702d52aa2e5bfb1d.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [reduction_data](declarations/reduction-data--18031e36399f39f944e06178.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mantissa_width](declarations/mantissa-width--d303f43affe966048990384b.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [log_decomposition](declarations/log-decomposition--4dd008fee15534967f11b94a.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [log_data](declarations/log-data--56729458c71e03572a178b6d.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [argument_identity](declarations/argument-identity--eb20291bf6322215df6944ab.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [radius_identity](declarations/radius-identity--37e6e0a6c6ab4920c4df4c5b.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [displacement_identity](declarations/displacement-identity--3bbcbf9f60c4962a30dc814e.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [third_admissible](declarations/third-admissible--4063f988efd8c9a90cffbc1c.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [seedNum](declarations/seednum--54993ebaad5755ecbd0f6a28.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [seedDen](declarations/seedden--f62349c2518d05b0bb9cf7a7.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [taylorNum](declarations/taylornum--8dca3d1d0142102aee193d8f.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [taylorDen](declarations/taylorden--45509a373d25997c07bc00e2.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [errorNum](declarations/errornum--675d173ce7d2a1a1d1a704bc.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [errorDen](declarations/errorden--0ce29196841d826fe9e49aa0.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [start](declarations/start--498b7da9422d79b6ada800d9.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [denominators_pos](declarations/denominators-pos--d7660a07f6a61258066f3cf4.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [seed_identity](declarations/seed-identity--368d9c70bf538b79cbfaf415.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [seed_error_identity](declarations/seed-error-identity--c2ed9528a4e6fddff3913331.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [errorNum_nonneg](declarations/errornum-nonneg--fcfdbbfb6d0f441b1c30da0f.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [real_integer_window](declarations/real-integer-window--81a3c5e6c860d6a9dd766ef3.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [imag_integer_window](declarations/imag-integer-window--e9e236e54723638e43e3aed2.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [error_integer_window](declarations/error-integer-window--f124ede9c3b378d4f821ebf3.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [original_seed_valid](declarations/original-seed-valid--035dda49f2cfde391fc3e520.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [initial_state_eq](declarations/initial-state-eq--c675f147913c059341c00f79.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
