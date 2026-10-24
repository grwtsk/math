# Verification target: GRWTSK.Topology.GeneralTopology.NewtonIdentities.Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "945ec68bc7f38ecfc16505c7ae16e6a5c5c6fe36",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `945ec68bc7f38ecfc16505c7ae16e6a5c5c6fe36`.

Source path: `GRWTSK/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.CommRing` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Rename` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Symmetric.Defs` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pairMap](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean/declarations/pairmap--a72ef8301408353dc5e2ad27.md) | 68 | `declaration-track:a72ef8301408353dc5e2ad27c3dc4cc7adb5e44613b5dfdc1d97deac17cb89a5` |
| 2 | `lemma` | [pairMap_ne_self](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean/declarations/pairmap-ne-self--496b155da1a3987bbcf025c1.md) | 71 | `result-track:496b155da1a3987bbcf025c1965180be02239c7a4d277d13a75bc429f3359f04` |
| 3 | `lemma` | [pairMap_of_snd_mem_fst](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean/declarations/pairmap-of-snd-mem-fst--9256e1722eea826d9f5cc0f4.md) | 76 | `result-track:9256e1722eea826d9f5cc0f4590322fb6eb619d9b3c7ef5459687071515c1901` |
| 4 | `lemma` | [pairMap_of_snd_notMem_fst](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean/declarations/pairmap-of-snd-notmem-fst--0991967e3527993007337e94.md) | 80 | `result-track:0991967e3527993007337e944b1fc92f0d48ed728ffb71800f76d10367da3450` |
| 5 | `theorem` | [pairMap_involutive](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean/declarations/pairmap-involutive--f6003d6fa1fe8cf8690eafe4.md) | 87 | `result-track:f6003d6fa1fe8cf8690eafe496a7eb21bcbd0de3419f5e83a693309bb1b401bd` |
| 6 | `def` | [pairs](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean/declarations/pairs--f4401d1953b94ce299a980b6.md) | 98 | `declaration-track:f4401d1953b94ce299a980b6bc6351bd5b79195d596fdfa6d0a3ad15412e3946` |
| 7 | `lemma` | [mem_pairs](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean/declarations/mem-pairs--0688351db65e4d16215e7c56.md) | 102 | `result-track:0688351db65e4d16215e7c561c568052d88c8edabaff7ff4c8a3e00dbef16d57` |
| 8 | `def` | [weight](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean/declarations/weight--4b25b315c417ec4355ce7935.md) | 106 | `declaration-track:4b25b315c417ec4355ce79356002ef6e6df8dc093192a436839442bcc36fc5df` |
| 9 | `theorem` | [pairMap_mem_pairs](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean/declarations/pairmap-mem-pairs--5d2e00d9bf7b191b35487b3d.md) | 109 | `result-track:5d2e00d9bf7b191b35487b3d1500809cab59b27cf4f345b1ab90510a2f2aebf6` |
| 10 | `theorem` | [weight_add_weight_pairMap](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean/declarations/weight-add-weight-pairmap--a3b808b3f32c930233c4a028.md) | 126 | `result-track:a3b808b3f32c930233c4a028fafc580ed47c54319e47ae810f6339c48bd8336b` |
| 11 | `theorem` | [weight_sum](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean/declarations/weight-sum--b59d865f6cdabc1f027984ca.md) | 150 | `result-track:b59d865f6cdabc1f027984caa9cfb1d87313b2f6a41e6a781281a66f7c308516` |
| 12 | `theorem` | [sum_filter_pairs_eq_sum_powersetCard_sum](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean/declarations/sum-filter-pairs-eq-sum-powersetcard-sum--5939f92f7d1f64c97c8b1961.md) | 155 | `result-track:5939f92f7d1f64c97c8b1961ba110d45943af01647a3766031a2bef62622b329` |
| 13 | `theorem` | [sum_filter_pairs_eq_sum_powersetCard_mem_filter_antidiagonal_sum](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean/declarations/sum-filter-pairs-eq-sum-powersetcard-mem-filter-antidiagonal-sum--91de0607144bf3ba2a9090a8.md) | 161 | `result-track:91de0607144bf3ba2a9090a88c01132f261b35625580e38b6cfa300e780de814` |
| 14 | `lemma` | [filter_pairs_lt](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean/declarations/filter-pairs-lt--1e0521d39da4881965ff5c79.md) | 170 | `result-track:1e0521d39da4881965ff5c790407a6ec4a11da1a38938dc5bcd8f1a284222f94` |
| 15 | `theorem` | [sum_filter_pairs_eq_sum_filter_antidiagonal_powersetCard_sum](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean/declarations/sum-filter-pairs-eq-sum-filter-antidiagonal-powersetcard-sum--4686d060b858dfb0776e577e.md) | 175 | `result-track:4686d060b858dfb0776e577e413caa519b1f6a6c0264068307a490da99476a7c` |
| 16 | `theorem` | [disjoint_filter_pairs_lt_filter_pairs_eq](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean/declarations/disjoint-filter-pairs-lt-filter-pairs-eq--0b179707279f2a08e253233d.md) | 183 | `result-track:0b179707279f2a08e253233d0e42588e328524c488bc4b6014920917e62ae27b` |
| 17 | `theorem` | [disjUnion_filter_pairs_eq_pairs](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean/declarations/disjunion-filter-pairs-eq-pairs--243c62ea86ff46a85fab62d1.md) | 188 | `result-track:243c62ea86ff46a85fab62d1a2854746fe87c0e0af94cb58de861f7dacdcfeb4` |
| 18 | `theorem` | [esymm_summand_to_weight](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean/declarations/esymm-summand-to-weight--a0b5996132ac5aa599012e2e.md) | 202 | `result-track:a0b5996132ac5aa599012e2e3c3d6e731076cf9e5bf3fe0bb1600a448b688bd8` |
| 19 | `theorem` | [esymm_to_weight](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean/declarations/esymm-to-weight--65718765057be102051ffc3b.md) | 206 | `result-track:65718765057be102051ffc3b5cac34ed3840839bb21f0d7bf06851161b2e7368` |
| 20 | `theorem` | [esymm_mul_psum_summand_to_weight](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean/declarations/esymm-mul-psum-summand-to-weight--c33d56ef639bea5bf7255cae.md) | 212 | `result-track:c33d56ef639bea5bf7255caeb62d9c17451f3408f8e8e7cb89b52ab86327f90e` |
| 21 | `theorem` | [esymm_mul_psum_to_weight](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean/declarations/esymm-mul-psum-to-weight--ad4f604829d61a2bdb584f39.md) | 222 | `result-track:ad4f604829d61a2bdb584f39c89bd12db336a758e181fbf63079a3702b36741d` |
| 22 | `theorem` | [mul_esymm_eq_sum](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean/declarations/mul-esymm-eq-sum--6d78e2f9262ed7f028610ad1.md) | 234 | `result-track:6d78e2f9262ed7f028610ad1d5bab155ce93771959c4194d7e025ebcd628e4dc` |
| 23 | `theorem` | [sum_antidiagonal_card_esymm_psum_eq_zero](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean/declarations/sum-antidiagonal-card-esymm-psum-eq-zero--a0b268d78390c8cf010dfc68.md) | 247 | `result-track:a0b268d78390c8cf010dfc6842f3706902938ebc7ef9a7f26d30a0fa6eb77875` |
| 24 | `theorem` | [psum_eq_mul_esymm_sub_sum](../../../../../mathematics/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean/declarations/psum-eq-mul-esymm-sub-sum--149f87d2470703f31333f964.md) | 258 | `result-track:149f87d2470703f31333f9642b59e0c3730f2b2d799213a3806c6ff57a5f57be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
