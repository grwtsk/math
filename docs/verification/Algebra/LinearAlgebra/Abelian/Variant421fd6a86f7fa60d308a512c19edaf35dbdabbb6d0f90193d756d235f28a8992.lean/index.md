# Verification target: GRWTSK.Algebra.LinearAlgebra.Abelian.Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "330698f2c2c4caea9779ed8e88ed80caeec19f8b",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `330698f2c2c4caea9779ed8e88ed80caeec19f8b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.OfAssociative` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.IdealOperations` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LieModule.IsTrivial](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/declarations/liemodule-istrivial--a5dbd256213f113aa2525506.md) | 46 | `declaration-track:a5dbd256213f113aa2525506d5d70b9d525204d4a760e1adb968602595b820d8` |
| 2 | `theorem` | [trivial_lie_zero](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/declarations/trivial-lie-zero--9aad0727779a13136f73ac22.md) | 51 | `result-track:9aad0727779a13136f73ac223b7ec55bb4315f0f77f70059d5b3cc763b4214ea` |
| 3 | `abbrev` | [IsLieAbelian](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/declarations/islieabelian--08e889b2d76a226dc967e815.md) | 57 | `declaration-track:08e889b2d76a226dc967e815bda3be247653729c29bedffab6631763d62a343c` |
| 4 | `instance` | [LieIdeal.isLieAbelian_of_trivial](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/declarations/lieideal-islieabelian-of-trivial--77e960bd5fafd2576a526224.md) | 61 | `declaration-track:77e960bd5fafd2576a526224450e0431c7aa1229641832adcb955384fce2ad7b` |
| 5 | `theorem` | [Function.Injective.isLieAbelian](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/declarations/function-injective-islieabelian--6262048994687822fa7f3541.md) | 66 | `result-track:6262048994687822fa7f3541d87ed7da8754fcb018c208e358f77bd2fb6c748c` |
| 6 | `theorem` | [Function.Surjective.isLieAbelian](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/declarations/function-surjective-islieabelian--9dbccb2bc61630542aa3bec6.md) | 76 | `result-track:9dbccb2bc61630542aa3bec66a709ffbbad3fa42568002a6f75e7d331ddce669` |
| 7 | `theorem` | [lie_abelian_iff_equiv_lie_abelian](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/declarations/lie-abelian-iff-equiv-lie-abelian--57852da82d0b360ece9d0a91.md) | 85 | `result-track:57852da82d0b360ece9d0a91b815e8a34dcde5f01aa3c171d8f68816c434cc78` |
| 8 | `theorem` | [commutative_ring_iff_abelian_lie_ring](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/declarations/commutative-ring-iff-abelian-lie-ring--00e35fcf650e0ed25e2e97b7.md) | 91 | `result-track:00e35fcf650e0ed25e2e97b7f40dcde27a7d82ef8ffc6c489b3df6259e4d00b7` |
| 9 | `theorem` | [LieAlgebra.isLieAbelian_bot](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/declarations/liealgebra-islieabelian-bot--96399c40553b61415770197d.md) | 98 | `result-track:96399c40553b61415770197d13b6ed8950877c3e76a07ad535548d15e7ed2b59` |
| 10 | `def` | [ker](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/declarations/ker--2a846c63938c770fece641dc.md) | 116 | `declaration-track:2a846c63938c770fece641dce7ce249ee68a85352d722b3cdaf811a3cb938f18` |
| 11 | `theorem` | [mem_ker](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/declarations/mem-ker--4a34b3bed4f61ed3127fe4ff.md) | 121 | `result-track:4a34b3bed4f61ed3127fe4ff16860e0df83d7cb2ad7f6463486beb46f53df4ba` |
| 12 | `def` | [maxTrivSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/declarations/maxtrivsubmodule--ed17ec652df081269d9638a3.md) | 127 | `declaration-track:ed17ec652df081269d9638a30aadaea08de09a4333997f865c831bc19c3d33f7` |
| 13 | `theorem` | [mem_maxTrivSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/declarations/mem-maxtrivsubmodule--61d8edc08dff9d5e62397c17.md) | 136 | `result-track:61d8edc08dff9d5e62397c171317b3b7e2da829f7a0a0d7a21f041f3eec04e37` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/declarations/instance--0f93c5860589001d535e6ee9.md) | 140 | `declaration-track:0f93c5860589001d535e6ee9a72a1287c6105bd34833c9cd63520e9d45570cb0` |
| 15 | `theorem` | [ideal_oper_maxTrivSubmodule_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/declarations/ideal-oper-maxtrivsubmodule-eq-bot--86a82bb7990b599a72823ef9.md) | 143 | `result-track:86a82bb7990b599a72823ef93db392b55dc8624f0c5baaaa218b82e940cf0dd4` |
| 16 | `theorem` | [le_max_triv_iff_bracket_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/declarations/le-max-triv-iff-bracket-eq-bot--7f4135537ee5d2a1c9733234.md) | 151 | `result-track:7f4135537ee5d2a1c9733234c1ae9ead89a4be1e7a1ac600efa681c4cbc09ae0` |
| 17 | `theorem` | [trivial_iff_le_maximal_trivial](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/declarations/trivial-iff-le-maximal-trivial--597eaab4d64e2c7870a5e3cb.md) | 161 | `result-track:597eaab4d64e2c7870a5e3cba5a604a2bc1a4a98e0294ad015376ea3ace0b753` |
| 18 | `theorem` | [isTrivial_iff_max_triv_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/declarations/istrivial-iff-max-triv-eq-top--ba8d6490dc44a93d3d7fa34a.md) | 167 | `result-track:ba8d6490dc44a93d3d7fa34a58b8187f89b6a1e45196def31d13db297e336afd` |
| 19 | `def` | [maxTrivHom](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/declarations/maxtrivhom--c4945b3baa50c3d6222b50bf.md) | 177 | `declaration-track:c4945b3baa50c3d6222b50bf74b788c1ea434eb660b24c210c72e31f3a8c352f` |
| 20 | `theorem` | [coe_maxTrivHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/declarations/coe-maxtrivhom-apply--e4705753e35a7fe5c9ecd806.md) | 187 | `result-track:e4705753e35a7fe5c9ecd806268c5e8c5b90e08f795971422f841c2b2ad53be8` |
| 21 | `def` | [maxTrivEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/declarations/maxtrivequiv--c44ee96e9a174bdf614c4eb1.md) | 193 | `declaration-track:c44ee96e9a174bdf614c4eb15fbc0d6a357c40c5ce1bd0f3d826a3c8d010ccbc` |
| 22 | `theorem` | [coe_maxTrivEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/declarations/coe-maxtrivequiv-apply--7d62d923e8fc8999f439eaac.md) | 202 | `result-track:7d62d923e8fc8999f439eaaca7c1035c5b390a6730006347ea07891df3045006` |
| 23 | `theorem` | [maxTrivEquiv_of_refl_eq_refl](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/declarations/maxtrivequiv-of-refl-eq-refl--d616db02d2b0fe90f8b82122.md) | 208 | `result-track:d616db02d2b0fe90f8b82122bf5091f780f489c1d6e561174232c3a625a05f75` |
| 24 | `theorem` | [maxTrivEquiv_of_equiv_symm_eq_symm](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/declarations/maxtrivequiv-of-equiv-symm-eq-symm--745c4a830a5835e973efd72d.md) | 214 | `result-track:745c4a830a5835e973efd72d0f35094910efb0e40f0516f0a174000953dd3e68` |
| 25 | `def` | [maxTrivLinearMapEquivLieModuleHom](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/declarations/maxtrivlinearmapequivliemodulehom--2d42a38ca913a825b5cd14fc.md) | 221 | `declaration-track:2d42a38ca913a825b5cd14fc5ca2f8bcd756f33cf6a1cd0eaa059345ec8ff831` |
| 26 | `theorem` | [coe_maxTrivLinearMapEquivLieModuleHom](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/declarations/coe-maxtrivlinearmapequivliemodulehom--71d7e6b72e6044d0000768a0.md) | 235 | `result-track:71d7e6b72e6044d0000768a07ab8ff0fb28b456c6de455fe7f235cbce1749b55` |
| 27 | `theorem` | [coe_maxTrivLinearMapEquivLieModuleHom_symm](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/declarations/coe-maxtrivlinearmapequivliemodulehom-symm--9757e632a86bc0a7ebe77894.md) | 240 | `result-track:9757e632a86bc0a7ebe77894e2940ef5f6c4ee488cc31925d1158c70ffb84436` |
| 28 | `theorem` | [coe_linearMap_maxTrivLinearMapEquivLieModuleHom](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/declarations/coe-linearmap-maxtrivlinearmapequivliemodulehom--203210ee57572eab651407d9.md) | 246 | `result-track:203210ee57572eab651407d947299dce718fdf22f7cb84d5f681df228b143546` |
| 29 | `theorem` | [coe_linearMap_maxTrivLinearMapEquivLieModuleHom_symm](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/declarations/coe-linearmap-maxtrivlinearmapequivliemodulehom-symm--662ebec1a913dbc79009c1a8.md) | 251 | `result-track:662ebec1a913dbc79009c1a8c67c0b65b30c81bddc362fd8b1c9dcf11cc49de8` |
| 30 | `abbrev` | [center](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/declarations/center--195c7415e7ceb3362d118b11.md) | 263 | `declaration-track:195c7415e7ceb3362d118b1148de04b0b66b7c13250b84bff0e741d4c69ea990` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/declarations/instance--6c1c3858be0b181cd76d73df.md) | 267 | `declaration-track:6c1c3858be0b181cd76d73df1b61610ebb3821f1c060fa2c3339322707e8904d` |
| 32 | `theorem` | [ad_ker_eq_self_module_ker](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/declarations/ad-ker-eq-self-module-ker--c31fef44261ebb7679e2380e.md) | 271 | `result-track:c31fef44261ebb7679e2380ee70f66f0a2f1bb64303e9ccf461af9ff049fedc0` |
| 33 | `theorem` | [self_module_ker_eq_center](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/declarations/self-module-ker-eq-center--1d7d180f87a744ca3b88fdb8.md) | 276 | `result-track:1d7d180f87a744ca3b88fdb8a80e81fe384d4eb08d36d8f0ee7be806e53030c9` |
| 34 | `theorem` | [abelian_of_le_center](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/declarations/abelian-of-le-center--5c8e5517aa346245dd69ee75.md) | 281 | `result-track:5c8e5517aa346245dd69ee75e30ae750eb4bbd396f80d54ee1f59de34b9205cf` |
| 35 | `theorem` | [isLieAbelian_iff_center_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/declarations/islieabelian-iff-center-eq-top--9a30da994b72aa740c78e613.md) | 286 | `result-track:9a30da994b72aa740c78e613d69702ce4596903eb2179559fe8ba204aecff9f2` |
| 36 | `theorem` | [LieSubmodule.trivial_lie_oper_zero](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/declarations/liesubmodule-trivial-lie-oper-zero--c019ad93ec1bdb1235c572cb.md) | 307 | `result-track:c019ad93ec1bdb1235c572cbdfc712ca9c61f0e4f35d4832d0e3040e5f3644c7` |
| 37 | `theorem` | [LieSubmodule.lie_abelian_iff_lie_self_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant421fd6a86f7fa60d308a512c19edaf35dbdabbb6d0f90193d756d235f28a8992.lean/declarations/liesubmodule-lie-abelian-iff-lie-self-eq-bot--67104f23e2dc660df0687282.md) | 313 | `result-track:67104f23e2dc660df0687282d4557a68121273fcd1069235c9022379ed20701f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
