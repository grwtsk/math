# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Defs.Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17890e9357a489f7db4e3ff9e877904ecd852b22",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17890e9357a489f7db4e3ff9e877904ecd852b22`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Multiset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.PrimeFin` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicVal.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [factorization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean/declarations/factorization--3761323c6589c8e03669d4b5.md) | 45 | `declaration-track:3761323c6589c8e03669d4b5a762a78c54a38dbf6eaa6691888c8f0867795a81` |
| 2 | `lemma` | [support_factorization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean/declarations/support-factorization--c57964622257c75a5af1f18a.md) | 51 | `result-track:c57964622257c75a5af1f18aeedf324b31d277a09e5c9407806007fc1bba00f0` |
| 3 | `theorem` | [factorization_def](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean/declarations/factorization-def--6957f4bc53e2830ff5ffeee3.md) | 53 | `result-track:6957f4bc53e2830ff5ffeee3271ff3836876a18411f22516b998789114867e62` |
| 4 | `theorem` | [primeFactorsList_count_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean/declarations/primefactorslist-count-eq--91d26d82952f2af8566ad837.md) | 59 | `result-track:91d26d82952f2af8566ad837791f41fbd5828b0ac87cb9d39cba833e8c09074f` |
| 5 | `theorem` | [factorization_eq_primeFactorsList_multiset](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean/declarations/factorization-eq-primefactorslist-multiset--069457b9b6258c6c348f7b29.md) | 75 | `result-track:069457b9b6258c6c348f7b29259f8122176e4325306688a4d041dda463e85a7f` |
| 6 | `theorem` | [Prime.factorization_pos_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean/declarations/prime-factorization-pos-of-dvd--7d4aef2fbe5872c5f379db67.md) | 80 | `result-track:7d4aef2fbe5872c5f379db67db70015e52b429164c9ee69bb591bf5c14242909` |
| 7 | `theorem` | [multiplicity_eq_factorization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean/declarations/multiplicity-eq-factorization--d1201e482a7ad30bdaaa50a9.md) | 84 | `result-track:d1201e482a7ad30bdaaa50a9e4860b70cdc546f5660e71c499d62b6bc07dfd03` |
| 8 | `theorem` | [factorization_prod_pow_eq_self](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean/declarations/factorization-prod-pow-eq-self--f0c9e67f5f16526c16ff4095.md) | 92 | `result-track:f0c9e67f5f16526c16ff4095f2f4fcd1a10e9388cf8015ed8f984d3c779968a1` |
| 9 | `theorem` | [eq_of_factorization_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean/declarations/eq-of-factorization-eq--2d5a1f8c92091ec7bc6b3b5f.md) | 97 | `result-track:2d5a1f8c92091ec7bc6b3b5f55af577048e18fcd9eb806bb3a77e15bc4c64b20` |
| 10 | `theorem` | [factorization_inj](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean/declarations/factorization-inj--422d8c5a5d4e741ddd9234fc.md) | 104 | `result-track:422d8c5a5d4e741ddd9234fccc2e07f88ab869e6156c165a38fb913d09c42cbf` |
| 11 | `theorem` | [factorization_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean/declarations/factorization-zero--6d88093a6cf4ebf0d69f837a.md) | 108 | `result-track:6d88093a6cf4ebf0d69f837adb53e3cb51209b6ef0bf15b5627508a83665713a` |
| 12 | `theorem` | [factorization_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean/declarations/factorization-one--ab237649ad8e33ba17afe80c.md) | 111 | `result-track:ab237649ad8e33ba17afe80ca94b970e794f423ab5960b2e4ac6aa4e36811dd8` |
| 13 | `theorem` | [factorization_eq_zero_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean/declarations/factorization-eq-zero-iff--56732717e0415ca6c998a081.md) | 115 | `result-track:56732717e0415ca6c998a08194b9871225ebbe31a2668d31cacecb63c5376e05` |
| 14 | `theorem` | [factorization_eq_zero_of_non_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean/declarations/factorization-eq-zero-of-non-prime--6e073ea89f06897ab33075ef.md) | 120 | `result-track:6e073ea89f06897ab33075ef8eb82ff0e8f00aea42eb74024d490fb4e81f9d3b` |
| 15 | `theorem` | [factorization_zero_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean/declarations/factorization-zero-right--2ffd801e8b8529d75ee0ff0e.md) | 124 | `result-track:2ffd801e8b8529d75ee0ff0eb18e6523c468365b5d8130b5128c9e9091cfb55f` |
| 16 | `theorem` | [factorization_eq_zero_of_not_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean/declarations/factorization-eq-zero-of-not-dvd--6cb084bed9b80b1a4db71819.md) | 127 | `result-track:6cb084bed9b80b1a4db7181962d59f793c724f2d3bca1fa57b75ffa703bc46c9` |
| 17 | `theorem` | [factorization_eq_zero_of_remainder](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean/declarations/factorization-eq-zero-of-remainder--15c7e9299ce2fe92b1894984.md) | 130 | `result-track:15c7e9299ce2fe92b189498463d1179689b902463311ca3730159c208caa47ce` |
| 18 | `theorem` | [factorization_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean/declarations/factorization-mul--2463255ce9ffb0a40dab8453.md) | 139 | `result-track:2463255ce9ffb0a40dab8453f71b0be9887e5d1e12d54086e2c6668b07dde164` |
| 19 | `theorem` | [factorization_le_iff_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean/declarations/factorization-le-iff-dvd--d5d21d2fa0e8ba047da4c7c0.md) | 145 | `result-track:d5d21d2fa0e8ba047da4c7c04261bdd9c83a6d8e7f73bc14de4787ef940ce52a` |
| 20 | `theorem` | [factorization_prod](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean/declarations/factorization-prod--3de929b9021add4bdc13224f.md) | 160 | `result-track:3de929b9021add4bdc13224f997e1374efe722fd4f2c4678c3d3d0561139cfec` |
| 21 | `theorem` | [factorization_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean/declarations/factorization-pow--8a521845bbe2c526e7642943.md) | 172 | `result-track:8a521845bbe2c526e76429438cf5a8ad19e5741770bca71047e6d6a9201655fa` |
| 22 | `theorem` | [Prime.factorization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean/declarations/prime-factorization--ea3b099d1457e038b73e4081.md) | 184 | `result-track:ea3b099d1457e038b73e408148b4a735356b713a1be8b1047e97f1143cf19d13` |
| 23 | `theorem` | [Prime.factorization_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean/declarations/prime-factorization-pow--7b41e53fe128f3019cb1e06d.md) | 190 | `result-track:7b41e53fe128f3019cb1e06d0c2111a3d409a1987f5dd0d82ccf459ad07fcda7` |
| 24 | `theorem` | [pow_succ_factorization_not_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean/declarations/pow-succ-factorization-not-dvd--6dcf76fc4c6a295154b9fe7e.md) | 193 | `result-track:6dcf76fc4c6a295154b9fe7e45314d007f1bd0e6b1308822590d84f01cde11a3` |
| 25 | `theorem` | [prod_pow_factorization_eq_self](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean/declarations/prod-pow-factorization-eq-self--704769d65dc1fd900aa41a10.md) | 204 | `result-track:704769d65dc1fd900aa41a1076d9b76362d1916dcd677d9bf121e8a443874339` |
| 26 | `def` | [factorizationEquiv](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean/declarations/factorizationequiv--a02c249110eac124f15d4f54.md) | 215 | `declaration-track:a02c249110eac124f15d4f54e82389d107cf91576f78579a7280662ac98bdff5` |
| 27 | `theorem` | [factorization_mul_apply_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean/declarations/factorization-mul-apply-of-coprime--b8ec5bc5245ef2bac9ce078e.md) | 226 | `result-track:b8ec5bc5245ef2bac9ce078e27c3c12d3ee40fab969ebf0147934a02641cffad` |
| 28 | `theorem` | [factorization_mul_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean/declarations/factorization-mul-of-coprime--b885728a6607395b7f862e89.md) | 232 | `result-track:b885728a6607395b7f862e894abcb2c194ba6f24493ab34c0f27087c4f0dcdad` |
| 29 | `theorem` | [ordProj_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean/declarations/ordproj-dvd--3d586236424fd1da826ac243.md) | 249 | `result-track:3d586236424fd1da826ac24312e2a5eced1f4966d02471d37594f58034024492` |
| 30 | `def` | [factorizationLCMLeft](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean/declarations/factorizationlcmleft--7bd49f3b5b2a2227cb16d4a3.md) | 265 | `declaration-track:7bd49f3b5b2a2227cb16d4a3ed8556792d0d98026e80bdd6bd0660b7efd832d0` |
| 31 | `def` | [factorizationLCMRight](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean/declarations/factorizationlcmright--dadb3d603734ad51ec91e850.md) | 278 | `declaration-track:dadb3d603734ad51ec91e8503dec6aebd57f518542052ab5ab088eb1d440698a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
