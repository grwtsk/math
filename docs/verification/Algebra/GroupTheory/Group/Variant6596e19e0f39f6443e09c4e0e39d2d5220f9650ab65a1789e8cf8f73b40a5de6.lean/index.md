# Verification target: GRWTSK.Algebra.GroupTheory.Group.Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb2c91f52f43205912d3c4f1a25a28ea666f098b",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb2c91f52f43205912d3c4f1a25a28ea666f098b`.

Source path: `GRWTSK/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.TypeTags` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Equiv.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Ring` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Units` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsAddHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/isaddhom--0e62114ec7f663d6bc38f0b6.md) | 41 | `declaration-track:0e62114ec7f663d6bc38f0b6520bda9be3844e6e5a2d3fdff3bbc91eec3f1247` |
| 2 | `structure` | [IsMulHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/ismulhom--fb7b21db4a0596b2f495ce66.md) | 48 | `declaration-track:fb7b21db4a0596b2f495ce66d8c358cb8931bc0f5a25e6ff2de22f94dadcec0b` |
| 3 | `theorem` | [id](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/id--9a0df380ad62fad1e905ae73.md) | 59 | `result-track:9a0df380ad62fad1e905ae73d4b4473ed15b5a6990a28912a899bffed5caf0f6` |
| 4 | `theorem` | [comp](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/comp--bebb22abaa2e3f79fa63cfba.md) | 66 | `result-track:bebb22abaa2e3f79fa63cfba871bb507e4f7d8a4575a22535789db7b6e0b6c36` |
| 5 | `theorem` | [mul](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/mul--1a3f77cfe7156d7d89f2fceb.md) | 76 | `result-track:1a3f77cfe7156d7d89f2fceb6cc5cd64ddb4bb3f6e419331ed4fa11406256441` |
| 6 | `theorem` | [inv](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/inv--5fad104b1e748e6676761456.md) | 88 | `result-track:5fad104b1e748e6676761456b4fd34267f96cef92c81d1361dfb7cfb6e164f65` |
| 7 | `structure` | [IsAddMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/isaddmonoidhom--8292bb6424ce23728e671f05.md) | 97 | `declaration-track:8292bb6424ce23728e671f051bdf904f88d6ed8bf72e48b2365585d52081a45a` |
| 8 | `structure` | [IsMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/ismonoidhom--f84b80457d5b72b84bca50bc.md) | 105 | `declaration-track:f84b80457d5b72b84bca50bc34198552d563c1a4e461d5b76ce092b279d0c98c` |
| 9 | `def` | [of](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/of--d6bd800a8e9e069fb30035d7.md) | 116 | `declaration-track:d6bd800a8e9e069fb30035d7bc8445e7ad0ba5eae0c6b6d3baeeda89e7923d47` |
| 10 | `theorem` | [coe_of](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/coe-of--bb450c300e0d1e81146956ec.md) | 125 | `result-track:bb450c300e0d1e81146956ec8434e4cbbc0afd351617ec5cbd555c3d60d896f0` |
| 11 | `theorem` | [isMonoidHom_coe](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/ismonoidhom-coe--9c9fa249d21d0fa3b9388935.md) | 131 | `result-track:9c9fa249d21d0fa3b93889359d686756978fe855eed7ea10ca8eae6edd229dfc` |
| 12 | `theorem` | [isMulHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/ismulhom--e6bb80d7f8eb072a92567b9a.md) | 145 | `result-track:e6bb80d7f8eb072a92567b9a39c14ea302dbc99e0f80aed61cfef52fd7dabb9a` |
| 13 | `theorem` | [isMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/ismonoidhom--dba1a4c369d4c72c2cc27416.md) | 155 | `result-track:dba1a4c369d4c72c2cc2741646846f2624d6a64bdd89d36e755f014430bd419d` |
| 14 | `theorem` | [map_mul'](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/map-mul--deac191cea6780274adfa848.md) | 169 | `result-track:deac191cea6780274adfa848c6ffd88089f6ddfcf4f40f4c92f77b7137e4c159` |
| 15 | `theorem` | [inv](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/inv--48cfe0b2dcc7ccbce047be77.md) | 179 | `result-track:48cfe0b2dcc7ccbce047be77a9b2767c625a7e377987bab8d6b0caf202cbdd9c` |
| 16 | `theorem` | [IsMulHom.to_isMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/ismulhom-to-ismonoidhom--36ebb6cf2954c4099570046a.md) | 191 | `result-track:36ebb6cf2954c4099570046aabf927acec4c72c57e2aa7074188f3af794b90ae` |
| 17 | `theorem` | [id](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/id--99c5f2ffea543d5b846207e6.md) | 204 | `result-track:99c5f2ffea543d5b846207e68a7f89390372897c20293f3ad918656d40a55a78` |
| 18 | `theorem` | [comp](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/comp--adeddc877ef594ad8b5ae2c6.md) | 214 | `result-track:adeddc877ef594ad8b5ae2c6fdfb1209cff22a4ba4bfd6af90c127db7155a770` |
| 19 | `theorem` | [isAddMonoidHom_mul_left](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/isaddmonoidhom-mul-left--5faccc9fc80647264828fc86.md) | 226 | `result-track:5faccc9fc80647264828fc869d28193c9c5c3371bdb27bcb7c0c21ba6eaefd1f` |
| 20 | `theorem` | [isAddMonoidHom_mul_right](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/isaddmonoidhom-mul-right--50f0e16f1d6a908e4c442f53.md) | 233 | `result-track:50f0e16f1d6a908e4c442f53f349627fb68f484c1b694c6e553fad98ec98a4a5` |
| 21 | `structure` | [IsAddGroupHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/isaddgrouphom--d6d7b93e354013dbed76d4ad.md) | 242 | `declaration-track:d6d7b93e354013dbed76d4ad1df09bc1923854e870653763a40cb0fc2672e2ee` |
| 22 | `structure` | [IsGroupHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/isgrouphom--ffd13fe5dedbb6f1ae37bf48.md) | 247 | `declaration-track:ffd13fe5dedbb6f1ae37bf48b80e9c6a82ddfcb13fab00dbc4e179741e9dfa0e` |
| 23 | `theorem` | [MonoidHom.isGroupHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/monoidhom-isgrouphom--936b0571fb65370d8f89f3e2.md) | 251 | `result-track:936b0571fb65370d8f89f3e227af742e84f63cec752ab5fc8700896b30fe4546` |
| 24 | `theorem` | [MulEquiv.isGroupHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/mulequiv-isgrouphom--f61617a13f24bfbcd219a2a9.md) | 258 | `result-track:f61617a13f24bfbcd219a2a98849282066b87e866a987c80dc4f35bd445a6f1d` |
| 25 | `theorem` | [IsGroupHom.mk'](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/isgrouphom-mk--82b2e40cbbf1f5a103747f9b.md) | 266 | `result-track:82b2e40cbbf1f5a103747f9baa7ef7d4b1df69a74759b8ef99debe08ef93a2cd` |
| 26 | `theorem` | [map_mul'](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/map-mul--4272f71ffafd47b801672f0c.md) | 278 | `result-track:4272f71ffafd47b801672f0c6b5a99451eba5c50eade1290dab532b5cd25c01b` |
| 27 | `theorem` | [to_isMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/to-ismonoidhom--e4c2352e570e12cc3d5ca32a.md) | 284 | `result-track:e4c2352e570e12cc3d5ca32afdf032916d667f4a9725552b00a25ef2dbd986a9` |
| 28 | `theorem` | [map_one](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/map-one--057a57d9c45217278b4c8fcb.md) | 291 | `result-track:057a57d9c45217278b4c8fcbb0576a7fd43aee0f77cf2a22f01c22e8be380bb8` |
| 29 | `theorem` | [map_inv](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/map-inv--a04849b3e40212601d54e7d8.md) | 298 | `result-track:a04849b3e40212601d54e7d8c44a7e71c08406e4e7b094008dbeeaf416ac8aea` |
| 30 | `theorem` | [map_div](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/map-div--6a6713027d4d573fc2e94991.md) | 304 | `result-track:6a6713027d4d573fc2e949915f8a4960836e17a9a568184b01e1842142fb8e52` |
| 31 | `theorem` | [id](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/id--6235d2d32211c1b264a0208b.md) | 311 | `result-track:6235d2d32211c1b264a0208babd4d0ecc807a8419ace7217173dcd745bd5a53c` |
| 32 | `theorem` | [comp](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/comp--1820d535ca4f31589c77d6b1.md) | 320 | `result-track:1820d535ca4f31589c77d6b1e022ab605cc9820a74e8c786503cf23d20d60497` |
| 33 | `theorem` | [injective_iff](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/injective-iff--0644264ff6437be300c17193.md) | 328 | `result-track:0644264ff6437be300c1719359eefd207f453de47ccdf406bd184f4c8259d372` |
| 34 | `theorem` | [mul](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/mul--1187bfd7ed20eebd0ac13163.md) | 339 | `result-track:1187bfd7ed20eebd0ac13163c7fba75a62716acc9b877ad8154e80054607dee1` |
| 35 | `theorem` | [inv](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/inv--5df4aeb17efc17045b40cbc4.md) | 349 | `result-track:5df4aeb17efc17045b40cbc4b7f5d7b79eb8472f91b562b8e6c044d75ac93ca0` |
| 36 | `theorem` | [to_isMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/to-ismonoidhom--0f2c01be0cbebd667576a42e.md) | 371 | `result-track:0f2c01be0cbebd667576a42e49e4c5c634d6581fff83cd325df2d3fb99cf6ae7` |
| 37 | `theorem` | [to_isAddMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/to-isaddmonoidhom--1ac08b0120d3f2ebacc5c23b.md) | 376 | `result-track:1ac08b0120d3f2ebacc5c23b2b7a92e8cc38131f84533a8f5c610b010b632e65` |
| 38 | `theorem` | [to_isAddGroupHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/to-isaddgrouphom--2bb59f4378ea91508cd3dd8d.md) | 387 | `result-track:2bb59f4378ea91508cd3dd8de69594fa1d5acd98f15e021d69f6c07d2dfb2764` |
| 39 | `theorem` | [Inv.isGroupHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/inv-isgrouphom--ed4e0dc01c661d43ac10d01e.md) | 398 | `result-track:ed4e0dc01c661d43ac10d01e9547f1fb7194280bf948099ef568fe4c8a1bc901` |
| 40 | `theorem` | [IsAddGroupHom.sub](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/isaddgrouphom-sub--261deeb599063ec86de1f37a.md) | 405 | `result-track:261deeb599063ec86de1f37a6b78bf223f5675520cde53e554ddb95c61a9429e` |
| 41 | `def` | [map'](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/map--2e81dfc7a16aa8b973e8b7a4.md) | 416 | `declaration-track:2e81dfc7a16aa8b973e8b7a41551f4e5bea04af89d6400c250814fd3a61d9a33` |
| 42 | `theorem` | [coe_map'](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/coe-map--18af08bdf173ddc6e3104a79.md) | 421 | `result-track:18af08bdf173ddc6e3104a79487472b355efed9a82eefc01132f33ff13cba089` |
| 43 | `theorem` | [coe_isMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/coe-ismonoidhom--2b93772143ab4d140a4fc069.md) | 425 | `result-track:2b93772143ab4d140a4fc0693c302cd4c1a67a2abe47efb022c43d562c9f4a79` |
| 44 | `theorem` | [map'](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/map--c569cdea8e96694cce6badc4.md) | 435 | `result-track:c569cdea8e96694cce6badc48675e248ea8360062236e7ae738aae56ea56651e` |
| 45 | `theorem` | [Additive.isAddHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/additive-isaddhom--1b17041c4ac1f57f80fc9f1b.md) | 441 | `result-track:1b17041c4ac1f57f80fc9f1b71b77a4662251095529800e24cfb1d7a53b90ccb` |
| 46 | `theorem` | [Multiplicative.isMulHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/multiplicative-ismulhom--b3dd99db720cfa28fd85f91f.md) | 446 | `result-track:b3dd99db720cfa28fd85f91f3e1d279f2c8b352528d4cc6e44dc87c43de3291a` |
| 47 | `theorem` | [Additive.isAddMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/additive-isaddmonoidhom--4ff2fe6fa36094f51f71df42.md) | 452 | `result-track:4ff2fe6fa36094f51f71df42bf4ebdfdd4691851488eb5541d265ca96924a59d` |
| 48 | `theorem` | [Multiplicative.isMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/multiplicative-ismonoidhom--d0475b89f13ad49fc39b5bbd.md) | 457 | `result-track:d0475b89f13ad49fc39b5bbdd1385da38c94cd3cad76e6d9535af331c5575e15` |
| 49 | `theorem` | [Additive.isAddGroupHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/additive-isaddgrouphom--7abf20618ca3f0ed8551dadb.md) | 462 | `result-track:7abf20618ca3f0ed8551dadbd12d6e2a76cc697c215bbef37f5dfbfbab704edf` |
| 50 | `theorem` | [Multiplicative.isGroupHom](../../../../../mathematics/Algebra/GroupTheory/Group/Variant6596e19e0f39f6443e09c4e0e39d2d5220f9650ab65a1789e8cf8f73b40a5de6.lean/declarations/multiplicative-isgrouphom--02d3a7a584ebe9a8ee96faf7.md) | 467 | `result-track:02d3a7a584ebe9a8ee96faf7fa1252c0902bdc830299f2ea489d98556c9d8ced` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
