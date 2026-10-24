# Verification target: GRWTSK.Algebra.Inverse.Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6807c2c077b7bf31bc182ff59c692b6d5508d154",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/index.md) · [Full source](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6807c2c077b7bf31bc182ff59c692b6d5508d154`.

Source path: `GRWTSK/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.FieldDivision` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DiscreteValuationRing.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPowerSeries.Inverse` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.NoZeroDivisors` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.ResidueField.Defs` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.Multiplicity` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ENat.Lattice` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inv.aux](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/inv-aux--e44ec18deb8b17acca2c7f2d.md) | 57 | `declaration-track:e44ec18deb8b17acca2c7f2d47454302a85eb41af961478c8ac4acb058dba03d` |
| 2 | `theorem` | [coeff_inv_aux](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/coeff-inv-aux--f01222ef216a684177d95c97.md) | 60 | `result-track:f01222ef216a684177d95c97f79bb5cea3599f04389ab8e304db3892a9b87e1e` |
| 3 | `def` | [invOfUnit](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/invofunit--f6d652e95a1d5544886bec51.md) | 89 | `declaration-track:f6d652e95a1d5544886bec5169d453dec491b61be084798faa576dc01ba387c6` |
| 4 | `theorem` | [coeff_invOfUnit](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/coeff-invofunit--4d7d861529a8c36b979e1fd6.md) | 92 | `result-track:4d7d861529a8c36b979e1fd627de48ffa78ba82647e329ae37341a461f033cae` |
| 5 | `theorem` | [constantCoeff_invOfUnit](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/constantcoeff-invofunit--e77fcdc39d171903f816111a.md) | 102 | `result-track:e77fcdc39d171903f816111a639fe7471a85769880a77fa28266ad1359d15acc` |
| 6 | `theorem` | [mul_invOfUnit](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/mul-invofunit--b8e04204b5c85a5e85f0ac46.md) | 107 | `result-track:b8e04204b5c85a5e85f0ac4652415beeeee48b77124bbbcf9765c8d4ec5a8ed0` |
| 7 | `theorem` | [invOfUnit_mul](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/invofunit-mul--b9827f397dfdbe729c9eb4d1.md) | 112 | `result-track:b9827f397dfdbe729c9eb4d1b0c75656895ec74eb6ee641abcbd81aa9aff9644` |
| 8 | `theorem` | [isUnit_iff_constantCoeff](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/isunit-iff-constantcoeff--cf5f1dc38ab36e559347a302.md) | 116 | `result-track:cf5f1dc38ab36e559347a302d06f6925068c9cb3aa64714e35b7c6563696f02c` |
| 9 | `theorem` | [sub_const_eq_shift_mul_X](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/sub-const-eq-shift-mul-x--59eb89327e4beedf6d936137.md) | 121 | `result-track:59eb89327e4beedf6d93613754ade8850560b762e40cb663ffc14bc52c33be86` |
| 10 | `theorem` | [sub_const_eq_X_mul_shift](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/sub-const-eq-x-mul-shift--fd5fcd151c4f653b8fa8a014.md) | 125 | `result-track:fd5fcd151c4f653b8fa8a014612b2e051d757a3da6c9ae7194b3af7bb006349f` |
| 11 | `def` | [inv](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/inv--693cd6b173d24973d98efd43.md) | 136 | `declaration-track:693cd6b173d24973d98efd430569b8080503ebf6c61694140993f58bccdbf7a9` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/instance--f0ae62882c044ccc46290389.md) | 139 | `declaration-track:f0ae62882c044ccc4629038977bbb2ac76fb63d22dfa74e9667f16a04e115edb` |
| 13 | `theorem` | [inv_eq_inv_aux](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/inv-eq-inv-aux--ebcd1b870841bf9382744600.md) | 141 | `result-track:ebcd1b870841bf93827446004220008253bfa9cd3a43d1fc7b08cf0f0b79c101` |
| 14 | `theorem` | [coeff_inv](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/coeff-inv--0c69280bc4d2abe9298ec756.md) | 144 | `result-track:0c69280bc4d2abe9298ec756f7c5fc82c2ce60ad71bae40fde47695b7a2cb392` |
| 15 | `theorem` | [constantCoeff_inv](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/constantcoeff-inv--000cf2b91660481c5f6f12f9.md) | 154 | `result-track:000cf2b91660481c5f6f12f91c1cad6f20d48824cc3cd900f1ba8ceb2e934d03` |
| 16 | `theorem` | [inv_eq_zero](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/inv-eq-zero--5714d8ddd18666b785e6d5cc.md) | 157 | `result-track:5714d8ddd18666b785e6d5ccb41244b782ab7e4f5fab859ad55a59791d94fd45` |
| 17 | `theorem` | [zero_inv](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/zero-inv--4c8dcd8f2622dff72514a3cf.md) | 160 | `result-track:4c8dcd8f2622dff72514a3cf3059eceff789089b5689046e4bb59356718dded7` |
| 18 | `theorem` | [invOfUnit_eq](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/invofunit-eq--19bc0264fe66ee86161b3d7a.md) | 164 | `result-track:19bc0264fe66ee86161b3d7a6effe0e842ec46e48946b56c2246aef9fe07148a` |
| 19 | `theorem` | [invOfUnit_eq'](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/invofunit-eq--5af51caa7b05b2f4612db241.md) | 169 | `result-track:5af51caa7b05b2f4612db24106d3cbd0eb3c1f1c3f1e9376552354050dadbf92` |
| 20 | `theorem` | [mul_inv_cancel](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/mul-inv-cancel--ad8da1795cd30f016a43d508.md) | 174 | `result-track:ad8da1795cd30f016a43d508f620e22aaf95b09570bc0364c6d49d978767c88a` |
| 21 | `theorem` | [inv_mul_cancel](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/inv-mul-cancel--7eb1c798cddc5c518564ae8d.md) | 178 | `result-track:7eb1c798cddc5c518564ae8d1a28493ead6062accfd07359332a518c43bd6f83` |
| 22 | `theorem` | [eq_mul_inv_iff_mul_eq](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/eq-mul-inv-iff-mul-eq--596cf94228bf05baac727aa5.md) | 181 | `result-track:596cf94228bf05baac727aa5d34faab2d0fd32d900471b7ad04ac9a624d5f136` |
| 23 | `theorem` | [eq_inv_iff_mul_eq_one](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/eq-inv-iff-mul-eq-one--59a89422b90ac810396136ed.md) | 185 | `result-track:59a89422b90ac810396136edbc394fdc5ddb70bc08c0aeb17f010f390e816ddc` |
| 24 | `theorem` | [inv_eq_iff_mul_eq_one](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/inv-eq-iff-mul-eq-one--83eca5cf9b316c55aa22a6f3.md) | 189 | `result-track:83eca5cf9b316c55aa22a6f3104fbef947bdb6e8fe0f34bc8bea88e57307b620` |
| 25 | `theorem` | [mul_inv_rev](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/mul-inv-rev--bea25f59a538fb58872daff6.md) | 193 | `result-track:bea25f59a538fb58872daff61657d9859ba88c1f752da1b4f830df5e8bbfface` |
| 26 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/instance--3b1cc6a3ef0effaa36e03de7.md) | 196 | `declaration-track:3b1cc6a3ef0effaa36e03de78237e71deea521bcda71380574807958728793c1` |
| 27 | `theorem` | [C_inv](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/c-inv--4f88da1174433c85dffed0a1.md) | 200 | `result-track:4f88da1174433c85dffed0a1b8ae21dc83dfceeb339779252b22f6776f2229cb` |
| 28 | `theorem` | [X_inv](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/x-inv--8bb88678db623cd919881a9c.md) | 204 | `result-track:8bb88678db623cd919881a9c76ffe485f52be343f73c498a266c3090aab98f9a` |
| 29 | `theorem` | [smul_inv](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/smul-inv--92a30be6a53005f29e57f3c6.md) | 207 | `result-track:92a30be6a53005f29e57f3c6950452c084d3a5be9dd229e3c345ffba10aac2e0` |
| 30 | `def` | [firstUnitCoeff](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/firstunitcoeff--aa955e0dec6dc338faa84d38.md) | 212 | `declaration-track:aa955e0dec6dc338faa84d38bb4a7dfd7d5f5946cf9c369ab11dbfb727237b97` |
| 31 | `def` | [Inv_divided_by_X_pow_order](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/inv-divided-by-x-pow-order--8408ed7ec8fa2ed743f92908.md) | 221 | `declaration-track:8408ed7ec8fa2ed743f92908a65fdee61f99983cd0f5112e11866ca21fd5cfa4` |
| 32 | `theorem` | [Inv_divided_by_X_pow_order_rightInv](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/inv-divided-by-x-pow-order-rightinv--f391bdde88f7c984407dfdec.md) | 225 | `result-track:f391bdde88f7c984407dfdecd83afa436755dc1a736037be0c83987607a2fa93` |
| 33 | `theorem` | [Inv_divided_by_X_pow_order_leftInv](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/inv-divided-by-x-pow-order-leftinv--6fa07171756289baeb09ee80.md) | 230 | `result-track:6fa07171756289baeb09ee80e0e09899962883466fe6f0539272cd6926ddd2bc` |
| 34 | `def` | [Unit_of_divided_by_X_pow_order](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/unit-of-divided-by-x-pow-order--b979ae7a04d096e1f838865d.md) | 238 | `declaration-track:b979ae7a04d096e1f838865dafaafd36483e71656e46f803d1ec1321614ff6ad` |
| 35 | `theorem` | [isUnit_divided_by_X_pow_order](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/isunit-divided-by-x-pow-order--c2698578c2457f5e278a173c.md) | 246 | `result-track:c2698578c2457f5e278a173c3a1adcdc6813fe6e9a8365e9515a4af051b9eaa8` |
| 36 | `theorem` | [Unit_of_divided_by_X_pow_order_nonzero](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/unit-of-divided-by-x-pow-order-nonzero--9e0e3dd29f362ce04d8a4474.md) | 251 | `result-track:9e0e3dd29f362ce04d8a4474d34f12a479b56f1d79f947c050037d4c4aa65dbd` |
| 37 | `theorem` | [Unit_of_divided_by_X_pow_order_zero](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/unit-of-divided-by-x-pow-order-zero--c1dd97ba2b937e5aac68649f.md) | 256 | `result-track:c1dd97ba2b937e5aac68649fe14d75487c77f3399f0046bacef01f1fa9db04ca` |
| 38 | `theorem` | [eq_divided_by_X_pow_order_Iff_Unit](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/eq-divided-by-x-pow-order-iff-unit--a14c091f37f13ecafbef0dd5.md) | 259 | `result-track:a14c091f37f13ecafbef0dd5c4ec10bce5109f259b88356d043cfcc0a4d39781` |
| 39 | `theorem` | [map.isLocalHom](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/map-islocalhom--7f203ce718f4fe553e91bbf5.md) | 274 | `result-track:7f203ce718f4fe553e91bbf52e53cfaf9523be99ce4747750940f46bdc3f568a` |
| 40 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/instance--eec634c2d55a230d0e75e750.md) | 279 | `declaration-track:eec634c2d55a230d0e75e750843bad91673ddd2ac9ee61d5cbc4e5c9bb856bc2` |
| 41 | `theorem` | [hasUnitMulPowIrreducibleFactorization](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/hasunitmulpowirreduciblefactorization--62c4b471467c30d46add5048.md) | 291 | `result-track:62c4b471467c30d46add50484b2e1a6ade231a037525cf6f6fa8beac14b750fc` |
| 42 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/instance--edaf9f29085ac07b6dcc632a.md) | 301 | `declaration-track:edaf9f29085ac07b6dcc632a1727328ff741e16c6a12cd278c2b0770b600dab3` |
| 43 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/instance--57cf77158ef91e1296aa6fce.md) | 304 | `declaration-track:57cf77158ef91e1296aa6fcee9473cd6a4c55319029d34f814291534a9ed7fe9` |
| 44 | `instance` | [isNoetherianRing](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/isnoetherianring--5ab483e03310855cec2c2952.md) | 307 | `declaration-track:5ab483e03310855cec2c2952b7cb3325e7deaedda298d82153a31a77d9dedc4b` |
| 45 | `theorem` | [maximalIdeal_eq_span_X](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/maximalideal-eq-span-x--c6048ca21b401ab58f1296d6.md) | 311 | `result-track:c6048ca21b401ab58f1296d69eea9c1e31bc82206c6ae973d43776d8d9b64893` |
| 46 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/instance--9198715e43cbf2fe5bfa36cb.md) | 331 | `declaration-track:9198715e43cbf2fe5bfa36cb2bdfd88384a37366b23a4542be93b126abe56dcd` |
| 47 | `theorem` | [normUnit_X](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/normunit-x--602368c60b0bd0ac0297bb4f.md) | 346 | `result-track:602368c60b0bd0ac0297bb4f0d8f88543475b79fa26c584da191163713819be9` |
| 48 | `theorem` | [X_eq_normalizeX](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/x-eq-normalizex--3516194744ecf08be82176cc.md) | 349 | `result-track:3516194744ecf08be82176ccbf454cd7c64d29dddca4a086abf4ed0f241e9087` |
| 49 | `theorem` | [normalized_count_X_eq_of_coe](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/normalized-count-x-eq-of-coe--70aade7d19ff5ac66731356b.md) | 355 | `result-track:70aade7d19ff5ac66731356b89f59837921007e4045ec9462731ac58b2f59380` |
| 50 | `theorem` | [ker_coeff_eq_max_ideal](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/ker-coeff-eq-max-ideal--2a155a82ca76197f5bc0ae66.md) | 368 | `result-track:2a155a82ca76197f5bc0ae6661607324faf99cb9aef2c9c024b435ca21c413fb` |
| 51 | `def` | [residueFieldOfPowerSeries](../../../../mathematics/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/declarations/residuefieldofpowerseries--ff82df6303d54fb28b2f269e.md) | 374 | `declaration-track:ff82df6303d54fb28b2f269ebbd85935d3bce1dac587b072b34e865dd234d1e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
