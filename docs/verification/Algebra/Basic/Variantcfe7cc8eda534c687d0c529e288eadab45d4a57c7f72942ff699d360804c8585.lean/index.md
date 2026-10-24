# Verification target: GRWTSK.Algebra.Basic.Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "813129667a9e0ca0fa466dfa5676fa562b8a5db4",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `813129667a9e0ca0fa466dfa5676fa562b8a5db4`.

Source path: `GRWTSK/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Nontriviality` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AssertExists` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ne_zero](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/ne-zero--f885d9a42ebf8e293b323c75.md) | 38 | `result-track:f885d9a42ebf8e293b323c754ad8a1ce5ced0dfb5a12a32892341c0b84e021b7` |
| 2 | `theorem` | [mul_left_eq_zero](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/mul-left-eq-zero--6192b2b6b0335814b60c1a39.md) | 45 | `result-track:6192b2b6b0335814b60c1a39e8e1a1dae5d03c6d6c4cd1fdb148352623e1106e` |
| 3 | `theorem` | [mul_right_eq_zero](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/mul-right-eq-zero--88562804fc38c514c9bd8d16.md) | 50 | `result-track:88562804fc38c514c9bd8d160df36d7167aa504b2209f1265c6035da1ddb5628` |
| 4 | `theorem` | [ne_zero](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/ne-zero--f30579e7de16fec1d10be126.md) | 58 | `result-track:f30579e7de16fec1d10be1265d7e0716fd07a2ce747ff08bf35090b8416045e2` |
| 5 | `theorem` | [mul_right_eq_zero](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/mul-right-eq-zero--9cd32d699d7c127e4424a257.md) | 63 | `result-track:9cd32d699d7c127e4424a2574b1ee732c7d1f48caff7edfb8182b1a1f30ddb0c` |
| 6 | `theorem` | [mul_left_eq_zero](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/mul-left-eq-zero--1fc282ef090a2931eef5cb7f.md) | 68 | `result-track:1fc282ef090a2931eef5cb7fe58c313b819bf66814779aa96b2ec9acad386f6a` |
| 7 | `theorem` | [isUnit_zero_iff](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/isunit-zero-iff--864583f1c1f06e8dc1723d5f.md) | 76 | `result-track:864583f1c1f06e8dc1723d5f2713ea4049ec60ac6952f1c9ae3c2484b0318bc5` |
| 8 | `theorem` | [not_isUnit_zero](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/not-isunit-zero--5dc6c012471a8aa4bf311b94.md) | 82 | `result-track:5dc6c012471a8aa4bf311b94e84a980526af1e738bf2dfcdf0096fd628426ab2` |
| 9 | `def` | [inverse](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/inverse--ee7ce79fb10c5da1fdbc9c89.md) | 96 | `declaration-track:ee7ce79fb10c5da1fdbc9c8973b567ed1362891cb3368f7f48dfd4d5c5ce49e8` |
| 10 | `theorem` | [inverse_unit](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/inverse-unit--fdfc6545005592718059ee87.md) | 101 | `result-track:fdfc6545005592718059ee8743d425dee1135f9c041c9627b58433f117d3c905` |
| 11 | `theorem` | [inverse_non_unit](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/inverse-non-unit--e8f3873d70bec9dc5c2f52d2.md) | 107 | `result-track:e8f3873d70bec9dc5c2f52d26bd1a06a865d4a3074d114c4d26e6270b0246fbe` |
| 12 | `theorem` | [mul_inverse_cancel](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/mul-inverse-cancel--38a8b101f911bf00a70c24ac.md) | 111 | `result-track:38a8b101f911bf00a70c24aca915a82c740ff6f11e7465e997a9a0b14a1ee680` |
| 13 | `theorem` | [inverse_mul_cancel](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/inverse-mul-cancel--66806a5ced309f50c1dc7fb5.md) | 116 | `result-track:66806a5ced309f50c1dc7fb592bee3cb3cb1a2e4169dabf6076a70e852d9c33e` |
| 14 | `theorem` | [mul_inverse_cancel_right](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/mul-inverse-cancel-right--6a0f4642669b3f146aa969fb.md) | 121 | `result-track:6a0f4642669b3f146aa969fb3acd8709eef95900673d9d21e425d58db7945879` |
| 15 | `theorem` | [inverse_mul_cancel_right](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/inverse-mul-cancel-right--3bcd25852f678f2e00a17237.md) | 125 | `result-track:3bcd25852f678f2e00a17237a4d7cbf83646a769f5ee94a5cab9f67f45a32eaa` |
| 16 | `theorem` | [mul_inverse_cancel_left](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/mul-inverse-cancel-left--78ae1912c6dc3e4b5a85f8e7.md) | 129 | `result-track:78ae1912c6dc3e4b5a85f8e7c851a8b5fe3ede2e618555bbde24c928072ade8f` |
| 17 | `theorem` | [inverse_mul_cancel_left](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/inverse-mul-cancel-left--c6b523b8466287011da13978.md) | 133 | `result-track:c6b523b8466287011da13978ce7076c18411509ff354a3cd0e31a0291ae7c0c6` |
| 18 | `theorem` | [inverse_mul_eq_iff_eq_mul](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/inverse-mul-eq-iff-eq-mul--26687ddc50e9e5aafe46455f.md) | 137 | `result-track:26687ddc50e9e5aafe46455f347336ef2fa105e2f5de0205a6fb507d72da06a1` |
| 19 | `theorem` | [eq_mul_inverse_iff_mul_eq](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/eq-mul-inverse-iff-mul-eq--e68b2a318f7980bca9e1ae5f.md) | 142 | `result-track:e68b2a318f7980bca9e1ae5fc714a4e857e69c00fddeb701fa7b830ca237be70` |
| 20 | `theorem` | [inverse_one](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/inverse-one--db7d2613a7162e819eb79e0c.md) | 150 | `result-track:db7d2613a7162e819eb79e0cea0eafc25776046e6c27ac0ef3c35985f4681a1b` |
| 21 | `theorem` | [inverse_zero](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/inverse-zero--66c1333c0e153de895b0fd32.md) | 155 | `result-track:66c1333c0e153de895b0fd328946796b3cae1a9b9364dc081c2476ac358369aa` |
| 22 | `theorem` | [IsUnit.ring_inverse](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/isunit-ring-inverse--485d2986bc82219e36ad2bb9.md) | 164 | `result-track:485d2986bc82219e36ad2bb9f109896fb38c91b6bdae5dea5ab49969e61e609d` |
| 23 | `theorem` | [isUnit_ring_inverse](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/isunit-ring-inverse--28ddc24fd8d2523f0473a066.md) | 169 | `result-track:28ddc24fd8d2523f0473a0661ab0031b746a9a4f42f6060cd57f819b11aabab9` |
| 24 | `def` | [mk0](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/mk0--2f1d63d0b56827f71e804f7f.md) | 190 | `declaration-track:2f1d63d0b56827f71e804f7fea1157ea1d39a09079518266af044233eee6491d` |
| 25 | `theorem` | [mk0_one](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/mk0-one--f83b460fcb8ccfa86da8da50.md) | 195 | `result-track:f83b460fcb8ccfa86da8da50cf5a53678dbc7b89e9bbe99771aeb2a9f63e0815` |
| 26 | `theorem` | [val_mk0](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/val-mk0--036784abccce091b61c84d02.md) | 201 | `result-track:036784abccce091b61c84d022272c02e4b00d08382c7dedde39d4a9fa471f47c` |
| 27 | `theorem` | [mk0_val](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/mk0-val--fd7cf473104232b723040100.md) | 206 | `result-track:fd7cf473104232b72304010028f7d354a81ab8837a50f39001357a74eb7a1617` |
| 28 | `theorem` | [mul_inv'](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/mul-inv--7fdd397cef4dff525dc4ccbc.md) | 211 | `result-track:7fdd397cef4dff525dc4ccbc33619769536dc65c591a2c4182c7f1f38229d640` |
| 29 | `theorem` | [inv_mul'](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/inv-mul--156928367e33cb8eef6e55bc.md) | 216 | `result-track:156928367e33cb8eef6e55bca11eaf82bffc3ac782ed7680d4acdfb4a5643cbc` |
| 30 | `theorem` | [mk0_inj](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/mk0-inj--c5ddfb248df6ab10a35565a1.md) | 221 | `result-track:c5ddfb248df6ab10a35565a1ada965bb287315aff3ea72d78de6dc420c3b116d` |
| 31 | `theorem` | [exists0](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/exists0--831155b6f5d0f5733583126c.md) | 226 | `result-track:831155b6f5d0f5733583126ca117a2c31c447a682c170116fd44d2946dbc457e` |
| 32 | `theorem` | [exists0'](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/exists0--2ede2b160ade0e573192a70c.md) | 233 | `result-track:2ede2b160ade0e573192a70ca92cebdeae55ac8aa7fc5155d4b43ecdc4a81951` |
| 33 | `theorem` | [exists_iff_ne_zero](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/exists-iff-ne-zero--1617de8cd62c694d486710b2.md) | 240 | `result-track:1617de8cd62c694d486710b2541648cf714506a8ce69167094553641c1284466` |
| 34 | `theorem` | [_root_.GRWTSK.Algebra.NeZero.Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.GroupWithZero.eq_zero_or_unit](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/root-grwtsk-algebra-nezero-variant1195f8cb658009e2204ff41184be54e1f92019--759f741afa1906ab0e4e5a7e.md) | 243 | `result-track:759f741afa1906ab0e4e5a7e988a003f071d63e4a2d9c66af9868ae649800c41` |
| 35 | `theorem` | [IsUnit.mk0](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/isunit-mk0--a9663bae2c21ba233d3409e6.md) | 257 | `result-track:a9663bae2c21ba233d3409e605643fc89abce7e72f26377079dec5138ac1f8aa` |
| 36 | `theorem` | [isUnit_iff_ne_zero](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/isunit-iff-ne-zero--59396e7fd5781f7a6b61626b.md) | 261 | `result-track:59396e7fd5781f7a6b61626bf98144544057cf1a9693c836f808845de5c44f1b` |
| 37 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/instance--cb8deb1fe96b79585de99608.md) | 273 | `declaration-track:cb8deb1fe96b79585de996084bc126b4ca78ce0ae443d808ccf6808bd4a4896f` |
| 38 | `theorem` | [Units.mk0_mul](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/units-mk0-mul--619f9ef403e3b54321a06657.md) | 283 | `result-track:619f9ef403e3b54321a0665785e5ce79ee758cf49af17c708ab309572d236ecc` |
| 39 | `theorem` | [div_ne_zero](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/div-ne-zero--053d7d9d48a702d4f3b0f916.md) | 289 | `result-track:053d7d9d48a702d4f3b0f916d4b30c4fb42ee6456d0db4d7c9d542b8fc959b82` |
| 40 | `theorem` | [div_eq_zero_iff](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/div-eq-zero-iff--b6e68299163ac54579e9c37a.md) | 295 | `result-track:b6e68299163ac54579e9c37a5977ff29959603c4fe6cb19eab61b997eb70ef2c` |
| 41 | `theorem` | [div_ne_zero_iff](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/div-ne-zero-iff--1c8ed1d30fc364c5398b8378.md) | 298 | `result-track:1c8ed1d30fc364c5398b8378ae207391216ef24f13080f84ae78e601bf17afa1` |
| 42 | `theorem` | [Ring.inverse_eq_inv](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/ring-inverse-eq-inv--eddf78f73ff2b60ba8811246.md) | 302 | `result-track:eddf78f73ff2b60ba8811246ab3e0be1be275b04e720dfb7264805007076bca5` |
| 43 | `theorem` | [Ring.inverse_eq_inv'](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/ring-inverse-eq-inv--69b47ceff7c2756c95676771.md) | 309 | `result-track:69b47ceff7c2756c9567677193fa027e39ce5e5bd7cfdc64daa1194958f1c591` |
| 44 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/instance--307a2894268456f9e989615a.md) | 321 | `declaration-track:307a2894268456f9e989615a493135c13fd5cf5d8e2d4113e7a83039a19c7cd1` |
| 45 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/instance--a7a06162b7a82ba6bcb8c57e.md) | 328 | `declaration-track:a7a06162b7a82ba6bcb8c57e35ad19496791b2aaac12d810bd05fb03b6a43d06` |
| 46 | `def` | [groupWithZeroOfIsUnitOrEqZero](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/groupwithzeroofisunitoreqzero--05b43cedadc502c3e9c584f2.md) | 342 | `declaration-track:05b43cedadc502c3e9c584f28264e4837db2a531e927198f32040884a09a14c7` |
| 47 | `def` | [commGroupWithZeroOfIsUnitOrEqZero](../../../../mathematics/Algebra/Basic/Variantcfe7cc8eda534c687d0c529e288eadab45d4a57c7f72942ff699d360804c8585.lean/declarations/commgroupwithzeroofisunitoreqzero--73bd4a2a20a0257a5875073e.md) | 355 | `declaration-track:73bd4a2a20a0257a5875073e62258d888d6cfb978318224e509a1dbd36578e1a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
