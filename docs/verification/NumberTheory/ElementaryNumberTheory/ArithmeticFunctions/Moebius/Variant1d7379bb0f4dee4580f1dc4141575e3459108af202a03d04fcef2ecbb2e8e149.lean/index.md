# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Moebius.Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05f76c89adb09318abbec6ada574be955267b03d",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05f76c89adb09318abbec6ada574be955267b03d`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [moebius](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean/declarations/moebius--9db3dbd8469a739efa0a8c32.md) | 51 | `declaration-track:9db3dbd8469a739efa0a8c3248ec61400ed2c1261fdd77f534750b1ef753de71` |
| 2 | `theorem` | [moebius_apply_of_squarefree](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean/declarations/moebius-apply-of-squarefree--bb4f2fadd1c506c416424171.md) | 60 | `result-track:bb4f2fadd1c506c416424171a4f40607df93611209d4119c62dd52528abf6129` |
| 3 | `theorem` | [moebius_eq_zero_of_not_squarefree](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean/declarations/moebius-eq-zero-of-not-squarefree--2f72f53a6273a7f09298fa94.md) | 64 | `result-track:2f72f53a6273a7f09298fa945269a455936a2068352f31a67952b0cfe3e85216` |
| 4 | `theorem` | [moebius_apply_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean/declarations/moebius-apply-one--85ecf0f3bb7680580bf0ec92.md) | 67 | `result-track:85ecf0f3bb7680580bf0ec92893f90c345cdec10d78e23f8d9bab67c6afab94c` |
| 5 | `theorem` | [moebius_ne_zero_iff_squarefree](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean/declarations/moebius-ne-zero-iff-squarefree--6b890bfd37a5d7e7f2d04d96.md) | 69 | `result-track:6b890bfd37a5d7e7f2d04d9665819c5830423354e07d376e603ec7a6f537af94` |
| 6 | `theorem` | [moebius_eq_or](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean/declarations/moebius-eq-or--9386fff4b368bdf3581c9d4e.md) | 75 | `result-track:9386fff4b368bdf3581c9d4e2cfad014df1f793889c8e5e7dd799cc533c94337` |
| 7 | `theorem` | [moebius_ne_zero_iff_eq_or](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean/declarations/moebius-ne-zero-iff-eq-or--47d89b223d4df2a7516b6965.md) | 83 | `result-track:47d89b223d4df2a7516b6965c846aa2a99596b3f4fe18598b92ab392e36dc0a7` |
| 8 | `theorem` | [moebius_sq_eq_one_of_squarefree](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean/declarations/moebius-sq-eq-one-of-squarefree--ec4cd7c250353b214899b361.md) | 87 | `result-track:ec4cd7c250353b214899b361f9072f137c54e2c3082db406b3264b6b288240a8` |
| 9 | `theorem` | [abs_moebius_eq_one_of_squarefree](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean/declarations/abs-moebius-eq-one-of-squarefree--2adaa305b8f81227aeee2fbc.md) | 90 | `result-track:2adaa305b8f81227aeee2fbc10f236be3aa6cfa8b300405264eaa47730221045` |
| 10 | `theorem` | [moebius_sq](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean/declarations/moebius-sq--2a05eb42eb35f3044bcb5e7e.md) | 93 | `result-track:2a05eb42eb35f3044bcb5e7ef7c29d28dc988d0b683737350743000a1186cbcf` |
| 11 | `theorem` | [abs_moebius](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean/declarations/abs-moebius--bdbe9161ff5426231593ff0b.md) | 99 | `result-track:bdbe9161ff5426231593ff0b6e7f0a6e86a23c3b9cc91b2ba7edf10b0cb13731` |
| 12 | `theorem` | [abs_moebius_le_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean/declarations/abs-moebius-le-one--45b3f3bf488e7db1f7da8d2b.md) | 105 | `result-track:45b3f3bf488e7db1f7da8d2bb281a5a03b5c7caa5750f8ce199e3a84453ab1f6` |
| 13 | `theorem` | [moebius_apply_prime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean/declarations/moebius-apply-prime--6b12e064067fd4c8ab976246.md) | 109 | `result-track:6b12e064067fd4c8ab976246fec20f6ce02672c17e8510338162f5553a45c664` |
| 14 | `theorem` | [moebius_apply_prime_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean/declarations/moebius-apply-prime-pow--a14d42b3d5739bae88c54b5a.md) | 112 | `result-track:a14d42b3d5739bae88c54b5a7f3c84a808d7a8cbf82566ec25d2002b38d74276` |
| 15 | `theorem` | [moebius_apply_isPrimePow_not_prime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean/declarations/moebius-apply-isprimepow-not-prime--e2052562c465cf32cf0b59cd.md) | 120 | `result-track:e2052562c465cf32cf0b59cd06c256ffa43b638740bae1ff7998760bfe171816` |
| 16 | `theorem` | [isMultiplicative_moebius](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean/declarations/ismultiplicative-moebius--94d81f94da80192858835faa.md) | 128 | `result-track:94d81f94da80192858835faa20623a686ee8e5852819e3bc22f2c7c8f2f5ddc6` |
| 17 | `theorem` | [IsMultiplicative.prodPrimeFactors_one_add_of_squarefree](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean/declarations/ismultiplicative-prodprimefactors-one-add-of-squarefree--5673b4165ec0ca6b34abd546.md) | 134 | `result-track:5673b4165ec0ca6b34abd546a621d858f3995f9c2585d7cdb2af5bfb786c764c` |
| 18 | `theorem` | [IsMultiplicative.prodPrimeFactors_one_sub_of_squarefree](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean/declarations/ismultiplicative-prodprimefactors-one-sub-of-squarefree--04348258535352de9925fbe3.md) | 144 | `result-track:04348258535352de9925fbe3ab3953bea7a89fcd168194517cf8af7b7068f4c9` |
| 19 | `theorem` | [moebius_mul_coe_zeta](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean/declarations/moebius-mul-coe-zeta--5161cadbfa47f2215d6d3f14.md) | 156 | `result-track:5161cadbfa47f2215d6d3f14afd8d09003c93a1a5e21c05db7b0492f438dd396` |
| 20 | `theorem` | [coe_zeta_mul_moebius](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean/declarations/coe-zeta-mul-moebius--194f3929f7f43e76d6775f6e.md) | 170 | `result-track:194f3929f7f43e76d6775f6e2e32d76e683c002c708f9e4f7d41f992f4855a40` |
| 21 | `theorem` | [coe_moebius_mul_coe_zeta](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean/declarations/coe-moebius-mul-coe-zeta--65b91327f808a06bcbd29388.md) | 174 | `result-track:65b91327f808a06bcbd29388e250ad48afd90fd8496cd348a13936fa75aa8655` |
| 22 | `theorem` | [coe_zeta_mul_coe_moebius](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean/declarations/coe-zeta-mul-coe-moebius--88e5097aa6b164998e3c83d7.md) | 178 | `result-track:88e5097aa6b164998e3c83d7a6982873d056b5dbafae937d54f0ec59808a1b32` |
| 23 | `instance` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean/declarations/instance--5c22423e51666ba6cc6843e2.md) | 185 | `declaration-track:5c22423e51666ba6cc6843e2a535423604b80e33f14e9c5ef76c7743ac5c50f7` |
| 24 | `def` | [zetaUnit](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean/declarations/zetaunit--3155acb258e8eabf453e018c.md) | 191 | `declaration-track:3155acb258e8eabf453e018cc910d75394f11d8a87e8bc5e8e43a37817470ce9` |
| 25 | `theorem` | [coe_zetaUnit](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean/declarations/coe-zetaunit--056d3c65520cac9527e7c951.md) | 195 | `result-track:056d3c65520cac9527e7c951a13474d7a0b4e49a0b41f5f9b547542f7e8f67dd` |
| 26 | `theorem` | [inv_zetaUnit](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean/declarations/inv-zetaunit--2e3b36886b6595aedfe4ae2a.md) | 199 | `result-track:2e3b36886b6595aedfe4ae2aa4d15e31638b8657ea8b530a5d3422e18798a976` |
| 27 | `theorem` | [sum_eq_iff_sum_smul_moebius_eq](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean/declarations/sum-eq-iff-sum-smul-moebius-eq--2fb0c2f02fe1ec58e5b34f3e.md) | 206 | `result-track:2fb0c2f02fe1ec58e5b34f3eb1b1f5169e066214fb65bdf06b28de882fb675a3` |
| 28 | `theorem` | [sum_eq_iff_sum_mul_moebius_eq](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean/declarations/sum-eq-iff-sum-mul-moebius-eq--4fdfc0f8896a56ee7142ae12.md) | 236 | `result-track:4fdfc0f8896a56ee7142ae12c2fc4c6eabec6a18ef63d48c32ac225a1cdb8b27` |
| 29 | `theorem` | [prod_eq_iff_prod_pow_moebius_eq](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean/declarations/prod-eq-iff-prod-pow-moebius-eq--82d115bbbb7f5de465c5d88c.md) | 245 | `result-track:82d115bbbb7f5de465c5d88c99aa9f9df6466f80c8d2df16fd4b82838ffdb6c8` |
| 30 | `theorem` | [prod_eq_iff_prod_pow_moebius_eq_of_nonzero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean/declarations/prod-eq-iff-prod-pow-moebius-eq-of-nonzero--1bfe9b71091c469b6ad0c151.md) | 251 | `result-track:1bfe9b71091c469b6ad0c151cc634dd35527cec18b50979ddb75d2dbe55c77a4` |
| 31 | `theorem` | [sum_eq_iff_sum_smul_moebius_eq_on](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean/declarations/sum-eq-iff-sum-smul-moebius-eq-on--59d6c4baa44a57d78b2e837d.md) | 275 | `result-track:59d6c4baa44a57d78b2e837df287c446f7a964576881afece7607231223e9c40` |
| 32 | `theorem` | [sum_eq_iff_sum_smul_moebius_eq_on'](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean/declarations/sum-eq-iff-sum-smul-moebius-eq-on--a112364f2a43b250602958d2.md) | 300 | `result-track:a112364f2a43b250602958d261f40c5a5564c26bb7d0f52090d16cb775400e48` |
| 33 | `theorem` | [sum_eq_iff_sum_mul_moebius_eq_on](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean/declarations/sum-eq-iff-sum-mul-moebius-eq-on--16437fd8f0886c36f48007d0.md) | 312 | `result-track:16437fd8f0886c36f48007d0704f824d38a65db2225c1389e613244d34e783ba` |
| 34 | `theorem` | [prod_eq_iff_prod_pow_moebius_eq_on](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean/declarations/prod-eq-iff-prod-pow-moebius-eq-on--1097d0aa2297b357fecdebd7.md) | 325 | `result-track:1097d0aa2297b357fecdebd793e980d9cc0547d973a855690b88dfe6e7dba1e6` |
| 35 | `theorem` | [prod_eq_iff_prod_pow_moebius_eq_on_of_nonzero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant1d7379bb0f4dee4580f1dc4141575e3459108af202a03d04fcef2ecbb2e8e149.lean/declarations/prod-eq-iff-prod-pow-moebius-eq-on-of-nonzero--79e5e4d8f4729cd319cdd952.md) | 333 | `result-track:79e5e4d8f4729cd319cdd952cade0912d231c350578e8d9607c7d2c041b7a798` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
