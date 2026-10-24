# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Field.Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf53f4f7e0af5eedaae6bb2c6a648deeda148025",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf53f4f7e0af5eedaae6bb2c6a648deeda148025`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.FieldDivision` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Lifts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Minpoly.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Algebraic.Integral` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [degree_le_of_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean/declarations/degree-le-of-ne-zero--65e347ebea0fc4e536764894.md) | 36 | `result-track:65e347ebea0fc4e53676489452ed1ec9ab1ca597f60f4fdb98e2cd3cacfbbac6` |
| 2 | `theorem` | [ne_zero_of_finite](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean/declarations/ne-zero-of-finite--4da46d41c41f24b11554af41.md) | 43 | `result-track:4da46d41c41f24b11554af41a7ce7b7e694cc4c2336a1e6a49a0fa96c1285e23` |
| 3 | `theorem` | [unique](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean/declarations/unique--31d18d581ee8434d79634bcb.md) | 50 | `result-track:31d18d581ee8434d79634bcb62ca7d3d4e821cc8ab829b954fa0189e3542e43d` |
| 4 | `theorem` | [dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean/declarations/dvd--2e5bde2460594ab17fbdb473.md) | 64 | `result-track:2e5bde2460594ab17fbdb4736ac97bd81b225f7a5a2d7c089bae4618b1ef34ec` |
| 5 | `lemma` | [dvd_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean/declarations/dvd-iff--08e43d0bfc8f92a0fc24619e.md) | 75 | `result-track:08e43d0bfc8f92a0fc24619ec9e63372f033d587df2b70e587693b311e34c3d4` |
| 6 | `theorem` | [isRadical](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean/declarations/isradical--08202b301ba9023159744cbb.md) | 78 | `result-track:08202b301ba9023159744cbbb42e74d938152e1a42c5b4d96efab37161393b8d` |
| 7 | `theorem` | [dvd_map_of_isScalarTower](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean/declarations/dvd-map-of-isscalartower--0fa2a1af309a2efc093f125e.md) | 81 | `result-track:0fa2a1af309a2efc093f125ee3abd397a4879a66df6ea81927802bc203745377` |
| 8 | `theorem` | [dvd_map_of_isScalarTower'](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean/declarations/dvd-map-of-isscalartower--f4c5eadb78f2a68844558783.md) | 87 | `result-track:f4c5eadb78f2a68844558783bd2bc97b4a24498af7032ddb8fea00bfed5d86e3` |
| 9 | `theorem` | [aeval_of_isScalarTower](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean/declarations/aeval-of-isscalartower--33c463d3a625bc3b69b87435.md) | 96 | `result-track:33c463d3a625bc3b69b87435b6cf612f1bdb9f19437141b1e791c808328b5b51` |
| 10 | `theorem` | [map_algebraMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean/declarations/map-algebramap--3a08dd0cb9b6db0c4eb4081b.md) | 106 | `result-track:3a08dd0cb9b6db0c4eb4081bc4ba6e047682da9ae5709771dd85639ce48cb0c4` |
| 11 | `lemma` | [ker_aeval_eq_span_minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean/declarations/ker-aeval-eq-span-minpoly--7b254af582a190590211a2fe.md) | 123 | `result-track:7b254af582a190590211a2fe98e2aaac849c612a75a73f778a0707adf8bb2b96` |
| 12 | `theorem` | [eq_of_irreducible_of_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean/declarations/eq-of-irreducible-of-monic--ca19462f673792c3896bd5c8.md) | 131 | `result-track:ca19462f673792c3896bd5c8199169b6851e058d62f98163f0389835d2665362` |
| 13 | `theorem` | [eq_iff_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean/declarations/eq-iff-aeval-eq-zero--dce12b69cd0f389bb0cb14b5.md) | 138 | `result-track:dce12b69cd0f389bb0cb14b5bb00e08b3cabcb8bffa763251b23d30a3ac5d110` |
| 14 | `theorem` | [eq_iff_aeval_minpoly_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean/declarations/eq-iff-aeval-minpoly-eq-zero--49c2fffefe278680be6ab710.md) | 142 | `result-track:49c2fffefe278680be6ab710dc70617449bddc49a13032dd51ae5dca9f71a485` |
| 15 | `theorem` | [eq_of_irreducible](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean/declarations/eq-of-irreducible--b8bb3f753ab48ad47804af9b.md) | 147 | `result-track:b8bb3f753ab48ad47804af9b6f075d5bb3b4149102a1b75dfd15276967e84e18` |
| 16 | `theorem` | [add_algebraMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean/declarations/add-algebramap--1c3c814b070e78cb7a948ff8.md) | 156 | `result-track:1c3c814b070e78cb7a948ff87d64738b535269636c15b3861aa21fe7cf2d6403` |
| 17 | `theorem` | [sub_algebraMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean/declarations/sub-algebramap--58c56799f6da77bca4b79913.md) | 173 | `result-track:58c56799f6da77bca4b79913c20c80cc74178592e9470a485aa9a5ca05afd558` |
| 18 | `theorem` | [neg](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean/declarations/neg--2b553f2235d70e953c88c324.md) | 177 | `result-track:2b553f2235d70e953c88c32457711922757920531eb5195ae3573200b2bad360` |
| 19 | `def` | [Fintype.subtypeProd](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean/declarations/fintype-subtypeprod--eb6e49e55adf11e8eaa84382.md) | 202 | `declaration-track:eb6e49e55adf11e8eaa843829654b78a42c85addeef3b1d9cf611c648f8503ed` |
| 20 | `def` | [rootsOfMinPolyPiType](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean/declarations/rootsofminpolypitype--964ffbbd4c22395c59587e44.md) | 210 | `declaration-track:964ffbbd4c22395c59587e44a0b9aad628ccbe68dbd7ec446dea07b236a67b1b` |
| 21 | `theorem` | [aux_inj_roots_of_min_poly](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean/declarations/aux-inj-roots-of-min-poly--8c880a1231d3ece3a679f25f.md) | 217 | `result-track:8c880a1231d3ece3a679f25f24ac4ee2f8bdc96af1e9550622cb68a5a96400c6` |
| 22 | `instance` | [AlgHom.fintype](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean/declarations/alghom-fintype--9705609a22d4377d205801ee.md) | 227 | `declaration-track:9705609a22d4377d205801eeeeae8395f094db5d35fe191f06b158d980ba0614` |
| 23 | `theorem` | [eq_X_sub_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean/declarations/eq-x-sub-c--94424f7491897b7137122dbe.md) | 239 | `result-track:94424f7491897b7137122dbead8321da1a06ed3481acb84d4b644fcfa844e692` |
| 24 | `theorem` | [eq_X_sub_C'](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean/declarations/eq-x-sub-c--aa90acb834a7e3a412c462a4.md) | 242 | `result-track:aa90acb834a7e3a412c462a4c88b60669326c7520563b46757aa3d14eecfc9a3` |
| 25 | `theorem` | [zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean/declarations/zero--b091c7af7bbea850d61393c8.md) | 249 | `result-track:b091c7af7bbea850d61393c843ae03dda41df559364be7b12bc3568ee0bd0125` |
| 26 | `theorem` | [one](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean/declarations/one--51d9a64fb2e32bb3251af6bf.md) | 254 | `result-track:51d9a64fb2e32bb3251af6bfa055fbd80b6d946a1c85a0c7430268d559cf84bd` |
| 27 | `theorem` | [prime](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean/declarations/prime--83cc587cc5a34b92dd932b79.md) | 265 | `result-track:83cc587cc5a34b92dd932b79ce18a3adb844c88bdc189ac883e3930930508ee6` |
| 28 | `theorem` | [root](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean/declarations/root--99b979817927b2577b02f653.md) | 274 | `result-track:99b979817927b2577b02f653307fc2f918f3de2be20ae648616320e45cd728be` |
| 29 | `theorem` | [coeff_zero_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean/declarations/coeff-zero-eq-zero--2247b299ca964487cc0fc44e.md) | 284 | `result-track:2247b299ca964487cc0fc44e2cb93c7b5599a81a684724d9f7afa9baef314d9e` |
| 30 | `theorem` | [coeff_zero_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean/declarations/coeff-zero-ne-zero--c60e0ec70d3477be2d43aa4b.md) | 294 | `result-track:c60e0ec70d3477be2d43aa4ba02357be6ca384aae8d4bfc63e291fa2f1fa00cd` |
| 31 | `lemma` | [minpoly_algEquiv_toLinearMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean/declarations/minpoly-algequiv-tolinearmap--8fa0badd84adf83aab177779.md) | 307 | `result-track:8fa0badd84adf83aab1777790a699fd9f8fe5b8451e10d5d3a58b11a65a20824` |
| 32 | `lemma` | [minpoly_algHom_toLinearMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variant350182b4392cee4ad4be4ad69fe501e2862305c69a4d6f5a1f24449eb2baa2ba.lean/declarations/minpoly-alghom-tolinearmap--1e5f516a78bc04659e99ebfd.md) | 324 | `result-track:1e5f516a78bc04659e99ebfd17cbe5e2ca4a452976bb6b9d1e55541b6c64281a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
