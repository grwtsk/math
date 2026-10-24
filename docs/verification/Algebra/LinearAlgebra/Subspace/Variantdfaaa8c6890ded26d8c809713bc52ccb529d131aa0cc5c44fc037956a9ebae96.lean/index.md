# Verification target: GRWTSK.Algebra.LinearAlgebra.Subspace.Variantdfaaa8c6890ded26d8c809713bc52ccb529d131aa0cc5c44fc037956a9ebae96

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03bedeb48b5ce4954a9e01e778c1ba92abf66688",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Subspace/Variantdfaaa8c6890ded26d8c809713bc52ccb529d131aa0cc5c44fc037956a9ebae96.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variantdfaaa8c6890ded26d8c809713bc52ccb529d131aa0cc5c44fc037956a9ebae96.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variantdfaaa8c6890ded26d8c809713bc52ccb529d131aa0cc5c44fc037956a9ebae96.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03bedeb48b5ce4954a9e01e778c1ba92abf66688`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Subspace/Variantdfaaa8c6890ded26d8c809713bc52ccb529d131aa0cc5c44fc037956a9ebae96.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Subspace/Variantdfaaa8c6890ded26d8c809713bc52ccb529d131aa0cc5c44fc037956a9ebae96.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.ProjectiveSpace.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Subspace](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variantdfaaa8c6890ded26d8c809713bc52ccb529d131aa0cc5c44fc037956a9ebae96.lean/declarations/subspace--9f0f3d6d2c340ba0a955e5e9.md) | 43 | `declaration-track:9f0f3d6d2c340ba0a955e5e90a8e761dda99eb4871a6cb6657ce2db12d67d9ac` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variantdfaaa8c6890ded26d8c809713bc52ccb529d131aa0cc5c44fc037956a9ebae96.lean/declarations/instance--c6da1e856cb55605c569ffc0.md) | 55 | `declaration-track:c6da1e856cb55605c569ffc07713d0a0b0ee69d4c855508f3bf8685f706f4e71` |
| 3 | `theorem` | [mem_carrier_iff](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variantdfaaa8c6890ded26d8c809713bc52ccb529d131aa0cc5c44fc037956a9ebae96.lean/declarations/mem-carrier-iff--50a02b85270bb7631cb275c3.md) | 63 | `result-track:50a02b85270bb7631cb275c355c5705366a8fef0feb3dd76c35a77c41abc96c1` |
| 4 | `theorem` | [mem_add](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variantdfaaa8c6890ded26d8c809713bc52ccb529d131aa0cc5c44fc037956a9ebae96.lean/declarations/mem-add--86ef1f4c27c37874438cb8fc.md) | 67 | `result-track:86ef1f4c27c37874438cb8fcf98e797a9494ee50efd2e678bd2e7e3d4b76ed06` |
| 5 | `inductive` | [spanCarrier](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variantdfaaa8c6890ded26d8c809713bc52ccb529d131aa0cc5c44fc037956a9ebae96.lean/declarations/spancarrier--73b26f96dd6ca31d7ad4399b.md) | 76 | `declaration-track:73b26f96dd6ca31d7ad4399b3c760c2a8ea771b8ef0bee268dd37a1dcf1b2056` |
| 6 | `def` | [span](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variantdfaaa8c6890ded26d8c809713bc52ccb529d131aa0cc5c44fc037956a9ebae96.lean/declarations/span--881e00a69cedcf0f57aa17bb.md) | 84 | `declaration-track:881e00a69cedcf0f57aa17bb3867659f673d28c2e95f2e03e01400829175e54b` |
| 7 | `theorem` | [subset_span](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variantdfaaa8c6890ded26d8c809713bc52ccb529d131aa0cc5c44fc037956a9ebae96.lean/declarations/subset-span--cb5969f02749b4edde5a46fa.md) | 90 | `result-track:cb5969f02749b4edde5a46fa29acbd020fb84e12534a3f797361b054229cb2f0` |
| 8 | `def` | [gi](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variantdfaaa8c6890ded26d8c809713bc52ccb529d131aa0cc5c44fc037956a9ebae96.lean/declarations/gi--4bae2fbd61e9e5050ea17247.md) | 95 | `declaration-track:4bae2fbd61e9e5050ea17247b70a297869d887128691df762e2825fd1379d552` |
| 9 | `theorem` | [span_coe](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variantdfaaa8c6890ded26d8c809713bc52ccb529d131aa0cc5c44fc037956a9ebae96.lean/declarations/span-coe--f9557f75cc0239952a0b8c03.md) | 111 | `result-track:f9557f75cc0239952a0b8c03d011cf7bb2c8d2b957d723b08502cbb9269aa4b1` |
| 10 | `instance` | [instInf](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variantdfaaa8c6890ded26d8c809713bc52ccb529d131aa0cc5c44fc037956a9ebae96.lean/declarations/instinf--c0cee305909fb33c9d95205e.md) | 116 | `declaration-track:c0cee305909fb33c9d95205eb18d1589818b51b583b2ccb6a47f9fc8ffcebea8` |
| 11 | `instance` | [instInfSet](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variantdfaaa8c6890ded26d8c809713bc52ccb529d131aa0cc5c44fc037956a9ebae96.lean/declarations/instinfset--0adddfc17641780264693032.md) | 125 | `declaration-track:0adddfc17641780264693032626c504ad3fe9325348a90af50f3e47de3acf096` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variantdfaaa8c6890ded26d8c809713bc52ccb529d131aa0cc5c44fc037956a9ebae96.lean/declarations/instance--81fa0cf2d11e4273a126db82.md) | 133 | `declaration-track:81fa0cf2d11e4273a126db8270b16bf0abcee372128e3a5c075e41297d20af58` |
| 13 | `instance` | [subspaceInhabited](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variantdfaaa8c6890ded26d8c809713bc52ccb529d131aa0cc5c44fc037956a9ebae96.lean/declarations/subspaceinhabited--c9d135f9c60bfac001633cd0.md) | 144 | `declaration-track:c9d135f9c60bfac001633cd08a0abce31f5191fa1ae598815145d32d63777ce5` |
| 14 | `theorem` | [span_empty](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variantdfaaa8c6890ded26d8c809713bc52ccb529d131aa0cc5c44fc037956a9ebae96.lean/declarations/span-empty--cd9bfc1220067c049653ca10.md) | 149 | `result-track:cd9bfc1220067c049653ca10c5c7626fb44e1948ca88a58917148c40d1b331ac` |
| 15 | `theorem` | [span_univ](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variantdfaaa8c6890ded26d8c809713bc52ccb529d131aa0cc5c44fc037956a9ebae96.lean/declarations/span-univ--03fb91a229eebcd1cc5f37f3.md) | 154 | `result-track:03fb91a229eebcd1cc5f37f32add2b3eec1ae7803ffaa11176e5e800eb3c0290` |
| 16 | `theorem` | [span_le_subspace_iff](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variantdfaaa8c6890ded26d8c809713bc52ccb529d131aa0cc5c44fc037956a9ebae96.lean/declarations/span-le-subspace-iff--935bae1faa25f020871863a9.md) | 162 | `result-track:935bae1faa25f020871863a9a9e2c738716ceb53d1174de06cee93c17a95dae1` |
| 17 | `theorem` | [monotone_span](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variantdfaaa8c6890ded26d8c809713bc52ccb529d131aa0cc5c44fc037956a9ebae96.lean/declarations/monotone-span--eb9c843b5fcb5f345c8df24f.md) | 169 | `result-track:eb9c843b5fcb5f345c8df24f3a0d16f7f5ccd4824dac432196a2043671e07b92` |
| 18 | `theorem` | [subset_span_trans](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variantdfaaa8c6890ded26d8c809713bc52ccb529d131aa0cc5c44fc037956a9ebae96.lean/declarations/subset-span-trans--f3608159c64ac3b9de2dc9c8.md) | 173 | `result-track:f3608159c64ac3b9de2dc9c8a07b3db82337d9a5ff15cea17da844b63727b4ca` |
| 19 | `theorem` | [span_union](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variantdfaaa8c6890ded26d8c809713bc52ccb529d131aa0cc5c44fc037956a9ebae96.lean/declarations/span-union--a2b86bd6c647bd545547da82.md) | 179 | `result-track:a2b86bd6c647bd545547da82050ce2d17ec61006f2456d1ebfe5849bd3800b3d` |
| 20 | `theorem` | [span_iUnion](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variantdfaaa8c6890ded26d8c809713bc52ccb529d131aa0cc5c44fc037956a9ebae96.lean/declarations/span-iunion--a8d7bd33cd5359c647cb382e.md) | 185 | `result-track:a8d7bd33cd5359c647cb382e21eca5ca2d8a77f45d75896623625ab1c49b60f1` |
| 21 | `theorem` | [sup_span](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variantdfaaa8c6890ded26d8c809713bc52ccb529d131aa0cc5c44fc037956a9ebae96.lean/declarations/sup-span--3e4bd4ce5ff1cbf321d6dce0.md) | 191 | `result-track:3e4bd4ce5ff1cbf321d6dce023d2584f8b0673823fa7382d780eb270e48b1920` |
| 22 | `theorem` | [span_sup](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variantdfaaa8c6890ded26d8c809713bc52ccb529d131aa0cc5c44fc037956a9ebae96.lean/declarations/span-sup--5147adc2c4dcb15fdbcfb6a8.md) | 195 | `result-track:5147adc2c4dcb15fdbcfb6a89424b848b85cfc14c9e6ee1126ef69f45592d6d7` |
| 23 | `theorem` | [mem_span](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variantdfaaa8c6890ded26d8c809713bc52ccb529d131aa0cc5c44fc037956a9ebae96.lean/declarations/mem-span--fa6c499e74fd814e13d9a55f.md) | 201 | `result-track:fa6c499e74fd814e13d9a55fd3027dd7f726a8807e260a6185f6a29caf8f171d` |
| 24 | `theorem` | [span_eq_sInf](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variantdfaaa8c6890ded26d8c809713bc52ccb529d131aa0cc5c44fc037956a9ebae96.lean/declarations/span-eq-sinf--369a87fa5bdcb622d2cdcc18.md) | 209 | `result-track:369a87fa5bdcb622d2cdcc185a3026ac6d42f470a12b0b80c3a442912cbfcdff` |
| 25 | `theorem` | [span_eq_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variantdfaaa8c6890ded26d8c809713bc52ccb529d131aa0cc5c44fc037956a9ebae96.lean/declarations/span-eq-of-le--4801895fb7ad7d3766b71727.md) | 221 | `result-track:4801895fb7ad7d3766b71727c5edc44499e6ecd99fac5cd8da90b2b83ed3c927` |
| 26 | `theorem` | [span_eq_span_iff](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variantdfaaa8c6890ded26d8c809713bc52ccb529d131aa0cc5c44fc037956a9ebae96.lean/declarations/span-eq-span-iff--e594fb60fbc2f02baa80060d.md) | 228 | `result-track:e594fb60fbc2f02baa80060d04d9c9c3229419b89c1d382087fbe1e04aa08ba6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
