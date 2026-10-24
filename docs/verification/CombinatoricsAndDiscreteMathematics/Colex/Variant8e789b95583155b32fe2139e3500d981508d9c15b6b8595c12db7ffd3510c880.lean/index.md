# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Colex.Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0573b291af6b22b920fc5406f7f48ddf885cfc8d",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0573b291af6b22b920fc5406f7f48ddf885cfc8d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GeomSum` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Finset.Colex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/finset-colex--b78e28277a5054815bd0bb18.md) | 62 | `declaration-track:b78e28277a5054815bd0bb185c94fd6da999664edf1c5a5ae565bc84a1dd88c0` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/instance--2d01f7c782a61a17f5eb0340.md) | 67 | `declaration-track:2d01f7c782a61a17f5eb034064bb2274b22a0ad9082f7ade003a53202c997d26` |
| 3 | `def` | [Finset.toColex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/finset-tocolex--cc62cc77f3c2215c06c3eb00.md) | 72 | `declaration-track:cc62cc77f3c2215c06c3eb00723f0bf369fcbe72f69e302ab9ae1c1bef0835cd` |
| 4 | `theorem` | [Colex.eq_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/colex-eq-iff--4b396bf2c9402770f7b021b4.md) | 77 | `result-track:4b396bf2c9402770f7b021b48c241c9540f8014180f9dbaaf50961329c82bd8e` |
| 5 | `instance` | [Colex.instLT](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/colex-instlt--7e32c8f44163814f48de4a79.md) | 84 | `declaration-track:7e32c8f44163814f48de4a796c9f9aeb1c991438faa888a15df0a81c09f88af4` |
| 6 | `instance` | [Colex.instLE](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/colex-instle--3bbc2e4ef32ad0711e2bc5e6.md) | 88 | `declaration-track:3bbc2e4ef32ad0711e2bc5e696a565e5fdb0b1a7507d8b6efdb2ae206f767454` |
| 7 | `theorem` | [Colex.lt_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/colex-lt-def--824f898f5adf9c69e3b03ec5.md) | 91 | `result-track:824f898f5adf9c69e3b03ec5dda062b39eaf8bcb22d602689574ce66117413e6` |
| 8 | `theorem` | [Colex.le_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/colex-le-def--5d0f1699710e0e5f95be9c5f.md) | 96 | `result-track:5d0f1699710e0e5f95be9c5fbd9ed1a6b5c2ac0f896d0db456c9c2fb29411341` |
| 9 | `theorem` | [Nat.sum_two_pow_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/nat-sum-two-pow-lt--0f2d4313140b391cc9d850b1.md) | 102 | `result-track:0f2d4313140b391cc9d850b11c63f4f89fbd511ae236a3b6c2da09ad0c098f67` |
| 10 | `theorem` | [hom_lt_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/hom-lt-iff--ae1af3d68fce601cff822f07.md) | 114 | `result-track:ae1af3d68fce601cff822f0769386f6803c75fbbc0c69707e2c552d571e81121` |
| 11 | `theorem` | [hom_fin_lt_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/hom-fin-lt-iff--df3b4a2cfe98bc14061d2a9a.md) | 137 | `result-track:df3b4a2cfe98bc14061d2a9a60f91c8caf66100e667078372f37cebdc0f183dd` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/instance--ec9d6a9fca2aa1de0e22d28d.md) | 144 | `declaration-track:ec9d6a9fca2aa1de0e22d28d9afa8db011d64aa8d032676afe4f13b447cc4756` |
| 13 | `theorem` | [lt_trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/lt-trans--7b2bf26810a8558c8cb6c9fe.md) | 148 | `result-track:7b2bf26810a8558c8cb6c9fe6b4c9b0e63a7142467b621a01d9cbf3503ade383` |
| 14 | `theorem` | [le_trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/le-trans--7f8c7c9b7fa707ad11f17df1.md) | 161 | `result-track:7f8c7c9b7fa707ad11f17df19dfc055e3ca89287afe621036a9e60dc1fd2efa2` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/instance--c45db1ed78f5fb025eeb9227.md) | 165 | `declaration-track:c45db1ed78f5fb025eeb9227677abbce2a291ef58555047e696edb88ba5e8321` |
| 16 | `theorem` | [lt_trichotomy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/lt-trichotomy--15b518fd10909782800a40cf.md) | 168 | `result-track:15b518fd10909782800a40cf708d8e4ea0b8688738d6cb617dfaa11b6ff461aa` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/instance--cff30cc68151bea6a4fb7364.md) | 196 | `declaration-track:cff30cc68151bea6a4fb736407c042cb5792d4927a7176f88fe68fe15325954a` |
| 18 | `instance` | [decidableLt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/decidablelt--5df6a78a3b68672dfa22110d.md) | 199 | `declaration-track:5df6a78a3b68672dfa22110d38741ae0743cbe33100bcaf4dd1a33c0b206d617` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/instance--e84be27326631dd28909b59f.md) | 211 | `declaration-track:e84be27326631dd28909b59ff4e9850604ec2266d1782c99bcbc143044fb355e` |
| 20 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/example--096dd2e50244fb95dd4f3dd7.md) | 238 | `declaration-track:096dd2e50244fb95dd4f3dd7065750ec98c013b52b9d5da750b116495f506b9d` |
| 21 | `theorem` | [hom_le_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/hom-le-iff--7e67c850a7410dc28ffa0e7c.md) | 242 | `result-track:7e67c850a7410dc28ffa0e7c0aefa401360239e11f845cfb642be7b1caf0f341` |
| 22 | `theorem` | [hom_fin_le_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/hom-fin-le-iff--6fb342bb6645d52646afd9f4.md) | 250 | `result-track:6fb342bb6645d52646afd9f4546155e8062e4304392b30267ce67fb4ba740a08` |
| 23 | `theorem` | [forall_lt_of_colex_lt_of_forall_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/forall-lt-of-colex-lt-of-forall-lt--f46afd47206d690c18b686d9.md) | 258 | `result-track:f46afd47206d690c18b686d9ec9bd1ba3076494733bff37a45fc044b4aa19f13` |
| 24 | `theorem` | [lt_singleton_iff_mem_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/lt-singleton-iff-mem-lt--736de928f2db439214424aeb.md) | 271 | `result-track:736de928f2db439214424aeb6e3b9a88f35636e42f64fab3616b60b857b3c23f` |
| 25 | `theorem` | [mem_le_of_singleton_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/mem-le-of-singleton-le--a3e226cd693817db4e80d78d.md) | 289 | `result-track:a3e226cd693817db4e80d78da20496adf5417c34d932de2632730f2669ff6528` |
| 26 | `theorem` | [singleton_lt_iff_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/singleton-lt-iff-lt--b6181890bebc2c2503298a3b.md) | 296 | `result-track:b6181890bebc2c2503298a3b85ad52331c7b792ce89702d6f3aa47a2563675f8` |
| 27 | `theorem` | [singleton_le_iff_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/singleton-le-iff-le--e17f282bbbc64dc220e467e8.md) | 301 | `result-track:e17f282bbbc64dc220e467e8cfe6de9e432a49d0a597225481046ec7a4dfccad` |
| 28 | `theorem` | [sdiff_lt_sdiff_iff_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/sdiff-lt-sdiff-iff-lt--d9a76c041d9e17e6f23e1696.md) | 308 | `result-track:d9a76c041d9e17e6f23e1696ef4b0309666e803d54da05a1c13d2d66e96efbf0` |
| 29 | `theorem` | [sdiff_le_sdiff_iff_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/sdiff-le-sdiff-iff-le--09ef98a858a7eab8013e5212.md) | 328 | `result-track:09ef98a858a7eab8013e52123c724840a0d1ba70922424ecd5b55d43bae91ed4` |
| 30 | `theorem` | [empty_toColex_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/empty-tocolex-lt--8c10490254df5eeff0728e26.md) | 333 | `result-track:8c10490254df5eeff0728e26ca12ec0f970529dd2e9bc526013800b435336469` |
| 31 | `theorem` | [colex_lt_of_ssubset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/colex-lt-of-ssubset--de4f56391a94e315f8d204e3.md) | 344 | `result-track:de4f56391a94e315f8d204e377ff61896582a561f2a9deb69b0ddb869b2f6894` |
| 32 | `theorem` | [empty_toColex_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/empty-tocolex-le--67fcc6ac3d46482945986ee2.md) | 351 | `result-track:67fcc6ac3d46482945986ee217609c5e7dca8878a84c9b5e6c344d433377be31` |
| 33 | `theorem` | [colex_le_of_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/colex-le-of-subset--401489fe323da1d47a859aaa.md) | 359 | `result-track:401489fe323da1d47a859aaa6d335fa98d8684c7d9ea3c4a2f250e0a38ad8fd5` |
| 34 | `def` | [toColexRelHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/tocolexrelhom--471a7653f5a11c5d5e57e509.md) | 367 | `declaration-track:471a7653f5a11c5d5e57e509249fe85691486d1344ddee376943219e6f55eed3` |
| 35 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/instance--bd4990ff684e9df7cb0e2e71.md) | 374 | `declaration-track:bd4990ff684e9df7cb0e2e71557e3f92c86b77bbef175b6e2e67b962987c3ec3` |
| 36 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/instance--61a6e1448375a517c235b92d.md) | 378 | `declaration-track:61a6e1448375a517c235b92d53d6e181471a350f2bcd6e65af4d4f23e369ffb8` |
| 37 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/instance--cafd155a84385836820f7f5d.md) | 382 | `declaration-track:cafd155a84385836820f7f5d8e6e300da76726eda82bab9989f820ab47d7873a` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/instance--d47b25c92b7734a8f2ec96bd.md) | 386 | `declaration-track:d47b25c92b7734a8f2ec96bd3d5bb0040baa5421421474b61046af95a3a6d0db` |
| 39 | `theorem` | [sum_two_pow_lt_iff_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/sum-two-pow-lt-iff-lt--70d29808d724aaeb36414539.md) | 391 | `result-track:70d29808d724aaeb36414539665677edc76bd812fc8fc4441c4dd9d61c04c776` |
| 40 | `theorem` | [sum_two_pow_le_iff_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Colex/Variant8e789b95583155b32fe2139e3500d981508d9c15b6b8595c12db7ffd3510c880.lean/declarations/sum-two-pow-le-iff-lt--ff47910271bfcc435fbae3f8.md) | 418 | `result-track:ff47910271bfcc435fbae3f810cb3e20ae461c2b36783fa144213b283a2d87b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
