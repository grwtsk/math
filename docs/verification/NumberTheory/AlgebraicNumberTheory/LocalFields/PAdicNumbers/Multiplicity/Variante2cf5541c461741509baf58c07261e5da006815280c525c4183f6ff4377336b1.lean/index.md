# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.LocalFields.PAdicNumbers.Multiplicity.Variante2cf5541c461741509baf58c07261e5da006815280c525c4183f6ff4377336b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f125784829cceb34a3629adda27d0ec3aec075bb",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variante2cf5541c461741509baf58c07261e5da006815280c525c4183f6ff4377336b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variante2cf5541c461741509baf58c07261e5da006815280c525c4183f6ff4377336b1.lean/index.md) · [Full source](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variante2cf5541c461741509baf58c07261e5da006815280c525c4183f6ff4377336b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f125784829cceb34a3629adda27d0ec3aec075bb`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variante2cf5541c461741509baf58c07261e5da006815280c525c4183f6ff4377336b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variante2cf5541c461741509baf58c07261e5da006815280c525c4183f6ff4377336b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GeomSum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Parity` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicVal` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.QuotientOperations` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Meta.WellFoundedTactics` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dvd_geom_sum₂_iff_of_dvd_sub](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variante2cf5541c461741509baf58c07261e5da006815280c525c4183f6ff4377336b1.lean/declarations/dvd-geom-sum-iff-of-dvd-sub--5ebbb906094fc95824c89c0d.md) | 50 | `result-track:5ebbb906094fc95824c89c0d35adedaec8b173caf7583351e53daf909c1cc347` |
| 2 | `theorem` | [dvd_geom_sum₂_iff_of_dvd_sub'](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variante2cf5541c461741509baf58c07261e5da006815280c525c4183f6ff4377336b1.lean/declarations/dvd-geom-sum-iff-of-dvd-sub--ef20d1b37e5ef98718eb2f63.md) | 57 | `result-track:ef20d1b37e5ef98718eb2f632e91df891fd32089a319d5e3c8ff684816f3823b` |
| 3 | `theorem` | [dvd_geom_sum₂_self](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variante2cf5541c461741509baf58c07261e5da006815280c525c4183f6ff4377336b1.lean/declarations/dvd-geom-sum-self--21836a5fbd7f0b3fa05869da.md) | 62 | `result-track:21836a5fbd7f0b3fa05869da310bc04bdb703a9c3faed4d26639cbe502136b6d` |
| 4 | `theorem` | [sq_dvd_add_pow_sub_sub](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variante2cf5541c461741509baf58c07261e5da006815280c525c4183f6ff4377336b1.lean/declarations/sq-dvd-add-pow-sub-sub--3f3823daf1b25299fe877386.md) | 67 | `result-track:3f3823daf1b25299fe877386a30e3a06d078481f7991a2efe434efbfd1943b38` |
| 5 | `theorem` | [not_dvd_geom_sum₂](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variante2cf5541c461741509baf58c07261e5da006815280c525c4183f6ff4377336b1.lean/declarations/not-dvd-geom-sum--3b77284fd22e8707ea0fbf45.md) | 85 | `result-track:3b77284fd22e8707ea0fbf457fa06112005a2be2b7b930a75ef1868f06ec7785` |
| 6 | `theorem` | [odd_sq_dvd_geom_sum₂_sub](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variante2cf5541c461741509baf58c07261e5da006815280c525c4183f6ff4377336b1.lean/declarations/odd-sq-dvd-geom-sum-sub--00acdaf2e60457436a040b78.md) | 93 | `result-track:00acdaf2e60457436a040b78bd19d93a96874a0cf50c6f1402771a269e15629c` |
| 7 | `theorem` | [pow_sub_pow_of_prime](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variante2cf5541c461741509baf58c07261e5da006815280c525c4183f6ff4377336b1.lean/declarations/pow-sub-pow-of-prime--d23ac83310d6d41ebe47c757.md) | 166 | `result-track:d23ac83310d6d41ebe47c757f97db5dbebe21b9e1c0deb7abd936ea2a03690fb` |
| 8 | `theorem` | [geom_sum₂_eq_one](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variante2cf5541c461741509baf58c07261e5da006815280c525c4183f6ff4377336b1.lean/declarations/geom-sum-eq-one--351b8b76a50e49adc1f62b59.md) | 174 | `result-track:351b8b76a50e49adc1f62b59431cc0c2e649e2c8d47f7b047536029fe7eb04ea` |
| 9 | `theorem` | [pow_prime_sub_pow_prime](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variante2cf5541c461741509baf58c07261e5da006815280c525c4183f6ff4377336b1.lean/declarations/pow-prime-sub-pow-prime--2c959f5af703c5ad800cc444.md) | 187 | `result-track:2c959f5af703c5ad800cc444d2353a03b225f74ba41d3842de4a7229e7814284` |
| 10 | `theorem` | [pow_prime_pow_sub_pow_prime_pow](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variante2cf5541c461741509baf58c07261e5da006815280c525c4183f6ff4377336b1.lean/declarations/pow-prime-pow-sub-pow-prime-pow--ecf93bbf1b3a961b887920a2.md) | 192 | `result-track:ecf93bbf1b3a961b887920a20f4e126f2ab7983e853bd9e2cdbf67c279395ca2` |
| 11 | `theorem` | [Int.pow_sub_pow](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variante2cf5541c461741509baf58c07261e5da006815280c525c4183f6ff4377336b1.lean/declarations/int-pow-sub-pow--780cbe2c4c2662d703bfad62.md) | 210 | `result-track:780cbe2c4c2662d703bfad6264e03fc2b4fcf0d32018b5523f86fc0ad56720bf` |
| 12 | `theorem` | [Int.pow_add_pow](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variante2cf5541c461741509baf58c07261e5da006815280c525c4183f6ff4377336b1.lean/declarations/int-pow-add-pow--05c718798751ecbb89d4117e.md) | 228 | `result-track:05c718798751ecbb89d4117e7ea98e2c37b3c9db4a02d6401695e6dc04dbeda9` |
| 13 | `theorem` | [Nat.pow_sub_pow](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variante2cf5541c461741509baf58c07261e5da006815280c525c4183f6ff4377336b1.lean/declarations/nat-pow-sub-pow--a9c5d77e1bc3192a77710899.md) | 235 | `result-track:a9c5d77e1bc3192a777108999673784e833017d938207e135348f2a00404c745` |
| 14 | `theorem` | [Nat.pow_add_pow](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variante2cf5541c461741509baf58c07261e5da006815280c525c4183f6ff4377336b1.lean/declarations/nat-pow-add-pow--f7e197dcfbc11586c8bf8cfb.md) | 249 | `result-track:f7e197dcfbc11586c8bf8cfb368b18642695e08d90fd3299facd9e29c5097535` |
| 15 | `theorem` | [pow_two_pow_sub_pow_two_pow](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variante2cf5541c461741509baf58c07261e5da006815280c525c4183f6ff4377336b1.lean/declarations/pow-two-pow-sub-pow-two-pow--3d343b7bd3c5db6dce74fb3a.md) | 263 | `result-track:3d343b7bd3c5db6dce74fb3a8e9aa7076a3c93e2ddda03c30acf4647c929e36d` |
| 16 | `theorem` | [Int.sq_mod_four_eq_one_of_odd](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variante2cf5541c461741509baf58c07261e5da006815280c525c4183f6ff4377336b1.lean/declarations/int-sq-mod-four-eq-one-of-odd--c17fed6dd7b7f58f6f55a462.md) | 274 | `result-track:c17fed6dd7b7f58f6f55a46250817afca1c860355e28f19b7bc39441bd721856` |
| 17 | `theorem` | [Int.two_pow_two_pow_add_two_pow_two_pow](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variante2cf5541c461741509baf58c07261e5da006815280c525c4183f6ff4377336b1.lean/declarations/int-two-pow-two-pow-add-two-pow-two-pow--c4ef4cd5fb0cba2a0bffeedd.md) | 283 | `result-track:c4ef4cd5fb0cba2a0bffeedd26ee945f88501da6c1b2883cd1f606ba3ff59be2` |
| 18 | `theorem` | [Int.two_pow_two_pow_sub_pow_two_pow](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variante2cf5541c461741509baf58c07261e5da006815280c525c4183f6ff4377336b1.lean/declarations/int-two-pow-two-pow-sub-pow-two-pow--3929667fb1f58689464b8932.md) | 308 | `result-track:3929667fb1f58689464b8932e1353cc71dc01d77f893157367d5dbd134a3ca2c` |
| 19 | `theorem` | [Int.two_pow_sub_pow'](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variante2cf5541c461741509baf58c07261e5da006815280c525c4183f6ff4377336b1.lean/declarations/int-two-pow-sub-pow--e25f9594903d16e317e52bb6.md) | 315 | `result-track:e25f9594903d16e317e52bb6b6d5071257e5d3165fdabed4df87a12b3011cb5f` |
| 20 | `theorem` | [Int.two_pow_sub_pow](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variante2cf5541c461741509baf58c07261e5da006815280c525c4183f6ff4377336b1.lean/declarations/int-two-pow-sub-pow--14fd737bd6c92aa8919e4eba.md) | 339 | `result-track:14fd737bd6c92aa8919e4eba48741cde9a1299122e2f7c06fc85910a412ecc97` |
| 21 | `theorem` | [Nat.two_pow_sub_pow](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variante2cf5541c461741509baf58c07261e5da006815280c525c4183f6ff4377336b1.lean/declarations/nat-two-pow-sub-pow--e62cf9e7251752c226e34f47.md) | 368 | `result-track:e62cf9e7251752c226e34f47961e89886c167bab918d261f6b27496e934bbd3c` |
| 22 | `theorem` | [pow_two_sub_pow](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variante2cf5541c461741509baf58c07261e5da006815280c525c4183f6ff4377336b1.lean/declarations/pow-two-sub-pow--bb42542e5a946b039777abf2.md) | 389 | `result-track:bb42542e5a946b039777abf2956ad05b11e38d49e29feeecdf0a296b6e47e140` |
| 23 | `theorem` | [pow_sub_pow](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variante2cf5541c461741509baf58c07261e5da006815280c525c4183f6ff4377336b1.lean/declarations/pow-sub-pow--d15c685de531f06816b0972e.md) | 404 | `result-track:d15c685de531f06816b0972eac0070c7ce8cfee6d7791d78a1d737d9741d8e44` |
| 24 | `theorem` | [pow_add_pow](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variante2cf5541c461741509baf58c07261e5da006815280c525c4183f6ff4377336b1.lean/declarations/pow-add-pow--f8b7b6ed29bc1b51367e9623.md) | 414 | `result-track:f8b7b6ed29bc1b51367e962363bd430557a23d6a5bc2c905e7ed89e0dc3094b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
