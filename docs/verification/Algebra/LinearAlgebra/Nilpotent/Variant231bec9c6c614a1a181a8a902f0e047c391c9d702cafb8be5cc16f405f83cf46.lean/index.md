# Verification target: GRWTSK.Algebra.LinearAlgebra.Nilpotent.Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3b810ae57e5be8669c003d2b39836719198b0c9",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3b810ae57e5be8669c003d2b39836719198b0c9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Choose.Sum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Bilinear` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Submonoid.ZeroDivisors` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Operations` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GeomSum` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsNilpotent](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/declarations/isnilpotent--d0eaf96705798ff3a3d5b201.md) | 47 | `declaration-track:d0eaf96705798ff3a3d5b201e7c50f6c11c5088a9cd76126b111afd400281316` |
| 2 | `theorem` | [IsNilpotent.mk](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/declarations/isnilpotent-mk--cbb4e6e218c5238267fe8c06.md) | 51 | `result-track:cbb4e6e218c5238267fe8c06422d4d8c577e658f9f4b3ac9532b110f6887b908` |
| 3 | `theorem` | [IsNilpotent.zero](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/declarations/isnilpotent-zero--53aee19015a3b1413690a494.md) | 55 | `result-track:53aee19015a3b1413690a494a66e39e880e0dd3c38a6ffd842c33668f2b6aff1` |
| 4 | `theorem` | [IsNilpotent.neg](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/declarations/isnilpotent-neg--8428ca539644a5438408f6d7.md) | 59 | `result-track:8428ca539644a5438408f6d7939627d1289a92c7bafa9ea5341024f34bd812fa` |
| 5 | `theorem` | [isNilpotent_neg_iff](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/declarations/isnilpotent-neg-iff--f9879d5198518a06c5540be6.md) | 66 | `result-track:f9879d5198518a06c5540be64bb6eea5e11710fbc5165b25c0f8ed7f82397e59` |
| 6 | `theorem` | [IsNilpotent.map](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/declarations/isnilpotent-map--e578065843222396ecc4b6ee.md) | 70 | `result-track:e578065843222396ecc4b6ee870f529cb56da115627930843086cc8c4e4886ee` |
| 7 | `theorem` | [IsNilpotent.sub_one_isUnit](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/declarations/isnilpotent-sub-one-isunit--4ddbb747741f35f607f5c7e0.md) | 76 | `result-track:4ddbb747741f35f607f5c7e079da8ed14ce47e9143ec240d9badba58e315d8a6` |
| 8 | `theorem` | [Commute.IsNilpotent.add_isUnit](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/declarations/commute-isnilpotent-add-isunit--250a425d86e9b57eeda7aae7.md) | 84 | `result-track:250a425d86e9b57eeda7aae772a0c19bd353246855d1220eb594a48fa0c0afd1` |
| 9 | `class` | [IsReduced](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/declarations/isreduced--d4eced6ed8354916f9a03cca.md) | 95 | `declaration-track:d4eced6ed8354916f9a03cca034e646d27b7184b6a3b838c1bb1852ee7232680` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/declarations/instance--1a8fa8fb6d7f49c477c6e36d.md) | 100 | `declaration-track:1a8fa8fb6d7f49c477c6e36dced33fa733650421dda994fb14d978f13cb9d777` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/declarations/instance--0c0622b7c316e3abb2f7b814.md) | 105 | `declaration-track:0c0622b7c316e3abb2f7b8146e8d2a33de1c6fe9adc2e2b7bba752b714275a4c` |
| 12 | `theorem` | [IsNilpotent.eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/declarations/isnilpotent-eq-zero--5f7d7b8f7a6c8846465e734a.md) | 110 | `result-track:5f7d7b8f7a6c8846465e734a195936966debeb35a5535df34cfeb11ba589b9a9` |
| 13 | `theorem` | [isNilpotent_iff_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/declarations/isnilpotent-iff-eq-zero--16ad17aff30ffa55c7ce07c8.md) | 115 | `result-track:16ad17aff30ffa55c7ce07c8080e252d4a2925a16ba8f59bc8c4f1df631d352a` |
| 14 | `theorem` | [isReduced_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/declarations/isreduced-of-injective--d9fd2d34d5aa8e4adbe42cbf.md) | 119 | `result-track:d9fd2d34d5aa8e4adbe42cbfc167b7626c481bc396691943d1d189a685166f26` |
| 15 | `theorem` | [RingHom.ker_isRadical_iff_reduced_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/declarations/ringhom-ker-isradical-iff-reduced-of-surjective--afe5cb734b2e0d51f5ec745c.md) | 129 | `result-track:afe5cb734b2e0d51f5ec745c2ca0322e513390f9529e6fab7f7bc959bfc3ac48` |
| 16 | `def` | [IsRadical](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/declarations/isradical--68d96508c6ef027a39f54523.md) | 138 | `declaration-track:68d96508c6ef027a39f54523c706c9fb5265b81df22869d7ba8c56ee1c0764d5` |
| 17 | `theorem` | [zero_isRadical_iff](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/declarations/zero-isradical-iff--e8f0a4dbba42dd03bbc5cd5e.md) | 142 | `result-track:e8f0a4dbba42dd03bbc5cd5e879cbf75a0e97f5447983f5ec6e7c027142a6d18` |
| 18 | `theorem` | [isRadical_iff_span_singleton](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/declarations/isradical-iff-span-singleton--1c67630a455897b739a2f73d.md) | 147 | `result-track:1c67630a455897b739a2f73d9e887dc103e2450657cfb45a431656df64823cf8` |
| 19 | `theorem` | [isRadical_iff_pow_one_lt](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/declarations/isradical-iff-pow-one-lt--9ed339ec4fc4fcb7d48ee965.md) | 153 | `result-track:9ed339ec4fc4fcb7d48ee965cbbde08bb930c8c8870b1f2cc6c3713e849ffcdf` |
| 20 | `theorem` | [isReduced_iff_pow_one_lt](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/declarations/isreduced-iff-pow-one-lt--b585b2be0df3c4fb9092af57.md) | 160 | `result-track:b585b2be0df3c4fb9092af57a69f84c121a9b4e301f2c51456ac727b1b1a7ac5` |
| 21 | `theorem` | [isNilpotent_add](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/declarations/isnilpotent-add--fa54aa84692f0d155e6d1628.md) | 171 | `result-track:fa54aa84692f0d155e6d16280da0b45322c077a7fb9fb7cae2e43a45765baee8` |
| 22 | `lemma` | [isNilpotent_sum](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/declarations/isnilpotent-sum--08f11039252777e6471462e2.md) | 184 | `result-track:08f11039252777e6471462e202b6b6370764f18bb8fcabc89b77b162c5431cb6` |
| 23 | `theorem` | [isNilpotent_mul_left](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/declarations/isnilpotent-mul-left--4d0fa5fda52e03f3d4af7aab.md) | 196 | `result-track:4d0fa5fda52e03f3d4af7aab8432511d87f13ac94d19e07743c52c586f486fe6` |
| 24 | `lemma` | [isNilpotent_mul_left_iff](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/declarations/isnilpotent-mul-left-iff--53055dfb23950610539775ed.md) | 202 | `result-track:53055dfb23950610539775ed9535bbd0585d92fb09935dfb97a3986d23f01e04` |
| 25 | `theorem` | [isNilpotent_mul_right](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/declarations/isnilpotent-mul-right--e82a89fc22a1864461c5ade7.md) | 209 | `result-track:e82a89fc22a1864461c5ade7c367822c0a3cdea44263d95f36057fc5b7095c50` |
| 26 | `lemma` | [isNilpotent_mul_right_iff](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/declarations/isnilpotent-mul-right-iff--2f5834027d9d9c26b63782c5.md) | 214 | `result-track:2f5834027d9d9c26b63782c580a83a17e711801272e4ebdcbef42a9de50866fd` |
| 27 | `theorem` | [isNilpotent_sub](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/declarations/isnilpotent-sub--fc1a73ad9784df289d8aa975.md) | 227 | `result-track:fc1a73ad9784df289d8aa975483b4659dccfc72f88f5f1709cbe3d010c4e4b5b` |
| 28 | `lemma` | [isNilpotent_sum](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/declarations/isnilpotent-sum--fee4c742c7b779c68eb3f908.md) | 242 | `result-track:fee4c742c7b779c68eb3f908bd654bb3052335fcd92649d96225226c675a4c8b` |
| 29 | `def` | [nilradical](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/declarations/nilradical--c24b58e5804d87f630b82119.md) | 248 | `declaration-track:c24b58e5804d87f630b82119072b935681ccb71e0adc6e1cca250e6591cf2d20` |
| 30 | `theorem` | [mem_nilradical](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/declarations/mem-nilradical--9a5853c79d216b9442656c3a.md) | 252 | `result-track:9a5853c79d216b9442656c3ab891a28bc1d3bfda5089d32280e1d14e44a670ae` |
| 31 | `theorem` | [nilradical_eq_sInf](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/declarations/nilradical-eq-sinf--43662531697693f60a0c8f1d.md) | 256 | `result-track:43662531697693f60a0c8f1d70f674db171e29ca8b9fea94afe11d8f66ad9b2d` |
| 32 | `theorem` | [nilpotent_iff_mem_prime](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/declarations/nilpotent-iff-mem-prime--f891a4814f255dab293e20c1.md) | 261 | `result-track:f891a4814f255dab293e20c1c2645c4f50e55f5e8cc3582fed6b7e77a65cc16f` |
| 33 | `theorem` | [nilradical_le_prime](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/declarations/nilradical-le-prime--8f459382e3d5c45558bf74a1.md) | 266 | `result-track:8f459382e3d5c45558bf74a12b217ff3d6365faa835b8c023e2da57727050dbf` |
| 34 | `theorem` | [nilradical_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/declarations/nilradical-eq-zero--1854b9497dd4f009d0600474.md) | 271 | `result-track:1854b9497dd4f009d06004749fdd06777738173ebc915c0b4a51cfeb26e56f8f` |
| 35 | `theorem` | [isNilpotent_mulLeft_iff](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/declarations/isnilpotent-mulleft-iff--3aa5224aa6f9d93bb0c56b66.md) | 282 | `result-track:3aa5224aa6f9d93bb0c56b66ba6899af090cbf7da3b3f03dd0f1b72bfee23c1f` |
| 36 | `theorem` | [isNilpotent_mulRight_iff](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/declarations/isnilpotent-mulright-iff--1988d028e8916c31a8b3483c.md) | 289 | `result-track:1988d028e8916c31a8b3483cddb34d554f59788b233ceca8e3e6d69219751273` |
| 37 | `theorem` | [IsNilpotent.mapQ](../../../../../mathematics/Algebra/LinearAlgebra/Nilpotent/Variant231bec9c6c614a1a181a8a902f0e047c391c9d702cafb8be5cc16f405f83cf46.lean/declarations/isnilpotent-mapq--5d8e9525afd0967cdf11f853.md) | 303 | `result-track:5d8e9525afd0967cdf11f8538e9345084a810c0eb679ebee0a3747cceeb3b88d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
