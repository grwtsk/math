# Verification target: GRWTSK.Algebra.Defs.Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a36d92b5f0be7d3303a375cb136f13a544481eb0",
  "lexical_observation_count": 88,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a36d92b5f0be7d3303a375cb136f13a544481eb0`.

Source path: `GRWTSK/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.Init` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Dvd.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Regular` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.GCD.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pos](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/pos--f626ce5b4d5ee6bcf4e841aa.md) | 38 | `result-track:f626ce5b4d5ee6bcf4e841aadae9df83bacc49ee1edf6b4b23821719cbac8610` |
| 2 | `theorem` | [ofInt_eq_cast](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/ofint-eq-cast--23c381f7d97d9c7890300541.md) | 44 | `result-track:23c381f7d97d9c78903005411cfab2b5d67e0ce1eeca65032325371f662e5204` |
| 3 | `theorem` | [coe_int_num](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/coe-int-num--af0a719c4557803b6962d647.md) | 49 | `result-track:af0a719c4557803b6962d64721c0d2ac2b25c659760fa3b185febf18cdf84ecf` |
| 4 | `theorem` | [coe_int_den](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/coe-int-den--b53f13ec083dc837475e9322.md) | 54 | `result-track:b53f13ec083dc837475e9322ee0691fcb4c35443ba93e813044f1a65aab88c28` |
| 5 | `theorem` | [mkRat_eq](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/mkrat-eq--187f89cb8add8a1c8eef66ac.md) | 65 | `result-track:187f89cb8add8a1c8eef66acf19572510c778d7c73128e95a1dcb7e89c3ad08d` |
| 6 | `theorem` | [zero_mk](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/zero-mk--0a8f47f755b1a62fb9889817.md) | 72 | `result-track:0a8f47f755b1a62fb98898174889562d0ab1f3a9a5d84f2495eb17ac95adf04e` |
| 7 | `lemma` | [num_eq_zero](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/num-eq-zero--91f1808bb057e8bd47b15959.md) | 80 | `result-track:91f1808bb057e8bd47b15959395097db505766b01dc38fd01dc2cb48b6a0d702` |
| 8 | `theorem` | [gcd_abs_dvd_left](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/gcd-abs-dvd-left--a048ed28f3ae72d889e28272.md) | 87 | `result-track:a048ed28f3ae72d889e28272e80d04ea36d01e5463986688fc390d9c60477ad3` |
| 9 | `theorem` | [divInt_eq_zero](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/divint-eq-zero--3c21f95f83280c07db2bc05b.md) | 92 | `result-track:3c21f95f83280c07db2bc05baded7c65e91d01334bb5486b49159a128bdf80b0` |
| 10 | `theorem` | [divInt_ne_zero](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/divint-ne-zero--3830fb685fdec468ba63ec69.md) | 96 | `result-track:3830fb685fdec468ba63ec69f105278c7e72da613cac846b68215976761a5ba6` |
| 11 | `theorem` | [normalize_eq_mk'](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/normalize-eq-mk--6c9fcad345c8c6ec4f66f56c.md) | 104 | `result-track:6c9fcad345c8c6ec4f66f56c7d1e9327eeb02b0f2b76b21ef266d3a0d84b929a` |
| 12 | `theorem` | [num_den](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/num-den--7b96bb2ebbc5585aa11e4c0c.md) | 111 | `result-track:7b96bb2ebbc5585aa11e4c0cf4ce8ad6ebf4c9a10d0c89b1adeef94592aeeba9` |
| 13 | `theorem` | [num_den'](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/num-den--78eaa7bb679cda59d6394548.md) | 114 | `result-track:78eaa7bb679cda59d6394548fbbeee1aa38e1d5cb4b1bf9b4db436d8a8603af4` |
| 14 | `theorem` | [coe_int_eq_divInt](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/coe-int-eq-divint--f1e9b8b8b38cac76ab9eb096.md) | 117 | `result-track:f1e9b8b8b38cac76ab9eb096aa17e02da9236fb91f35274a67cd2164e1832677` |
| 15 | `def` | [numDenCasesOn.](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/numdencaseson--2eae60581dd0709f5c7c9e97.md) | 123 | `declaration-track:2eae60581dd0709f5c7c9e97f5380ce9196b0fa3dd2f9fa54c54dbc5cd95237e` |
| 16 | `def` | [numDenCasesOn'.](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/numdencaseson--720b7e0cddc2a8e46187532e.md) | 131 | `declaration-track:720b7e0cddc2a8e46187532ebf63d0dc0c7e39466292f3f57641121ae700ab80` |
| 17 | `theorem` | [lift_binop_eq](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/lift-binop-eq--69a6b409e931d5b1a646dd73.md) | 140 | `result-track:69a6b409e931d5b1a646dd73a22ed9e6174bcf9321036905315051c3996bf395` |
| 18 | `theorem` | [add_def''](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/add-def--7f281156dd9abb77970595ec.md) | 160 | `result-track:7f281156dd9abb77970595ec8aee7f7ed85f0e31a50616bc0f262884404bc81b` |
| 19 | `theorem` | [neg_def](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/neg-def--e00bb7de3122efd0ed35eba0.md) | 170 | `result-track:e00bb7de3122efd0ed35eba06bd7a8452f9188c373db2cb72e208cfc9584b987` |
| 20 | `theorem` | [divInt_neg_den](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/divint-neg-den--998643b8419f08f3ff7745e8.md) | 174 | `result-track:998643b8419f08f3ff7745e892fcf9a1d9fd5a806097cc4d374ea259c8ba6638` |
| 21 | `theorem` | [sub_def''](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/sub-def--70fba089e1459c0c5441dc05.md) | 178 | `result-track:70fba089e1459c0c5441dc056b9cf197a6181d3bf438281f609bc7084d7e8f25` |
| 22 | `theorem` | [mul_def'](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/mul-def--85454a66d1ea18322b541000.md) | 186 | `result-track:85454a66d1ea18322b5410006203f360a2feb90b581e2ea018df1c3be3c9a7af` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/instance--c3572a815a54f204c2e45ec4.md) | 192 | `declaration-track:c3572a815a54f204c2e45ec4b47b10e152660f272041d5d7f15f419ef775da87` |
| 24 | `theorem` | [inv_def'](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/inv-def--11598745d2c01c31c600eb21.md) | 198 | `result-track:11598745d2c01c31c600eb21375f9e3c513a8806228a2273c524d303a5a8fc7d` |
| 25 | `theorem` | [add_zero](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/add-zero--b8f024f6946c29c0861483cb.md) | 206 | `result-track:b8f024f6946c29c0861483cb3eadb820363d8f1d4c4482cb912aa9d12dca4021` |
| 26 | `theorem` | [zero_add](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/zero-add--2a68190477ffa645c9263885.md) | 211 | `result-track:2a68190477ffa645c926388565e462170d05198ae8eb7fe7213c9118e60d2b74` |
| 27 | `theorem` | [add_comm](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/add-comm--1674fbdf5405b4ae1325c704.md) | 216 | `result-track:1674fbdf5405b4ae1325c704e958baec5f955c078db00579ee7881da24dee6bf` |
| 28 | `theorem` | [add_assoc](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/add-assoc--4a133238f533131fda628f5e.md) | 221 | `result-track:4a133238f533131fda628f5ecd2056ccace31eda5d72137f7bc3f37bc7488f19` |
| 29 | `theorem` | [add_left_neg](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/add-left-neg--1caf6bedc26d0abaf34da6ce.md) | 231 | `result-track:1caf6bedc26d0abaf34da6ce0fa71c63a5aa33a613f55abdd339cc56a3b18197` |
| 30 | `theorem` | [divInt_zero_one](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/divint-zero-one--41d462485388f4fec8cdcd19.md) | 235 | `result-track:41d462485388f4fec8cdcd19257d85c85c775a1cc230f979115ce056e6953146` |
| 31 | `theorem` | [divInt_one_one](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/divint-one-one--ac88c3492304a3d8330c5e4c.md) | 242 | `result-track:ac88c3492304a3d8330c5e4c455f290e3db506f7ca1fcefd1a59e7c91400dbd5` |
| 32 | `theorem` | [divInt_neg_one_one](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/divint-neg-one-one--e2f5384444d157e372cf6ec9.md) | 249 | `result-track:e2f5384444d157e372cf6ec99f66797aff099adb00dba4cad7530f2a109ec6f0` |
| 33 | `theorem` | [divInt_one](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/divint-one--30c70b3332c6da78690c58de.md) | 255 | `result-track:30c70b3332c6da78690c58de609c7e9bb6349b4bbc4a3f1797456d83e05b4dac` |
| 34 | `theorem` | [mkRat_one](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/mkrat-one--025d58023d51902054ea9ea3.md) | 261 | `result-track:025d58023d51902054ea9ea32e6470ef9d820e6416a7f14e5a1eebc83e5cc401` |
| 35 | `theorem` | [mul_assoc](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/mul-assoc--6bdb2a0f04c129a37e2da2c9.md) | 268 | `result-track:6bdb2a0f04c129a37e2da2c9696f826d1adba83bcaf3bfe3ec0f8b5157946967` |
| 36 | `theorem` | [add_mul](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/add-mul--44de621fc3365b2d9578f9d9.md) | 275 | `result-track:44de621fc3365b2d9578f9d9361a6177d83a9b1dae80779a74c250532c44ca43` |
| 37 | `theorem` | [mul_add](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/mul-add--6b6ed96cfffbfde6a5442c1d.md) | 284 | `result-track:6b6ed96cfffbfde6a5442c1dc2f8ecdba07020b608cbc8d2dcf49b5ca0e3da88` |
| 38 | `theorem` | [zero_ne_one](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/zero-ne-one--7cba7add8a107bebf49d0bf7.md) | 288 | `result-track:7cba7add8a107bebf49d0bf71744552123edf58112f523a2026b0279f1934032` |
| 39 | `theorem` | [mul_inv_cancel](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/mul-inv-cancel--b4c9132c396c78a2114f6cb4.md) | 293 | `result-track:b4c9132c396c78a2114f6cb4ab54806063800cc4cabce6e163669bb2368331fb` |
| 40 | `theorem` | [inv_mul_cancel](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/inv-mul-cancel--bc743c0bdcc5c6730ca26ee4.md) | 299 | `result-track:bc743c0bdcc5c6730ca26ee477eb8306b657fd93219d47bd87a1d026cb976826` |
| 41 | `instance` | [commRing](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/commring--a3488f9aeb00efa2dc7dc070.md) | 310 | `declaration-track:a3488f9aeb00efa2dc7dc0705d725dabfed191ffe685361ae5e6d77c77982c3b` |
| 42 | `instance` | [commGroupWithZero](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/commgroupwithzero--61482801e526e00aa57cf410.md) | 337 | `declaration-track:61482801e526e00aa57cf4106eb5bcbd8f3f5509b02af2b3b3b58488a97b4b46` |
| 43 | `instance` | [isDomain](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/isdomain--396f1712b8176085cb862553.md) | 347 | `declaration-track:396f1712b8176085cb8625532801d2bfe9f5d3f2f00a518cee09756271c76555` |
| 44 | `instance` | [nontrivial](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/nontrivial--090d42aa121907fed0a7d3ba.md) | 352 | `declaration-track:090d42aa121907fed0a7d3ba2143406f7f4f11daf5156424e2a8381c584adf74` |
| 45 | `instance` | [commSemiring](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/commsemiring--302199a699c60c1e963b2749.md) | 354 | `declaration-track:302199a699c60c1e963b2749dcc4c61b9ee343ff434a4477daa0ff8508bd49da` |
| 46 | `instance` | [semiring](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/semiring--be645a4b22f90c3bac28f3dc.md) | 356 | `declaration-track:be645a4b22f90c3bac28f3dcb411cb15263d92d7484bdbaabbbd0249a548a5c5` |
| 47 | `instance` | [addCommGroup](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/addcommgroup--62346b69b941b7f516a2234e.md) | 358 | `declaration-track:62346b69b941b7f516a2234e97d4eae635d7d7504c4c4e4e8de63ab223b3d008` |
| 48 | `instance` | [addGroup](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/addgroup--1ccd28cf645f66355e588a9b.md) | 360 | `declaration-track:1ccd28cf645f66355e588a9bebe68c3ee0988e97eb990d008844701fc8967d0f` |
| 49 | `instance` | [addCommMonoid](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/addcommmonoid--ee9b4764f7cebe63e69f7ed4.md) | 362 | `declaration-track:ee9b4764f7cebe63e69f7ed4a4d56041f5fc3a20095af23e760e935ede5f2d55` |
| 50 | `instance` | [addMonoid](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/addmonoid--2720060a0599deb7ecbc91d7.md) | 364 | `declaration-track:2720060a0599deb7ecbc91d743b79cc11dd4efe394d1e2fa0436fc9da149c44e` |
| 51 | `instance` | [addLeftCancelSemigroup](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/addleftcancelsemigroup--c21ad41e0bb4ee83ed368147.md) | 366 | `declaration-track:c21ad41e0bb4ee83ed3681479664b93cd4394bf46d8a15bef46c993438646162` |
| 52 | `instance` | [addRightCancelSemigroup](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/addrightcancelsemigroup--957bad2fd01b8ca7de2f7532.md) | 368 | `declaration-track:957bad2fd01b8ca7de2f75327bccd3e7f40d7afaca83d094e953540e840b6c8f` |
| 53 | `instance` | [addCommSemigroup](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/addcommsemigroup--1be0f1b01832690306dba459.md) | 370 | `declaration-track:1be0f1b01832690306dba459ce083edc81500d30c95375380c1353b476bfc18e` |
| 54 | `instance` | [addSemigroup](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/addsemigroup--88e58dda1876b5b1b08e3049.md) | 372 | `declaration-track:88e58dda1876b5b1b08e30492a3048d539560cd5ace7815fbded1c3d45e5e610` |
| 55 | `instance` | [commMonoid](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/commmonoid--d1e8c7e04113dcc9116d3230.md) | 374 | `declaration-track:d1e8c7e04113dcc9116d3230fcbbe78cd147727a73bc62597242242bd24446e4` |
| 56 | `instance` | [monoid](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/monoid--4ed2b15b5b95812a3094b252.md) | 376 | `declaration-track:4ed2b15b5b95812a3094b252d831ac08cb156395c2321c6cbd6bdeb10d77caf5` |
| 57 | `instance` | [commSemigroup](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/commsemigroup--b1f03abe820f20375e72c60c.md) | 378 | `declaration-track:b1f03abe820f20375e72c60c56e50cc19109c1384d0390d87d280528f56ab301` |
| 58 | `instance` | [semigroup](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/semigroup--11dd0a5e4f1c14744b27ba9c.md) | 380 | `declaration-track:11dd0a5e4f1c14744b27ba9c384b98d6f2402b29fba08f7a31f4efee979335f0` |
| 59 | `theorem` | [eq_iff_mul_eq_mul](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/eq-iff-mul-eq-mul--66ebf688be0a657c57e9972c.md) | 384 | `result-track:66ebf688be0a657c57e9972ceaf76aebd7e41b9dc6e37829f18d2e371d5ea8d8` |
| 60 | `theorem` | [den_neg_eq_den](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/den-neg-eq-den--9e3a68d24ef2e5f3c313a315.md) | 394 | `result-track:9e3a68d24ef2e5f3c313a3152347ced5d561f6f03f8bceb43a0bdaf6bcd62ca0` |
| 61 | `theorem` | [num_neg_eq_neg_num](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/num-neg-eq-neg-num--4ffd410ed662c3a9b613a9c6.md) | 399 | `result-track:4ffd410ed662c3a9b613a9c6a4ac0b0ce74c89f8d3951cecb697664d65b4447f` |
| 62 | `theorem` | [num_zero](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/num-zero--64d5eb11b4bef4e6bd4e3c6a.md) | 404 | `result-track:64d5eb11b4bef4e6bd4e3c6ab487109bc1226b8666fbceda4251576492a53672` |
| 63 | `theorem` | [den_zero](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/den-zero--cdf8a02b7f38c1c18703719d.md) | 409 | `result-track:cdf8a02b7f38c1c18703719dd6e060eb62e54de84b974aee1b8aaa072d35d230` |
| 64 | `theorem` | [zero_of_num_zero](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/zero-of-num-zero--853120d6b516713fba72e346.md) | 413 | `result-track:853120d6b516713fba72e3469721d220cf1d3156a14f9291da85398ad6d037dd` |
| 65 | `theorem` | [zero_iff_num_zero](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/zero-iff-num-zero--694e0cb8288f8bed9947a380.md) | 418 | `result-track:694e0cb8288f8bed9947a380d0cc4576416ce228175ec60482bf8b8647ee166a` |
| 66 | `theorem` | [num_ne_zero_of_ne_zero](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/num-ne-zero-of-ne-zero--3c9504f03bf9dac701faff17.md) | 422 | `result-track:3c9504f03bf9dac701faff17b2a6f6787195e433294db9e755f0a5a73f44e3a9` |
| 67 | `theorem` | [num_one](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/num-one--03528ef5129764bbd711fdd6.md) | 427 | `result-track:03528ef5129764bbd711fdd68c25b7b9b58779a41eb43e12eaaa43bfa793ddaa` |
| 68 | `theorem` | [den_one](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/den-one--192fefb9b2a22e7bae111c58.md) | 432 | `result-track:192fefb9b2a22e7bae111c58a68a78d798c236a6154141f1aa000e69858f31e6` |
| 69 | `theorem` | [mk_num_ne_zero_of_ne_zero](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/mk-num-ne-zero-of-ne-zero--253548b6aae9276d2ea3a6c0.md) | 436 | `result-track:253548b6aae9276d2ea3a6c02f34e861fb610b6c59c0a4a5f1601546f0567b6a` |
| 70 | `theorem` | [mk_denom_ne_zero_of_ne_zero](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/mk-denom-ne-zero-of-ne-zero--341637fc7e284a8c28fb3780.md) | 440 | `result-track:341637fc7e284a8c28fb3780215caa8c6f7bd43a858f27857f1ac6f1c3ab201f` |
| 71 | `theorem` | [divInt_ne_zero_of_ne_zero](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/divint-ne-zero-of-ne-zero--80b5badbbb762999ba3f8140.md) | 444 | `result-track:80b5badbbb762999ba3f81402c7e29ed9047b5db076157a0fbf698c7671fd3f3` |
| 72 | `theorem` | [mul_num_den](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/mul-num-den--4c7d2cc60ddc742a3307fb88.md) | 448 | `result-track:4c7d2cc60ddc742a3307fb88c38c6d4f5398e448ef0ad701476de7dd687986a5` |
| 73 | `theorem` | [div_num_den](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/div-num-den--d5f2de2608155a4153aecc9f.md) | 456 | `result-track:d5f2de2608155a4153aecc9fef5208580979d4987b84dde0caad01b858b1eb12` |
| 74 | `theorem` | [add_divInt](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/add-divint--da9a7e1a8a7666373d5b73d8.md) | 470 | `result-track:da9a7e1a8a7666373d5b73d825173dc4d171d3f8871baa76e7e43b228ad41d3d` |
| 75 | `theorem` | [divInt_eq_div](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/divint-eq-div--5ae4001c6ad5fc113fe5be7d.md) | 477 | `result-track:5ae4001c6ad5fc113fe5be7d90ceac68b3d7482c90b906202bdfb8613c68a7dd` |
| 76 | `theorem` | [divInt_mul_divInt_cancel](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/divint-mul-divint-cancel--5b38f5f218568eb31fde7984.md) | 483 | `result-track:5b38f5f218568eb31fde7984e34d79f0c417fd10c049ec7477fb272a75cedeca` |
| 77 | `theorem` | [divInt_div_divInt_cancel_left](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/divint-div-divint-cancel-left--ae30c02af4f0c500e1b0f689.md) | 490 | `result-track:ae30c02af4f0c500e1b0f6899c97b4b9e4fc6f2d03fbb6723dc9d1ac5e37bf99` |
| 78 | `theorem` | [divInt_div_divInt_cancel_right](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/divint-div-divint-cancel-right--4c21f7a135b356c32710b6fc.md) | 495 | `result-track:4c21f7a135b356c32710b6fc02589085257de163046afc2dad8aa25f92f846ed` |
| 79 | `theorem` | [coe_int_div_eq_divInt](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/coe-int-div-eq-divint--efb5a72a729e6e2a71865c89.md) | 500 | `result-track:efb5a72a729e6e2a71865c89723891e555d732b910b1c31a9f6229c6ad28697c` |
| 80 | `theorem` | [num_div_den](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/num-div-den--340ab2d7af54b508f1d90a81.md) | 506 | `result-track:340ab2d7af54b508f1d90a81617e8c704822a7729a760e556da1c8f73c0e23c3` |
| 81 | `theorem` | [coe_int_num_of_den_eq_one](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/coe-int-num-of-den-eq-one--8e9883f30df3f863e948764f.md) | 511 | `result-track:8e9883f30df3f863e948764f9c9933b1950f050402926fbdb4a5e0ff66cb8b5a` |
| 82 | `theorem` | [den_eq_one_iff](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/den-eq-one-iff--1ad33608d3a5c3dd46c49a4e.md) | 517 | `result-track:1ad33608d3a5c3dd46c49a4efbaf9c188d39a390511009ad72b41c62ceb4b4ba` |
| 83 | `instance` | [canLift](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/canlift--48f52a87d704ece6dea6cdbf.md) | 521 | `declaration-track:48f52a87d704ece6dea6cdbf99dbf064c9f2bfe913a46dc537dce7d01d54bb64` |
| 84 | `theorem` | [coe_nat_eq_divInt](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/coe-nat-eq-divint--86a56f05253eff0df85fe491.md) | 525 | `result-track:86a56f05253eff0df85fe491aa79c42de867166f3f28d4cc19863654f3cdb203` |
| 85 | `theorem` | [coe_nat_num](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/coe-nat-num--34ec9c0be417016761c62b3a.md) | 530 | `result-track:34ec9c0be417016761c62b3a483f3e7adf963d1c47db2e2acfbf837b402fba83` |
| 86 | `theorem` | [coe_nat_den](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/coe-nat-den--a3a8af723e90dcd4903c8b82.md) | 535 | `result-track:a3a8af723e90dcd4903c8b8243e55b68b2496e43e2b5d2ad625d6fb7d09266b8` |
| 87 | `theorem` | [coe_int_inj](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/coe-int-inj--9f042e7a6c147801e8c0f4ab.md) | 541 | `result-track:9f042e7a6c147801e8c0f4abe67928ad48f2aa8232d4d4ce0ee050a2fa3ae48d` |
| 88 | `theorem` | [mkRat_eq_div](../../../../mathematics/Algebra/Defs/Variant0f7ff855a5100c16ab2aeb75da14c972c0a54def2b355b8cb81a526ab225429d.lean/declarations/mkrat-eq-div--97bd73633b4400053749154b.md) | 547 | `result-track:97bd73633b4400053749154b504a78c84f2678b343fcda41cc39adecdf8e2ad7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
