# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ChainOfDivisors.Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32e834c0ece03a3dde1cbbf3a3b80cdd1e48091e",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32e834c0ece03a3dde1cbbf3a3b80cdd1e48091e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GCDMonoid.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.IsPrimePow` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.Multiplicity` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Atoms` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Bounded` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Associates.isAtom_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean/declarations/associates-isatom-iff--0a0d0bb5ba7751cd8d81c148.md) | 43 | `result-track:0a0d0bb5ba7751cd8d81c1486a30c53d0c567b7675f0f0bfd72365cea92d0f54` |
| 2 | `theorem` | [exists_chain_of_prime_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean/declarations/exists-chain-of-prime-pow--0e0bbfe4eacb4550edf19361.md) | 66 | `result-track:0e0bbfe4eacb4550edf19361e7f0f7b4e3093da7215ae843ba2a41e7a5c7ae75` |
| 3 | `theorem` | [element_of_chain_not_isUnit_of_index_ne_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean/declarations/element-of-chain-not-isunit-of-index-ne-zero--3c71b830d757cbb49ea5fc0d.md) | 83 | `result-track:3c71b830d757cbb49ea5fc0d7c1cdfe74fc854bf9d8c456336bacb348cae594e` |
| 4 | `theorem` | [first_of_chain_isUnit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean/declarations/first-of-chain-isunit--dab0feb7c26e27b627097669.md) | 89 | `result-track:dab0feb7c26e27b62709766958a80fd1fb515384d28480e91f75f34e5596de6a` |
| 5 | `theorem` | [second_of_chain_is_irreducible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean/declarations/second-of-chain-is-irreducible--012efcfd8f695db53cf1811a.md) | 96 | `result-track:012efcfd8f695db53cf1811a1e50f4aab285e41240ab2816a8e0676cad0aa06e` |
| 6 | `theorem` | [eq_second_of_chain_of_prime_dvd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean/declarations/eq-second-of-chain-of-prime-dvd--d68439df0828feae5328b128.md) | 107 | `result-track:d68439df0828feae5328b128c9cc97998e91efaa16d166bd80ece4c8c9221a25` |
| 7 | `theorem` | [card_subset_divisors_le_length_of_chain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean/declarations/card-subset-divisors-le-length-of-chain--8d3f83a5abc691475e0dae77.md) | 130 | `result-track:8d3f83a5abc691475e0dae776e3513cd26157f1cb59606d6db9d19d3e9a6a07c` |
| 8 | `theorem` | [element_of_chain_eq_pow_second_of_chain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean/declarations/element-of-chain-eq-pow-second-of-chain--0fae3bb11243445c3d7bd9de.md) | 143 | `result-track:0fae3bb11243445c3d7bd9de2bc032da0cfdfdae7d178c7ec23345b213363c14` |
| 9 | `theorem` | [eq_pow_second_of_chain_of_has_chain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean/declarations/eq-pow-second-of-chain-of-has-chain--8fa7c99d61339da19fec412b.md) | 179 | `result-track:8fa7c99d61339da19fec412b86b5ac48fd3a5142494b890b6d06aeba94ee5b55` |
| 10 | `theorem` | [isPrimePow_of_has_chain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean/declarations/isprimepow-of-has-chain--36ce940122b25278a9db979a.md) | 205 | `result-track:36ce940122b25278a9db979a3f11dcc550db524f5ae22d1f6c6de5fe841609db` |
| 11 | `theorem` | [factor_orderIso_map_one_eq_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean/declarations/factor-orderiso-map-one-eq-bot--e617752d1448452c72c515dc.md) | 215 | `result-track:e617752d1448452c72c515dc2519c5d810dd8ba7b7abf9af6d5897888c326e6f` |
| 12 | `theorem` | [coe_factor_orderIso_map_eq_one_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean/declarations/coe-factor-orderiso-map-eq-one-iff--d7ea440848cec8974a98dd7e.md) | 224 | `result-track:d7ea440848cec8974a98dd7e95488710c0dedf7e968fd7df0dab8e6b75be265b` |
| 13 | `theorem` | [pow_image_of_prime_by_factor_orderIso_dvd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean/declarations/pow-image-of-prime-by-factor-orderiso-dvd--02923e9d07d103bd97a8ed6b.md) | 241 | `result-track:02923e9d07d103bd97a8ed6b2e2939bf059f7f048a7b08a801b98bed059409f0` |
| 14 | `theorem` | [map_prime_of_factor_orderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean/declarations/map-prime-of-factor-orderiso--bd37eb6f317c30083dbb5596.md) | 272 | `result-track:bd37eb6f317c30083dbb55968b8106b138b5f197c460baad71e7d42e124656bc` |
| 15 | `theorem` | [mem_normalizedFactors_factor_orderIso_of_mem_normalizedFactors](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean/declarations/mem-normalizedfactors-factor-orderiso-of-mem-normalizedfactors--d94b949505f9acc52ce8906b.md) | 299 | `result-track:d94b949505f9acc52ce8906b4e3dbb544db07c0206f3c5e674bffa2bcaf72dcd` |
| 16 | `theorem` | [emultiplicity_prime_le_emultiplicity_image_by_factor_orderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean/declarations/emultiplicity-prime-le-emultiplicity-image-by-factor-orderiso--22cc37ca961e13b7cfd00398.md) | 308 | `result-track:22cc37ca961e13b7cfd003981278f1ee1e72918c80e2cfdcd85df4001150f10a` |
| 17 | `theorem` | [emultiplicity_prime_eq_emultiplicity_image_by_factor_orderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean/declarations/emultiplicity-prime-eq-emultiplicity-image-by-factor-orderiso--a8e05069d9f92c91946536a3.md) | 319 | `result-track:a8e05069d9f92c91946536a381cf6c548127b610f528c76c2c97abf40965606a` |
| 18 | `def` | [mkFactorOrderIsoOfFactorDvdEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean/declarations/mkfactororderisooffactordvdequiv--9ad2b1e636bcac3d68b27d00.md) | 339 | `declaration-track:9ad2b1e636bcac3d68b27d0046922be151047ce859c9b2c8da37b45c84bdaaea` |
| 19 | `theorem` | [mem_normalizedFactors_factor_dvd_iso_of_mem_normalizedFactors](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean/declarations/mem-normalizedfactors-factor-dvd-iso-of-mem-normalizedfactors--1cc99bdc42cdf28e66f60b58.md) | 371 | `result-track:1cc99bdc42cdf28e66f60b5879ed22369a16443a3b16df8f13804ee4bd9e5bf1` |
| 20 | `theorem` | [emultiplicity_factor_dvd_iso_eq_emultiplicity_of_mem_normalizedFactors](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variantfc89d4c540994f7876c40ad1dfd092ca3f58410c593a7c20daeab9e1c7e1f410.lean/declarations/emultiplicity-factor-dvd-iso-eq-emultiplicity-of-mem-normalizedfactors--c3537d42c6463a0268753dfc.md) | 403 | `result-track:c3537d42c6463a0268753dfc38353941cdf0539db15849ace4311fe9c95873d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
