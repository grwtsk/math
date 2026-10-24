# Verification target: GRWTSK.Algebra.AbsNorm.Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "142bd965ff2d917032ec221764b1fd2032454947",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/index.md) · [Full source](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `142bd965ff2d917032ec221764b1fd2032454947`.

Source path: `GRWTSK/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Quotient` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Determinant` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.CardQuotient` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.IdealQuotient` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.Dvr` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.Ideal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Basis` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.Multiplicative` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cardQuot](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/cardquot--dd99251160b1fca2dc2ec946.md) | 53 | `declaration-track:dd99251160b1fca2dc2ec946f2307a6451b3d06f9367ad2f91cc136266a3bc9d` |
| 2 | `theorem` | [cardQuot_apply](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/cardquot-apply--386dbbc9120d88df478af410.md) | 56 | `result-track:386dbbc9120d88df478af410fecc2d59ad7c70e48f168c18ced8508ec9aa0de9` |
| 3 | `theorem` | [cardQuot_bot](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/cardquot-bot--7c24e1ec48767bcc22f1ab85.md) | 62 | `result-track:7c24e1ec48767bcc22f1ab858c20330822536271ea15718d44ec689db189b06b` |
| 4 | `theorem` | [cardQuot_top](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/cardquot-top--4a834f5cc2d3cdd250f92703.md) | 66 | `result-track:4a834f5cc2d3cdd250f927034059fc0fd0266a0d3d39588ebd19b7df1b1b14e6` |
| 5 | `theorem` | [cardQuot_eq_one_iff](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/cardquot-eq-one-iff--4bbd45a0ea02208ecf92832d.md) | 72 | `result-track:4bbd45a0ea02208ecf92832defaea46380961ff34eccf5ae6474effb9a84dbd4` |
| 6 | `theorem` | [cardQuot_mul_of_coprime](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/cardquot-mul-of-coprime--85b7449b227524be69e90810.md) | 88 | `result-track:85b7449b227524be69e9081070b9c8094aafb3efd121015a55dee1d7aad4de5c` |
| 7 | `theorem` | [Ideal.mul_add_mem_pow_succ_inj](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/ideal-mul-add-mem-pow-succ-inj--593a14ecff6dc89f9b9ddb5d.md) | 97 | `result-track:593a14ecff6dc89f9b9ddb5d948ba929d197b51c1e0cfb9147df94f15f1195f7` |
| 8 | `theorem` | [Ideal.exists_mul_add_mem_pow_succ](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/ideal-exists-mul-add-mem-pow-succ--205d3b892c1ce41e3c69f508.md) | 113 | `result-track:205d3b892c1ce41e3c69f50836067a0c0fcb9e004fb070a931f1df619d16c92d` |
| 9 | `theorem` | [Ideal.mem_prime_of_mul_mem_pow](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/ideal-mem-prime-of-mul-mem-pow--c801588a66bbaea4222a98b0.md) | 128 | `result-track:c801588a66bbaea4222a98b05ea47ce7c60af4b320cf1d4dc773a38f36e4e739` |
| 10 | `theorem` | [Ideal.mul_add_mem_pow_succ_unique](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/ideal-mul-add-mem-pow-succ-unique--ec111bc08524ce1e82664994.md) | 137 | `result-track:ec111bc08524ce1e826649942801f45a2ced896aa0c98228cc76b7a1e2ef88c9` |
| 11 | `theorem` | [cardQuot_pow_of_prime](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/cardquot-pow-of-prime--ac39723778d762aa8820e3b6.md) | 147 | `result-track:ac39723778d762aa8820e3b6d42fbbffaf639da646229e8b041389487c9ad9d3` |
| 12 | `theorem` | [cardQuot_mul](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/cardquot-mul--f67bf577d089ea9dd2b82265.md) | 182 | `result-track:f67bf577d089ea9dd2b82265a39f9c1142ec3b2b2944ee707465debac95eff31` |
| 13 | `def` | [Ideal.absNorm](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/ideal-absnorm--69bad87b317aa642032aad07.md) | 196 | `declaration-track:69bad87b317aa642032aad07e5872923a2a04516f86790ac17fefca36254e640` |
| 14 | `theorem` | [absNorm_apply](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/absnorm-apply--014dbc7dc695b112f179841e.md) | 209 | `result-track:014dbc7dc695b112f179841eb8e88b4a389472d992cbe4e915dc31a36834d44a` |
| 15 | `theorem` | [absNorm_bot](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/absnorm-bot--240b4dc5b77627641e482f79.md) | 212 | `result-track:240b4dc5b77627641e482f79d5f50802b1592e9a80070eec28de22d8608e5047` |
| 16 | `theorem` | [absNorm_top](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/absnorm-top--bfce8a149d932e23e8cee85c.md) | 215 | `result-track:bfce8a149d932e23e8cee85c12f379715a8bdc7554af79ff7b837c9308720924` |
| 17 | `theorem` | [absNorm_eq_one_iff](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/absnorm-eq-one-iff--a375b38b86405211f2b8acfc.md) | 218 | `result-track:a375b38b86405211f2b8acfc8e819cab091abe6ed51c34706e5781039a8d8f4a` |
| 18 | `theorem` | [absNorm_ne_zero_iff](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/absnorm-ne-zero-iff--1e1127e2f88396d4ec1cb41a.md) | 221 | `result-track:1e1127e2f88396d4ec1cb41abd98e18cdb643a77cf887b853f3c11201f5a069b` |
| 19 | `theorem` | [absNorm_dvd_absNorm_of_le](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/absnorm-dvd-absnorm-of-le--a4fa991b27003490d94775ca.md) | 225 | `result-track:a4fa991b27003490d94775caee951652ad12e7b321a2045f226307c71f2ba240` |
| 20 | `theorem` | [irreducible_of_irreducible_absNorm](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/irreducible-of-irreducible-absnorm--8aebfcc282369c427a813379.md) | 228 | `result-track:8aebfcc282369c427a813379156618aebe60acb513e51683a18788e631c1668d` |
| 21 | `theorem` | [isPrime_of_irreducible_absNorm](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/isprime-of-irreducible-absnorm--58ebcae8781cd4479f496eb1.md) | 238 | `result-track:58ebcae8781cd4479f496eb10b0e3fd9ebfcad52308baf1434fe2a17d4e5ef48` |
| 22 | `theorem` | [prime_of_irreducible_absNorm_span](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/prime-of-irreducible-absnorm-span--db0cd25e4ffe6367598fca9f.md) | 243 | `result-track:db0cd25e4ffe6367598fca9f7e1cead55cde43076b7dacba328874f57774cfaf` |
| 23 | `theorem` | [absNorm_mem](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/absnorm-mem--b42dfc5a980adabc03e87fa0.md) | 247 | `result-track:b42dfc5a980adabc03e87fa007126767873f764cede58b3facd93ec9f4b1415f` |
| 24 | `theorem` | [span_singleton_absNorm_le](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/span-singleton-absnorm-le--f57d0b230a5a7d11ae13e65f.md) | 251 | `result-track:f57d0b230a5a7d11ae13e65f341820757dfd2972fb0c8d7206f575740ab0a1eb` |
| 25 | `theorem` | [span_singleton_absNorm](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/span-singleton-absnorm--e1563c17bf57be6552c1fec6.md) | 254 | `result-track:e1563c17bf57be6552c1fec69513485c1498410a8615a797aec2fce83ecba3cb` |
| 26 | `theorem` | [natAbs_det_equiv](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/natabs-det-equiv--9549e8fe6ff6746643d89824.md) | 271 | `result-track:9549e8fe6ff6746643d898242be68105b0cff471a1196dfb594755c2ddf597eb` |
| 27 | `theorem` | [natAbs_det_basis_change](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/natabs-det-basis-change--39a8cb0c2633e782acf1c520.md) | 287 | `result-track:39a8cb0c2633e782acf1c520acce42e8415b0118d243abe50838482ebbc65d5e` |
| 28 | `theorem` | [absNorm_span_singleton](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/absnorm-span-singleton--b33420802e1872b18b97dd0c.md) | 292 | `result-track:b33420802e1872b18b97dd0cd4bbf6c10ad695d2a308d6d3dd0a1de09c391a71` |
| 29 | `theorem` | [absNorm_dvd_norm_of_mem](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/absnorm-dvd-norm-of-mem--5c1fdc30ced095dde27719c2.md) | 305 | `result-track:5c1fdc30ced095dde27719c2e3b8c64276f477498d6efd9cb8a9c912807e0bcb` |
| 30 | `theorem` | [absNorm_span_insert](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/absnorm-span-insert--e71cbfcd0dc859b18c73d360.md) | 311 | `result-track:e71cbfcd0dc859b18c73d360ecf6e3f115a9d2c3f94351cf3e50bf24293e4d10` |
| 31 | `theorem` | [absNorm_eq_zero_iff](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/absnorm-eq-zero-iff--37c0d3a373b916a2d5e48eca.md) | 319 | `result-track:37c0d3a373b916a2d5e48eca3e25bc42420330f0da51b2076ff34bef27852c99` |
| 32 | `theorem` | [absNorm_ne_zero_iff_mem_nonZeroDivisors](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/absnorm-ne-zero-iff-mem-nonzerodivisors--b050c2ce8fd4f4985421614d.md) | 331 | `result-track:b050c2ce8fd4f4985421614dfc67c56b1279a398105e201c57f0a894a2bcf604` |
| 33 | `theorem` | [absNorm_pos_iff_mem_nonZeroDivisors](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/absnorm-pos-iff-mem-nonzerodivisors--30e1ec4ac75004efdb95d8cf.md) | 335 | `result-track:30e1ec4ac75004efdb95d8cf1509589abbf1a5c549b42b58ef8ceb8228da3bc5` |
| 34 | `theorem` | [absNorm_ne_zero_of_nonZeroDivisors](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/absnorm-ne-zero-of-nonzerodivisors--aa593cfc79cb9ec07a2bdc90.md) | 339 | `result-track:aa593cfc79cb9ec07a2bdc90eaf477794cf2c39a91ba4ea7a4e83c15f80e27d8` |
| 35 | `theorem` | [absNorm_pos_of_nonZeroDivisors](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/absnorm-pos-of-nonzerodivisors--725fbdb5f616a32fdac311e2.md) | 342 | `result-track:725fbdb5f616a32fdac311e28af5e900ed0e7908c86a2f1e1de58245a306ac4c` |
| 36 | `theorem` | [finite_setOf_absNorm_eq](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/finite-setof-absnorm-eq--ce21d20688e107d03a9a0e83.md) | 345 | `result-track:ce21d20688e107d03a9a0e83c915c9a8599f94b790ffd576d8f428cc41032ed6` |
| 37 | `theorem` | [finite_setOf_absNorm_le](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/finite-setof-absnorm-le--2e5846db83634df011c4f139.md) | 363 | `result-track:2e5846db83634df011c4f1395a62a16527dfd62fd87909bd9ac2f6f1cf37d345` |
| 38 | `theorem` | [finite_setOf_absNorm_le₀](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/finite-setof-absnorm-le--771479793f9b84e2a6b803b1.md) | 369 | `result-track:771479793f9b84e2a6b803b148cf60bca7344c939757b85c3f28eabbb589736c` |
| 39 | `theorem` | [card_norm_le_eq_card_norm_le_add_one](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/card-norm-le-eq-card-norm-le-add-one--2db9ad04b0fb7c81a17cd572.md) | 375 | `result-track:2db9ad04b0fb7c81a17cd57245c43c30b008e7a6fd15a7cd94911ce6047b5640` |
| 40 | `theorem` | [norm_dvd_iff](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/norm-dvd-iff--2a01753ccd084e0eda569d5a.md) | 398 | `result-track:2a01753ccd084e0eda569d5a63595bc358ca55cb0f945b748808215b63d60dc9` |
| 41 | `theorem` | [Int.ideal_span_absNorm_eq_self](../../../../mathematics/Algebra/AbsNorm/Variantbb84ccd41d704fea7b438365565db0681b4b62dfb53b3a0102aea941207482fc.lean/declarations/int-ideal-span-absnorm-eq-self--b214185f24ac31f1c5183d82.md) | 414 | `result-track:b214185f24ac31f1c5183d82af31d8768a8d2b132351ed028969ffb0bdc39413` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
