# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Equiv.Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "710168b93e494c719e588bf424035b8e24181dcc",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `710168b93e494c719e588bf424035b8e24181dcc`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.MvPolynomial.Rename` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.AlgebraMap` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MvPolynomial.Variables` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Fin` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Fin` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pUnitAlgEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/punitalgequiv--a18126ba8e9d4e801da8c314.md) | 65 | `declaration-track:a18126ba8e9d4e801da8c314bbc7c5c0cc8dd68172016c2c9d007bb624eb6564` |
| 2 | `def` | [mapEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/mapequiv--61821fe5212bf02b745159ff.md) | 95 | `declaration-track:61821fe5212bf02b745159ffd36a863c9400057e37c923f5ac18cfdb98d640ae` |
| 3 | `theorem` | [mapEquiv_refl](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/mapequiv-refl--25b9081de98a965d2bb33340.md) | 105 | `result-track:25b9081de98a965d2bb333406c39f3729eeff50a25754b19b942c519c1988bad` |
| 4 | `theorem` | [mapEquiv_symm](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/mapequiv-symm--3d4d7f1a850517818a8a5a71.md) | 110 | `result-track:3d4d7f1a850517818a8a5a7100271574e4820bf77776828ff54893b1a49c0151` |
| 5 | `theorem` | [mapEquiv_trans](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/mapequiv-trans--b2cb6375f412b8a409b75120.md) | 116 | `result-track:b2cb6375f412b8a409b75120bf32761c723589ee729790889b6be59b0fd0a6ca` |
| 6 | `def` | [mapAlgEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/mapalgequiv--611e277c4770d21c065d558b.md) | 129 | `declaration-track:611e277c4770d21c065d558bf7234645481efcda7544a5d1e0880319bc28f00a` |
| 7 | `theorem` | [mapAlgEquiv_refl](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/mapalgequiv-refl--c308c3d98d82f6f55aec8423.md) | 134 | `result-track:c308c3d98d82f6f55aec8423160c74ad3e7e5bf5fec78612210ba1709dff4095` |
| 8 | `theorem` | [mapAlgEquiv_symm](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/mapalgequiv-symm--b9812b0f596b8be97df56baf.md) | 139 | `result-track:b9812b0f596b8be97df56baf04928dfc6c5dbb4e2611c5db2ce255ce2067c3a7` |
| 9 | `theorem` | [mapAlgEquiv_trans](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/mapalgequiv-trans--322268b24b6731621310e7f2.md) | 144 | `result-track:322268b24b6731621310e7f237ccc8f0cfbae6532aeb29cb2472f23d6ee9ff2e` |
| 10 | `def` | [sumToIter](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/sumtoiter--c0388667ad087b583ab9767c.md) | 163 | `declaration-track:c0388667ad087b583ab9767c7b14b6a83d2cc954d5841f6391a7a7128e28a69a` |
| 11 | `theorem` | [sumToIter_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/sumtoiter-c--c65fdfc1236d50170a62c74b.md) | 168 | `result-track:c65fdfc1236d50170a62c74be97d97cb4055d96b54d9f3a508606dd61aaa5bed` |
| 12 | `theorem` | [sumToIter_Xl](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/sumtoiter-xl--7bfd39e107b03f08318ea6c6.md) | 174 | `result-track:7bfd39e107b03f08318ea6c664b2abefd22a977a9c1adef319115b5c7c348fab` |
| 13 | `theorem` | [sumToIter_Xr](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/sumtoiter-xr--5bc4ff6eaec44cae7e324c44.md) | 180 | `result-track:5bc4ff6eaec44cae7e324c44c6195b08f9fa63a3f128e48613dc3adda6bf7e59` |
| 14 | `def` | [iterToSum](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/itertosum--6c9b1145c62b50756cf75fda.md) | 191 | `declaration-track:6c9b1145c62b50756cf75fda696ab4cbfde1e7ab775a630d02df8d82a52da024` |
| 15 | `theorem` | [iterToSum_C_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/itertosum-c-c--e7ef66ec8a87bf17912086ca.md) | 195 | `result-track:e7ef66ec8a87bf17912086ca66e4944f418722b5dc714935002dab56c128204f` |
| 16 | `theorem` | [iterToSum_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/itertosum-x--0fad9100a69ddd2f529c7dd6.md) | 200 | `result-track:0fad9100a69ddd2f529c7dd6e44e760fc15082b2cf0316b3c1ce0379d94c7066` |
| 17 | `theorem` | [iterToSum_C_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/itertosum-c-x--706297cd489eec98572c69d7.md) | 205 | `result-track:706297cd489eec98572c69d71604fd7b7e12354e623d62c0cb2e5eb2da34150a` |
| 18 | `def` | [isEmptyAlgEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/isemptyalgequiv--d1dabfea4272a5e889793111.md) | 215 | `declaration-track:d1dabfea4272a5e8897931116eb927c60501cf43d4f1cc829bb70773ba313cb7` |
| 19 | `def` | [isEmptyRingEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/isemptyringequiv--8b31e2829987e917caddb0bb.md) | 228 | `declaration-track:8b31e2829987e917caddb0bbf4a7c4487b2fa5e395fe5135e4613f24a74be094` |
| 20 | `def` | [mvPolynomialEquivMvPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/mvpolynomialequivmvpolynomial--723cbb294258c73b8e6e77dc.md) | 236 | `declaration-track:723cbb294258c73b8e6e77dc637c87373fc37c72fb93dec0dbedf824fb00f21b` |
| 21 | `def` | [sumRingEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/sumringequiv--577afcf0f0cbd7ed9da3b430.md) | 253 | `declaration-track:577afcf0f0cbd7ed9da3b430568236ea434b890850d146f890c887f5fac4e08d` |
| 22 | `def` | [sumAlgEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/sumalgequiv--69c36abbee949ecfb8d6064a.md) | 267 | `declaration-track:69c36abbee949ecfb8d6064a657555c8f3a437338ab3924eca4d04047bc22263` |
| 23 | `def` | [optionEquivLeft](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/optionequivleft--c55cda1eed321f49e64817c5.md) | 286 | `declaration-track:c55cda1eed321f49e64817c51efb829a2c2ff06d508400b1df357e3dec00da87` |
| 24 | `def` | [optionEquivRight](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/optionequivright--c7cef2f62c58edbb2e9ba829.md) | 297 | `declaration-track:c7cef2f62c58edbb2e9ba8299bb037f56e22ed160320ae97b33619dc56df3dec` |
| 25 | `def` | [finSuccEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/finsuccequiv--5b6728b5c09c3079c83840e7.md) | 316 | `declaration-track:5b6728b5c09c3079c83840e717057fa8e72d080ce83251b81701926292eff976` |
| 26 | `theorem` | [finSuccEquiv_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/finsuccequiv-eq--5eaa6f49f0ffcdf18e6d8c26.md) | 320 | `result-track:5eaa6f49f0ffcdf18e6d8c26fd290ee8b46de52ae624eea6a2e0767dd8ec250d` |
| 27 | `theorem` | [finSuccEquiv_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/finsuccequiv-apply--ad7dd562067212b9949e869a.md) | 332 | `result-track:ad7dd562067212b9949e869acdb2df3008ba7f74265d7b622bb1ad5b0926909d` |
| 28 | `theorem` | [finSuccEquiv_comp_C_eq_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/finsuccequiv-comp-c-eq-c--4e74dcae0f516d6c43fc7f54.md) | 339 | `result-track:4e74dcae0f516d6c43fc7f546ff2c68fcaf38deb2a5ed0f2a55fb44713d011fe` |
| 29 | `theorem` | [finSuccEquiv_X_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/finsuccequiv-x-zero--7524f8b1f5b5d1c46423a1b9.md) | 354 | `result-track:7524f8b1f5b5d1c46423a1b9d963aab06577069cc638c8b0817229c118bc6199` |
| 30 | `theorem` | [finSuccEquiv_X_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/finsuccequiv-x-succ--976431195f3387262a57e1ab.md) | 358 | `result-track:976431195f3387262a57e1ab3ef129a688c440dba4abbb86cd060da9f1b51ca9` |
| 31 | `theorem` | [finSuccEquiv_coeff_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/finsuccequiv-coeff-coeff--cb460593da6d6478575b255e.md) | 365 | `result-track:cb460593da6d6478575b255e8235232b9435a41d3d2bb29fc22f0cb275d14e8e` |
| 32 | `theorem` | [eval_eq_eval_mv_eval'](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/eval-eq-eval-mv-eval--77a2df6011e7ad1196fcec0a.md) | 389 | `result-track:77a2df6011e7ad1196fcec0a174a61fd2dd5be4e59e9fcb65a4db7d66b0d74fa` |
| 33 | `theorem` | [coeff_eval_eq_eval_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/coeff-eval-eq-eval-coeff--dc24f5e40300d09d3575680f.md) | 413 | `result-track:dc24f5e40300d09d3575680ff0d235e938c015b4e6927e68754f6a02d948a127` |
| 34 | `theorem` | [support_coeff_finSuccEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/support-coeff-finsuccequiv--09ce6ac4afacf79a856c53b4.md) | 418 | `result-track:09ce6ac4afacf79a856c53b4ee8780e994ed19eee438112c8c737d17293a4056` |
| 35 | `theorem` | [finSuccEquiv_support](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/finsuccequiv-support--ab05f1429f7dbbd87e66a938.md) | 427 | `result-track:ab05f1429f7dbbd87e66a9384e8c949da744c02d21cbec38391a1c61cb49870a` |
| 36 | `theorem` | [finSuccEquiv_support'](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/finsuccequiv-support--ddbba8457f6fe1e5a34f8e59.md) | 441 | `result-track:ddbba8457f6fe1e5a34f8e59536181d9b522d6311dbb02e6b7c5450e7ba923c0` |
| 37 | `theorem` | [support_finSuccEquiv_nonempty](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/support-finsuccequiv-nonempty--5814e51b5f9b27da00dc5834.md) | 460 | `result-track:5814e51b5f9b27da00dc583442d7c9ede49973bf05a1873d6cb051ad2896fbff` |
| 38 | `theorem` | [degree_finSuccEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/degree-finsuccequiv--08f128753c69fd8afe4f9c0d.md) | 472 | `result-track:08f128753c69fd8afe4f9c0da867210caf8088b8df0056cde8f8a375af7d0724` |
| 39 | `theorem` | [natDegree_finSuccEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/natdegree-finsuccequiv--6d79e520229918c160b38799.md) | 485 | `result-track:6d79e520229918c160b38799db8a050eacd413458405c488f700ae1b6eb2eb77` |
| 40 | `theorem` | [degreeOf_coeff_finSuccEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variante260b79087c7842233fa7b45449610df829358e14fcfea22251dac45a1d0b15f.lean/declarations/degreeof-coeff-finsuccequiv--18fb7522ab1f0e4800dbc602.md) | 494 | `result-track:18fb7522ab1f0e4800dbc6024a14fc9d2e2378017796828e908a323cc46b83a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
