# Verification target: GRWTSK.Algebra.GroupTheory.Lemmas.Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0313751e6be6d84be29c51b23c11f3a75da03cf5",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0313751e6be6d84be29c51b23c11f3a75da03cf5`.

Source path: `GRWTSK/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Commute` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Units` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Units` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [div_self](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/div-self--bef5a067ea4c5a91795f13f3.md) | 28 | `result-track:bef5a067ea4c5a91795f13f372a8936c3edb508e79df42ad21ec632a6893de76` |
| 2 | `theorem` | [eq_mul_inv_iff_mul_eq₀](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/eq-mul-inv-iff-mul-eq--393ad6db6a39d43f883d6458.md) | 32 | `result-track:393ad6db6a39d43f883d6458d2e9a323e56d527f24edfd33b0ed469a73f652b1` |
| 3 | `theorem` | [eq_inv_mul_iff_mul_eq₀](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/eq-inv-mul-iff-mul-eq--ea02a996f86fd1bc14032fdf.md) | 36 | `result-track:ea02a996f86fd1bc14032fdfb1d5f43b7558a3a8f6a105b72b6a9747f2aa8961` |
| 4 | `theorem` | [inv_mul_eq_iff_eq_mul₀](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/inv-mul-eq-iff-eq-mul--c03e90b3c45a0bd12c239ee3.md) | 40 | `result-track:c03e90b3c45a0bd12c239ee36c7cd676e76703c458b8188d35472921365c3a5f` |
| 5 | `theorem` | [mul_inv_eq_iff_eq_mul₀](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/mul-inv-eq-iff-eq-mul--f2fa61c0aeeec70d1a318dd0.md) | 44 | `result-track:f2fa61c0aeeec70d1a318dd0b902315e3c0e683ecd917d9125a90dc969fcf14b` |
| 6 | `theorem` | [mul_inv_eq_one₀](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/mul-inv-eq-one--39c5db01dda60d68aa91e52c.md) | 48 | `result-track:39c5db01dda60d68aa91e52ca51faade06889328f68d844362fdb2132b14382b` |
| 7 | `theorem` | [inv_mul_eq_one₀](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/inv-mul-eq-one--058192ad8764ebc329181fe0.md) | 52 | `result-track:058192ad8764ebc329181fe0465b91356f389014bbafb90b11bfe962a16a28b8` |
| 8 | `theorem` | [mul_eq_one_iff_eq_inv₀](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/mul-eq-one-iff-eq-inv--6bc790e15ece5d42eb11cf2b.md) | 56 | `result-track:6bc790e15ece5d42eb11cf2b1e41089e5c2b9d4ec37f7837c31732ec0ad6ac07` |
| 9 | `theorem` | [mul_eq_one_iff_inv_eq₀](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/mul-eq-one-iff-inv-eq--407b4c0413fb57cac01e573a.md) | 60 | `result-track:407b4c0413fb57cac01e573acd3b4a65d9692b0a3a15106cc06ce91dd61fbf48` |
| 10 | `theorem` | [div_mul_cancel](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/div-mul-cancel--3963aa0019c29726a3550963.md) | 65 | `result-track:3963aa0019c29726a3550963799f54927acc32582a18cfea69bf4352223da4bf` |
| 11 | `theorem` | [mul_div_cancel](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/mul-div-cancel--3c282f9f383aeb0d33743264.md) | 70 | `result-track:3c282f9f383aeb0d337432640eb30e12c2788629cdf83d4a59927c68096f69f9` |
| 12 | `theorem` | [mul_one_div_cancel](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/mul-one-div-cancel--5b60fde46b1957697ad6d84a.md) | 74 | `result-track:5b60fde46b1957697ad6d84ae7d81cfdaf2835fbeac7624bf77c6803f24554cc` |
| 13 | `theorem` | [one_div_mul_cancel](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/one-div-mul-cancel--e7c7a92f13d0368137cf61bf.md) | 78 | `result-track:e7c7a92f13d0368137cf61bf7ae15500de4a6bec171e49d815159e4d0bb07c1e` |
| 14 | `theorem` | [div_left_inj'](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/div-left-inj--12d167c4eae572f180157c59.md) | 82 | `result-track:12d167c4eae572f180157c59e50e4c202e8f61ff68c9b9422e2c9cde03af15ab` |
| 15 | `theorem` | [div_eq_iff](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/div-eq-iff--ea280cbdea27d6b6301489dd.md) | 87 | `result-track:ea280cbdea27d6b6301489dda842da99657c427f0776f5083b8756f5db8cc1d4` |
| 16 | `theorem` | [eq_div_iff](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/eq-div-iff--58f45098802b440c959e849b.md) | 92 | `result-track:58f45098802b440c959e849b6c407640846ac2b50de218fa68de3eb6a1fcd52a` |
| 17 | `theorem` | [div_eq_iff_mul_eq](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/div-eq-iff-mul-eq--00c59e77f2b5d886967b50fc.md) | 96 | `result-track:00c59e77f2b5d886967b50fc9b1a0088c8c451e81f8cdf78ba9a58b96f33f4e0` |
| 18 | `theorem` | [eq_div_iff_mul_eq](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/eq-div-iff-mul-eq--2a3a3db9433d63f08c34d93a.md) | 100 | `result-track:2a3a3db9433d63f08c34d93a7582604579d3d5f8d139c40c6a38aedd7282e325` |
| 19 | `theorem` | [div_eq_of_eq_mul](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/div-eq-of-eq-mul--5ca7ba602c8fdb4177032119.md) | 104 | `result-track:5ca7ba602c8fdb4177032119eb8c72d8f6cd838128367d187dde6ee626ba3792` |
| 20 | `theorem` | [eq_div_of_mul_eq](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/eq-div-of-mul-eq--8e24bed7f3fba12fd2c6eba1.md) | 108 | `result-track:8e24bed7f3fba12fd2c6eba1ddeaee694effaeca11fe8422bf9b3016294e8544` |
| 21 | `theorem` | [div_eq_one_iff_eq](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/div-eq-one-iff-eq--3d9d78acf50948df3fc23e60.md) | 112 | `result-track:3d9d78acf50948df3fc23e607e6652232ab61a31dd224120679afb38409a5255` |
| 22 | `theorem` | [div_mul_left](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/div-mul-left--a06403d23d127481ba9fe080.md) | 116 | `result-track:a06403d23d127481ba9fe080acf38fbbf07a687f0c522b74aa173f0bdf3dccba` |
| 23 | `theorem` | [mul_div_mul_right](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/mul-div-mul-right--95979f104ffdd9b6fc525029.md) | 120 | `result-track:95979f104ffdd9b6fc52502931eb71419ae3c181f75a27c8842e32ac2e344021` |
| 24 | `theorem` | [mul_mul_div](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/mul-mul-div--204376df377bd40b08bc2c0b.md) | 124 | `result-track:204376df377bd40b08bc2c0b85f4c0acbdacf9d54b6580ee72a3d918b97faf28` |
| 25 | `theorem` | [div_div_div_cancel_right](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/div-div-div-cancel-right--bffe089d822dc89a89ef2ea3.md) | 128 | `result-track:bffe089d822dc89a89ef2ea3423f8be8c543f50b211ba2c6b3180ee8598b9bed` |
| 26 | `theorem` | [div_mul_div_cancel](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/div-mul-div-cancel--e656397a709c81a9d34ee2ad.md) | 132 | `result-track:e656397a709c81a9d34ee2adb57679062bc7d1911bbcf94284f8cfd01c1188f9` |
| 27 | `theorem` | [div_mul_cancel_of_imp](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/div-mul-cancel-of-imp--ff1b1bedb9f4f89edd949b48.md) | 136 | `result-track:ff1b1bedb9f4f89edd949b48fd5da9e47de3b4959ec95b70f565eef3ee8b6a54` |
| 28 | `theorem` | [mul_div_cancel_of_imp](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/mul-div-cancel-of-imp--b3bdf9914a15ff45936a5718.md) | 140 | `result-track:b3bdf9914a15ff45936a57183b6ae3bbde478a04df8b359c7b51db46d92c0edb` |
| 29 | `theorem` | [divp_mk0](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/divp-mk0--f1b33c2ff1505dc5bac26cc1.md) | 145 | `result-track:f1b33c2ff1505dc5bac26cc1d7eefcab546bdcd0d0c7df529fdf1192fb0e7af2` |
| 30 | `theorem` | [div_mul_right](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/div-mul-right--cb426fac2e9b80b332ce7abf.md) | 156 | `result-track:cb426fac2e9b80b332ce7abf2f4be389f33d7911878500040d14858b9bdbcb1d` |
| 31 | `theorem` | [mul_div_cancel_left_of_imp](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/mul-div-cancel-left-of-imp--df7ddfe6d850b6b8f24e0418.md) | 160 | `result-track:df7ddfe6d850b6b8f24e041862f014e3d34d4fb1369451e5dc3e3874b0283ec6` |
| 32 | `theorem` | [mul_div_cancel_left](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/mul-div-cancel-left--d511849578d5042dbc86c17b.md) | 164 | `result-track:d511849578d5042dbc86c17b86fa9d1bb0510a0f2bf6ad864e4803c0e9ba38b7` |
| 33 | `theorem` | [mul_div_cancel_of_imp'](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/mul-div-cancel-of-imp--ba43aefe872708b42a10ac72.md) | 168 | `result-track:ba43aefe872708b42a10ac7225e4d50810e3a89a2e4013f7c995ebdb90426973` |
| 34 | `theorem` | [mul_div_cancel'](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/mul-div-cancel--17cd1ac7098267690ae04030.md) | 172 | `result-track:17cd1ac7098267690ae04030d4e9d2665b98a743e50f3b728e1063c31f7d2974` |
| 35 | `theorem` | [mul_div_mul_left](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/mul-div-mul-left--0342434f1c8eaeb81175deeb.md) | 176 | `result-track:0342434f1c8eaeb81175deeb41ea672aadf1be0302eda038671b6638b1cf5f50` |
| 36 | `theorem` | [mul_eq_mul_of_div_eq_div](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/mul-eq-mul-of-div-eq-div--9eea99852e873120d42f27bf.md) | 180 | `result-track:9eea99852e873120d42f27bf29b8b47568d7066d0b8b0691976a93777afb2e2c` |
| 37 | `theorem` | [div_eq_div_iff](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/div-eq-div-iff--bac6810ec101f418acbb0aa8.md) | 186 | `result-track:bac6810ec101f418acbb0aa82d0f0a2fac7bb76d2f5422501826e52252365c58` |
| 38 | `theorem` | [div_div_cancel'](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/div-div-cancel--dd302c7892a1fc5a32bc5da1.md) | 190 | `result-track:dd302c7892a1fc5a32bc5da1bca384603e692129f04260c70478780b857c2f29` |
| 39 | `theorem` | [div_div_cancel_left'](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/div-div-cancel-left--3a98c6217814e99ce2227af7.md) | 194 | `result-track:3a98c6217814e99ce2227af7946c7ec47a1d3e81f676eb4aa43720dddf9c1fe3` |
| 40 | `theorem` | [div_helper](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/div-helper--753474192a0ef2191301d7c3.md) | 198 | `result-track:753474192a0ef2191301d7c36deb70f7f26f70318da165eff7e4e3807a43a5bf` |
| 41 | `theorem` | [div_div_div_cancel_left'](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/div-div-div-cancel-left--6d3563c3e23220f4371f18a5.md) | 202 | `result-track:6d3563c3e23220f4371f18a56ad424469717fb0c26e7f4efb5c4dedc13af0f45` |
| 42 | `theorem` | [map_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/map-ne-zero--19052a36cdac833db263573b.md) | 213 | `result-track:19052a36cdac833db263573ba440a96c31547bf26181f686753b2f6e3955a757` |
| 43 | `theorem` | [map_eq_zero](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/map-eq-zero--c9d6f1f31041e120a44e8acb.md) | 218 | `result-track:c9d6f1f31041e120a44e8acb91e1e030e6ca5f5232e3acc5918945c3e77c5c41` |
| 44 | `theorem` | [eq_on_inv₀](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/eq-on-inv--edcb7946bb867fb3dbe0118e.md) | 223 | `result-track:edcb7946bb867fb3dbe0118eb37a75c9ccb5798bc5baec7fefa3d38c722ac97b` |
| 45 | `theorem` | [map_inv₀](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/map-inv--38fc16c402888ee7040a813c.md) | 237 | `result-track:38fc16c402888ee7040a813c1972dc947c50953d8b0f906feddc6fa6ede8b943` |
| 46 | `theorem` | [map_div₀](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/map-div--7b57d24514316aadb6cda8a1.md) | 245 | `result-track:7b57d24514316aadb6cda8a155434d0924b24d7caf1392106754dc7d0ee52552` |
| 47 | `def` | [MonoidWithZero.inverse](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/monoidwithzero-inverse--5c790237f57e1da8d31b3ef0.md) | 253 | `declaration-track:5c790237f57e1da8d31b3ef0db798f4002c623c0e85aedbdef928f51b870a0af` |
| 48 | `theorem` | [MonoidWithZero.coe_inverse](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/monoidwithzero-coe-inverse--31523a8619ec36d4fc203a7b.md) | 262 | `result-track:31523a8619ec36d4fc203a7bb58f31a60474f3dab400a7e91c8ae516f8fc5c38` |
| 49 | `theorem` | [MonoidWithZero.inverse_apply](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/monoidwithzero-inverse-apply--41130d1af71c353ddb9b98fc.md) | 268 | `result-track:41130d1af71c353ddb9b98fc2875adaebf113f46955628e2d3851e8b629c2b78` |
| 50 | `def` | [invMonoidWithZeroHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/invmonoidwithzerohom--19659787b95aea26f9610c90.md) | 274 | `declaration-track:19659787b95aea26f9610c90d3346be5f5b265d73d9dab304904384803fc2a45` |
| 51 | `theorem` | [smul_mk0](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/declarations/smul-mk0--d9075f1b1603b4bb24d97d60.md) | 285 | `result-track:d9075f1b1603b4bb24d97d603ea41ba42be34ff8dc1fe071b63dfdd47dbea0fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
