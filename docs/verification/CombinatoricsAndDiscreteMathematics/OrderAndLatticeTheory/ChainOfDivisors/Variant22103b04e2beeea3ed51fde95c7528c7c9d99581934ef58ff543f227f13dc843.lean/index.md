# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ChainOfDivisors.Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf6279dbc6e2330cd114b57f377f15a6fb4d8011",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf6279dbc6e2330cd114b57f377f15a6fb4d8011`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.IsPrimePow` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Squarefree` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Bounded` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GCDMonoid.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Associates.isAtom_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean/declarations/associates-isatom-iff--06275abbcad74e01df45cfa8.md) | 50 | `result-track:06275abbcad74e01df45cfa8ac34741aeabbeae2635d44043c2a656c5882bc95` |
| 2 | `theorem` | [exists_chain_of_prime_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean/declarations/exists-chain-of-prime-pow--cfc67a8e60e0a5cf16abee60.md) | 75 | `result-track:cfc67a8e60e0a5cf16abee6075c44d51040a02c06dd30c480da70b17a7c9a482` |
| 3 | `theorem` | [element_of_chain_not_isUnit_of_index_ne_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean/declarations/element-of-chain-not-isunit-of-index-ne-zero--860c57997992b9fd2a6e5929.md) | 93 | `result-track:860c57997992b9fd2a6e5929c1d58bb88995b802c8d4f8b18b34657001d093d5` |
| 4 | `theorem` | [first_of_chain_isUnit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean/declarations/first-of-chain-isunit--4c6ad08399806542adf13dc4.md) | 100 | `result-track:4c6ad08399806542adf13dc4460f7af5a5ad942bb5b9be46712bd56079d6f0a8` |
| 5 | `theorem` | [second_of_chain_is_irreducible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean/declarations/second-of-chain-is-irreducible--64746d805ad47e85d8924dde.md) | 108 | `result-track:64746d805ad47e85d8924dde614dfca343694375a3db9d44bf4c56112d1bc4d7` |
| 6 | `theorem` | [eq_second_of_chain_of_prime_dvd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean/declarations/eq-second-of-chain-of-prime-dvd--a75ae14f3714bd56f33ea4ab.md) | 120 | `result-track:a75ae14f3714bd56f33ea4aba517f2cf98f6cd97d0c85adc3cd73d461e45323d` |
| 7 | `theorem` | [card_subset_divisors_le_length_of_chain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean/declarations/card-subset-divisors-le-length-of-chain--86083395a1f5b5f03c7b5f3f.md) | 144 | `result-track:86083395a1f5b5f03c7b5f3fa7eca33087ddce64986635955008fad4ef8a1de7` |
| 8 | `theorem` | [element_of_chain_eq_pow_second_of_chain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean/declarations/element-of-chain-eq-pow-second-of-chain--dfa40d15fa59779e76bf4e6e.md) | 158 | `result-track:dfa40d15fa59779e76bf4e6e361748e374debc5de1b58775151ddea4f482de4c` |
| 9 | `theorem` | [eq_pow_second_of_chain_of_has_chain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean/declarations/eq-pow-second-of-chain-of-has-chain--f412aa01e582c512354a5410.md) | 195 | `result-track:f412aa01e582c512354a5410a0c46cfcb774e2a25451f7ce212e90eb7cc844a7` |
| 10 | `theorem` | [isPrimePow_of_has_chain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean/declarations/isprimepow-of-has-chain--819baedf6b9256dce7473354.md) | 222 | `result-track:819baedf6b9256dce747335467f1380cf4306846fae36472cb412f8eb1259336` |
| 11 | `theorem` | [factor_orderIso_map_one_eq_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean/declarations/factor-orderiso-map-one-eq-bot--38d9df597a467bf600d8efe6.md) | 233 | `result-track:38d9df597a467bf600d8efe6e2ca35014c3b5a5b4fc6ab4ae89bb83f924f2ff6` |
| 12 | `theorem` | [coe_factor_orderIso_map_eq_one_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean/declarations/coe-factor-orderiso-map-eq-one-iff--8dd804bf98d65286efbe0688.md) | 243 | `result-track:8dd804bf98d65286efbe06882f0c62cc263c4b66bd141b410145341789503da3` |
| 13 | `theorem` | [pow_image_of_prime_by_factor_orderIso_dvd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean/declarations/pow-image-of-prime-by-factor-orderiso-dvd--03452118d98872840688eebe.md) | 260 | `result-track:03452118d98872840688eebe36f79d1c45458c73763ebeafdd035858257a88f5` |
| 14 | `theorem` | [map_prime_of_factor_orderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean/declarations/map-prime-of-factor-orderiso--12a52e60ae561f7086a6091a.md) | 292 | `result-track:12a52e60ae561f7086a6091a6184ac1b0f25628f5c24b97a49b88407db020f6c` |
| 15 | `theorem` | [mem_normalizedFactors_factor_orderIso_of_mem_normalizedFactors](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean/declarations/mem-normalizedfactors-factor-orderiso-of-mem-normalizedfactors--628079732947371521cf39db.md) | 319 | `result-track:628079732947371521cf39db01b7a88cce5bad644caf9742992f4ff9f06b1a85` |
| 16 | `theorem` | [multiplicity_prime_le_multiplicity_image_by_factor_orderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean/declarations/multiplicity-prime-le-multiplicity-image-by-factor-orderiso--8973587d3bb4c44da6a3f023.md) | 332 | `result-track:8973587d3bb4c44da6a3f023f69c4128ecf3ef11ebb70ce0a7601c591b204148` |
| 17 | `theorem` | [multiplicity_prime_eq_multiplicity_image_by_factor_orderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean/declarations/multiplicity-prime-eq-multiplicity-image-by-factor-orderiso--897d01d74eb3b493851e60d1.md) | 347 | `result-track:897d01d74eb3b493851e60d112d35e60b69c004dc365ca9a52e98bab23951fa3` |
| 18 | `def` | [mkFactorOrderIsoOfFactorDvdEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean/declarations/mkfactororderisooffactordvdequiv--dc6aa25b8901d3c226d820fa.md) | 369 | `declaration-track:dc6aa25b8901d3c226d820faaaca8bc0590df73e3d63d5d109c1567d203a08c6` |
| 19 | `theorem` | [mem_normalizedFactors_factor_dvd_iso_of_mem_normalizedFactors](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean/declarations/mem-normalizedfactors-factor-dvd-iso-of-mem-normalizedfactors--ca5e804e521eb3b963341fca.md) | 403 | `result-track:ca5e804e521eb3b963341fcabc8edfa67bea2652eeea9be52d96442c6bb5ac9a` |
| 20 | `theorem` | [multiplicity_factor_dvd_iso_eq_multiplicity_of_mem_normalizedFactors](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean/declarations/multiplicity-factor-dvd-iso-eq-multiplicity-of-mem-normalizedfactors--926b34e7ae15caf85dbe5958.md) | 439 | `result-track:926b34e7ae15caf85dbe59581ba8e7df7598e5ec7044c344bb2ca6e9a9114ec3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
