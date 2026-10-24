# Verification target: GRWTSK.Algebra.LinearAlgebra.Fixed.Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9f644c80bb1e8de365d21dcfd28821d6bef15be",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9f644c80bb1e8de365d21dcfd28821d6bef15be`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.GroupRingAction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Action.Field` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Action.Invariant` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finiteness` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Normal.Defs` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Separable` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Lemmas` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Matrix` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FixedBy.subfield](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/fixedby-subfield--2bee9a384bd0b31eeb3356fb.md) | 52 | `declaration-track:2bee9a384bd0b31eeb3356fbb6d8038aa2eabe915cc6e564bbb81058ce390c72` |
| 2 | `class` | [IsInvariantSubfield](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/isinvariantsubfield--4112345409fc41c5810b0f7e.md) | 66 | `declaration-track:4112345409fc41c5810b0f7e873dbacff84ed0ab842487d01db05d0d75f54033` |
| 3 | `instance` | [IsInvariantSubfield.toMulSemiringAction](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/isinvariantsubfield-tomulsemiringaction--f8bf0420b91670209c89b25f.md) | 71 | `declaration-track:f8bf0420b91670209c89b25f4732cafe8bb135ec29cc97528526988c6145b206` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/instance--df231196b2283aa1d80a1e8c.md) | 81 | `declaration-track:df231196b2283aa1d80a1e8c146082fcd5e31d97088d18d006e509a52b0e797e` |
| 5 | `def` | [subfield](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/subfield--156acf0a5c13be8a125f4a90.md) | 92 | `declaration-track:156acf0a5c13be8a125f4a9030c279ca98622775324a22c7988cdd871dc6abda` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/instance--c8364d8799eea5a17c13ba8b.md) | 96 | `declaration-track:c8364d8799eea5a17c13ba8b7c6e1fd6f183784a01bdeeb6e8a77469d53be939` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/instance--cca3ded68ac30a5ef72e4bfa.md) | 99 | `declaration-track:cca3ded68ac30a5ef72e4bfaca4a28b9d3c5eac7e0e9ba75099d3357dccb8fc7` |
| 8 | `instance` | [smulCommClass'](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/smulcommclass--93ac03cd0b8dba47421496b5.md) | 102 | `declaration-track:93ac03cd0b8dba47421496b5ce1ac43db4794634c441dce3a28db7338a4225c1` |
| 9 | `theorem` | [smul](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/smul--f4fd54d3eb341da5b2da7bb6.md) | 106 | `result-track:f4fd54d3eb341da5b2da7bb6a5f7a821c6dc97dffa7a3de551c0e73ad91b9146` |
| 10 | `theorem` | [smul_polynomial](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/smul-polynomial--49d6ef50ee4176fdb5084463.md) | 111 | `result-track:49d6ef50ee4176fdb5084463433de2651194700ca244d02d4c12005dcff66311` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/instance--cc5ac26c638b903e9f5d38ac.md) | 116 | `declaration-track:cc5ac26c638b903e9f5d38ac9c072c9232fd82ade71d237a39ce89396fd32387` |
| 12 | `theorem` | [coe_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/coe-algebramap--2e4b7697b293edfb5dff09a1.md) | 118 | `result-track:2e4b7697b293edfb5dff09a173df99274ce5f2b8ee3b1ef56e13a343a7a09ccc` |
| 13 | `theorem` | [linearIndependent_smul_of_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/linearindependent-smul-of-linearindependent--8ff5377e50c06cce085413ee.md) | 122 | `result-track:8ff5377e50c06cce085413ee59f8c6244a090585eaa63625a1feda61eb4ba27b` |
| 14 | `def` | [minpoly](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/minpoly--feccc8eac3bfc2e3f812a4fd.md) | 172 | `declaration-track:feccc8eac3bfc2e3f812a4fdcd5d6f2a5447143a0501abe4b4a284b21ae049d8` |
| 15 | `theorem` | [monic](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/monic--17b0392e21861bd8461b5583.md) | 179 | `result-track:17b0392e21861bd8461b558368f957d38fbe328e6858cb2dfe375f6c3eaa53c8` |
| 16 | `theorem` | [eval₂](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/eval--0e9ac3c40548b4e4f8e2bb7e.md) | 184 | `result-track:0e9ac3c40548b4e4f8e2bb7e16c996c0e19665b35ae5112f0216677bf06b042a` |
| 17 | `theorem` | [eval₂'](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/eval--3dd7ac09db9a218ea2d8a789.md) | 190 | `result-track:3dd7ac09db9a218ea2d8a789632644f70b05035fe741c7ffc669b49464c052a9` |
| 18 | `theorem` | [ne_one](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/ne-one--1d25ca6ff0099499f134e2c8.md) | 194 | `result-track:1d25ca6ff0099499f134e2c807145d38124d2fb5d973367ca2ceed805370c4a1` |
| 19 | `theorem` | [of_eval₂](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/of-eval--25ca96f3f0f25c4c45a310d5.md) | 198 | `result-track:25ca96f3f0f25c4c45a310d5753af59eb789e6314d2eaedc98286edd9570eeac` |
| 20 | `theorem` | [irreducible_aux](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/irreducible-aux--d9064ca8260265b2c9b8639c.md) | 216 | `result-track:d9064ca8260265b2c9b8639c9a7439a36decbbe5cfead71e9df7c6b546703b9d` |
| 21 | `theorem` | [irreducible](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/irreducible--84f79a44d2b5315a75ebb66c.md) | 234 | `result-track:84f79a44d2b5315a75ebb66c80317f8955268a9401546092f3345dcf769fc195` |
| 22 | `theorem` | [isIntegral](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/isintegral--b0729b8e3b29a5d38e7f7dcc.md) | 241 | `result-track:b0729b8e3b29a5d38e7f7dcc923054f1ef40701e388a5599974a4380bf59a4a7` |
| 23 | `theorem` | [minpoly_eq_minpoly](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/minpoly-eq-minpoly--be85715f7bc6e4c98ad52c73.md) | 248 | `result-track:be85715f7bc6e4c98ad52c73682b7c1f2f53dc48dd180576d86161d4c4d78352` |
| 24 | `theorem` | [rank_le_card](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/rank-le-card--62fb1bfd282962c51a8ca0fd.md) | 252 | `result-track:62fb1bfd282962c51a8ca0fda4fc05fc8ebf64eb55cfda80cf14ee91860f44eb` |
| 25 | `instance` | [normal](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/normal--4ecca12cc4598e8b19ec4bc3.md) | 264 | `declaration-track:4ecca12cc4598e8b19ec4bc3b5e3d4b4ff43e2fb5cb2e0d69b5db90c602f5b06` |
| 26 | `instance` | [isSeparable](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/isseparable--99d5b38855938aab7e9e9459.md) | 273 | `declaration-track:99d5b38855938aab7e9e945996c4d4a98116cc8c39989288748430d63f2a87df` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/instance--95de69b7ca9009a747c9e836.md) | 282 | `declaration-track:95de69b7ca9009a747c9e8362ec923f38a3092b271060396c0885d21b7c08915` |
| 28 | `theorem` | [finrank_le_card](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/finrank-le-card--d72672b912b68acd2f515a61.md) | 289 | `result-track:d72672b912b68acd2f515a6121947efd678868b3a57d307a0330d768b7cf5314` |
| 29 | `theorem` | [linearIndependent_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/linearindependent-tolinearmap--b7b1b156ce61c1896d9d4937.md) | 295 | `result-track:b7b1b156ce61c1896d9d4937af9e3ca75d23d24be4be702277611779bfa33ab7` |
| 30 | `theorem` | [cardinalMk_algHom](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/cardinalmk-alghom--d353c4bfd42e0aed4d9797bf.md) | 304 | `result-track:d353c4bfd42e0aed4d9797bfc34a1e2b17820e10d349322a230cc708e0d9b3e6` |
| 31 | `instance` | [AlgEquiv.fintype](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/algequiv-fintype--d9bff78a8a62e0f72d7f972d.md) | 311 | `declaration-track:d9bff78a8a62e0f72d7f972d92f5c92a17d0675778c03860d6d7de923b3082e7` |
| 32 | `theorem` | [finrank_algHom](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/finrank-alghom--6fa507cea7846551bc6ebf80.md) | 315 | `result-track:6fa507cea7846551bc6ebf80345dbb49048de1b104683f413b9dd259a14772ff` |
| 33 | `theorem` | [AlgHom.card_le](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/alghom-card-le--9ef1075eaf4cf1eab1ab8083.md) | 319 | `result-track:9ef1075eaf4cf1eab1ab80830bd163684d4b768b64900dc1800d1a441ec6119e` |
| 34 | `theorem` | [AlgEquiv.card_le](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/algequiv-card-le--3f7159c7bb32eb68ea9cf2e7.md) | 323 | `result-track:3f7159c7bb32eb68ea9cf2e7fe650155ea42f9c194d471c199746363ca8cfecc` |
| 35 | `theorem` | [finrank_eq_card](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/finrank-eq-card--a1dff4b2df424d2f873a21a7.md) | 334 | `result-track:a1dff4b2df424d2f873a21a7be355433ed3cbaccd4d1ee7cdbc4f6d6640b056b` |
| 36 | `theorem` | [toAlgHom_bijective](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/toalghom-bijective--f770933bd16b593cc89a3cf1.md) | 344 | `result-track:f770933bd16b593cc89a3cf1fe090fc0ae58c40fec008b546f4a183c3d58fc1a` |
| 37 | `def` | [toAlgHomEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/toalghomequiv--cda697e10cc17281f5858a3f.md) | 356 | `declaration-track:cda697e10cc17281f5858a3f3e96888fb93794d6193f7739ec3e5d9606ece917` |
| 38 | `theorem` | [toAlgAut_bijective](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/toalgaut-bijective--8af0ec18ea422fd33c24547b.md) | 360 | `result-track:8af0ec18ea422fd33c24547b7c2d589752b630770116e32e270b5e8b8fbb1dfd` |
| 39 | `def` | [toAlgAutMulEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/toalgautmulequiv--de897e48692729b505950018.md) | 367 | `declaration-track:de897e48692729b50595001806b6a83321a84cde3506e427dfa10a22bd85322e` |
| 40 | `theorem` | [toAlgAut_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/declarations/toalgaut-surjective--2d20536a5089432a1c9ebe4d.md) | 371 | `result-track:2d20536a5089432a1c9ebe4d4df8cc89569190bab2eb6838ddebe845c1f29205` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
