# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Exponential.Variant11a4a760a4cd620c9fbbcd9922bb3baac22791c11a65674ecaf06c1abfaa72a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41ba83e7ebf8b599efa473abc5c09e459a315745",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Exponential/Variant11a4a760a4cd620c9fbbcd9922bb3baac22791c11a65674ecaf06c1abfaa72a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant11a4a760a4cd620c9fbbcd9922bb3baac22791c11a65674ecaf06c1abfaa72a0.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant11a4a760a4cd620c9fbbcd9922bb3baac22791c11a65674ecaf06c1abfaa72a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41ba83e7ebf8b599efa473abc5c09e459a315745`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Exponential/Variant11a4a760a4cd620c9fbbcd9922bb3baac22791c11a65674ecaf06c1abfaa72a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Exponential/Variant11a4a760a4cd620c9fbbcd9922bb3baac22791c11a65674ecaf06c1abfaa72a0.lean.json)

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
| 1 | `def` | [exponentialPDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant11a4a760a4cd620c9fbbcd9922bb3baac22791c11a65674ecaf06c1abfaa72a0.lean/declarations/exponentialpdfreal--7fd3ed7e62866d239262e399.md) | 41 | `declaration-track:7fd3ed7e62866d239262e399d1cb733d5e141f94bcfbec21252f972194d323f4` |
| 2 | `def` | [exponentialPDF](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant11a4a760a4cd620c9fbbcd9922bb3baac22791c11a65674ecaf06c1abfaa72a0.lean/declarations/exponentialpdf--02cc9675698e615ad988fe29.md) | 46 | `declaration-track:02cc9675698e615ad988fe293bd4f382f6ae0649d24977f234737be3f008d0ef` |
| 3 | `lemma` | [exponentialPDF_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant11a4a760a4cd620c9fbbcd9922bb3baac22791c11a65674ecaf06c1abfaa72a0.lean/declarations/exponentialpdf-eq--e468a0377da4015db59a2f24.md) | 49 | `result-track:e468a0377da4015db59a2f24631df9f993bb3efa99c937aacdb38705565d72f6` |
| 4 | `lemma` | [exponentialPDF_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant11a4a760a4cd620c9fbbcd9922bb3baac22791c11a65674ecaf06c1abfaa72a0.lean/declarations/exponentialpdf-of-neg--621c89734bbfd4d74b568d17.md) | 54 | `result-track:621c89734bbfd4d74b568d17d86c2f763581a2d749b0351d88055ef841f0c0ca` |
| 5 | `lemma` | [exponentialPDF_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant11a4a760a4cd620c9fbbcd9922bb3baac22791c11a65674ecaf06c1abfaa72a0.lean/declarations/exponentialpdf-of-nonneg--bc369fb4e580e97b4b16d72c.md) | 56 | `result-track:bc369fb4e580e97b4b16d72c4473f6b1ebf139afabf8a39f0735b5f1610b382e` |
| 6 | `lemma` | [lintegral_exponentialPDF_of_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant11a4a760a4cd620c9fbbcd9922bb3baac22791c11a65674ecaf06c1abfaa72a0.lean/declarations/lintegral-exponentialpdf-of-nonpos--dabc557a22d4817714f1b07e.md) | 61 | `result-track:dabc557a22d4817714f1b07e7d36db08999f362f591e3e4ddd02c8b84cffe741` |
| 7 | `lemma` | [measurable_exponentialPDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant11a4a760a4cd620c9fbbcd9922bb3baac22791c11a65674ecaf06c1abfaa72a0.lean/declarations/measurable-exponentialpdfreal--e438029fcbdb7f22f55cdf80.md) | 66 | `result-track:e438029fcbdb7f22f55cdf808c7b9f4662b3e7844b5c70baf0d6764583c04061` |
| 8 | `lemma` | [stronglyMeasurable_exponentialPDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant11a4a760a4cd620c9fbbcd9922bb3baac22791c11a65674ecaf06c1abfaa72a0.lean/declarations/stronglymeasurable-exponentialpdfreal--ca5d13281f2962ba06f50c10.md) | 71 | `result-track:ca5d13281f2962ba06f50c10256e376787e99b45b6d6bb05bbd21f95147e3ac0` |
| 9 | `lemma` | [exponentialPDFReal_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant11a4a760a4cd620c9fbbcd9922bb3baac22791c11a65674ecaf06c1abfaa72a0.lean/declarations/exponentialpdfreal-pos--f08613f73b0933dcd808e524.md) | 75 | `result-track:f08613f73b0933dcd808e524202f417d73c716c24aac943da63003e189e0c711` |
| 10 | `lemma` | [exponentialPDFReal_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant11a4a760a4cd620c9fbbcd9922bb3baac22791c11a65674ecaf06c1abfaa72a0.lean/declarations/exponentialpdfreal-nonneg--ec4f224af6d6bbe6d8aa34ef.md) | 79 | `result-track:ec4f224af6d6bbe6d8aa34ef369ef8f5bef0d958a5d21813a28299b5a4af8ddd` |
| 11 | `lemma` | [lintegral_exponentialPDF_eq_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant11a4a760a4cd620c9fbbcd9922bb3baac22791c11a65674ecaf06c1abfaa72a0.lean/declarations/lintegral-exponentialpdf-eq-one--591ec738a3e5a65026f553c7.md) | 86 | `result-track:591ec738a3e5a65026f553c768555bf246843a55e7027c659d22c50d0d81ff6e` |
| 12 | `def` | [expMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant11a4a760a4cd620c9fbbcd9922bb3baac22791c11a65674ecaf06c1abfaa72a0.lean/declarations/expmeasure--2940d38760b836a25c6b4f78.md) | 96 | `declaration-track:2940d38760b836a25c6b4f785971e43281e5c542962448b4200881d7f0bc4350` |
| 13 | `lemma` | [isProbabilityMeasure_expMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant11a4a760a4cd620c9fbbcd9922bb3baac22791c11a65674ecaf06c1abfaa72a0.lean/declarations/isprobabilitymeasure-expmeasure--4ab0aebb6dfa12ce48ed1cce.md) | 98 | `result-track:4ab0aebb6dfa12ce48ed1cce8edfcf00164f931aafceb9219fea834b7af877fe` |
| 14 | `lemma` | [cdf_expMeasure_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant11a4a760a4cd620c9fbbcd9922bb3baac22791c11a65674ecaf06c1abfaa72a0.lean/declarations/cdf-expmeasure-eq-integral--68ed3880e74b40bc412c5a38.md) | 103 | `result-track:68ed3880e74b40bc412c5a3819d3f5d0825d52c73ee76e1ce6bf93806607df54` |
| 15 | `lemma` | [cdf_expMeasure_eq_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant11a4a760a4cd620c9fbbcd9922bb3baac22791c11a65674ecaf06c1abfaa72a0.lean/declarations/cdf-expmeasure-eq-lintegral--33cb9ecc5a1356a7f2e2da64.md) | 107 | `result-track:33cb9ecc5a1356a7f2e2da64b217437532fe19eb4a4bc68e7c035e97f6f674d4` |
| 16 | `lemma` | [hasDerivAt_neg_exp_mul_exp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant11a4a760a4cd620c9fbbcd9922bb3baac22791c11a65674ecaf06c1abfaa72a0.lean/declarations/hasderivat-neg-exp-mul-exp--a50e2b56d7dc653aa1c3eea7.md) | 113 | `result-track:a50e2b56d7dc653aa1c3eea769b43fc0c3c0fc93406119459b944cbec1b0aae4` |
| 17 | `lemma` | [exp_neg_integrableOn_Ioc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant11a4a760a4cd620c9fbbcd9922bb3baac22791c11a65674ecaf06c1abfaa72a0.lean/declarations/exp-neg-integrableon-ioc--0594d69d1f35a9bda3f4b296.md) | 120 | `result-track:0594d69d1f35a9bda3f4b296a6156b977d3c7b20f9aa396b7eb64b6d58697f78` |
| 18 | `lemma` | [lintegral_exponentialPDF_eq_antiDeriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant11a4a760a4cd620c9fbbcd9922bb3baac22791c11a65674ecaf06c1abfaa72a0.lean/declarations/lintegral-exponentialpdf-eq-antideriv--30b7689eee3502125ad1dc29.md) | 125 | `result-track:30b7689eee3502125ad1dc29f9110a30df5943cfbdac15fa4cde8b14f55e9113` |
| 19 | `lemma` | [cdf_expMeasure_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant11a4a760a4cd620c9fbbcd9922bb3baac22791c11a65674ecaf06c1abfaa72a0.lean/declarations/cdf-expmeasure-eq--3e1c19b8fc964ff273a198cf.md) | 165 | `result-track:3e1c19b8fc964ff273a198cf387623e3dbd5ee7e22e6329942fb54fe994e4fd2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
