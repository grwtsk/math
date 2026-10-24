# Verification target: GRWTSK.Algebra.LinearAlgebra.Defs.Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "caa6ad026ddd6ee5928b7888495f457685a51f27",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `caa6ad026ddd6ee5928b7888495f457685a51f27`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Free` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SimpleRing.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FiniteDimensional](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean/declarations/finitedimensional--1c488f13fc81f3a937866c89.md) | 70 | `declaration-track:1c488f13fc81f3a937866c89422d73ece29d87398e1ce50af53143d8064d611c` |
| 2 | `theorem` | [of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean/declarations/of-injective--ae319cebcaa9b2b43aa9156f.md) | 80 | `result-track:ae319cebcaa9b2b43aa9156f2a499db8f3d44e9daa9d4700bc0c172efc17b551` |
| 3 | `theorem` | [of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean/declarations/of-surjective--d426d7400ecdee462e304b7a.md) | 85 | `result-track:d426d7400ecdee462e304b7ac0ad34565bb7456bf9645d4f61e2aa463b6f1e82` |
| 4 | `instance` | [finiteDimensional_pi](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean/declarations/finitedimensional-pi--6a390b38f1efdc626c12bb60.md) | 91 | `declaration-track:6a390b38f1efdc626c12bb60b4421cf9fb0229e77ce41774f7458619d9e66ce0` |
| 5 | `instance` | [finiteDimensional_pi'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean/declarations/finitedimensional-pi--ef5bc46cf4b94db212ca3fd0.md) | 94 | `declaration-track:ef5bc46cf4b94db212ca3fd02a536acc870d2abd8cbbe6a8101a8e58fd1977bf` |
| 6 | `theorem` | [of_fintype_basis](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean/declarations/of-fintype-basis--d8acebb359393f0ebb9c4635.md) | 101 | `result-track:d8acebb359393f0ebb9c4635724978f146dcfa7802eac01999ec7ce2d5654e82` |
| 7 | `def` | [fintypeBasisIndex](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean/declarations/fintypebasisindex--8bd222a08a5d98e4cafd1819.md) | 105 | `declaration-track:8bd222a08a5d98e4cafd181994b2010185616fe129d634ae0272cfe9835445a7` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean/declarations/instance--0824a7bd3f976a17c44f2777.md) | 111 | `declaration-track:0824a7bd3f976a17c44f2777300fcb0cc337752b3aa2fe790993b6061b65fd04` |
| 9 | `theorem` | [of_finite_basis](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean/declarations/of-finite-basis--88ba95c4b4de20de0e389658.md) | 116 | `result-track:88ba95c4b4de20de0e38965888e9c7fe5d00be38ae32e0ab71cf50ac4f52d115` |
| 10 | `instance` | [finiteDimensional_submodule](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean/declarations/finitedimensional-submodule--9cca75cb3f1e8a00d2e6a4fe.md) | 125 | `declaration-track:9cca75cb3f1e8a00d2e6a4fe8137a440105f31def8a608ca6ba79dfdcb37480d` |
| 11 | `instance` | [finiteDimensional_quotient](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean/declarations/finitedimensional-quotient--fb1d57c445a3b5dcce53ec5e.md) | 130 | `declaration-track:fb1d57c445a3b5dcce53ec5e0784486008c32bfc2362f3b8c44ce62010c854fc` |
| 12 | `theorem` | [of_finrank_pos](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean/declarations/of-finrank-pos--d7cfbf22ef7237f91e11cf74.md) | 134 | `result-track:d7cfbf22ef7237f91e11cf74d04e9d59bc13ebff87fd1f06e0def732d268463d` |
| 13 | `theorem` | [of_finrank_eq_succ](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean/declarations/of-finrank-eq-succ--bdb8f51b339402d64285b335.md) | 137 | `result-track:bdb8f51b339402d64285b335f6baa280f67672f9f57bcd803975fc523f42cf96` |
| 14 | `theorem` | [of_fact_finrank_eq_succ](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean/declarations/of-fact-finrank-eq-succ--4585a86d302725405b4d045d.md) | 143 | `result-track:4585a86d302725405b4d045d09c2ddedcd0b07377cfc32c3bc3f8ce6692a94da` |
| 15 | `theorem` | [finrank_eq_rank'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean/declarations/finrank-eq-rank--55956bad89eb4ee31a2022d7.md) | 156 | `result-track:55956bad89eb4ee31a2022d7e61513e894a8fc5dfd5fb2d0ffffebf6f6095cfd` |
| 16 | `theorem` | [finrank_of_infinite_dimensional](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean/declarations/finrank-of-infinite-dimensional--ebc9653f494800afc69fea23.md) | 161 | `result-track:ebc9653f494800afc69fea23955e7c98947c2436b11ded168a9d6e54e5640b88` |
| 17 | `theorem` | [finiteDimensional_iff_of_rank_eq_nsmul](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean/declarations/finitedimensional-iff-of-rank-eq-nsmul--e079034a31f12a197a1b2cf4.md) | 164 | `result-track:e079034a31f12a197a1b2cf4ae496dc86ff6cbe3e598a646825b034577bbc387` |
| 18 | `theorem` | [finrank_eq_card_basis'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean/declarations/finrank-eq-card-basis--e0658a9ccb94aef2c1cf8513.md) | 171 | `result-track:e0658a9ccb94aef2c1cf8513f3b19d2e4adc452c93e26b043cdbc73d92e90d13` |
| 19 | `instance` | [finiteDimensional_self](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean/declarations/finitedimensional-self--c58c33b7b85c23c40389c033.md) | 184 | `declaration-track:c58c33b7b85c23c40389c0334ef02508b802f1163e7e417b6fdaf492aa0e0d44` |
| 20 | `theorem` | [span_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean/declarations/span-of-finite--6318399749f36b88f8d6a317.md) | 187 | `result-track:6318399749f36b88f8d6a317d4324090a05f0797d077d65a2be2b4098bb3eab3` |
| 21 | `instance` | [span_singleton](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean/declarations/span-singleton--133e60b08e9d8f57e40da2e5.md) | 191 | `declaration-track:133e60b08e9d8f57e40da2e51e938aaa35e5be708ba20bc4085743327027a025` |
| 22 | `instance` | [span_finset](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean/declarations/span-finset--8e0be5c9237bcc7373cfa94a.md) | 195 | `declaration-track:8e0be5c9237bcc7373cfa94a19a618311c024346033c2dc1caac231d5d7d819c` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean/declarations/instance--a084f682fb40f7ff5b847dd2.md) | 199 | `declaration-track:a084f682fb40f7ff5b847dd2b0b8d697a32ad20007af4e69c0204e19a5a77969` |
| 24 | `theorem` | [trans](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean/declarations/trans--1a8555fd200cca2a41926562.md) | 210 | `result-track:1a8555fd200cca2a4192656220f7afb4cb3a68a1bdafd34bd550f9eea0e06d68` |
| 25 | `theorem` | [fg_iff_finiteDimensional](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean/declarations/fg-iff-finitedimensional--a76f28318bd82949b8173a33.md) | 224 | `result-track:a76f28318bd82949b8173a33a8e9908333088ac2b05015eda000106e6df471f5` |
| 26 | `theorem` | [finiteDimensional](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean/declarations/finitedimensional--041ce2145aaa332410280aff.md) | 237 | `result-track:041ce2145aaa332410280affa4e542ad7f426f0a25175e4309a27fdfe618d400` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
