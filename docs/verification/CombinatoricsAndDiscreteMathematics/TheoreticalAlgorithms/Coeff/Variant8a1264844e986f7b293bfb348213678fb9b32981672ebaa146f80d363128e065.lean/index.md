# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Coeff.Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a19e23d32f7ef17246b92cedccb98f39d3893033",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a19e23d32f7ef17246b92cedccb98f39d3893033`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.NatAntidiagonal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Regular.Pow` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coeff_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/coeff-one--f3a0a11deb2bc759ef3f6fad.md) | 48 | `result-track:f3a0a11deb2bc759ef3f6fad6bf7c953536e7b7f74ff83236373a7b59a2d1981` |
| 2 | `theorem` | [coeff_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/coeff-add--0ee0decd715b21d8f7aa1d6c.md) | 53 | `result-track:0ee0decd715b21d8f7aa1d6c49acaac9c8287e8723b908340abe8739590e6afa` |
| 3 | `theorem` | [coeff_bit0](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/coeff-bit0--346d8d92e85f9943cf964ccf.md) | 62 | `result-track:346d8d92e85f9943cf964ccf4209a645cae144d56677b605f31d6c9def85858d` |
| 4 | `theorem` | [coeff_smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/coeff-smul--c530604ce44f893eaf6212c7.md) | 66 | `result-track:c530604ce44f893eaf6212c7820e83076e3fa973f184d4ba45aa7ba04a741ea2` |
| 5 | `theorem` | [support_smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/support-smul--a625ea2d60f58eb8ee58cbe2.md) | 73 | `result-track:a625ea2d60f58eb8ee58cbe221fd9a457cee308fc8c03d95768a50581bd57e96` |
| 6 | `def` | [lsum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/lsum--9b4f61f6b2968d8e9cd1581d.md) | 83 | `declaration-track:9b4f61f6b2968d8e9cd1581d3b97482190f4024ee843d00193c10f6394f388b3` |
| 7 | `def` | [lcoeff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/lcoeff--be36dcfac0a8f0224816e5f5.md) | 99 | `declaration-track:be36dcfac0a8f0224816e5f532fbb5510d361d3ae61a6e7389091686a2544722` |
| 8 | `theorem` | [lcoeff_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/lcoeff-apply--2b5f5a665f744929745e61aa.md) | 108 | `result-track:2b5f5a665f744929745e61aa00e818873e5c3d782dd31088f46b0b4208ff328a` |
| 9 | `theorem` | [finset_sum_coeff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/finset-sum-coeff--0083341e6eac36cea6429747.md) | 113 | `result-track:0083341e6eac36cea642974728e9c7b76c2ba3b2d1b3c0dd11aea7b3ca531483` |
| 10 | `theorem` | [coeff_sum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/coeff-sum--5955b397540b01884af13a81.md) | 118 | `result-track:5955b397540b01884af13a8172ccfd1fa698be1043a1ed8997a2fbe5db0b9f27` |
| 11 | `theorem` | [coeff_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/coeff-mul--57ef911c22ab0f5537274a45.md) | 128 | `result-track:57ef911c22ab0f5537274a455fadf86e76c68a1b108773d1e69ca9e0344083f4` |
| 12 | `theorem` | [mul_coeff_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/mul-coeff-zero--a7cdcac236737cdcf3814bbd.md) | 136 | `result-track:a7cdcac236737cdcf3814bbd76600c6e81e7846ce0babde338b40e930a4bdf0c` |
| 13 | `def` | [constantCoeff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/constantcoeff--a3064f41dc796fc8e2d21c82.md) | 142 | `declaration-track:a3064f41dc796fc8e2d21c82572882b3620ed80e64532e4c29d98d973e8c0fb9` |
| 14 | `theorem` | [isUnit_C](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/isunit-c--06d9d52bc9aac559a56532c0.md) | 151 | `result-track:06d9d52bc9aac559a56532c0f27024ce09661c8dc5a8ca27854703e29125e87a` |
| 15 | `theorem` | [coeff_mul_X_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/coeff-mul-x-zero--be7de55669ac2a358aa60a90.md) | 155 | `result-track:be7de55669ac2a358aa60a903fb75fcaa8758c7dd278222aef535bff72de6670` |
| 16 | `theorem` | [coeff_X_mul_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/coeff-x-mul-zero--3205ec9aeb527102c12568c8.md) | 158 | `result-track:3205ec9aeb527102c12568c8402dcc0c0690c21987f527ddea2049f7b63af285` |
| 17 | `theorem` | [coeff_C_mul_X_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/coeff-c-mul-x-pow--dace625b06f4f087133a6dc2.md) | 161 | `result-track:dace625b06f4f087133a6dc2217218a307cb60b152cd056a329770a3c2bde20b` |
| 18 | `theorem` | [coeff_C_mul_X](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/coeff-c-mul-x--9e7cbf65e9890e1d53a7c575.md) | 168 | `result-track:9e7cbf65e9890e1d53a7c5754a9bc0c4939636dd0a8ab96755e9b029d9a87c27` |
| 19 | `theorem` | [coeff_C_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/coeff-c-mul--efc14a658b13077c1ee069a3.md) | 173 | `result-track:efc14a658b13077c1ee069a37fcb4c6e11e8bc7c385b3fe338f89fd9d8a7fe67` |
| 20 | `theorem` | [C_mul'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/c-mul--697f033198a7d63cc6ab4ac1.md) | 179 | `result-track:697f033198a7d63cc6ab4ac1c51742fd1c01b7091aa62e5728c26b54b6b5d631` |
| 21 | `theorem` | [coeff_mul_C](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/coeff-mul-c--1d420ab9417356cfa55bf98f.md) | 185 | `result-track:1d420ab9417356cfa55bf98f07b8d4af2172375bf77848fd1e9b59e210e4828f` |
| 22 | `theorem` | [coeff_X_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/coeff-x-pow--44fbf095c4f726cba2dca29a.md) | 192 | `result-track:44fbf095c4f726cba2dca29a033c34db3768114ca2254aad9abab4d81bf21258` |
| 23 | `theorem` | [coeff_X_pow_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/coeff-x-pow-self--c2ddb3c5e6a35a8cbf441122.md) | 196 | `result-track:c2ddb3c5e6a35a8cbf441122236f4050a5bb9f85db79843c4e612b5006812b94` |
| 24 | `theorem` | [support_binomial](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/support-binomial--154db5ecb889d1c79eb46788.md) | 203 | `result-track:154db5ecb889d1c79eb4678880266a2c7250e272def36b8a53ff8d05d4a1f6fe` |
| 25 | `theorem` | [support_trinomial](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/support-trinomial--c9dc356e1d9bfe8f3662e5fa.md) | 211 | `result-track:c9dc356e1d9bfe8f3662e5fa7b8a761cb59c4a382410a5af7f8a4ab4a3bfb10d` |
| 26 | `theorem` | [card_support_binomial](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/card-support-binomial--e9a8450d87d068b1f050a61f.md) | 221 | `result-track:e9a8450d87d068b1f050a61fbfb6d5a0e35069d451bc61422e32e89deb081d9d` |
| 27 | `theorem` | [card_support_trinomial](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/card-support-trinomial--d1b7eb202b8baca77047711f.md) | 226 | `result-track:d1b7eb202b8baca77047711fc4a05c324437c269612cefe34baa00b5ccb4d39f` |
| 28 | `theorem` | [coeff_mul_X_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/coeff-mul-x-pow--ff05adf22ada67031f4dedfb.md) | 237 | `result-track:ff05adf22ada67031f4dedfbc686a13cf9853a46e7ad0e38758a0b6db37422ab` |
| 29 | `theorem` | [coeff_X_pow_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/coeff-x-pow-mul--506c38f7da34344119c1fdbe.md) | 251 | `result-track:506c38f7da34344119c1fdbe31b5ef6f7ad6bf0022b365601abe16dcc232f693` |
| 30 | `theorem` | [coeff_mul_X_pow'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/coeff-mul-x-pow--524d2464974bb453412c2a04.md) | 255 | `result-track:524d2464974bb453412c2a042c032bcd0e06a7d96e79b8d16f760ea7bfda28e3` |
| 31 | `theorem` | [coeff_X_pow_mul'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/coeff-x-pow-mul--e684fd82e033494ea8a243a2.md) | 264 | `result-track:e684fd82e033494ea8a243a2d4fbf22a56b687b027ee7703d1f484b9fd37c6a7` |
| 32 | `theorem` | [coeff_mul_X](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/coeff-mul-x--0babbbebbda9ca7b624e658d.md) | 270 | `result-track:0babbbebbda9ca7b624e658daa5f7064a7934460332685753fa9589fc2422eda` |
| 33 | `theorem` | [coeff_X_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/coeff-x-mul--6765d4169938ee79a7b0b0fe.md) | 275 | `result-track:6765d4169938ee79a7b0b0fe767dd9b3b34249e86f23bda6f2d9dd2f0f8733b6` |
| 34 | `theorem` | [coeff_mul_monomial](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/coeff-mul-monomial--9c447344a65b614bcc7e7833.md) | 279 | `result-track:9c447344a65b614bcc7e78339db1b2ce9c1f6dd516307b36ffc0440fbc8cdcc8` |
| 35 | `theorem` | [coeff_monomial_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/coeff-monomial-mul--e8b78be908925724138e5856.md) | 284 | `result-track:e8b78be908925724138e58564e0d193b92e0d867cf01ea0bbd5b354679bc10d0` |
| 36 | `theorem` | [coeff_mul_monomial_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/coeff-mul-monomial-zero--ea348e2f3a7de77287a23e30.md) | 290 | `result-track:ea348e2f3a7de77287a23e3028796c6d56e3a91e463196245bf5f9580128def3` |
| 37 | `theorem` | [coeff_monomial_zero_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/coeff-monomial-zero-mul--9b9551b03571a3db277bdec8.md) | 296 | `result-track:9b9551b03571a3db277bdec8a67573aee6d0d9d549673c0b15f841b938d8024a` |
| 38 | `theorem` | [mul_X_pow_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/mul-x-pow-eq-zero--1bf80bfba450b5b764f61f0d.md) | 301 | `result-track:1bf80bfba450b5b764f61f0d4226e6fdf8d743fce16e301172ee71fa1d709d44` |
| 39 | `theorem` | [isRegular_X](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/isregular-x--6e6b0ffbaea954c6acfd21bc.md) | 305 | `result-track:6e6b0ffbaea954c6acfd21bcf739897357673339618bef2c6eb31ce463bfa2c1` |
| 40 | `theorem` | [isRegular_X_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/isregular-x-pow--2525f3baf82de2918c437a36.md) | 313 | `result-track:2525f3baf82de2918c437a361703d5d426f2bda2c57f82ba9817850349007e73` |
| 41 | `theorem` | [coeff_X_add_C_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/coeff-x-add-c-pow--9100628e96631886e0886b45.md) | 315 | `result-track:9100628e96631886e0886b45a85b4f6e1f05b1e62ebfb44c75dc6ecb96dd5fca` |
| 42 | `theorem` | [coeff_X_add_one_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/coeff-x-add-one-pow--826550d5c5c5da12a132695e.md) | 327 | `result-track:826550d5c5c5da12a132695ec621d28d8f61010a9be3ac313a0dd6976c195466` |
| 43 | `theorem` | [coeff_one_add_X_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/coeff-one-add-x-pow--cffb673b9281be863ecc77f2.md) | 331 | `result-track:cffb673b9281be863ecc77f253aae00d26b9013b16f63e0e68e46139ecda0a2a` |
| 44 | `theorem` | [C_dvd_iff_dvd_coeff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/c-dvd-iff-dvd-coeff--ed6136aa83d148f5531eb47c.md) | 335 | `result-track:ed6136aa83d148f5531eb47c07b67deb836f2fe05a92d3ead528426d0ceeede0` |
| 45 | `theorem` | [coeff_bit0_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/coeff-bit0-mul--ed06c3ff91f91bf2890eb615.md) | 356 | `result-track:ed06c3ff91f91bf2890eb615c85488d4e92dfc628e99e5e72412abed35a78cbc` |
| 46 | `theorem` | [coeff_bit1_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/coeff-bit1-mul--ee98446ab7f5683379cc57bd.md) | 362 | `result-track:ee98446ab7f5683379cc57bd77c0538d6eaeb4c9c0e41c2c9e369df8dc3f515b` |
| 47 | `theorem` | [smul_eq_C_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/smul-eq-c-mul--9456d1f1a33a88ef9d57eefc.md) | 367 | `result-track:9456d1f1a33a88ef9d57eefcfd0439a787f4c80f330a7d3ba6d470127bde5fd8` |
| 48 | `theorem` | [update_eq_add_sub_coeff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/update-eq-add-sub-coeff--0d6b964d5574ba96b80505d5.md) | 370 | `result-track:0d6b964d5574ba96b80505d54c83b031af0bfecd54b91b7fb2764361b1757b99` |
| 49 | `theorem` | [nat_cast_coeff_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/nat-cast-coeff-zero--527e3406f32761f530b17d43.md) | 381 | `result-track:527e3406f32761f530b17d4373fe02a94c0f7e8bdd90ccc871b2fc3cff74d8e6` |
| 50 | `theorem` | [nat_cast_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/nat-cast-inj--8181258e8bca1d7bcf1be019.md) | 386 | `result-track:8181258e8bca1d7bcf1be01976d97c52d0d02f2ea6189f81b671ee4fd54f3896` |
| 51 | `theorem` | [int_cast_coeff_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/int-cast-coeff-zero--c4050de388ee6d28edf2e7e4.md) | 397 | `result-track:c4050de388ee6d28edf2e7e4057a46c419acd62ad119f3be71806bd029f9611c` |
| 52 | `theorem` | [int_cast_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/int-cast-inj--847bf6b2b633712223240bd4.md) | 402 | `result-track:847bf6b2b633712223240bd407e2363415b7545bf8973b8a2cb04276fffedf37` |
| 53 | `instance` | [charZero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/declarations/charzero--bd2e9676819a96dce1f3e53b.md) | 413 | `declaration-track:bd2e9676819a96dce1f3e53bd207733a60f0202c6dc23678a55905c7c316eeae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
