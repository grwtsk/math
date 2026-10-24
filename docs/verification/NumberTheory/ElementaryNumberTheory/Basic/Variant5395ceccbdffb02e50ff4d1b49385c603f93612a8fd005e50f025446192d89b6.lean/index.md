# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Basic.Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56043e21f9b785448af16fe2d78fa75042c9c2e3",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56043e21f9b785448af16fe2d78fa75042c9c2e3`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.Nat.Gcd` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Nat.Units` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Divisibility` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Nat` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [gcd_greatest](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/gcd-greatest--c0dfb20224eefacaf926ab8b.md) | 40 | `result-track:c0dfb20224eefacaf926ab8b71c33a5bbd48494269a2dc1bc0fe3e5c62a1bd77` |
| 2 | `theorem` | [pow_sub_one_mod_pow_sub_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/pow-sub-one-mod-pow-sub-one--c3d6e67ee88979a593663512.md) | 47 | `result-track:c3d6e67ee88979a593663512665b312968bf6bee02f5b37cb920c70894f957c0` |
| 3 | `theorem` | [pow_sub_one_gcd_pow_sub_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/pow-sub-one-gcd-pow-sub-one--490fd63a6d7c52d3a07b2037.md) | 64 | `result-track:490fd63a6d7c52d3a07b20379c633f21bd010d0c643bd2f0a86c91998a02b06a` |
| 4 | `theorem` | [Coprime.lcm_eq_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/coprime-lcm-eq-mul--1cb27674e39a461e7ae6e27e.md) | 77 | `result-track:1cb27674e39a461e7ae6e27ef105e966c0f668cd66349893687e54082f871407` |
| 5 | `theorem` | [Coprime.symmetric](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/coprime-symmetric--97ccd3cf9a5b7c14f1223a52.md) | 80 | `result-track:97ccd3cf9a5b7c14f1223a520bc337aad950cee5605a1b6913e681ccc56bc9e0` |
| 6 | `theorem` | [Coprime.dvd_mul_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/coprime-dvd-mul-right--d8f77da033db44545978bb1a.md) | 82 | `result-track:d8f77da033db44545978bb1a409d259ca2eaed4608f476cc06af2750c107590b` |
| 7 | `theorem` | [Coprime.dvd_mul_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/coprime-dvd-mul-left--bf8bdace23035f5bb8470cd0.md) | 85 | `result-track:bf8bdace23035f5bb8470cd00e5e8ce0b4a905e414ed1f32c815681e5f25fc9b` |
| 8 | `theorem` | [coprime_add_self_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/coprime-add-self-right--0a3d57acef98a3d44879afae.md) | 89 | `result-track:0a3d57acef98a3d44879afae7a7ce6679e70085392ee5782184a66fa6f0e83a8` |
| 9 | `theorem` | [coprime_self_add_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/coprime-self-add-right--4e79fc4c66a2d7c6a669cde7.md) | 93 | `result-track:4e79fc4c66a2d7c6a669cde7b906a61a6e662e14be1be9dc2ec4e39b2b02c57e` |
| 10 | `theorem` | [coprime_add_self_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/coprime-add-self-left--c89803e6b6650de0969919d7.md) | 97 | `result-track:c89803e6b6650de0969919d717c9ae3a544b383805c7d24608d8322958d7e1f7` |
| 11 | `theorem` | [coprime_self_add_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/coprime-self-add-left--202d6cb2b638709945258b12.md) | 101 | `result-track:202d6cb2b638709945258b12bf77579978ca064d796b0ff0cea524a38cae09bf` |
| 12 | `theorem` | [coprime_add_mul_right_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/coprime-add-mul-right-right--f16a48a4633c375c0524c185.md) | 105 | `result-track:f16a48a4633c375c0524c1856a377701296bb6a805be9be32806467ee7bc993b` |
| 13 | `theorem` | [coprime_add_mul_left_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/coprime-add-mul-left-right--72608d5ec4f8e48043358544.md) | 109 | `result-track:72608d5ec4f8e480433585442698b0493213817eb01eae39ffe96eec3b3424e3` |
| 14 | `theorem` | [coprime_mul_right_add_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/coprime-mul-right-add-right--cca86e04c9aa88205223c15f.md) | 113 | `result-track:cca86e04c9aa88205223c15fa980b00dade7eee5114dcea49c13f4bad0f7ced4` |
| 15 | `theorem` | [coprime_mul_left_add_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/coprime-mul-left-add-right--46952243030663ae3a572b55.md) | 117 | `result-track:46952243030663ae3a572b55b1369ee3fdf96e178c829d016da0342be362d4f2` |
| 16 | `theorem` | [coprime_add_mul_right_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/coprime-add-mul-right-left--fea77a4a41a60970b2d306ac.md) | 121 | `result-track:fea77a4a41a60970b2d306ac35d1c382902593b8530b423d7c0b9c4d2f93ca61` |
| 17 | `theorem` | [coprime_add_mul_left_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/coprime-add-mul-left-left--3fc2805c529cb9d4091443fc.md) | 125 | `result-track:3fc2805c529cb9d4091443fc723f90d4b2e7e92a47359074e6877ea362c6bc45` |
| 18 | `theorem` | [coprime_mul_right_add_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/coprime-mul-right-add-left--9fb1520cedf09d8b5b57fe67.md) | 129 | `result-track:9fb1520cedf09d8b5b57fe675c4ac270964c9ab7dda9739110565ee01ddc3a39` |
| 19 | `theorem` | [coprime_mul_left_add_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/coprime-mul-left-add-left--300a54a1596f23842b0aee93.md) | 133 | `result-track:300a54a1596f23842b0aee9307fff45763919a535ccd5fcf002c82c299caf601` |
| 20 | `lemma` | [add_coprime_iff_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/add-coprime-iff-left--a478895d657e05aeb96d4fd1.md) | 136 | `result-track:a478895d657e05aeb96d4fd1db8ba109beeee442a687aa30f031aea730e0a621` |
| 21 | `lemma` | [add_coprime_iff_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/add-coprime-iff-right--6d0181c62a84451655382cc1.md) | 139 | `result-track:6d0181c62a84451655382cc14c6982b8f876ecc5b50d910f0f38770f79faba7d` |
| 22 | `lemma` | [coprime_add_iff_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/coprime-add-iff-left--5410ceb2fabdcbf3b44962bc.md) | 142 | `result-track:5410ceb2fabdcbf3b44962bc37d7b1d73896c2df3d0e0ec47d0fdf8fac5dcf26` |
| 23 | `lemma` | [coprime_add_iff_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/coprime-add-iff-right--5ee4601cd488062af6e67b30.md) | 145 | `result-track:5ee4601cd488062af6e67b30556997be03732886ed9b67edde32cd10c68a2b87` |
| 24 | `lemma` | [Coprime.of_dvd_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/coprime-of-dvd-left--bb85852b9ee93dacf62cfbe8.md) | 149 | `result-track:bb85852b9ee93dacf62cfbe867fd07d5ec4d55f1e49704cbb3558cbcdbaab3fa` |
| 25 | `lemma` | [Coprime.of_dvd_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/coprime-of-dvd-right--bcaabd4007c9af1f1b2a0c9e.md) | 152 | `result-track:bcaabd4007c9af1f1b2a0c9e7adcfcf8d931186a3d6f3ee2d00e72aeca251fb2` |
| 26 | `lemma` | [Coprime.of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/coprime-of-dvd--dfbf72d54b98c9469cbb7ce3.md) | 155 | `result-track:dfbf72d54b98c9469cbb7ce36ca44a8bcc7b34a6f217286e30290ad6cfb116c3` |
| 27 | `theorem` | [coprime_sub_self_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/coprime-sub-self-left--5df7f408cb749ad5c6d9c1e2.md) | 159 | `result-track:5df7f408cb749ad5c6d9c1e22fa5355cfe26a6686741e0e01227fb38e4512b6f` |
| 28 | `theorem` | [coprime_sub_self_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/coprime-sub-self-right--235795535acdf3235ffedd55.md) | 163 | `result-track:235795535acdf3235ffedd55ac8ee85b40c02deed6abbc5398b35315ac64873f` |
| 29 | `theorem` | [coprime_self_sub_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/coprime-self-sub-left--9d2cb0e36916e3e46dfe7945.md) | 167 | `result-track:9d2cb0e36916e3e46dfe79454351e37d132a6e9d2ebce7849dad9ea6eeaf9673` |
| 30 | `theorem` | [coprime_self_sub_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/coprime-self-sub-right--9e21c158fa17d981ab85823e.md) | 171 | `result-track:9e21c158fa17d981ab85823ec3bce62c2f3d9f70497759feefe0c5d52583c58c` |
| 31 | `theorem` | [coprime_pow_left_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/coprime-pow-left-iff--2bda9b66c318490e9ca68ff4.md) | 175 | `result-track:2bda9b66c318490e9ca68ff4eb1fc9fa950b720b2d17f408e514e61fa8296cef` |
| 32 | `theorem` | [coprime_pow_right_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/coprime-pow-right-iff--8a8bc48629c96fc82c6c9290.md) | 182 | `result-track:8a8bc48629c96fc82c6c9290fd3307adabf06039cab6ae6abfcf7e9ced78e6ad` |
| 33 | `theorem` | [not_coprime_zero_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/not-coprime-zero-zero--cf85dda34bf2afc7da549426.md) | 186 | `result-track:cf85dda34bf2afc7da549426ca506c529c7792fc0b78f81cd0908a30010d9f63` |
| 34 | `theorem` | [coprime_one_left_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/coprime-one-left-iff--f10d07c182d495001a7883e4.md) | 188 | `result-track:f10d07c182d495001a7883e4d80e61c21e93134146fd7dbfe6e4949ca50dc381` |
| 35 | `theorem` | [coprime_one_right_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/coprime-one-right-iff--e47f44906880a356e6d4b62c.md) | 190 | `result-track:e47f44906880a356e6d4b62c4251427bf22000d40acd82000173f01403bf51af` |
| 36 | `theorem` | [gcd_mul_of_coprime_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/gcd-mul-of-coprime-of-dvd--46035dd27e9561caee969c18.md) | 192 | `result-track:46035dd27e9561caee969c187ca3d59caed33e865a5b63ab69b52ed70c8b905b` |
| 37 | `theorem` | [Coprime.eq_of_mul_eq_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/coprime-eq-of-mul-eq-zero--37e3b12fc6781e4f6f5f7bfb.md) | 199 | `result-track:37e3b12fc6781e4f6f5f7bfb9cabda334852fbb019deff87b51611230b78215b` |
| 38 | `theorem` | [coprime_iff_isRelPrime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/coprime-iff-isrelprime--7e90c636c352ccbe0d62b7be.md) | 207 | `result-track:7e90c636c352ccbe0d62b7be698a0f4d916c98841a3f126fa002de6bd921666b` |
| 39 | `theorem` | [eq_one_of_dvd_coprimes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/eq-one-of-dvd-coprimes--1109e4bb4c5bb7c22bc9cb78.md) | 212 | `result-track:1109e4bb4c5bb7c22bc9cb78b6b628180157df38aee2b212c5ea2a88a7066f50` |
| 40 | `theorem` | [Coprime.mul_add_mul_ne_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/coprime-mul-add-mul-ne-mul--3308cbceaa9e62a34943cd1c.md) | 216 | `result-track:3308cbceaa9e62a34943cd1c165f39eedf95373081e99846c0b50034d05fcae4` |
| 41 | `theorem` | [gcd_mul_gcd_eq_iff_dvd_mul_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant5395ceccbdffb02e50ff4d1b49385c603f93612a8fd005e50f025446192d89b6.lean/declarations/gcd-mul-gcd-eq-iff-dvd-mul-of-coprime--c40516652293a8e23d82f817.md) | 233 | `result-track:c40516652293a8e23d82f8176ea1eb8fafd5cb567d22bf87667579722b340182` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
