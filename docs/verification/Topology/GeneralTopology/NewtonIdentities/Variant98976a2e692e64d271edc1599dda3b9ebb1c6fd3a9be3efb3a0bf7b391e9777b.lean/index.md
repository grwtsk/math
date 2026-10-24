# Verification target: GRWTSK.Topology.GeneralTopology.NewtonIdentities.Variant98976a2e692e64d271edc1599dda3b9ebb1c6fd3a9be3efb3a0bf7b391e9777b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5629241e74412e7f343152304c81fbc5124e8821",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/NewtonIdentities/Variant98976a2e692e64d271edc1599dda3b9ebb1c6fd3a9be3efb3a0bf7b391e9777b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant98976a2e692e64d271edc1599dda3b9ebb1c6fd3a9be3efb3a0bf7b391e9777b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant98976a2e692e64d271edc1599dda3b9ebb1c6fd3a9be3efb3a0bf7b391e9777b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5629241e74412e7f343152304c81fbc5124e8821`.

Source path: `GRWTSK/Topology/GeneralTopology/NewtonIdentities/Variant98976a2e692e64d271edc1599dda3b9ebb1c6fd3a9be3efb3a0bf7b391e9777b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/NewtonIdentities/Variant98976a2e692e64d271edc1599dda3b9ebb1c6fd3a9be3efb3a0bf7b391e9777b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Card` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MvPolynomial.CommRing` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MvPolynomial.Rename` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Parity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Symmetric` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pairs](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant98976a2e692e64d271edc1599dda3b9ebb1c6fd3a9be3efb3a0bf7b391e9777b.lean/declarations/pairs--615ef958f6dad17994b5377e.md) | 60 | `declaration-track:615ef958f6dad17994b5377e112d9989ae2b17426787a9e367e0ee3c2480c42b` |
| 2 | `lemma` | [mem_pairs](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant98976a2e692e64d271edc1599dda3b9ebb1c6fd3a9be3efb3a0bf7b391e9777b.lean/declarations/mem-pairs--26b0478e042fcee5a8998f47.md) | 64 | `result-track:26b0478e042fcee5a8998f47f61701527393574b26aeff481cd6b9b325041ae2` |
| 3 | `def` | [weight](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant98976a2e692e64d271edc1599dda3b9ebb1c6fd3a9be3efb3a0bf7b391e9777b.lean/declarations/weight--eba4eaace8357471b8baed9a.md) | 68 | `declaration-track:eba4eaace8357471b8baed9a3d61d0cf34081ee8ad8ad9133bb1f7fba49e52b1` |
| 4 | `def` | [pairMap](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant98976a2e692e64d271edc1599dda3b9ebb1c6fd3a9be3efb3a0bf7b391e9777b.lean/declarations/pairmap--f9f3941caa6ff2c6cff1084c.md) | 71 | `declaration-track:f9f3941caa6ff2c6cff1084cfa77ad60274589694c5fc1791ff8586799dad6c3` |
| 5 | `lemma` | [pairMap_ne_self](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant98976a2e692e64d271edc1599dda3b9ebb1c6fd3a9be3efb3a0bf7b391e9777b.lean/declarations/pairmap-ne-self--0b015d26b6ec297eda4bd00e.md) | 74 | `result-track:0b015d26b6ec297eda4bd00ebce584ecebf6ecb9f45ef4171fc57678cd6f1d2a` |
| 6 | `lemma` | [pairMap_of_snd_mem_fst](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant98976a2e692e64d271edc1599dda3b9ebb1c6fd3a9be3efb3a0bf7b391e9777b.lean/declarations/pairmap-of-snd-mem-fst--37f6adc9c43c75cfe9a98471.md) | 79 | `result-track:37f6adc9c43c75cfe9a98471584353b9eb8b6fc5ee701b5461793a3ace426cb5` |
| 7 | `lemma` | [pairMap_of_snd_nmem_fst](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant98976a2e692e64d271edc1599dda3b9ebb1c6fd3a9be3efb3a0bf7b391e9777b.lean/declarations/pairmap-of-snd-nmem-fst--11ad2f343c8c2a327d454ac6.md) | 83 | `result-track:11ad2f343c8c2a327d454ac6f431f221f9389a3463514609b0345b1a8a67ba14` |
| 8 | `theorem` | [pairMap_mem_pairs](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant98976a2e692e64d271edc1599dda3b9ebb1c6fd3a9be3efb3a0bf7b391e9777b.lean/declarations/pairmap-mem-pairs--16f3b718d380f54ac91ca5d7.md) | 87 | `result-track:16f3b718d380f54ac91ca5d749b49dc158e2376d37fe8dfeff6f6c4476bf648f` |
| 9 | `theorem` | [pairMap_involutive](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant98976a2e692e64d271edc1599dda3b9ebb1c6fd3a9be3efb3a0bf7b391e9777b.lean/declarations/pairmap-involutive--55ddfc904f47f6155403c745.md) | 104 | `result-track:55ddfc904f47f6155403c745a07563bb877e8e9f82fcd4efa4e78bedc62469e9` |
| 10 | `theorem` | [weight_add_weight_pairMap](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant98976a2e692e64d271edc1599dda3b9ebb1c6fd3a9be3efb3a0bf7b391e9777b.lean/declarations/weight-add-weight-pairmap--cf45b951df65447a5fa38b3b.md) | 113 | `result-track:cf45b951df65447a5fa38b3b986ccacdbc190e7506092b0211e5702113450cee` |
| 11 | `theorem` | [weight_sum](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant98976a2e692e64d271edc1599dda3b9ebb1c6fd3a9be3efb3a0bf7b391e9777b.lean/declarations/weight-sum--7aaeb3413afd0be180a4a87a.md) | 136 | `result-track:7aaeb3413afd0be180a4a87aaf0b89fabb8266d216d657805bb02971bd24d594` |
| 12 | `theorem` | [sum_filter_pairs_eq_sum_powersetLen_sum](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant98976a2e692e64d271edc1599dda3b9ebb1c6fd3a9be3efb3a0bf7b391e9777b.lean/declarations/sum-filter-pairs-eq-sum-powersetlen-sum--32a22cca3a909e741c07afb6.md) | 141 | `result-track:32a22cca3a909e741c07afb64f4ab44b6fe01aa9b1dd01cccdd579f92253c762` |
| 13 | `theorem` | [sum_filter_pairs_eq_sum_powersetLen_mem_filter_antidiagonal_sum](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant98976a2e692e64d271edc1599dda3b9ebb1c6fd3a9be3efb3a0bf7b391e9777b.lean/declarations/sum-filter-pairs-eq-sum-powersetlen-mem-filter-antidiagonal-sum--5a055211300b77e180867a57.md) | 148 | `result-track:5a055211300b77e180867a57f23c7118450a0e0779ecad5cabf95f59cf54419d` |
| 14 | `theorem` | [sum_filter_pairs_eq_sum_filter_antidiagonal_powersetLen_sum](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant98976a2e692e64d271edc1599dda3b9ebb1c6fd3a9be3efb3a0bf7b391e9777b.lean/declarations/sum-filter-pairs-eq-sum-filter-antidiagonal-powersetlen-sum--c6325701df985257113210c4.md) | 158 | `result-track:c6325701df985257113210c45b9a2ff2cc6754e6905f26230a608deb9c9e50aa` |
| 15 | `theorem` | [disjoint_filter_pairs_lt_filter_pairs_eq](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant98976a2e692e64d271edc1599dda3b9ebb1c6fd3a9be3efb3a0bf7b391e9777b.lean/declarations/disjoint-filter-pairs-lt-filter-pairs-eq--10a556b026b5990fe7fb5f56.md) | 191 | `result-track:10a556b026b5990fe7fb5f56ee94ea3e97a95da0ee667ec66b219707ac882677` |
| 16 | `theorem` | [disjUnion_filter_pairs_eq_pairs](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant98976a2e692e64d271edc1599dda3b9ebb1c6fd3a9be3efb3a0bf7b391e9777b.lean/declarations/disjunion-filter-pairs-eq-pairs--e98394982ef9866de5255a24.md) | 197 | `result-track:e98394982ef9866de5255a2480c1e73898374b2bc0378c71c626c5176af81288` |
| 17 | `theorem` | [esymm_summand_to_weight](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant98976a2e692e64d271edc1599dda3b9ebb1c6fd3a9be3efb3a0bf7b391e9777b.lean/declarations/esymm-summand-to-weight--3e75a82fb0c8c06996c748ea.md) | 208 | `result-track:3e75a82fb0c8c06996c748eab51c4d4e5abac1b064d5f9318407288891794c25` |
| 18 | `theorem` | [esymm_to_weight](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant98976a2e692e64d271edc1599dda3b9ebb1c6fd3a9be3efb3a0bf7b391e9777b.lean/declarations/esymm-to-weight--bb9399b86f1902ccc471bbf1.md) | 212 | `result-track:bb9399b86f1902ccc471bbf14ee57dc78c3e3f6a618299b844fce2ab0230a304` |
| 19 | `theorem` | [esymm_mul_psum_summand_to_weight](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant98976a2e692e64d271edc1599dda3b9ebb1c6fd3a9be3efb3a0bf7b391e9777b.lean/declarations/esymm-mul-psum-summand-to-weight--8157ce521272051dbafee9a6.md) | 218 | `result-track:8157ce521272051dbafee9a66ebea9d157253113ac26ba5d5cee68ad5393752f` |
| 20 | `theorem` | [esymm_mul_psum_to_weight](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant98976a2e692e64d271edc1599dda3b9ebb1c6fd3a9be3efb3a0bf7b391e9777b.lean/declarations/esymm-mul-psum-to-weight--f0eef092baabe3621971e5b3.md) | 228 | `result-track:f0eef092baabe3621971e5b392c968cbecaf2072e26d195a2e647637c08c1837` |
| 21 | `theorem` | [mul_esymm_eq_sum](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant98976a2e692e64d271edc1599dda3b9ebb1c6fd3a9be3efb3a0bf7b391e9777b.lean/declarations/mul-esymm-eq-sum--66d0d23b04d7d9363bd86f31.md) | 239 | `result-track:66d0d23b04d7d9363bd86f312aba03f1b4dec8fffaf77e5f4f017490b3253966` |
| 22 | `theorem` | [sum_antidiagonal_card_esymm_psum_eq_zero](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant98976a2e692e64d271edc1599dda3b9ebb1c6fd3a9be3efb3a0bf7b391e9777b.lean/declarations/sum-antidiagonal-card-esymm-psum-eq-zero--6e58061e0308564d1c684071.md) | 251 | `result-track:6e58061e0308564d1c68407159c1be32a23b49954aebed6ce271e974003600f3` |
| 23 | `theorem` | [psum_eq_mul_esymm_sub_sum](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant98976a2e692e64d271edc1599dda3b9ebb1c6fd3a9be3efb3a0bf7b391e9777b.lean/declarations/psum-eq-mul-esymm-sub-sum--952936beba8f04100f1a3f85.md) | 262 | `result-track:952936beba8f04100f1a3f852f7801690e7bfd0f5c52ab270fcef819184c702c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
