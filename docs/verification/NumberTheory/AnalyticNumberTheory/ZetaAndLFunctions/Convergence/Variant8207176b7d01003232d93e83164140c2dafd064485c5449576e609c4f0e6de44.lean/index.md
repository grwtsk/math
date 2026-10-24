# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Convergence.Variant8207176b7d01003232d93e83164140c2dafd064485c5449576e609c4f0e6de44

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bdb80d5b28a57e514db0218578474324db3f0382",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant8207176b7d01003232d93e83164140c2dafd064485c5449576e609c4f0e6de44.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant8207176b7d01003232d93e83164140c2dafd064485c5449576e609c4f0e6de44.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant8207176b7d01003232d93e83164140c2dafd064485c5449576e609c4f0e6de44.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bdb80d5b28a57e514db0218578474324db3f0382`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant8207176b7d01003232d93e83164140c2dafd064485c5449576e609c4f0e6de44.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant8207176b7d01003232d93e83164140c2dafd064485c5449576e609c4f0e6de44.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.EReal.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LSeries.abscissaOfAbsConv](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant8207176b7d01003232d93e83164140c2dafd064485c5449576e609c4f0e6de44.lean/declarations/lseries-abscissaofabsconv--d38f96bcdacde7c2d2a518dd.md) | 26 | `declaration-track:d38f96bcdacde7c2d2a518dd6c2588c487b0bba49d9f3e55c5e116e3dce186fb` |
| 2 | `lemma` | [LSeries.abscissaOfAbsConv_congr](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant8207176b7d01003232d93e83164140c2dafd064485c5449576e609c4f0e6de44.lean/declarations/lseries-abscissaofabsconv-congr--554b7f9799c5b0897edaac68.md) | 29 | `result-track:554b7f9799c5b0897edaac6898301e9fc8d8df8fde5cbeeb32a5189f62a4395f` |
| 3 | `lemma` | [LSeries.abscissaOfAbsConv_congr'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant8207176b7d01003232d93e83164140c2dafd064485c5449576e609c4f0e6de44.lean/declarations/lseries-abscissaofabsconv-congr--f7fbd04e0bfa7d11e93d73c3.md) | 36 | `result-track:f7fbd04e0bfa7d11e93d73c3d0bc1898978ac311f128c05cccd9d502acb50348` |
| 4 | `lemma` | [LSeriesSummable_of_abscissaOfAbsConv_lt_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant8207176b7d01003232d93e83164140c2dafd064485c5449576e609c4f0e6de44.lean/declarations/lseriessummable-of-abscissaofabsconv-lt-re--7a59d8af9d30eaa48275db99.md) | 42 | `result-track:7a59d8af9d30eaa48275db99ac3d651326909d867b1c22e4eb24e10197175e40` |
| 5 | `lemma` | [LSeriesSummable_lt_re_of_abscissaOfAbsConv_lt_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant8207176b7d01003232d93e83164140c2dafd064485c5449576e609c4f0e6de44.lean/declarations/lseriessummable-lt-re-of-abscissaofabsconv-lt-re--1aebdaa39440e8c463594d9e.md) | 48 | `result-track:1aebdaa39440e8c463594d9ee875b818d252cfaccc502b09bb5fe13237f02918` |
| 6 | `lemma` | [LSeriesSummable.abscissaOfAbsConv_le](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant8207176b7d01003232d93e83164140c2dafd064485c5449576e609c4f0e6de44.lean/declarations/lseriessummable-abscissaofabsconv-le--eddbbbdf1782330666cdfe71.md) | 54 | `result-track:eddbbbdf1782330666cdfe71344627e18db4f339df49d132316d8da4890071f6` |
| 7 | `lemma` | [LSeries.abscissaOfAbsConv_le_of_forall_lt_LSeriesSummable](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant8207176b7d01003232d93e83164140c2dafd064485c5449576e609c4f0e6de44.lean/declarations/lseries-abscissaofabsconv-le-of-forall-lt-lseriessummable--8e700485cf3b06bee86af9ea.md) | 58 | `result-track:8e700485cf3b06bee86af9ea6018632bc542058db3ee625afffd46675d0b4714` |
| 8 | `lemma` | [LSeries.abscissaOfAbsConv_le_of_forall_lt_LSeriesSummable'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant8207176b7d01003232d93e83164140c2dafd064485c5449576e609c4f0e6de44.lean/declarations/lseries-abscissaofabsconv-le-of-forall-lt-lseriessummable--782df6a70f13078a7cb94b0c.md) | 68 | `result-track:782df6a70f13078a7cb94b0c2dd7a4f1281b5fd66d04aa0437f44eb88a031274` |
| 9 | `lemma` | [LSeries.abscissaOfAbsConv_le_of_le_const_mul_rpow](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant8207176b7d01003232d93e83164140c2dafd064485c5449576e609c4f0e6de44.lean/declarations/lseries-abscissaofabsconv-le-of-le-const-mul-rpow--b05a55823b978d9ddb754a59.md) | 83 | `result-track:b05a55823b978d9ddb754a59319e02abaaef054c1f6fe5fc9b89d853c032239b` |
| 10 | `lemma` | [LSeries.abscissaOfAbsConv_le_of_isBigO_rpow](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant8207176b7d01003232d93e83164140c2dafd064485c5449576e609c4f0e6de44.lean/declarations/lseries-abscissaofabsconv-le-of-isbigo-rpow--e5b490ae7c9c5f5adac6b8e8.md) | 94 | `result-track:e5b490ae7c9c5f5adac6b8e8cfd2f6c73a1871fdf2f36c10a6d0600b2ea089af` |
| 11 | `lemma` | [LSeries.abscissaOfAbsConv_le_of_le_const](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant8207176b7d01003232d93e83164140c2dafd064485c5449576e609c4f0e6de44.lean/declarations/lseries-abscissaofabsconv-le-of-le-const--88ce7d6c8986be2f201bec94.md) | 104 | `result-track:88ce7d6c8986be2f201bec941081d2e1a83eeceb75f1f33fa2e64a828222ddfa` |
| 12 | `lemma` | [LSeries.abscissaOfAbsConv_le_one_of_isBigO_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant8207176b7d01003232d93e83164140c2dafd064485c5449576e609c4f0e6de44.lean/declarations/lseries-abscissaofabsconv-le-one-of-isbigo-one--270c2e12c7b8f48b3461d354.md) | 110 | `result-track:270c2e12c7b8f48b3461d354bf1d2ea730833335f4ce50cf0cb87b64f8ada0fe` |
| 13 | `lemma` | [LSeries.summable_real_of_abscissaOfAbsConv_lt](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant8207176b7d01003232d93e83164140c2dafd064485c5449576e609c4f0e6de44.lean/declarations/lseries-summable-real-of-abscissaofabsconv-lt--bbb9d1e73e7c513046ead9dc.md) | 116 | `result-track:bbb9d1e73e7c513046ead9dca7834b11fe52aa66c7bf4526854bee353bc011d5` |
| 14 | `lemma` | [LSeries.abscissaOfAbsConv_binop_le](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant8207176b7d01003232d93e83164140c2dafd064485c5449576e609c4f0e6de44.lean/declarations/lseries-abscissaofabsconv-binop-le--b9f7eab81906565687766926.md) | 132 | `result-track:b9f7eab819065656877669267de5163fd0b399a2a27c215a69b8f62f5f0edf73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
