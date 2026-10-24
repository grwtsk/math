# Verification target: GRWTSK.Algebra.Invertible.Variant639a8d26f4df31c9f1cd709c7df607992eecb86876cfe79b9ed2517418da8d95

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a1c81737d874337b068c2c4301b9bd0487f6f5b",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Invertible/Variant639a8d26f4df31c9f1cd709c7df607992eecb86876cfe79b9ed2517418da8d95.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Invertible/Variant639a8d26f4df31c9f1cd709c7df607992eecb86876cfe79b9ed2517418da8d95.lean/index.md) · [Full source](../../../../mathematics/Algebra/Invertible/Variant639a8d26f4df31c9f1cd709c7df607992eecb86876cfe79b9ed2517418da8d95.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a1c81737d874337b068c2c4301b9bd0487f6f5b`.

Source path: `GRWTSK/Algebra/Invertible/Variant639a8d26f4df31c9f1cd709c7df607992eecb86876cfe79b9ed2517418da8d95.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Invertible/Variant639a8d26f4df31c9f1cd709c7df607992eecb86876cfe79b9ed2517418da8d95.lean.json)

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
| 1 | `def` | [AddUnits.mulLeft](../../../../mathematics/Algebra/Invertible/Variant639a8d26f4df31c9f1cd709c7df607992eecb86876cfe79b9ed2517418da8d95.lean/declarations/addunits-mulleft--4e2a6867e6c1925e90808501.md) | 27 | `declaration-track:4e2a6867e6c1925e90808501d814d657c8bc8c79be9a441d18ee996c5d4cd536` |
| 2 | `def` | [AddUnits.mulRight](../../../../mathematics/Algebra/Invertible/Variant639a8d26f4df31c9f1cd709c7df607992eecb86876cfe79b9ed2517418da8d95.lean/declarations/addunits-mulright--7826558f93baf37cbcc3994f.md) | 34 | `declaration-track:7826558f93baf37cbcc3994f763a1a373198708618e8894d0fb534389ae8ae79` |
| 3 | `theorem` | [AddUnits.neg_mulLeft](../../../../mathematics/Algebra/Invertible/Variant639a8d26f4df31c9f1cd709c7df607992eecb86876cfe79b9ed2517418da8d95.lean/declarations/addunits-neg-mulleft--053b2bfb036da11771a0f80e.md) | 42 | `result-track:053b2bfb036da11771a0f80e8fd033a658f9a91c8a3d57a3b345a723b77ff021` |
| 4 | `theorem` | [AddUnits.neg_mulRight](../../../../mathematics/Algebra/Invertible/Variant639a8d26f4df31c9f1cd709c7df607992eecb86876cfe79b9ed2517418da8d95.lean/declarations/addunits-neg-mulright--ef5b6344954fabce0dc6f524.md) | 43 | `result-track:ef5b6344954fabce0dc6f5245045b312a805bbf0d4a49035c1c720a7c90428d9` |
| 5 | `theorem` | [AddUnits.neg_mul_eq_mul_neg](../../../../mathematics/Algebra/Invertible/Variant639a8d26f4df31c9f1cd709c7df607992eecb86876cfe79b9ed2517418da8d95.lean/declarations/addunits-neg-mul-eq-mul-neg--35308aa8f22c61118e61a287.md) | 45 | `result-track:35308aa8f22c61118e61a28783efad8ab2afe74205706e9f0e48bb931bf3aaa7` |
| 6 | `theorem` | [AddUnits.neg_mul_neg](../../../../mathematics/Algebra/Invertible/Variant639a8d26f4df31c9f1cd709c7df607992eecb86876cfe79b9ed2517418da8d95.lean/declarations/addunits-neg-mul-neg--cab41803a4e47d1dc83b2e62.md) | 50 | `result-track:cab41803a4e47d1dc83b2e6226f7268690ae16dfbeceb7d39ca3be3a0c91118b` |
| 7 | `theorem` | [IsAddUnit.mul_left](../../../../mathematics/Algebra/Invertible/Variant639a8d26f4df31c9f1cd709c7df607992eecb86876cfe79b9ed2517418da8d95.lean/declarations/isaddunit-mul-left--4d455b21a556d8c1565c5a63.md) | 55 | `result-track:4d455b21a556d8c1565c5a6391990253a1af0bdbbb3b7cac014dbe81dd4b20d5` |
| 8 | `theorem` | [IsAddUnit.mul_right](../../../../mathematics/Algebra/Invertible/Variant639a8d26f4df31c9f1cd709c7df607992eecb86876cfe79b9ed2517418da8d95.lean/declarations/isaddunit-mul-right--17535571cd094f319c030068.md) | 58 | `result-track:17535571cd094f319c0300681c18d99197a418ba10c4654a3c1cbfeb9efda011` |
| 9 | `def` | [invertibleNeg](../../../../mathematics/Algebra/Invertible/Variant639a8d26f4df31c9f1cd709c7df607992eecb86876cfe79b9ed2517418da8d95.lean/declarations/invertibleneg--0260ee1a39bec8a6bada8f53.md) | 65 | `declaration-track:0260ee1a39bec8a6bada8f531b7afa92c603bfe00bb610358c1302d201558d18` |
| 10 | `theorem` | [invOf_neg](../../../../mathematics/Algebra/Invertible/Variant639a8d26f4df31c9f1cd709c7df607992eecb86876cfe79b9ed2517418da8d95.lean/declarations/invof-neg--b661149646cd2088db634904.md) | 69 | `result-track:b661149646cd2088db63490443e7fc589ad801f6946588e219cbce76cb897c53` |
| 11 | `theorem` | [one_sub_invOf_two](../../../../mathematics/Algebra/Invertible/Variant639a8d26f4df31c9f1cd709c7df607992eecb86876cfe79b9ed2517418da8d95.lean/declarations/one-sub-invof-two--09f86efd6e270dd23d341d3d.md) | 74 | `result-track:09f86efd6e270dd23d341d3d8018263c20b9d5c1caa56d85359594cb5b8f84b2` |
| 12 | `theorem` | [invOf_two_add_invOf_two](../../../../mathematics/Algebra/Invertible/Variant639a8d26f4df31c9f1cd709c7df607992eecb86876cfe79b9ed2517418da8d95.lean/declarations/invof-two-add-invof-two--28af2ac3d3b31ee55ab619b8.md) | 79 | `result-track:28af2ac3d3b31ee55ab619b89a04bdfee06ec35e8ddbf8dd36a7b08f2b9c106a` |
| 13 | `theorem` | [pos_of_invertible_cast](../../../../mathematics/Algebra/Invertible/Variant639a8d26f4df31c9f1cd709c7df607992eecb86876cfe79b9ed2517418da8d95.lean/declarations/pos-of-invertible-cast--b1580a4fb1cad98f6b892a91.md) | 82 | `result-track:b1580a4fb1cad98f6b892a919c72bdbd424d80882ecb4c729a2602ebcba00444` |
| 14 | `theorem` | [invOf_add_invOf](../../../../mathematics/Algebra/Invertible/Variant639a8d26f4df31c9f1cd709c7df607992eecb86876cfe79b9ed2517418da8d95.lean/declarations/invof-add-invof--168a1ad7605f56eadb6071d6.md) | 86 | `result-track:168a1ad7605f56eadb6071d678d46ff75ba1954ac883e0db8898f80ded86d18a` |
| 15 | `theorem` | [invOf_sub_invOf](../../../../mathematics/Algebra/Invertible/Variant639a8d26f4df31c9f1cd709c7df607992eecb86876cfe79b9ed2517418da8d95.lean/declarations/invof-sub-invof--faccc74a35d2767a85613b93.md) | 91 | `result-track:faccc74a35d2767a85613b93878bf9fcd05a763c5fe9507e6b21bcd3e50a587f` |
| 16 | `lemma` | [neg_add_eq_mul_invOf_mul_same_iff](../../../../mathematics/Algebra/Invertible/Variant639a8d26f4df31c9f1cd709c7df607992eecb86876cfe79b9ed2517418da8d95.lean/declarations/neg-add-eq-mul-invof-mul-same-iff--3545635c9d91c95b2fac7707.md) | 95 | `result-track:3545635c9d91c95b2fac7707b4d8b8e1274cc20e6c0a64c5dfbca13b74537ce5` |
| 17 | `lemma` | [neg_one_eq_invOf_mul_add_invOf_mul_iff](../../../../mathematics/Algebra/Invertible/Variant639a8d26f4df31c9f1cd709c7df607992eecb86876cfe79b9ed2517418da8d95.lean/declarations/neg-one-eq-invof-mul-add-invof-mul-iff--0da2380a4ff660af6de0f085.md) | 103 | `result-track:0da2380a4ff660af6de0f085674bd29f6fb766684ed542ffd1e1108f11860792` |
| 18 | `theorem` | [eq_of_invOf_add_eq_invOf_add_invOf](../../../../mathematics/Algebra/Invertible/Variant639a8d26f4df31c9f1cd709c7df607992eecb86876cfe79b9ed2517418da8d95.lean/declarations/eq-of-invof-add-eq-invof-add-invof--dfec375527e400cc55560f4c.md) | 109 | `result-track:dfec375527e400cc55560f4ca1b3b54c5dc0bd3ca7df51c90286102e67ca3f9c` |
| 19 | `theorem` | [Ring.inverse_add_inverse](../../../../mathematics/Algebra/Invertible/Variant639a8d26f4df31c9f1cd709c7df607992eecb86876cfe79b9ed2517418da8d95.lean/declarations/ring-inverse-add-inverse--96d4aadb8b88f2fcbb471c1e.md) | 120 | `result-track:96d4aadb8b88f2fcbb471c1e00ebc5b308a9d0e6516b77548cc83669567fe143` |
| 20 | `theorem` | [Ring.inverse_sub_inverse](../../../../mathematics/Algebra/Invertible/Variant639a8d26f4df31c9f1cd709c7df607992eecb86876cfe79b9ed2517418da8d95.lean/declarations/ring-inverse-sub-inverse--64709fb6d0342521364ad956.md) | 131 | `result-track:64709fb6d0342521364ad9564687a1fdcb1bd0b44f8b2ca4e6d32eb7ce6bf7ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
