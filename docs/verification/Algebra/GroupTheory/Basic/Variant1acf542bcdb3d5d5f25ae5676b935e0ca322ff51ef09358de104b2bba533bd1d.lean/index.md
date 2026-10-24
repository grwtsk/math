# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant1acf542bcdb3d5d5f25ae5676b935e0ca322ff51ef09358de104b2bba533bd1d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "412e212661189e23c14db6018358f50a31e99681",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant1acf542bcdb3d5d5f25ae5676b935e0ca322ff51ef09358de104b2bba533bd1d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1acf542bcdb3d5d5f25ae5676b935e0ca322ff51ef09358de104b2bba533bd1d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1acf542bcdb3d5d5f25ae5676b935e0ca322ff51ef09358de104b2bba533bd1d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `412e212661189e23c14db6018358f50a31e99681`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant1acf542bcdb3d5d5f25ae5676b935e0ca322ff51ef09358de104b2bba533bd1d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant1acf542bcdb3d5d5f25ae5676b935e0ca322ff51ef09358de104b2bba533bd1d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Unbundled.ExistsOfLE` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Canonical.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Sub.Unbundled.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Equiv.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Even` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [add_tsub_cancel_iff_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1acf542bcdb3d5d5f25ae5676b935e0ca322ff51ef09358de104b2bba533bd1d.lean/declarations/add-tsub-cancel-iff-le--40946491eb5c70b9355e8ab0.md) | 22 | `result-track:40946491eb5c70b9355e8ab0156c6fc389263be11b4470b8243e1dcafaafa9fd` |
| 2 | `theorem` | [tsub_add_cancel_iff_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1acf542bcdb3d5d5f25ae5676b935e0ca322ff51ef09358de104b2bba533bd1d.lean/declarations/tsub-add-cancel-iff-le--fd63456291d1cceff3fb3b32.md) | 25 | `result-track:fd63456291d1cceff3fb3b3295382c958c7429f077e796b182d1b1c1fe22a65d` |
| 3 | `theorem` | [tsub_eq_zero_iff_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1acf542bcdb3d5d5f25ae5676b935e0ca322ff51ef09358de104b2bba533bd1d.lean/declarations/tsub-eq-zero-iff-le--108467d6695cd6118c8d849d.md) | 31 | `result-track:108467d6695cd6118c8d849d2cf8f5c09336e2d5a128e7a9d735b5193bc4a711` |
| 4 | `theorem` | [tsub_self](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1acf542bcdb3d5d5f25ae5676b935e0ca322ff51ef09358de104b2bba533bd1d.lean/declarations/tsub-self--55c1ddbbff778795465f98d8.md) | 37 | `result-track:55c1ddbbff778795465f98d888a1a71d419e7ecda41edc13dcd3a1c6969e08fe` |
| 5 | `theorem` | [tsub_le_self](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1acf542bcdb3d5d5f25ae5676b935e0ca322ff51ef09358de104b2bba533bd1d.lean/declarations/tsub-le-self--b38c56d9f80f3f81ce79b9fb.md) | 40 | `result-track:b38c56d9f80f3f81ce79b9fbcabffebf8c7b159faadb8ae34f1162e85329d8dd` |
| 6 | `theorem` | [zero_tsub](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1acf542bcdb3d5d5f25ae5676b935e0ca322ff51ef09358de104b2bba533bd1d.lean/declarations/zero-tsub--8bfb7024fd413d8e44b4d600.md) | 44 | `result-track:8bfb7024fd413d8e44b4d600adfb205a3a02cf7a517c42edf1664d3b6c9b45e5` |
| 7 | `theorem` | [tsub_self_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1acf542bcdb3d5d5f25ae5676b935e0ca322ff51ef09358de104b2bba533bd1d.lean/declarations/tsub-self-add--0f1d773fd03ef9bee94189ee.md) | 47 | `result-track:0f1d773fd03ef9bee94189ee2e7481f47168dff73e04437023ad22b721942761` |
| 8 | `theorem` | [tsub_pos_iff_not_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1acf542bcdb3d5d5f25ae5676b935e0ca322ff51ef09358de104b2bba533bd1d.lean/declarations/tsub-pos-iff-not-le--d16f32d58ae804deb69b097b.md) | 50 | `result-track:d16f32d58ae804deb69b097b733bc83827acb6d7cebae88aad8848b7baae7eae` |
| 9 | `theorem` | [tsub_pos_of_lt](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1acf542bcdb3d5d5f25ae5676b935e0ca322ff51ef09358de104b2bba533bd1d.lean/declarations/tsub-pos-of-lt--1c42bedb6fec0316ef52ee2e.md) | 53 | `result-track:1c42bedb6fec0316ef52ee2e2e59acdfacc26d8e49e4aff7fc9290df857b0738` |
| 10 | `theorem` | [tsub_lt_of_lt](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1acf542bcdb3d5d5f25ae5676b935e0ca322ff51ef09358de104b2bba533bd1d.lean/declarations/tsub-lt-of-lt--e12e646b2214e90133df328a.md) | 56 | `result-track:e12e646b2214e90133df328a5637b56a7c35abc99d7ec5ec41100ed3f2a2d152` |
| 11 | `theorem` | [tsub_le_tsub_iff_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1acf542bcdb3d5d5f25ae5676b935e0ca322ff51ef09358de104b2bba533bd1d.lean/declarations/tsub-le-tsub-iff-left--2397c04c7a880dfd68ef7f67.md) | 61 | `result-track:2397c04c7a880dfd68ef7f67bda697a35a6c16ec00441b84d4fb8ce8c862a3b4` |
| 12 | `theorem` | [tsub_right_inj](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1acf542bcdb3d5d5f25ae5676b935e0ca322ff51ef09358de104b2bba533bd1d.lean/declarations/tsub-right-inj--c9dfcc8a88705a3a0d46395c.md) | 68 | `result-track:c9dfcc8a88705a3a0d46395cde2f3ed90ced1e5546ce1f4bd07c555f6b429c5b` |
| 13 | `theorem` | [tsub_le_tsub_iff_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1acf542bcdb3d5d5f25ae5676b935e0ca322ff51ef09358de104b2bba533bd1d.lean/declarations/tsub-le-tsub-iff-left--2625b0b47d2215f15939a769.md) | 82 | `result-track:2625b0b47d2215f15939a7691752879f70210cd3a3087441263635d17a87e146` |
| 14 | `theorem` | [tsub_right_inj](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1acf542bcdb3d5d5f25ae5676b935e0ca322ff51ef09358de104b2bba533bd1d.lean/declarations/tsub-right-inj--de690845b002891326b1dcb1.md) | 85 | `result-track:de690845b002891326b1dcb167003992227bf0e225b7827c263dd2c5dc7d8b05` |
| 15 | `abbrev` | [CanonicallyOrderedAddCommMonoid.toAddCancelCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1acf542bcdb3d5d5f25ae5676b935e0ca322ff51ef09358de104b2bba533bd1d.lean/declarations/canonicallyorderedaddcommmonoid-toaddcancelcommmonoid--36d32b3960fef076bce4722f.md) | 95 | `declaration-track:36d32b3960fef076bce4722fec8ed0109bdebf7df94231279ed4955ce5460f4c` |
| 16 | `theorem` | [tsub_pos_iff_lt](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1acf542bcdb3d5d5f25ae5676b935e0ca322ff51ef09358de104b2bba533bd1d.lean/declarations/tsub-pos-iff-lt--6be171d075feb38c64e09654.md) | 113 | `result-track:6be171d075feb38c64e096544b630f4d73264fa62169b333565d89296ef49132` |
| 17 | `theorem` | [tsub_eq_tsub_min](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1acf542bcdb3d5d5f25ae5676b935e0ca322ff51ef09358de104b2bba533bd1d.lean/declarations/tsub-eq-tsub-min--3c026b9516958e0f7bb07ff4.md) | 115 | `result-track:3c026b9516958e0f7bb07ff43b882c426640e7537fd0c7019ba736fb723df481` |
| 18 | `theorem` | [lt_tsub_iff_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1acf542bcdb3d5d5f25ae5676b935e0ca322ff51ef09358de104b2bba533bd1d.lean/declarations/lt-tsub-iff-right--f8825f40fd773280bf23ac30.md) | 123 | `result-track:f8825f40fd773280bf23ac30d0107fc68f590467c14481b2e009049cca65ab14` |
| 19 | `theorem` | [lt_tsub_iff_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1acf542bcdb3d5d5f25ae5676b935e0ca322ff51ef09358de104b2bba533bd1d.lean/declarations/lt-tsub-iff-left--8f38c309fc675421eaa0f8e5.md) | 127 | `result-track:8f38c309fc675421eaa0f8e5fac094a89aa0f739efe6338eeda3b953a379aff6` |
| 20 | `theorem` | [tsub_lt_tsub_iff_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1acf542bcdb3d5d5f25ae5676b935e0ca322ff51ef09358de104b2bba533bd1d.lean/declarations/tsub-lt-tsub-iff-right--44aa696c4f5c3b91881d9ac6.md) | 130 | `result-track:44aa696c4f5c3b91881d9ac60c58f6d1e551f3c041c9262e778f9c12362c5199` |
| 21 | `theorem` | [tsub_lt_self](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1acf542bcdb3d5d5f25ae5676b935e0ca322ff51ef09358de104b2bba533bd1d.lean/declarations/tsub-lt-self--bef90dc96f0ef91d536cc239.md) | 133 | `result-track:bef90dc96f0ef91d536cc23943401cff4882c04808ec8835c218072ec3f3a8ba` |
| 22 | `theorem` | [tsub_lt_self_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1acf542bcdb3d5d5f25ae5676b935e0ca322ff51ef09358de104b2bba533bd1d.lean/declarations/tsub-lt-self-iff--6fef8a60e94a1238cec89fd4.md) | 138 | `result-track:6fef8a60e94a1238cec89fd48c2d29e5eccc6269c568e1bdbdab8a5c3d1a67e0` |
| 23 | `theorem` | [tsub_lt_tsub_iff_left_of_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1acf542bcdb3d5d5f25ae5676b935e0ca322ff51ef09358de104b2bba533bd1d.lean/declarations/tsub-lt-tsub-iff-left-of-le--b2deb9a588ac0832738f2ee4.md) | 146 | `result-track:b2deb9a588ac0832738f2ee4c8dc1f2aeef02ba98e568975f6a5c9707b1db6a7` |
| 24 | `theorem` | [tsub_lt_tsub_iff_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1acf542bcdb3d5d5f25ae5676b935e0ca322ff51ef09358de104b2bba533bd1d.lean/declarations/tsub-lt-tsub-iff-right--708194cfe204060c50a9a86a.md) | 157 | `result-track:708194cfe204060c50a9a86a3a0965dc6b6d82d40acb4b0e3bdc2539515a7627` |
| 25 | `theorem` | [tsub_lt_self](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1acf542bcdb3d5d5f25ae5676b935e0ca322ff51ef09358de104b2bba533bd1d.lean/declarations/tsub-lt-self--4c1d72e2035cde29fb23a312.md) | 160 | `result-track:4c1d72e2035cde29fb23a3129efec226a4f48fa8a137492057b7a84cdd001950` |
| 26 | `theorem` | [tsub_lt_self_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1acf542bcdb3d5d5f25ae5676b935e0ca322ff51ef09358de104b2bba533bd1d.lean/declarations/tsub-lt-self-iff--49f8680c309835c70cde46bc.md) | 163 | `result-track:49f8680c309835c70cde46bc6565418307c979b4d0ac787509a98736d451210d` |
| 27 | `theorem` | [tsub_lt_tsub_iff_left_of_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1acf542bcdb3d5d5f25ae5676b935e0ca322ff51ef09358de104b2bba533bd1d.lean/declarations/tsub-lt-tsub-iff-left-of-le--22675cceddd330d7314926c1.md) | 167 | `result-track:22675cceddd330d7314926c10069f654bcfd9431480b1310d16f790932461376` |
| 28 | `lemma` | [tsub_tsub_eq_min](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1acf542bcdb3d5d5f25ae5676b935e0ca322ff51ef09358de104b2bba533bd1d.lean/declarations/tsub-tsub-eq-min--ac71e2bf3ac29992cdc2d755.md) | 170 | `result-track:ac71e2bf3ac29992cdc2d7550d6caf3deb9481a35c5d9a976f882c85e8634d50` |
| 29 | `theorem` | [tsub_add_eq_max](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1acf542bcdb3d5d5f25ae5676b935e0ca322ff51ef09358de104b2bba533bd1d.lean/declarations/tsub-add-eq-max--47fa6714d7934a48c1a00aad.md) | 178 | `result-track:47fa6714d7934a48c1a00aad95de962805a1140b186fb536f310274bfc0e9adf` |
| 30 | `theorem` | [add_tsub_eq_max](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1acf542bcdb3d5d5f25ae5676b935e0ca322ff51ef09358de104b2bba533bd1d.lean/declarations/add-tsub-eq-max--6fd5332d609949d884bb9138.md) | 183 | `result-track:6fd5332d609949d884bb9138207a7238a610efa3c39e748a05acbe01e7c7ed55` |
| 31 | `theorem` | [tsub_min](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1acf542bcdb3d5d5f25ae5676b935e0ca322ff51ef09358de104b2bba533bd1d.lean/declarations/tsub-min--7ef317cc3e74d329777f1c40.md) | 185 | `result-track:7ef317cc3e74d329777f1c4037638998ba5f1b2886cc6589945e81d5b41fba23` |
| 32 | `theorem` | [tsub_add_min](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1acf542bcdb3d5d5f25ae5676b935e0ca322ff51ef09358de104b2bba533bd1d.lean/declarations/tsub-add-min--4342431cb1389189c702eb93.md) | 190 | `result-track:4342431cb1389189c702eb93fe3f41903f2e2526b55bfc5bfc00a4df7e4a485b` |
| 33 | `lemma` | [Even.tsub](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant1acf542bcdb3d5d5f25ae5676b935e0ca322ff51ef09358de104b2bba533bd1d.lean/declarations/even-tsub--1e6c530cd9fe7f069f0f448a.md) | 195 | `result-track:1e6c530cd9fe7f069f0f448acd82f383582262e12a3e9b2c13979055437bfcc4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
