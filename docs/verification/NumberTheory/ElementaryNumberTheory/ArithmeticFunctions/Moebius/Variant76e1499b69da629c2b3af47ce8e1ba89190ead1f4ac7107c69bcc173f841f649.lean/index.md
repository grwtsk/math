# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Moebius.Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "283bbd89c84166d5a605ca4935ff79248ff74a1f",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `283bbd89c84166d5a605ca4935ff79248ff74a1f`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean.json)

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
| 1 | `def` | [moebius](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean/declarations/moebius--29f32fdf91da9389186c5a96.md) | 59 | `declaration-track:29f32fdf91da9389186c5a96fbcbe7cd0ad33340777902807e0421f3ce9152e9` |
| 2 | `theorem` | [moebius_apply_of_squarefree](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean/declarations/moebius-apply-of-squarefree--3e1e37b765891ef32c59b493.md) | 68 | `result-track:3e1e37b765891ef32c59b493c29e64a4d3f00b9cec571c067a3e538a10da2cd9` |
| 3 | `theorem` | [moebius_eq_zero_of_not_squarefree](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean/declarations/moebius-eq-zero-of-not-squarefree--8799005ab09fa48e91e7b6ca.md) | 72 | `result-track:8799005ab09fa48e91e7b6caab06f65347247c9adea652cdb90904dc67fbde40` |
| 4 | `theorem` | [moebius_apply_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean/declarations/moebius-apply-one--b044fa5ca6a3d000468fff52.md) | 75 | `result-track:b044fa5ca6a3d000468fff52933a9d5ede8aa8974c5dbc019a2ece414d87392b` |
| 5 | `theorem` | [moebius_ne_zero_iff_squarefree](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean/declarations/moebius-ne-zero-iff-squarefree--b78ce3ce7b7e64eaa25c2a3f.md) | 77 | `result-track:b78ce3ce7b7e64eaa25c2a3ff551a5df29a9f825dc49b17e6ef39eda703653cc` |
| 6 | `theorem` | [moebius_eq_or](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean/declarations/moebius-eq-or--17913fb94baaf3700694a6af.md) | 83 | `result-track:17913fb94baaf3700694a6afaf5d73c36627c8fb91977c0839bd232cc228316f` |
| 7 | `theorem` | [moebius_ne_zero_iff_eq_or](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean/declarations/moebius-ne-zero-iff-eq-or--be9c12136a5271bbd3136632.md) | 91 | `result-track:be9c12136a5271bbd313663258cedc7d388a3c575f644c11747cfdb12b52fba5` |
| 8 | `theorem` | [moebius_sq_eq_one_of_squarefree](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean/declarations/moebius-sq-eq-one-of-squarefree--ed12b72b97ec1e8bc083a2db.md) | 95 | `result-track:ed12b72b97ec1e8bc083a2db8179927c81208d4076404c5a0dac554484ed52b5` |
| 9 | `theorem` | [abs_moebius_eq_one_of_squarefree](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean/declarations/abs-moebius-eq-one-of-squarefree--bf79a27a368e4f65a18ca6e0.md) | 98 | `result-track:bf79a27a368e4f65a18ca6e03b0ed56f6b2a451049f888d6a48f96558b4d6bd0` |
| 10 | `theorem` | [moebius_sq](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean/declarations/moebius-sq--c0b53135139a366cbeed0cd8.md) | 101 | `result-track:c0b53135139a366cbeed0cd8e6c364dd5647b3ce2ca62f68f7ec9f773f4ed094` |
| 11 | `theorem` | [abs_moebius](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean/declarations/abs-moebius--4431cecf8e26e0ca371c9561.md) | 107 | `result-track:4431cecf8e26e0ca371c9561dc16ed126126ea406ec24adf20af0b002b5851e1` |
| 12 | `theorem` | [abs_moebius_le_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean/declarations/abs-moebius-le-one--84f62ce5e657ff895cfdaab3.md) | 113 | `result-track:84f62ce5e657ff895cfdaab390c9575675efa81261e804ee342b26a308a4aa29` |
| 13 | `theorem` | [moebius_apply_prime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean/declarations/moebius-apply-prime--0153efb3be084c66c483d81a.md) | 117 | `result-track:0153efb3be084c66c483d81a6db42957cba91af57cc228e7280d5b6204ea3b6e` |
| 14 | `theorem` | [moebius_apply_prime_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean/declarations/moebius-apply-prime-pow--81623fe2fdc005208568066a.md) | 120 | `result-track:81623fe2fdc005208568066a34bcfc77bdd4e7387d387eedfadd2d2c1a23cce6` |
| 15 | `theorem` | [moebius_apply_isPrimePow_not_prime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean/declarations/moebius-apply-isprimepow-not-prime--68ef444f0097413cc6760945.md) | 128 | `result-track:68ef444f0097413cc6760945133c09404d08545677a673f00185b36d533f5118` |
| 16 | `theorem` | [isMultiplicative_moebius](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean/declarations/ismultiplicative-moebius--b543ce65375c03be01861e0e.md) | 136 | `result-track:b543ce65375c03be01861e0e55657e7b44b0e9d19bc781348924d88191964c07` |
| 17 | `theorem` | [IsMultiplicative.prodPrimeFactors_one_add_of_squarefree](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean/declarations/ismultiplicative-prodprimefactors-one-add-of-squarefree--652393e57a788ef6d361832f.md) | 142 | `result-track:652393e57a788ef6d361832ffdd42ef24508433f2406034f4a4ba50e6ac7e4fc` |
| 18 | `theorem` | [IsMultiplicative.prodPrimeFactors_one_sub_of_squarefree](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean/declarations/ismultiplicative-prodprimefactors-one-sub-of-squarefree--c2e2c1ba7e6ef9b1bb31b043.md) | 152 | `result-track:c2e2c1ba7e6ef9b1bb31b043f5e6a4a49e3b5c9489c8aa2e03dccd44fd98a536` |
| 19 | `theorem` | [moebius_mul_coe_zeta](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean/declarations/moebius-mul-coe-zeta--c983f7e72f73171fbb71ef18.md) | 164 | `result-track:c983f7e72f73171fbb71ef185f28e1835843229e700a897a2dd8c83dbe77fa08` |
| 20 | `theorem` | [coe_zeta_mul_moebius](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean/declarations/coe-zeta-mul-moebius--ab47532ab74f7ced8fee045e.md) | 178 | `result-track:ab47532ab74f7ced8fee045eb9970bb6a5b7c0b2d9e27bed8baa46a4386adbfb` |
| 21 | `theorem` | [coe_moebius_mul_coe_zeta](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean/declarations/coe-moebius-mul-coe-zeta--02e62df03639c6fa33ac31a3.md) | 182 | `result-track:02e62df03639c6fa33ac31a3f1947cb8a7c5d3ccfa9988da365ef68a20cff530` |
| 22 | `theorem` | [coe_zeta_mul_coe_moebius](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean/declarations/coe-zeta-mul-coe-moebius--b18149eeff1bb766d3a2da4b.md) | 186 | `result-track:b18149eeff1bb766d3a2da4be92cfd7722814ca972023f0daae28d3355c0f394` |
| 23 | `instance` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean/declarations/instance--be83426395fb7a4648d8b58d.md) | 193 | `declaration-track:be83426395fb7a4648d8b58dd44bdb26d6c41effd6f31a97a69722210f5d9d08` |
| 24 | `def` | [zetaUnit](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean/declarations/zetaunit--0f3dcf053c5bbe79dcf1ef46.md) | 199 | `declaration-track:0f3dcf053c5bbe79dcf1ef46d1498489c1071b8d57a12a293519ee73bdaef16e` |
| 25 | `theorem` | [coe_zetaUnit](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean/declarations/coe-zetaunit--e373949aba43578ce669344e.md) | 203 | `result-track:e373949aba43578ce669344e9f7010072e9461cc9ab60ed1889648c110c67740` |
| 26 | `theorem` | [inv_zetaUnit](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean/declarations/inv-zetaunit--f23cc813951ede1f8af3b913.md) | 207 | `result-track:f23cc813951ede1f8af3b9136ffec85fbf83b3ec1ae05fa3c9ef1b4224c877e5` |
| 27 | `theorem` | [sum_eq_iff_sum_smul_moebius_eq](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean/declarations/sum-eq-iff-sum-smul-moebius-eq--c808929939ec925ed32bfc6f.md) | 214 | `result-track:c808929939ec925ed32bfc6f067761351f76393df6dac8d228eb01c3b4f10373` |
| 28 | `theorem` | [sum_eq_iff_sum_mul_moebius_eq](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean/declarations/sum-eq-iff-sum-mul-moebius-eq--f9a9a7e8ec3b3292d04d9c3b.md) | 244 | `result-track:f9a9a7e8ec3b3292d04d9c3b33c84f81a42ec15a96f6d565ff4f46d15bd079b2` |
| 29 | `theorem` | [prod_eq_iff_prod_pow_moebius_eq](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean/declarations/prod-eq-iff-prod-pow-moebius-eq--22a7409ffce85a86f9c90aa8.md) | 253 | `result-track:22a7409ffce85a86f9c90aa8816483cbb1ed5c93bd9369af5f7955b7af9b69a0` |
| 30 | `theorem` | [prod_eq_iff_prod_pow_moebius_eq_of_nonzero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean/declarations/prod-eq-iff-prod-pow-moebius-eq-of-nonzero--9ce53dd73b86b51884c1d08a.md) | 259 | `result-track:9ce53dd73b86b51884c1d08a7716632405304712b6296b1226ebbd7291da65b5` |
| 31 | `theorem` | [sum_eq_iff_sum_smul_moebius_eq_on](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean/declarations/sum-eq-iff-sum-smul-moebius-eq-on--9cf8a1d8febfd4e688bd6d1c.md) | 283 | `result-track:9cf8a1d8febfd4e688bd6d1cf0efce0eebc00e5ad503ba4281d8d9f824b6b13b` |
| 32 | `theorem` | [sum_eq_iff_sum_smul_moebius_eq_on'](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean/declarations/sum-eq-iff-sum-smul-moebius-eq-on--24d129f88d02172b6b433382.md) | 308 | `result-track:24d129f88d02172b6b433382f51519e95f67b57d3012192660cff08fe627ac89` |
| 33 | `theorem` | [sum_eq_iff_sum_mul_moebius_eq_on](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean/declarations/sum-eq-iff-sum-mul-moebius-eq-on--0720054510abd8dfb400b128.md) | 320 | `result-track:0720054510abd8dfb400b128b517cf7b1d28571a14ef4ceae0788eab0b6789bc` |
| 34 | `theorem` | [prod_eq_iff_prod_pow_moebius_eq_on](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean/declarations/prod-eq-iff-prod-pow-moebius-eq-on--e50fe81f59b86ac16719596d.md) | 333 | `result-track:e50fe81f59b86ac16719596dc130478a429199d011426b4d604c3ad2366464e9` |
| 35 | `theorem` | [prod_eq_iff_prod_pow_moebius_eq_on_of_nonzero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean/declarations/prod-eq-iff-prod-pow-moebius-eq-on-of-nonzero--5de0cea028d28b4e563a7ca3.md) | 341 | `result-track:5de0cea028d28b4e563a7ca3c34658eae757db04c2452c75d9a8b5c74f1534cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
