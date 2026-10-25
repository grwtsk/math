# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Pairing.Variantb890ce7fc190806dd8ad42d7e728a35ce49d256c6a68a9a2640d34043b1f765f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86ef7be745b111dd70a40dd6a2f9872642542709",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Pairing/Variantb890ce7fc190806dd8ad42d7e728a35ce49d256c6a68a9a2640d34043b1f765f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantb890ce7fc190806dd8ad42d7e728a35ce49d256c6a68a9a2640d34043b1f765f.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantb890ce7fc190806dd8ad42d7e728a35ce49d256c6a68a9a2640d34043b1f765f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86ef7be745b111dd70a40dd6a2f9872642542709`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Pairing/Variantb890ce7fc190806dd8ad42d7e728a35ce49d256c6a68a9a2640d34043b1f765f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Pairing/Variantb890ce7fc190806dd8ad42d7e728a35ce49d256c6a68a9a2640d34043b1f765f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantb890ce7fc190806dd8ad42d7e728a35ce49d256c6a68a9a2640d34043b1f765f.lean/declarations/pair--e7439962b93e6d52af94a4b5.md) | 38 | `declaration-track:e7439962b93e6d52af94a4b5cf4e6a4618944b01d24433cf8bfabdf45b754290` |
| 2 | `def` | [unpair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantb890ce7fc190806dd8ad42d7e728a35ce49d256c6a68a9a2640d34043b1f765f.lean/declarations/unpair--7af3ff3f96a76c5b2ac81ee8.md) | 43 | `declaration-track:7af3ff3f96a76c5b2ac81ee890fa9acda9618ea712c003d8b919d119e0942d31` |
| 3 | `theorem` | [pair_unpair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantb890ce7fc190806dd8ad42d7e728a35ce49d256c6a68a9a2640d34043b1f765f.lean/declarations/pair-unpair--abd60efa73792b1dc27e8763.md) | 48 | `result-track:abd60efa73792b1dc27e8763b886c755392eb1a91ae67fbac80eb9ea78ec2eca` |
| 4 | `theorem` | [pair_eq_of_unpair_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantb890ce7fc190806dd8ad42d7e728a35ce49d256c6a68a9a2640d34043b1f765f.lean/declarations/pair-eq-of-unpair-eq--90771139deb34b1b9f5e64d2.md) | 57 | `result-track:90771139deb34b1b9f5e64d2d37b0d0c3f22de5ad3e53a568d66eb1ee7503f24` |
| 5 | `theorem` | [unpair_pair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantb890ce7fc190806dd8ad42d7e728a35ce49d256c6a68a9a2640d34043b1f765f.lean/declarations/unpair-pair--f8a2ded2060c1e6e62abe60c.md) | 61 | `result-track:f8a2ded2060c1e6e62abe60ca65e356be3a34b361cd89a62144b6522424fa630` |
| 6 | `def` | [pairEquiv](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantb890ce7fc190806dd8ad42d7e728a35ce49d256c6a68a9a2640d34043b1f765f.lean/declarations/pairequiv--8ab3d6e9b6b79378db37ad20.md) | 74 | `declaration-track:8ab3d6e9b6b79378db37ad2080caa719fda4eba7117d2e37a26d3ce00ca206e4` |
| 7 | `theorem` | [surjective_unpair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantb890ce7fc190806dd8ad42d7e728a35ce49d256c6a68a9a2640d34043b1f765f.lean/declarations/surjective-unpair--fe2f0bf899fd3e54765b5c4e.md) | 77 | `result-track:fe2f0bf899fd3e54765b5c4ef76ba68419094e9f592573d27c465b3f1014e490` |
| 8 | `theorem` | [pair_eq_pair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantb890ce7fc190806dd8ad42d7e728a35ce49d256c6a68a9a2640d34043b1f765f.lean/declarations/pair-eq-pair--f7df593b0dddabec91d8b544.md) | 81 | `result-track:f7df593b0dddabec91d8b5447006a30e32b915185f70cf0d4944ea7dc7a34c6d` |
| 9 | `theorem` | [unpair_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantb890ce7fc190806dd8ad42d7e728a35ce49d256c6a68a9a2640d34043b1f765f.lean/declarations/unpair-lt--1fc08c1aebf0b037b376ce23.md) | 84 | `result-track:1fc08c1aebf0b037b376ce2377a887c6e8ff9573222a684a54d80db7a0e33aa9` |
| 10 | `theorem` | [unpair_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantb890ce7fc190806dd8ad42d7e728a35ce49d256c6a68a9a2640d34043b1f765f.lean/declarations/unpair-zero--8ebecee8f64a7332842c811d.md) | 94 | `result-track:8ebecee8f64a7332842c811d866181e53b6f90751daa7a9d29275c10c9f5bedb` |
| 11 | `theorem` | [unpair_left_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantb890ce7fc190806dd8ad42d7e728a35ce49d256c6a68a9a2640d34043b1f765f.lean/declarations/unpair-left-le--eb8b28c103581b5cd4dfcdc8.md) | 98 | `result-track:eb8b28c103581b5cd4dfcdc81807dd0780ac7636acb30fc990bdd325777dd062` |
| 12 | `theorem` | [left_le_pair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantb890ce7fc190806dd8ad42d7e728a35ce49d256c6a68a9a2640d34043b1f765f.lean/declarations/left-le-pair--af157a6c91b3b45f4c50316b.md) | 102 | `result-track:af157a6c91b3b45f4c50316b62173b058a07020187b76d3025288ce579d46525` |
| 13 | `theorem` | [right_le_pair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantb890ce7fc190806dd8ad42d7e728a35ce49d256c6a68a9a2640d34043b1f765f.lean/declarations/right-le-pair--7a81cfd9fe09b354288e3c36.md) | 104 | `result-track:7a81cfd9fe09b354288e3c36b9720b5074658d20e7b4c2a02c5bc443e02a592d` |
| 14 | `theorem` | [unpair_right_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantb890ce7fc190806dd8ad42d7e728a35ce49d256c6a68a9a2640d34043b1f765f.lean/declarations/unpair-right-le--ff44bd2137239a5bc780a1b2.md) | 109 | `result-track:ff44bd2137239a5bc780a1b23384bb199afc2bff3ac79023119e7312eb9c6546` |
| 15 | `theorem` | [pair_lt_pair_left](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantb890ce7fc190806dd8ad42d7e728a35ce49d256c6a68a9a2640d34043b1f765f.lean/declarations/pair-lt-pair-left--38ea58d0ee2729300a207eec.md) | 112 | `result-track:38ea58d0ee2729300a207eecc14b213e9fde8d7c48e1fdb99a0288a704ef3923` |
| 16 | `theorem` | [pair_lt_pair_right](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantb890ce7fc190806dd8ad42d7e728a35ce49d256c6a68a9a2640d34043b1f765f.lean/declarations/pair-lt-pair-right--b88ea78a23b227269eb53c5a.md) | 126 | `result-track:b88ea78a23b227269eb53c5ae269672bca5612524ab2327370cb632f74808101` |
| 17 | `theorem` | [pair_lt_max_add_one_sq](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantb890ce7fc190806dd8ad42d7e728a35ce49d256c6a68a9a2640d34043b1f765f.lean/declarations/pair-lt-max-add-one-sq--38e0039c48bcb1ab8574dab2.md) | 136 | `result-track:38e0039c48bcb1ab8574dab2d7e01e27a6d6cc26db65dcdc0907e25e6e58339d` |
| 18 | `theorem` | [max_sq_add_min_le_pair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantb890ce7fc190806dd8ad42d7e728a35ce49d256c6a68a9a2640d34043b1f765f.lean/declarations/max-sq-add-min-le-pair--4925c86d8738f8a1aa697d7d.md) | 140 | `result-track:4925c86d8738f8a1aa697d7deb67d37b291eb43591d18e095ac07da8038c728f` |
| 19 | `theorem` | [add_le_pair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantb890ce7fc190806dd8ad42d7e728a35ce49d256c6a68a9a2640d34043b1f765f.lean/declarations/add-le-pair--eed227d037da39de2fb8b39d.md) | 148 | `result-track:eed227d037da39de2fb8b39d4b523d363117ec92cb28cac17a05d59f66f46dfc` |
| 20 | `theorem` | [unpair_add_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantb890ce7fc190806dd8ad42d7e728a35ce49d256c6a68a9a2640d34043b1f765f.lean/declarations/unpair-add-le--056694de2ec5125224173f7b.md) | 155 | `result-track:056694de2ec5125224173f7b715e194c88c55a03fcd207238ed06c018d0cad07` |
| 21 | `theorem` | [iSup_unpair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantb890ce7fc190806dd8ad42d7e728a35ce49d256c6a68a9a2640d34043b1f765f.lean/declarations/isup-unpair--0bdd016523fafa844994326a.md) | 165 | `result-track:0bdd016523fafa844994326a49fc958931e3e6152e1ff0ecd08ce80374ad5bcf` |
| 22 | `theorem` | [iUnion_unpair_prod](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantb890ce7fc190806dd8ad42d7e728a35ce49d256c6a68a9a2640d34043b1f765f.lean/declarations/iunion-unpair-prod--c72517800d6aadbb79f3b6fd.md) | 173 | `result-track:c72517800d6aadbb79f3b6fd5679e3532e4cb3f07aa194d21ae23a1a00ab7bdf` |
| 23 | `theorem` | [iUnion_unpair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantb890ce7fc190806dd8ad42d7e728a35ce49d256c6a68a9a2640d34043b1f765f.lean/declarations/iunion-unpair--9f425579e138a2b15f66e72a.md) | 178 | `result-track:9f425579e138a2b15f66e72a1dc883a6bf216550ff81b682a877f98b33bc3707` |
| 24 | `theorem` | [iInter_unpair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variantb890ce7fc190806dd8ad42d7e728a35ce49d256c6a68a9a2640d34043b1f765f.lean/declarations/iinter-unpair--5e768ed5dc226af4c42f0a29.md) | 182 | `result-track:5e768ed5dc226af4c42f0a29954ab85837d174b6627fc2b2404f668ba1ee2dba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
