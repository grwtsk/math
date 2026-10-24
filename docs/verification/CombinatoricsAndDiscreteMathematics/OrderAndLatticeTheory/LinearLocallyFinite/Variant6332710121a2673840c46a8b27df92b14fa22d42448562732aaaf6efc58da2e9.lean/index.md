# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LinearLocallyFinite.Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "146b2e4a2d9d0bcd6bdaeabd50f0c16bead9d711",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `146b2e4a2d9d0bcd6bdaeabd50f0c16bead9d711`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.LocallyFinite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Countable.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Encodable.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [succFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean/declarations/succfn--708b81a5bb14556c02df511f.md) | 65 | `declaration-track:708b81a5bb14556c02df511f4a21309ab80613007b9bc60b2d725eda9984049b` |
| 2 | `theorem` | [succFn_spec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean/declarations/succfn-spec--fa8c1c38fe017fe2f97dc8ed.md) | 69 | `result-track:fa8c1c38fe017fe2f97dc8edfe9200618fc9b5980abb574dd84623cda2451fd7` |
| 3 | `theorem` | [le_succFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean/declarations/le-succfn--f8e232551f1458d415edc9b9.md) | 73 | `result-track:f8e232551f1458d415edc9b91d51b23168da9a9c4c536087277b0c95a05b0750` |
| 4 | `theorem` | [isGLB_Ioc_of_isGLB_Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean/declarations/isglb-ioc-of-isglb-ioi--a7de2e4eb3895bafdff6c8bc.md) | 78 | `result-track:a7de2e4eb3895bafdff6c8bcdd8345e946cefe806084f08a5ffe1c840aa481e5` |
| 5 | `theorem` | [isMax_of_succFn_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean/declarations/ismax-of-succfn-le--3771b9a70f862ef817a1ade8.md) | 88 | `result-track:3771b9a70f862ef817a1ade8d5085561f99bf346287dd51890235de0dcc217b2` |
| 6 | `theorem` | [succFn_le_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean/declarations/succfn-le-of-lt--42b289bd79d081abe047b43f.md) | 103 | `result-track:42b289bd79d081abe047b43ff852413a7a692c0490bdb606cee9e9546cba29da` |
| 7 | `theorem` | [le_of_lt_succFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean/declarations/le-of-lt-succfn--32bc287c296064045f38e5eb.md) | 109 | `result-track:32bc287c296064045f38e5eb9450ab839d6cd7a7f06d4d535b3acc3b0c6060fc` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean/declarations/instance--fe477683df6c61e3e4885b80.md) | 116 | `declaration-track:fe477683df6c61e3e4885b8084b3fb5add2712e8f32207700a7515e84e1e384b` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean/declarations/instance--6cfc2f25b5d25617bdd70a78.md) | 123 | `declaration-track:6cfc2f25b5d25617bdd70a784a7146ecfa493c8c4504619204609fbccc9ca701` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean/declarations/instance--7b5cbc168d291e62e8b9d238.md) | 128 | `declaration-track:7b5cbc168d291e62e8b9d238cd8b3e26779aae2807d63855ca593f4cedd76626` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean/declarations/instance--1a74b239b2c9834ca96e27c4.md) | 160 | `declaration-track:1a74b239b2c9834ca96e27c4192928e80e123175bf5ab669964a800b4567d764` |
| 12 | `def` | [toZ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean/declarations/toz--70047ac370d037c614276c30.md) | 192 | `declaration-track:70047ac370d037c614276c30f3b36264ce3d2dfae668c5e4098f9c3223e25daa` |
| 13 | `theorem` | [toZ_of_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean/declarations/toz-of-ge--05d34340970a7fd6b5dfe038.md) | 197 | `result-track:05d34340970a7fd6b5dfe03817f35831157da2a3b14c5b77948fbddd61b55f6e` |
| 14 | `theorem` | [toZ_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean/declarations/toz-of-lt--a431f7db11b8c6fc9b9d00fc.md) | 201 | `result-track:a431f7db11b8c6fc9b9d00fc789562afbf9624445505ab9089738a83177c831f` |
| 15 | `theorem` | [toZ_of_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean/declarations/toz-of-eq--9c6d8cb77fec9c7cc4646af7.md) | 206 | `result-track:9c6d8cb77fec9c7cc4646af79318bc52f1844313dfe25475c419d0efe28fc17a` |
| 16 | `theorem` | [iterate_succ_toZ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean/declarations/iterate-succ-toz--3679567fce8e37a1a3b67bb6.md) | 213 | `result-track:3679567fce8e37a1a3b67bb6e7b35a7cce1f69ea99261812f48157b5d861044c` |
| 17 | `theorem` | [iterate_pred_toZ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean/declarations/iterate-pred-toz--c3f5e248c78ea79d10a4bb54.md) | 218 | `result-track:c3f5e248c78ea79d10a4bb540a40ff0bc621ca8ab1e994187343883d16ab546b` |
| 18 | `theorem` | [toZ_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean/declarations/toz-nonneg--c1b9a37f7153c73168eef94b.md) | 223 | `result-track:c1b9a37f7153c73168eef94b0638e30873571d0484059905b571c34b4bec54ba` |
| 19 | `theorem` | [toZ_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean/declarations/toz-neg--d3dd8fedfb3965392f4818da.md) | 228 | `result-track:d3dd8fedfb3965392f4818da8b2f474e1e721dcef5c8891092cb3150a0a94965` |
| 20 | `theorem` | [toZ_iterate_succ_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean/declarations/toz-iterate-succ-le--178d4547d74082805d5214c1.md) | 238 | `result-track:178d4547d74082805d5214c1a1745a8b4258c0d9b369561013dff1b4486e7f26` |
| 21 | `theorem` | [toZ_iterate_pred_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean/declarations/toz-iterate-pred-ge--a5930d6a158f67703525c6e3.md) | 244 | `result-track:a5930d6a158f67703525c6e33c96917d7e8b6452bf00f6aba81a416f7dbbb9ea` |
| 22 | `theorem` | [toZ_iterate_succ_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean/declarations/toz-iterate-succ-of-not-ismax--2e8d646994afca36ac8cb4cd.md) | 254 | `result-track:2e8d646994afca36ac8cb4cdd9ad9bce1300c02d63797e43220201cd40e058f3` |
| 23 | `theorem` | [toZ_iterate_pred_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean/declarations/toz-iterate-pred-of-not-ismin--3e991f833827940d24f7f4e2.md) | 266 | `result-track:3e991f833827940d24f7f4e2cff580859066c786ee9a3874a6c32ecc440a8f59` |
| 24 | `theorem` | [le_of_toZ_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean/declarations/le-of-toz-le--9cb74770076410bb2b548482.md) | 287 | `result-track:9cb74770076410bb2b5484820e065d118a70bea9bebba1508a8deb8a4bc99e89` |
| 25 | `theorem` | [toZ_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean/declarations/toz-mono--7071bbc753c39544ddf46687.md) | 298 | `result-track:7071bbc753c39544ddf46687a3fb9ae18cb942805b4826c923b951879416ae34` |
| 26 | `theorem` | [toZ_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean/declarations/toz-le-iff--327b2529edcaef66a48ae5fb.md) | 347 | `result-track:327b2529edcaef66a48ae5fbf5975e8dde8dc7e868fe0e30cafd8b57ab9eabd2` |
| 27 | `theorem` | [toZ_iterate_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean/declarations/toz-iterate-succ--0707187d903219201bb060e5.md) | 351 | `result-track:0707187d903219201bb060e577b8e21770241e783517c4c91aedaf11f7a271c5` |
| 28 | `theorem` | [toZ_iterate_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean/declarations/toz-iterate-pred--050bd0b391cd784291164205.md) | 355 | `result-track:050bd0b391cd7842911642050b8c28677b57b0e053ead7fccef55034a36bb01d` |
| 29 | `theorem` | [injective_toZ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean/declarations/injective-toz--b40c56b9e69df6d6f689ff86.md) | 359 | `result-track:b40c56b9e69df6d6f689ff866233c55e6815aafd0b4d6f9ab50c0e0e6adc2cdd` |
| 30 | `def` | [orderIsoRangeToZOfLinearSuccPredArch](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean/declarations/orderisorangetozoflinearsuccpredarch--3ebf0c48e3b214c4231e1b5f.md) | 370 | `declaration-track:3ebf0c48e3b214c4231e1b5fb706dd68b787d98197b627091189164ab0eb5ecc` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean/declarations/instance--43a85a51ea86acb89d7e47fc.md) | 377 | `declaration-track:43a85a51ea86acb89d7e47fc07352e79b7ed725932761cc84910c3f0b057ff92` |
| 32 | `def` | [orderIsoIntOfLinearSuccPredArch](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean/declarations/orderisointoflinearsuccpredarch--c54c7b94cd0cb0d1bdf88d08.md) | 384 | `declaration-track:c54c7b94cd0cb0d1bdf88d08fee5722aae8d9e8f7925096d916c376116918c9d` |
| 33 | `def` | [orderIsoNatOfLinearSuccPredArch](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean/declarations/orderisonatoflinearsuccpredarch--3862237ed4d4cfd67be59bbf.md) | 408 | `declaration-track:3862237ed4d4cfd67be59bbfca8dd0decf40d78de49fea53abcb41d4ca428629` |
| 34 | `def` | [orderIsoRangeOfLinearSuccPredArch](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean/declarations/orderisorangeoflinearsuccpredarch--6d1277de35a9f2b1b1cf0118.md) | 426 | `declaration-track:6d1277de35a9f2b1b1cf01186f98325bdaa741d8b0af8371e06c628af8b8c5f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
