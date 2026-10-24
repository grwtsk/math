# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Nilpotent.Variant5d33e361eefa045fcdeadc9be2ee5b1d67adbb84401a7068b983d8cd50e60e66

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9760932f03826c06a559d6ec40aa400fa963e6eb",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Nilpotent/Variant5d33e361eefa045fcdeadc9be2ee5b1d67adbb84401a7068b983d8cd50e60e66.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant5d33e361eefa045fcdeadc9be2ee5b1d67adbb84401a7068b983d8cd50e60e66.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant5d33e361eefa045fcdeadc9be2ee5b1d67adbb84401a7068b983d8cd50e60e66.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9760932f03826c06a559d6ec40aa400fa963e6eb`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Nilpotent/Variant5d33e361eefa045fcdeadc9be2ee5b1d67adbb84401a7068b983d8cd50e60e66.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Nilpotent/Variant5d33e361eefa045fcdeadc9be2ee5b1d67adbb84401a7068b983d8cd50e60e66.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Div` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Identities` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Lemmas` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Tower` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isNilpotent_C_mul_pow_X_of_isNilpotent](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant5d33e361eefa045fcdeadc9be2ee5b1d67adbb84401a7068b983d8cd50e60e66.lean/declarations/isnilpotent-c-mul-pow-x-of-isnilpotent--d313e560f1ef43509c121bdb.md) | 41 | `result-track:d313e560f1ef43509c121bdb60053033bb51726d3ea4859eca38655b0455ad7e` |
| 2 | `lemma` | [isNilpotent_pow_X_mul_C_of_isNilpotent](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant5d33e361eefa045fcdeadc9be2ee5b1d67adbb84401a7068b983d8cd50e60e66.lean/declarations/isnilpotent-pow-x-mul-c-of-isnilpotent--a7978e6956c2cc8f93c78249.md) | 48 | `result-track:a7978e6956c2cc8f93c782494ff3c38758b4abf73cedfaf5f017018ea48bf23e` |
| 3 | `lemma` | [isNilpotent_monomial_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant5d33e361eefa045fcdeadc9be2ee5b1d67adbb84401a7068b983d8cd50e60e66.lean/declarations/isnilpotent-monomial-iff--537f1f1d403f3189ff6b88f5.md) | 53 | `result-track:537f1f1d403f3189ff6b88f53aa61735d90ce47ec5d7209da7d5db5ffdf2b3fd` |
| 4 | `lemma` | [isNilpotent_C_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant5d33e361eefa045fcdeadc9be2ee5b1d67adbb84401a7068b983d8cd50e60e66.lean/declarations/isnilpotent-c-iff--183f57f7adff355993dff561.md) | 57 | `result-track:183f57f7adff355993dff561726f78a86c98e417c64a0d0bcb1d1d8535936721` |
| 5 | `lemma` | [isNilpotent_X_mul_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant5d33e361eefa045fcdeadc9be2ee5b1d67adbb84401a7068b983d8cd50e60e66.lean/declarations/isnilpotent-x-mul-iff--be81e18afbe501100e334721.md) | 61 | `result-track:be81e18afbe501100e334721d91f728e3e870a97a09b23232b01c0c220692ddb` |
| 6 | `lemma` | [isNilpotent_mul_X_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant5d33e361eefa045fcdeadc9be2ee5b1d67adbb84401a7068b983d8cd50e60e66.lean/declarations/isnilpotent-mul-x-iff--d6b9de460f2b95f50e4f961e.md) | 68 | `result-track:d6b9de460f2b95f50e4f961ec4aa6dbdc6c4864dcb766beb4b66202c004cc222` |
| 7 | `lemma` | [isNilpotent_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant5d33e361eefa045fcdeadc9be2ee5b1d67adbb84401a7068b983d8cd50e60e66.lean/declarations/isnilpotent-iff--ce1ec32b66ba83d775f3af2f.md) | 79 | `result-track:ce1ec32b66ba83d775f3af2f0e8dc8417b315a477c44359f37c37078a6ef88d2` |
| 8 | `lemma` | [isNilpotent_reflect_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant5d33e361eefa045fcdeadc9be2ee5b1d67adbb84401a7068b983d8cd50e60e66.lean/declarations/isnilpotent-reflect-iff--a74b88630a8f9e976a54703a.md) | 99 | `result-track:a74b88630a8f9e976a54703af2f508bf56b040b36922ea91de665b1b686fe278` |
| 9 | `lemma` | [isNilpotent_reverse_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant5d33e361eefa045fcdeadc9be2ee5b1d67adbb84401a7068b983d8cd50e60e66.lean/declarations/isnilpotent-reverse-iff--7739ce966b0f12efe65590bf.md) | 108 | `result-track:7739ce966b0f12efe65590bf8c8f154bad43923c2ac93ff5bb16743130fbd32d` |
| 10 | `theorem` | [isUnit_of_coeff_isUnit_isNilpotent](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant5d33e361eefa045fcdeadc9be2ee5b1d67adbb84401a7068b983d8cd50e60e66.lean/declarations/isunit-of-coeff-isunit-isnilpotent--ec82aa2a62ddec4de238ebe0.md) | 116 | `result-track:ec82aa2a62ddec4de238ebe00249edd8cf8537896966149054fd8a235a91ebd9` |
| 11 | `theorem` | [coeff_isUnit_isNilpotent_of_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant5d33e361eefa045fcdeadc9be2ee5b1d67adbb84401a7068b983d8cd50e60e66.lean/declarations/coeff-isunit-isnilpotent-of-isunit--e290ce11bb23f145519a169b.md) | 140 | `result-track:e290ce11bb23f145519a169bba8c583b4b26e9c9dcb462fe0a101ebdc4793851` |
| 12 | `theorem` | [isUnit_iff_coeff_isUnit_isNilpotent](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant5d33e361eefa045fcdeadc9be2ee5b1d67adbb84401a7068b983d8cd50e60e66.lean/declarations/isunit-iff-coeff-isunit-isnilpotent--89160b078ca15445dbaf6de0.md) | 164 | `result-track:89160b078ca15445dbaf6de03979cb6016edf54306bf1d24a4f209d79f166c76` |
| 13 | `lemma` | [isUnit_C_add_X_mul_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant5d33e361eefa045fcdeadc9be2ee5b1d67adbb84401a7068b983d8cd50e60e66.lean/declarations/isunit-c-add-x-mul-iff--7e4db2c52a74aa8e845fb7a6.md) | 168 | `result-track:7e4db2c52a74aa8e845fb7a6ec0695ed3a802ea90c82560d3a1187bafab5972e` |
| 14 | `lemma` | [isUnit_iff'](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant5d33e361eefa045fcdeadc9be2ee5b1d67adbb84401a7068b983d8cd50e60e66.lean/declarations/isunit-iff--bd5f3e078f8157672dcfb693.md) | 175 | `result-track:bd5f3e078f8157672dcfb6933d05f26fe29e6c481480a317c545f7526fee521c` |
| 15 | `theorem` | [not_isUnit_of_natDegree_pos_of_isReduced](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant5d33e361eefa045fcdeadc9be2ee5b1d67adbb84401a7068b983d8cd50e60e66.lean/declarations/not-isunit-of-natdegree-pos-of-isreduced--0d6aeb9ef954f1873ec6f645.md) | 182 | `result-track:0d6aeb9ef954f1873ec6f645273b2b265d58d37a6469d7e50aff9f47046457c1` |
| 16 | `theorem` | [not_isUnit_of_degree_pos_of_isReduced](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant5d33e361eefa045fcdeadc9be2ee5b1d67adbb84401a7068b983d8cd50e60e66.lean/declarations/not-isunit-of-degree-pos-of-isreduced--81b0f003e06ba48086e9b0a3.md) | 192 | `result-track:81b0f003e06ba48086e9b0a309fda770833a3683665321e8ddb3cfdc8bc48ae4` |
| 17 | `lemma` | [isNilpotent_aeval_sub_of_isNilpotent_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant5d33e361eefa045fcdeadc9be2ee5b1d67adbb84401a7068b983d8cd50e60e66.lean/declarations/isnilpotent-aeval-sub-of-isnilpotent-sub--4d28561542381d384ad84a57.md) | 202 | `result-track:4d28561542381d384ad84a57f2c7dcfa8def608c6c942c453b421eaff39cdd8e` |
| 18 | `lemma` | [isUnit_aeval_of_isUnit_aeval_of_isNilpotent_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant5d33e361eefa045fcdeadc9be2ee5b1d67adbb84401a7068b983d8cd50e60e66.lean/declarations/isunit-aeval-of-isunit-aeval-of-isnilpotent-sub--ab665717db5ceb57c8bf7ee0.md) | 210 | `result-track:ab665717db5ceb57c8bf7ee0e268dcdce48603ea14585be036e220b1d1fadc93` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
