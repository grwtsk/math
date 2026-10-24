# Verification target: GRWTSK.Algebra.LinearAlgebra.GramSchmidtOrtho.Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f8be2b03e4cade39b9ab5b87b8448e28bb18f11",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f8be2b03e4cade39b9ab5b87b8448e28bb18f11`.

Source path: `GRWTSK/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gramSchmidt](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/declarations/gramschmidt--c835c21db2dc27eb8f8a5399.md) | 60 | `declaration-track:c835c21db2dc27eb8f8a539962cca9679ac1c88271f236ae8f24d1f0c35e1ccb` |
| 2 | `theorem` | [gramSchmidt_def](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/declarations/gramschmidt-def--59e143933b22c867cc473a22.md) | 68 | `result-track:59e143933b22c867cc473a226015809ed45adf1a3523f6d6a2dc23dcb7890109` |
| 3 | `theorem` | [gramSchmidt_def'](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/declarations/gramschmidt-def--3df0dc9bad939fe3ae5500c4.md) | 72 | `result-track:3df0dc9bad939fe3ae5500c43167d505283133a3fb6a04e9ca114b2c271e0ed1` |
| 4 | `theorem` | [gramSchmidt_def''](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/declarations/gramschmidt-def--3811d209b377415f7bebe812.md) | 76 | `result-track:3811d209b377415f7bebe81248f572ea30d09101a6640857d5927f738d627c59` |
| 5 | `theorem` | [gramSchmidt_bot](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/declarations/gramschmidt-bot--e9baa8733569e63ac02b1b0c.md) | 82 | `result-track:e9baa8733569e63ac02b1b0c6cd910e282d69dbaa4db76026b1e5323a9c974a7` |
| 6 | `theorem` | [gramSchmidt_zero](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/declarations/gramschmidt-zero--5e821ccfbe025ab8dd02cbac.md) | 87 | `result-track:5e821ccfbe025ab8dd02cbacadc824c0be56da19f6161f55b632125e4a7f084e` |
| 7 | `theorem` | [gramSchmidt_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/declarations/gramschmidt-orthogonal--f182f8869eebba86cb806987.md) | 91 | `result-track:f182f8869eebba86cb806987a518f336530252c2c5906e83dd63c788004cfa5a` |
| 8 | `theorem` | [gramSchmidt_pairwise_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/declarations/gramschmidt-pairwise-orthogonal--e33fd300237335508b58c276.md) | 119 | `result-track:e33fd300237335508b58c276fe2d0dbb549571b386237448be6fa526775a836e` |
| 9 | `theorem` | [gramSchmidt_inv_triangular](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/declarations/gramschmidt-inv-triangular--deb849f82308741417e573c0.md) | 123 | `result-track:deb849f82308741417e573c0f99b17d3cf0555e9426abfd7d00da713125a4291` |
| 10 | `theorem` | [mem_span_gramSchmidt](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/declarations/mem-span-gramschmidt--56e5a224b37934f3ded43828.md) | 138 | `result-track:56e5a224b37934f3ded438280b489deb488f1a69ac0a251eac1d7bc98ebf3d24` |
| 11 | `theorem` | [gramSchmidt_mem_span](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/declarations/gramschmidt-mem-span--cbc701478b036aff7d62f8db.md) | 146 | `result-track:cbc701478b036aff7d62f8db3c5235b7d4757d3d88a0a3808c717220b298b75a` |
| 12 | `theorem` | [span_gramSchmidt_Iic](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/declarations/span-gramschmidt-iic--5c567901c9d1209d1448e046.md) | 158 | `result-track:5c567901c9d1209d1448e0462b124080b0da454b36c2718f75c8627d6f711e7d` |
| 13 | `theorem` | [span_gramSchmidt_Iio](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/declarations/span-gramschmidt-iio--aa34d65f903b705ff05b10ad.md) | 163 | `result-track:aa34d65f903b705ff05b10ad121a2914e8eb4f435ab476c9966cc89f06a2791c` |
| 14 | `theorem` | [span_gramSchmidt](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/declarations/span-gramschmidt--1f5b65ca7ed2006d4489783f.md) | 171 | `result-track:1f5b65ca7ed2006d4489783fc8dce54f6a1f9a1dde41056e1305e91609c9a34c` |
| 15 | `theorem` | [gramSchmidt_of_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/declarations/gramschmidt-of-orthogonal--1202f9fcd9b926320c4607af.md) | 178 | `result-track:1202f9fcd9b926320c4607afdc087bf25b681621a38f4b21ec6de0fa3b646c60` |
| 16 | `theorem` | [gramSchmidt_ne_zero_coe](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/declarations/gramschmidt-ne-zero-coe--622a6234ab395ee66d4ca0f1.md) | 199 | `result-track:622a6234ab395ee66d4ca0f1ead9f0163d81b67a002fa292ad574bc9c551b850` |
| 17 | `theorem` | [gramSchmidt_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/declarations/gramschmidt-ne-zero--2257731e9799cca80d265c61.md) | 219 | `result-track:2257731e9799cca80d265c61d9ddeb84c3ad1e18f697aafe45e9ddd728079669` |
| 18 | `theorem` | [gramSchmidt_triangular](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/declarations/gramschmidt-triangular--4efd860a6ac5cdb3e319034a.md) | 224 | `result-track:4efd860a6ac5cdb3e319034a5011662e8f75fd58d385f84bf21df235a2c6b669` |
| 19 | `theorem` | [gramSchmidt_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/declarations/gramschmidt-linearindependent--1ee091bee704e78152312aa2.md) | 234 | `result-track:1ee091bee704e78152312aa2d7f4d9a09a68f671c514033bb94c4e98f0555f0e` |
| 20 | `def` | [gramSchmidtBasis](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/declarations/gramschmidtbasis--3d97297d0d5e0f10cf98a8b7.md) | 240 | `declaration-track:3d97297d0d5e0f10cf98a8b7be3fc985d52988b0649fa6e0b47be307227eb082` |
| 21 | `theorem` | [coe_gramSchmidtBasis](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/declarations/coe-gramschmidtbasis--c3acd055119520de53e68677.md) | 244 | `result-track:c3acd055119520de53e6867726eb9f2209cf59be38748ef3c71d85fd114a88cd` |
| 22 | `def` | [gramSchmidtNormed](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/declarations/gramschmidtnormed--eff6f562d8d278cb949e90d9.md) | 249 | `declaration-track:eff6f562d8d278cb949e90d9fc600e6fb9f1d39a9dacfab6e21bff14d8daab21` |
| 23 | `theorem` | [gramSchmidtNormed_unit_length_coe](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/declarations/gramschmidtnormed-unit-length-coe--d80200b1c3abeca447f9bb7e.md) | 252 | `result-track:d80200b1c3abeca447f9bb7e403b886af6450796d0a19760d2e3d6b183ec54ad` |
| 24 | `theorem` | [gramSchmidtNormed_unit_length](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/declarations/gramschmidtnormed-unit-length--b5c0af51e914d5fe6e12cc4e.md) | 257 | `result-track:b5c0af51e914d5fe6e12cc4e711d0b3893084ee6a526d5ec5109224b021b0da2` |
| 25 | `theorem` | [gramSchmidtNormed_unit_length'](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/declarations/gramschmidtnormed-unit-length--1780b9745e45a168e32acba0.md) | 261 | `result-track:1780b9745e45a168e32acba063912a606015150edc913d18b0f64252fd5a1ff7` |
| 26 | `theorem` | [gramSchmidtNormed_orthonormal](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/declarations/gramschmidtnormed-orthonormal--15b93fae6372a486dc9a7ba7.md) | 270 | `result-track:15b93fae6372a486dc9a7ba70f747f4997f328eb82b1f63dfc32c9f3440b649c` |
| 27 | `theorem` | [gramSchmidtNormed_orthonormal'](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/declarations/gramschmidtnormed-orthonormal--15e785a30208a2a10a2e4283.md) | 284 | `result-track:15e785a30208a2a10a2e4283985f5cadccf2fb076a597abc56db39b25fce75ad` |
| 28 | `theorem` | [span_gramSchmidtNormed](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/declarations/span-gramschmidtnormed--442ced0f44bb667d63bffbd7.md) | 293 | `result-track:442ced0f44bb667d63bffbd70af2d785febcd3ba06357da911e4ffbe18d5f99e` |
| 29 | `theorem` | [span_gramSchmidtNormed_range](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/declarations/span-gramschmidtnormed-range--f745385faab748a63dd99361.md) | 305 | `result-track:f745385faab748a63dd9936161804201af4ebd24fa783a77afa72ffb920ae263` |
| 30 | `theorem` | [gramSchmidtNormed_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/declarations/gramschmidtnormed-linearindependent--c888dd704626ade19cd2c220.md) | 311 | `result-track:c888dd704626ade19cd2c220df0f068bca62615ee2295889abf5dc7518240208` |
| 31 | `def` | [gramSchmidtOrthonormalBasis](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/declarations/gramschmidtorthonormalbasis--42dffafc4bd22299dd045905.md) | 327 | `declaration-track:42dffafc4bd22299dd045905a1258659632dddd68164a20e00cb8144d24981fc` |
| 32 | `theorem` | [gramSchmidtOrthonormalBasis_apply](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/declarations/gramschmidtorthonormalbasis-apply--03f5efacbf444d489495db61.md) | 331 | `result-track:03f5efacbf444d489495db617c239e8ca99c367e0a92d3302fd180ed0ef831a3` |
| 33 | `theorem` | [gramSchmidtOrthonormalBasis_apply_of_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/declarations/gramschmidtorthonormalbasis-apply-of-orthogonal--7f3a9a777e91c46189079535.md) | 336 | `result-track:7f3a9a777e91c461890795355f533f2c0c9e88f85d51e5c7042d7f44a180680f` |
| 34 | `theorem` | [inner_gramSchmidtOrthonormalBasis_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/declarations/inner-gramschmidtorthonormalbasis-eq-zero--f1ae5b7505303f4aed8df594.md) | 344 | `result-track:f1ae5b7505303f4aed8df5941260f5edd970306372efbac0be937cc8c3ae286e` |
| 35 | `theorem` | [gramSchmidtOrthonormalBasis_inv_triangular](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/declarations/gramschmidtorthonormalbasis-inv-triangular--b50d94cd15fa313584f9a81a.md) | 361 | `result-track:b50d94cd15fa313584f9a81a3324059cc06084607dc84fdbaf838576cfda5d4a` |
| 36 | `theorem` | [gramSchmidtOrthonormalBasis_inv_triangular'](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/declarations/gramschmidtorthonormalbasis-inv-triangular--3b0cfab9a9015fdd35d96c51.md) | 368 | `result-track:3b0cfab9a9015fdd35d96c514a1d94a1b22499788cc14a93ac26cc034cbab00d` |
| 37 | `theorem` | [gramSchmidtOrthonormalBasis_inv_isUpperTriangular](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/declarations/gramschmidtorthonormalbasis-inv-isuppertriangular--88389186a6c59f820628f73e.md) | 375 | `result-track:88389186a6c59f820628f73ee7b2cc5230586127e35faf5b792a65e7a9c5a100` |
| 38 | `theorem` | [gramSchmidtOrthonormalBasis_det](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant0657583012c1323ceb1f54a5aed11fbe65430f3ad6aa8f0aea62be38e5499d40.lean/declarations/gramschmidtorthonormalbasis-det--9334a8812748fabc77a99b86.md) | 383 | `result-track:9334a8812748fabc77a99b8652098c5f0316677370c9d3d9e8d92ee0a5298988` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
