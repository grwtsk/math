# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Coeff.Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0ce4acd7f4bc86afc2c5618f92174c2994fbf81",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0ce4acd7f4bc86afc2c5618f92174c2994fbf81`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.NatAntidiagonal` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Regular.Pow` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coeff_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/coeff-one--20f5fd55eaa54cd42152854d.md) | 40 | `result-track:20f5fd55eaa54cd42152854da9e6f4cfe032d574e0b4adf31905ea3917c6c926` |
| 2 | `theorem` | [coeff_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/coeff-add--702dae9e6efd76202333eb61.md) | 45 | `result-track:702dae9e6efd76202333eb61ffab5a7ba13c8a70219b1b37e6f5bba25c1bdaae` |
| 3 | `theorem` | [coeff_bit0](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/coeff-bit0--f4806d423a91c7f6e3d0157e.md) | 54 | `result-track:f4806d423a91c7f6e3d0157e06a3e8976960a04f95afc2fce43a62121accdff2` |
| 4 | `theorem` | [coeff_smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/coeff-smul--7344d4c3c237d647f0d38b6c.md) | 58 | `result-track:7344d4c3c237d647f0d38b6cb78285cbcc58b62a7e60224e5d626e4af59ec39c` |
| 5 | `theorem` | [support_smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/support-smul--3c8e2d9d8c2a9853d9de298d.md) | 65 | `result-track:3c8e2d9d8c2a9853d9de298d674655a2a9e38eb43ecbe87b2e5c580a53592c30` |
| 6 | `def` | [lsum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/lsum--65c21e4464cf281d502a55ce.md) | 75 | `declaration-track:65c21e4464cf281d502a55ce90c45350c8e0548c639bbccf288447de1188d9f8` |
| 7 | `def` | [lcoeff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/lcoeff--0e14720d83f30e99bbb200c8.md) | 91 | `declaration-track:0e14720d83f30e99bbb200c8380f8b15c9efb6d79a6dd36c85f20168544855bd` |
| 8 | `theorem` | [lcoeff_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/lcoeff-apply--7d3939b1270b70712b1ce46b.md) | 100 | `result-track:7d3939b1270b70712b1ce46b36f4bd52f31f9d02e3f89c99fd2e7ff5b0fd59e0` |
| 9 | `theorem` | [finset_sum_coeff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/finset-sum-coeff--6faeefc00869a6bb2a1533c2.md) | 105 | `result-track:6faeefc00869a6bb2a1533c24595c12f7cb1233c8a656a8d7c7f5b193c832e36` |
| 10 | `theorem` | [coeff_sum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/coeff-sum--41e43de0cae1c4dcc78fdbc9.md) | 110 | `result-track:41e43de0cae1c4dcc78fdbc930f6c28c9d51ff359d1addbfe1a8c45403f3da77` |
| 11 | `theorem` | [coeff_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/coeff-mul--d93c1cef818fd0170cd720b2.md) | 120 | `result-track:d93c1cef818fd0170cd720b2b5aba9b15c3b710448acbababb05e7ccddf7e171` |
| 12 | `theorem` | [mul_coeff_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/mul-coeff-zero--e71fb1197240f15d954f0b12.md) | 128 | `result-track:e71fb1197240f15d954f0b12f08f0e93b56b1664b8ea0d576bf4558cfc62910f` |
| 13 | `def` | [constantCoeff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/constantcoeff--ced4d6aa3b441ad7800f5fb6.md) | 134 | `declaration-track:ced4d6aa3b441ad7800f5fb6f883b2e9036f9a40aedea66e1ca47a53e7a6750f` |
| 14 | `theorem` | [isUnit_C](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/isunit-c--b4c32a094045f31c3856391c.md) | 143 | `result-track:b4c32a094045f31c3856391ccf88925d81543c8648dfb2fc76715f49e0e5b1e0` |
| 15 | `theorem` | [coeff_mul_X_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/coeff-mul-x-zero--2c2d68a978c60777b082f5e5.md) | 147 | `result-track:2c2d68a978c60777b082f5e53493425bfd1cb0b7de973c62f9fb90d5c679d91d` |
| 16 | `theorem` | [coeff_X_mul_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/coeff-x-mul-zero--4ab6eed24dd182b2e510e3ce.md) | 150 | `result-track:4ab6eed24dd182b2e510e3cea04d975e075a85dcf967384da81c426c17c2e54e` |
| 17 | `theorem` | [coeff_C_mul_X_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/coeff-c-mul-x-pow--901e1fd24579215e09e3ab3d.md) | 153 | `result-track:901e1fd24579215e09e3ab3d0ce793350d5252f734642350228869be3648111c` |
| 18 | `theorem` | [coeff_C_mul_X](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/coeff-c-mul-x--ef38c0ac8b069667df69afc0.md) | 160 | `result-track:ef38c0ac8b069667df69afc015395e4a18791b2293714acdc2ddd859ce93306b` |
| 19 | `theorem` | [coeff_C_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/coeff-c-mul--a988bb5fc4c88616b13d663f.md) | 165 | `result-track:a988bb5fc4c88616b13d663f0f30a1896b6e2faf7f049d7fd6e02a9e3861dd22` |
| 20 | `theorem` | [C_mul'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/c-mul--0f447ffb56327389b9254835.md) | 171 | `result-track:0f447ffb56327389b9254835734f2c319ea2c35227e5b78e3978f86ea200c0e4` |
| 21 | `theorem` | [coeff_mul_C](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/coeff-mul-c--33d93c01aba3ed835fa6055e.md) | 177 | `result-track:33d93c01aba3ed835fa6055eef39583eb65fd36bd4fa1b5823df4a56e43408c3` |
| 22 | `theorem` | [coeff_X_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/coeff-x-pow--3c14ffcce108fad26150f7c6.md) | 184 | `result-track:3c14ffcce108fad26150f7c6f5d62d0a8fdc601100d08f6f7838e2a9f6f58bef` |
| 23 | `theorem` | [coeff_X_pow_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/coeff-x-pow-self--0f458e6fc41dc0a5caa7e65e.md) | 188 | `result-track:0f458e6fc41dc0a5caa7e65e0ef1c3c2e4222784de0a16e82e575f189b9e5974` |
| 24 | `theorem` | [support_binomial](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/support-binomial--118db64e4a16a3f3336d2438.md) | 195 | `result-track:118db64e4a16a3f3336d2438286d0cfb7c970a8f8d4dbbf7847354d69fa9ba70` |
| 25 | `theorem` | [support_trinomial](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/support-trinomial--3b9bc4e11c29ec283cc44b09.md) | 203 | `result-track:3b9bc4e11c29ec283cc44b09a15fae46ced48f184953b759fa3b0cbb43f4cbc2` |
| 26 | `theorem` | [card_support_binomial](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/card-support-binomial--c2125ba1ef3477eb7ea366bc.md) | 213 | `result-track:c2125ba1ef3477eb7ea366bc8f414cca628266e3999d0a232b84208f6cc8ba6c` |
| 27 | `theorem` | [card_support_trinomial](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/card-support-trinomial--9af0d7f2a2afa687cabdd60c.md) | 218 | `result-track:9af0d7f2a2afa687cabdd60c9e315586215746a73fe5057b844f00b98d17a991` |
| 28 | `theorem` | [coeff_mul_X_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/coeff-mul-x-pow--005237cda2f0e53f435e5687.md) | 229 | `result-track:005237cda2f0e53f435e5687d5eb2514d36bdf00c2cd69370545015a4f13927a` |
| 29 | `theorem` | [coeff_X_pow_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/coeff-x-pow-mul--0c62c0b9bf93ba69e6bfb512.md) | 243 | `result-track:0c62c0b9bf93ba69e6bfb51282a791a1e86172d04df7e89cf9ab967e5fe3ad01` |
| 30 | `theorem` | [coeff_mul_X_pow'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/coeff-mul-x-pow--23e78f6eb71a7e5528f5ac29.md) | 247 | `result-track:23e78f6eb71a7e5528f5ac29c434330701da2daefda3a63822af29e0c75b9597` |
| 31 | `theorem` | [coeff_X_pow_mul'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/coeff-x-pow-mul--1ac822a41598ea933c7843d5.md) | 256 | `result-track:1ac822a41598ea933c7843d516bae571d3f76a810f6f16e69050b9ed8d2eb914` |
| 32 | `theorem` | [coeff_mul_X](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/coeff-mul-x--eb4ee47c528044eac9c42ebe.md) | 262 | `result-track:eb4ee47c528044eac9c42ebeb4b0e10a86b650186c9838d12a6b456ef2d48776` |
| 33 | `theorem` | [coeff_X_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/coeff-x-mul--8e165df7c01f5d9af1d12bf7.md) | 267 | `result-track:8e165df7c01f5d9af1d12bf79cf0e728544b6ad4c4159d414e67e446ede3e7a9` |
| 34 | `theorem` | [coeff_mul_monomial](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/coeff-mul-monomial--2e751f627e9d8d0e19824dda.md) | 271 | `result-track:2e751f627e9d8d0e19824ddabf590de9626a626d79502692064ad51980805c43` |
| 35 | `theorem` | [coeff_monomial_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/coeff-monomial-mul--277d0d16c54d44b43d77ca4f.md) | 276 | `result-track:277d0d16c54d44b43d77ca4f103e9eede05bf90ab15e79392ce05065b1aa1ef0` |
| 36 | `theorem` | [coeff_mul_monomial_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/coeff-mul-monomial-zero--18984caa31fe8321321821ad.md) | 282 | `result-track:18984caa31fe8321321821ad7dc38c5da19848034069a6af7f598733df0ca89d` |
| 37 | `theorem` | [coeff_monomial_zero_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/coeff-monomial-zero-mul--6ad4249e7ab938d1b32a8662.md) | 288 | `result-track:6ad4249e7ab938d1b32a866232393c4157f9cbf41847fd9f71cc3ce56fee9a64` |
| 38 | `theorem` | [mul_X_pow_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/mul-x-pow-eq-zero--b63e1f4f55500bcfec294ab6.md) | 293 | `result-track:b63e1f4f55500bcfec294ab60123a14e4cbab920cf0a1375e04b6f00895cf665` |
| 39 | `theorem` | [isRegular_X](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/isregular-x--71d702e5e6a2e50e76c7211a.md) | 297 | `result-track:71d702e5e6a2e50e76c7211a18456f23d43943a7b69f747a37bfc727e233f48c` |
| 40 | `theorem` | [isRegular_X_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/isregular-x-pow--56708b8743fe4317a5f4cb33.md) | 305 | `result-track:56708b8743fe4317a5f4cb33db1b15d53b32fd433185a7b8e29ea1b7f8e4db9b` |
| 41 | `theorem` | [coeff_X_add_C_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/coeff-x-add-c-pow--7caf8bde8b858004faf586df.md) | 307 | `result-track:7caf8bde8b858004faf586dfd05394745aadf9b4554f91bc9a90c0ceb91ec033` |
| 42 | `theorem` | [coeff_X_add_one_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/coeff-x-add-one-pow--56cc0bb1b76d7540f65d8a9e.md) | 319 | `result-track:56cc0bb1b76d7540f65d8a9e656d90f20f66fa4679b2055a83464487675c31e6` |
| 43 | `theorem` | [coeff_one_add_X_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/coeff-one-add-x-pow--3999b2ed2d3de30dc595d1a1.md) | 323 | `result-track:3999b2ed2d3de30dc595d1a1650098f9b400c85b0d968128adf0c132cd55c484` |
| 44 | `theorem` | [C_dvd_iff_dvd_coeff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/c-dvd-iff-dvd-coeff--d68c019ce92aca6a6b4efa26.md) | 327 | `result-track:d68c019ce92aca6a6b4efa26c6aa3670775e4e4dd68b8d73bc083f2a732578f8` |
| 45 | `theorem` | [coeff_bit0_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/coeff-bit0-mul--05c63774f99dfbc4716bce6d.md) | 348 | `result-track:05c63774f99dfbc4716bce6d6fb166af3be521c4a0d4ddd1e03089b0a12b116f` |
| 46 | `theorem` | [coeff_bit1_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/coeff-bit1-mul--e140aed49331cfaac2f6d5dd.md) | 354 | `result-track:e140aed49331cfaac2f6d5dd19ecb7c38f2b98ed987870ff898bf064f7fa5894` |
| 47 | `theorem` | [smul_eq_C_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/smul-eq-c-mul--6ebaf4058885c6822aef96da.md) | 359 | `result-track:6ebaf4058885c6822aef96da2bf26101b9f2fe67b7f8285e6fbc752661cdebf4` |
| 48 | `theorem` | [update_eq_add_sub_coeff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/update-eq-add-sub-coeff--94225d8d951ee9d0a5134d7a.md) | 362 | `result-track:94225d8d951ee9d0a5134d7a927d25f3005043605f1680e91a14b2393fc9cb40` |
| 49 | `theorem` | [nat_cast_coeff_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/nat-cast-coeff-zero--c306dfad14470697c24dd365.md) | 373 | `result-track:c306dfad14470697c24dd3651c5c404be33a8f66d73f761cdf83c602b1bcf1cd` |
| 50 | `theorem` | [nat_cast_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/nat-cast-inj--609bed28d829baaaf11fb96b.md) | 378 | `result-track:609bed28d829baaaf11fb96bf2c63ed5bef5167c20cfb754cfd6cf97387ef860` |
| 51 | `theorem` | [int_cast_coeff_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/int-cast-coeff-zero--fb308fc293fbc00f53e56cce.md) | 389 | `result-track:fb308fc293fbc00f53e56ccef325373a73371587097c6953af7cbde836a82504` |
| 52 | `theorem` | [int_cast_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/int-cast-inj--4e68f752c46fea3a56d63f20.md) | 394 | `result-track:4e68f752c46fea3a56d63f20129852aafae75d76f7014775f36bf9f34055385c` |
| 53 | `instance` | [charZero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variantd5afb622aa5ccc237420bef35a5e5c5f283c9e1a976bcd86c82639df2fa51c89.lean/declarations/charzero--7ef657d054c53fb04e249b52.md) | 405 | `declaration-track:7ef657d054c53fb04e249b524615d69e17ff4c1b4574b2bc75b4c401d6f3ee98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
