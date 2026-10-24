# Verification target: GRWTSK.Algebra.UniversalAlgebra.Defs.Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca92c5ad2d4da7ce553a6ff8ae1980dbfa07b8c9",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca92c5ad2d4da7ce553a6ff8ae1980dbfa07b8c9`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CovariantAndContravariant` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Lattice` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [OrderedSub](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/orderedsub--c1c2761938e2a63a765313c8.md) | 63 | `declaration-track:c1c2761938e2a63a765313c80cf554e95078392786dd5229a94861b57c4f17dc` |
| 2 | `theorem` | [tsub_le_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/tsub-le-iff-right--9e42abc33b1c18b8b71cee06.md) | 73 | `result-track:9e42abc33b1c18b8b71cee068686a9a642016c75ae57a420253307983c6812e7` |
| 3 | `theorem` | [add_tsub_le_right](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/add-tsub-le-right--311bc299c6f31431d8fca09c.md) | 78 | `result-track:311bc299c6f31431d8fca09ccd980d93505911b8eb085588a130df1294b49f66` |
| 4 | `theorem` | [le_tsub_add](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/le-tsub-add--57e961373ee30de184e5261a.md) | 82 | `result-track:57e961373ee30de184e5261a75808fb8f483d92b6380da4d50fe6b7049d4ee22` |
| 5 | `theorem` | [tsub_le_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/tsub-le-iff-left--af826b70705fe8bb3d73f6f2.md) | 101 | `result-track:af826b70705fe8bb3d73f6f2f6da49642d8e6d85e73d6376b58ac2a38e410a53` |
| 6 | `theorem` | [le_add_tsub](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/le-add-tsub--533ba5d162a70505240d7649.md) | 104 | `result-track:533ba5d162a70505240d764922e6179c8c17b1c247a780da212f5cda30b0ddd0` |
| 7 | `theorem` | [add_tsub_le_left](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/add-tsub-le-left--c64bdde744087bbb0b823ab4.md) | 109 | `result-track:c64bdde744087bbb0b823ab42c17f0edd23052669d665c5cc4d3c1c5374c1910` |
| 8 | `theorem` | [tsub_le_tsub_right](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/tsub-le-tsub-right--417ef49241b4dab233e06270.md) | 113 | `result-track:417ef49241b4dab233e062704621732567d66b43558c28fca3cb4d074d811ca0` |
| 9 | `theorem` | [tsub_le_iff_tsub_le](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/tsub-le-iff-tsub-le--74de4becfcfe961c8291e0fa.md) | 117 | `result-track:74de4becfcfe961c8291e0fa2561f93422a7542e5fbaa410bfa25129ef71acef` |
| 10 | `theorem` | [tsub_tsub_le](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/tsub-tsub-le--93f38b4c093e0d6a8024f17b.md) | 121 | `result-track:93f38b4c093e0d6a8024f17ba9b3d4a84e8634eaef294edc942e7656e292ff32` |
| 11 | `theorem` | [tsub_le_tsub_left](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/tsub-le-tsub-left--5030176683205ce78891622f.md) | 129 | `result-track:5030176683205ce78891622f086735109355cc008131cb72ec7528997a38339c` |
| 12 | `theorem` | [tsub_le_tsub](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/tsub-le-tsub--7ee4cbaf417f0211d854a934.md) | 133 | `result-track:7ee4cbaf417f0211d854a9343bd08d6893cf6c18f28bebd78a44a1848f7f3309` |
| 13 | `theorem` | [antitone_const_tsub](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/antitone-const-tsub--b77c363076bb1c6a6e4a4dda.md) | 137 | `result-track:b77c363076bb1c6a6e4a4dda1451d4d2a13af54f0c2a0358cfc4b5af5e3dae7f` |
| 14 | `theorem` | [add_tsub_le_assoc](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/add-tsub-le-assoc--217a9c1578e8d469dddd98df.md) | 141 | `result-track:217a9c1578e8d469dddd98dfbcb823ad14d7a29a13b56b2ebd1b817ae357422f` |
| 15 | `theorem` | [add_tsub_le_tsub_add](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/add-tsub-le-tsub-add--9929255a6224ea71f5879ac5.md) | 147 | `result-track:9929255a6224ea71f5879ac5543742863e40958855d78a7e9b71cbb1d6f1bd21` |
| 16 | `theorem` | [add_le_add_add_tsub](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/add-le-add-add-tsub--3306ee77d8c6d5c2d7f60e28.md) | 152 | `result-track:3306ee77d8c6d5c2d7f60e282bda932aaf11bfc4a703c2805aefa19e1afbded9` |
| 17 | `theorem` | [le_tsub_add_add](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/le-tsub-add-add--35dea0ada01d05325b16600b.md) | 157 | `result-track:35dea0ada01d05325b16600b7909794ed4c464f07b4232e006e39fbcb6473acf` |
| 18 | `theorem` | [tsub_le_tsub_add_tsub](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/tsub-le-tsub-add-tsub--8f7fdb3ef0597ac8fa485737.md) | 162 | `result-track:8f7fdb3ef0597ac8fa48573708f6096ca43178f5baf31c1042c7041b37801dd3` |
| 19 | `theorem` | [tsub_tsub_tsub_le_tsub](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/tsub-tsub-tsub-le-tsub--bb83fcfca79a94aa16979761.md) | 167 | `result-track:bb83fcfca79a94aa1697976125d86822525a9eb1bf1902555a0325382883133a` |
| 20 | `theorem` | [tsub_tsub_le_tsub_add](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/tsub-tsub-le-tsub-add--274d8b413a3f421442edc8ad.md) | 172 | `result-track:274d8b413a3f421442edc8ada4a38dd9d090677f3423a41ef74b4acba5cd7307` |
| 21 | `theorem` | [add_tsub_add_le_tsub_add_tsub](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/add-tsub-add-le-tsub-add-tsub--f1d028c66b439f9e1f59c6e8.md) | 181 | `result-track:f1d028c66b439f9e1f59c6e8e7a16f0ead256e66a15ed0e46df0547348dc6550` |
| 22 | `theorem` | [add_tsub_add_le_tsub_left](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/add-tsub-add-le-tsub-left--4ac4553ea05a7a298264bf1b.md) | 189 | `result-track:4ac4553ea05a7a298264bf1be9410ca7843087991df7a8257537951f2ed92dae` |
| 23 | `theorem` | [add_tsub_add_le_tsub_right](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/add-tsub-add-le-tsub-right--8046090413da37262c728a10.md) | 195 | `result-track:8046090413da37262c728a10db5aac4466c4eb65aa16a2c001af43bfac12a046` |
| 24 | `theorem` | [le_add_tsub_swap](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/le-add-tsub-swap--84925c556b3f97ee8a0946d2.md) | 207 | `result-track:84925c556b3f97ee8a0946d2ae9fbad840335f36511a6085db7911e049bc96ef` |
| 25 | `theorem` | [le_add_tsub](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/le-add-tsub--49dd6f9d7af8f1c41f452a12.md) | 211 | `result-track:49dd6f9d7af8f1c41f452a12fa612a03718a3ff50fcf9e7c2c0d021019e6f8cf` |
| 26 | `theorem` | [le_tsub_of_add_le_left](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/le-tsub-of-add-le-left--fe227bed0c233c43955d22e7.md) | 216 | `result-track:fe227bed0c233c43955d22e77531130f59de922364c8bdd6c45939c40f18407f` |
| 27 | `theorem` | [le_tsub_of_add_le_right](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/le-tsub-of-add-le-right--f9f793d3d71f461d04dd3555.md) | 220 | `result-track:f9f793d3d71f461d04dd35550224eb5ed84238874b8009fcc07c4986430f8d98` |
| 28 | `theorem` | [le_add_tsub_swap](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/le-add-tsub-swap--465d9b22003c1e1b4ddbd29b.md) | 233 | `result-track:465d9b22003c1e1b4ddbd29b03dd3b00161e5057aaa23f61159845dae6b3b5e9` |
| 29 | `theorem` | [le_add_tsub'](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/le-add-tsub--8dfd66fe58aa136fdc54bd4a.md) | 237 | `result-track:8dfd66fe58aa136fdc54bd4a75bac7c6205553dbdff5652bac4864bfdf4ae027` |
| 30 | `theorem` | [le_tsub_of_add_le_left](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/le-tsub-of-add-le-left--04adf57fc59b5f91eb68648e.md) | 241 | `result-track:04adf57fc59b5f91eb68648e2870dcbbbbb2a926149275fb487b7fd4728e5112` |
| 31 | `theorem` | [le_tsub_of_add_le_right](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/le-tsub-of-add-le-right--d50f665959feb50f908d32d0.md) | 245 | `result-track:d50f665959feb50f908d32d0158b289b962190a519a1bd61c2f69d89ee72c218` |
| 32 | `theorem` | [tsub_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/tsub-nonpos--1aa0fa204bb0af908a25dbb4.md) | 255 | `result-track:1aa0fa204bb0af908a25dbb449dc4daa9fbff1f638e60e49f4ec8f79b9ca2ae9` |
| 33 | `theorem` | [tsub_tsub](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/tsub-tsub--64a6e911bc8ce99ffc276be0.md) | 268 | `result-track:64a6e911bc8ce99ffc276be07cccb9413e473f84443ba63c749dde8c0103049e` |
| 34 | `theorem` | [tsub_add_eq_tsub_tsub](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/tsub-add-eq-tsub-tsub--c7046b5f5a4e748a8d457333.md) | 274 | `result-track:c7046b5f5a4e748a8d457333e7d317d9072719e7fddc487585162ef32eef8fb6` |
| 35 | `theorem` | [tsub_add_eq_tsub_tsub_swap](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/tsub-add-eq-tsub-tsub-swap--566379b03a15f804910b66ef.md) | 278 | `result-track:566379b03a15f804910b66ef59d3a178627be5b1c098c8756eabc515bca7d92f` |
| 36 | `theorem` | [tsub_right_comm](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/tsub-right-comm--d644733d798927c30ec5f20c.md) | 283 | `result-track:d644733d798927c30ec5f20cefd18bc8f0af52c78e25431754b19400de00002a` |
| 37 | `theorem` | [tsub_eq_of_eq_add](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/tsub-eq-of-eq-add--21eac6f68382978dd7b182ac.md) | 292 | `result-track:21eac6f68382978dd7b182acd27cb4d1492d4b48f655437440b09cb4746cbbe0` |
| 38 | `theorem` | [eq_tsub_of_add_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/eq-tsub-of-add-eq--a2f1670911521ec039e6f41f.md) | 298 | `result-track:a2f1670911521ec039e6f41fdad5e1a7a12de02ed7ef4c1cfe28eeef0a3012f9` |
| 39 | `theorem` | [tsub_eq_of_eq_add_rev](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/tsub-eq-of-eq-add-rev--55a338e811779906bf638c8a.md) | 302 | `result-track:55a338e811779906bf638c8a64fc08d9af3e409e0f1dc6a0926d6e916e74214b` |
| 40 | `theorem` | [add_tsub_cancel_right](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/add-tsub-cancel-right--1d6dfe201fd4154e656196e8.md) | 307 | `result-track:1d6dfe201fd4154e656196e8cae1889ff4268a6bbb092a92219a335417573a39` |
| 41 | `theorem` | [add_tsub_cancel_left](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/add-tsub-cancel-left--0b0efb0b8981c2659d8057d9.md) | 312 | `result-track:0b0efb0b8981c2659d8057d94d14a0528b90278aab85816c0a3af50116cc4cf8` |
| 42 | `theorem` | [lt_add_of_tsub_lt_left](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/lt-add-of-tsub-lt-left--aa4491f32b603c73876f259a.md) | 316 | `result-track:aa4491f32b603c73876f259ad8627f744339aca4002c542e897fad05b15be30b` |
| 43 | `theorem` | [lt_add_of_tsub_lt_right](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/lt-add-of-tsub-lt-right--8507a7dd769a9416e492fbd4.md) | 323 | `result-track:8507a7dd769a9416e492fbd428fcf3d53a85c8691cc305a1574bf39f9577c21c` |
| 44 | `theorem` | [lt_tsub_of_add_lt_right](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/lt-tsub-of-add-lt-right--3ff25d7fdf4bdcd7ed1a1c58.md) | 331 | `result-track:3ff25d7fdf4bdcd7ed1a1c58d1ab821d5521fc91743d3da601f46012086510c0` |
| 45 | `theorem` | [lt_tsub_of_add_lt_left](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/lt-tsub-of-add-lt-left--c396292baf44e84f5aa79087.md) | 337 | `result-track:c396292baf44e84f5aa79087507a30d264529f3be5f9d3c5dec4b564ca9fa6a8` |
| 46 | `theorem` | [tsub_eq_of_eq_add](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/tsub-eq-of-eq-add--b0da73cd6546ed8e07633419.md) | 350 | `result-track:b0da73cd6546ed8e0763341946dca2993c1e92b19f35b6f6fd5f0f619f9b3311` |
| 47 | `theorem` | [eq_tsub_of_add_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/eq-tsub-of-add-eq--1e5fc3b3e1ac07f2c2bf0d7b.md) | 354 | `result-track:1e5fc3b3e1ac07f2c2bf0d7b199d66f27c183efe7e73ad399fdebca83f25dd92` |
| 48 | `theorem` | [tsub_eq_of_eq_add_rev](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/tsub-eq-of-eq-add-rev--d2625e266b032e7339ae76a8.md) | 358 | `result-track:d2625e266b032e7339ae76a8b2b34c00a536e0aa6d95115850db780ccbaf5f78` |
| 49 | `theorem` | [add_tsub_cancel_right](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/add-tsub-cancel-right--cfd86a692946589207660d52.md) | 363 | `result-track:cfd86a692946589207660d524d633136c5a77acb0a6bb8a7a23ce4abef403b3e` |
| 50 | `theorem` | [add_tsub_cancel_left](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/add-tsub-cancel-left--5ecadfe020adc4c9395c578e.md) | 368 | `result-track:5ecadfe020adc4c9395c578ed7e9dbd9f92b0eb2d2295e3edebdad14f198eb98` |
| 51 | `theorem` | [lt_add_of_tsub_lt_left](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/lt-add-of-tsub-lt-left--5df3d02d26bce963ce401de3.md) | 372 | `result-track:5df3d02d26bce963ce401de377e052292d56a2354316dbe7863c9c9cc4cda5e6` |
| 52 | `theorem` | [lt_add_of_tsub_lt_right](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/lt-add-of-tsub-lt-right--38085f252a6982c9607aaf53.md) | 376 | `result-track:38085f252a6982c9607aaf53739420347de31c7790a2299c7acab42a985ca061` |
| 53 | `theorem` | [lt_tsub_of_add_lt_left](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/lt-tsub-of-add-lt-left--aa0ede0af882f32f2c2f4cea.md) | 382 | `result-track:aa0ede0af882f32f2c2f4cea62f9645395227a9acf8550af298facb5d1e9d6a5` |
| 54 | `theorem` | [lt_tsub_of_add_lt_right](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/lt-tsub-of-add-lt-right--5c9fe34fa806f2191e8961e0.md) | 386 | `result-track:5c9fe34fa806f2191e8961e04ada92cfb417c423a56874ea77533ef99f476dab` |
| 55 | `theorem` | [add_tsub_add_eq_tsub_right](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/add-tsub-add-eq-tsub-right--254a4c15ee9c10d606987ac1.md) | 396 | `result-track:254a4c15ee9c10d606987ac1ae7f0c6eba6d3244db5fa71bbeaca432a142f1f9` |
| 56 | `theorem` | [add_tsub_add_eq_tsub_left](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/add-tsub-add-eq-tsub-left--224664cad25eaadda84a663e.md) | 403 | `result-track:224664cad25eaadda84a663ebb16c1644a53a913d9612148b46ebc0138e55da1` |
| 57 | `theorem` | [lt_of_tsub_lt_tsub_right](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/lt-of-tsub-lt-tsub-right--4d087099c75aaa760c1cb89b.md) | 419 | `result-track:4d087099c75aaa760c1cb89b0fd09148be4f24ea78c84065b1ea0a3e8e61ab7c` |
| 58 | `theorem` | [lt_tsub_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/lt-tsub-iff-right--bd7665b9f2bd9f1b2c67af49.md) | 424 | `result-track:bd7665b9f2bd9f1b2c67af4905f3799fe9f26aeeea780925a29811c15a173940` |
| 59 | `theorem` | [lt_tsub_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/lt-tsub-iff-left--6b3dec9a7bc040fae917117e.md) | 429 | `result-track:6b3dec9a7bc040fae917117e3a889a81dfe542d8d004f36d9b7d096b0305edfa` |
| 60 | `theorem` | [lt_tsub_comm](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/lt-tsub-comm--f70bf1e51eb09639a8d7129a.md) | 433 | `result-track:f70bf1e51eb09639a8d7129a40ab2e224d80d4646f1bdc1ed7f398c95b1565dc` |
| 61 | `theorem` | [lt_of_tsub_lt_tsub_left](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/lt-of-tsub-lt-tsub-left--40b51a3d55bde19fa1cdfd52.md) | 442 | `result-track:40b51a3d55bde19fa1cdfd523c5bd6b1ae71a3c151ee207c4ac86f4114900894` |
| 62 | `theorem` | [tsub_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/declarations/tsub-zero--a490648a957c4c55cc15098d.md) | 455 | `result-track:a490648a957c4c55cc15098d7173d6135475d0232db66a02bc35ace06f4a3af1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
