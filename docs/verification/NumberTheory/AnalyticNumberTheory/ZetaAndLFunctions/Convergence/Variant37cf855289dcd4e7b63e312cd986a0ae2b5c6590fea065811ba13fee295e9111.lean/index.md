# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Convergence.Variant37cf855289dcd4e7b63e312cd986a0ae2b5c6590fea065811ba13fee295e9111

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9cd5bd916c3d3e40c710fce52efc8ecbe66757f4",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant37cf855289dcd4e7b63e312cd986a0ae2b5c6590fea065811ba13fee295e9111.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant37cf855289dcd4e7b63e312cd986a0ae2b5c6590fea065811ba13fee295e9111.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant37cf855289dcd4e7b63e312cd986a0ae2b5c6590fea065811ba13fee295e9111.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9cd5bd916c3d3e40c710fce52efc8ecbe66757f4`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant37cf855289dcd4e7b63e312cd986a0ae2b5c6590fea065811ba13fee295e9111.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant37cf855289dcd4e7b63e312cd986a0ae2b5c6590fea065811ba13fee295e9111.lean.json)

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
| 1 | `def` | [LSeries.abscissaOfAbsConv](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant37cf855289dcd4e7b63e312cd986a0ae2b5c6590fea065811ba13fee295e9111.lean/declarations/lseries-abscissaofabsconv--bbd01611ecd5e38261cd4341.md) | 30 | `declaration-track:bbd01611ecd5e38261cd4341fb8b0f4aa7201e27561593986f534ec3a81e98ea` |
| 2 | `lemma` | [LSeries.abscissaOfAbsConv_congr](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant37cf855289dcd4e7b63e312cd986a0ae2b5c6590fea065811ba13fee295e9111.lean/declarations/lseries-abscissaofabsconv-congr--a35810b0c7845c0a2cc2a76f.md) | 33 | `result-track:a35810b0c7845c0a2cc2a76f368e26c29783c6ad07b4017211842ccc8571529a` |
| 3 | `lemma` | [LSeries.abscissaOfAbsConv_congr'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant37cf855289dcd4e7b63e312cd986a0ae2b5c6590fea065811ba13fee295e9111.lean/declarations/lseries-abscissaofabsconv-congr--6398b23d909436482d04ac28.md) | 40 | `result-track:6398b23d909436482d04ac28bcee68996fbaa0fccbc5ca92d639351ee5b1c031` |
| 4 | `lemma` | [LSeriesSummable_of_abscissaOfAbsConv_lt_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant37cf855289dcd4e7b63e312cd986a0ae2b5c6590fea065811ba13fee295e9111.lean/declarations/lseriessummable-of-abscissaofabsconv-lt-re--de823522ec13788ac63c7bb1.md) | 46 | `result-track:de823522ec13788ac63c7bb1a389eec9869f6722729a11f16209518a366c1f91` |
| 5 | `lemma` | [LSeriesSummable_lt_re_of_abscissaOfAbsConv_lt_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant37cf855289dcd4e7b63e312cd986a0ae2b5c6590fea065811ba13fee295e9111.lean/declarations/lseriessummable-lt-re-of-abscissaofabsconv-lt-re--1ffbc59eece19a0a5c684fa4.md) | 52 | `result-track:1ffbc59eece19a0a5c684fa46cd9cf95fb3e0c8c62ed9d8e0d314fa4fed7019c` |
| 6 | `lemma` | [LSeriesSummable.abscissaOfAbsConv_le](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant37cf855289dcd4e7b63e312cd986a0ae2b5c6590fea065811ba13fee295e9111.lean/declarations/lseriessummable-abscissaofabsconv-le--b919672c56d9ab00e2d94ebc.md) | 58 | `result-track:b919672c56d9ab00e2d94ebc11b73c3caf04dbb0fa9ecbdbc8d0266198b40677` |
| 7 | `lemma` | [LSeries.abscissaOfAbsConv_le_of_forall_lt_LSeriesSummable](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant37cf855289dcd4e7b63e312cd986a0ae2b5c6590fea065811ba13fee295e9111.lean/declarations/lseries-abscissaofabsconv-le-of-forall-lt-lseriessummable--9ec9ef9cf76c4f6c9b92bbeb.md) | 62 | `result-track:9ec9ef9cf76c4f6c9b92bbeb3a38367cde7757836d1ca1bcf207c263f00cf40c` |
| 8 | `lemma` | [LSeries.abscissaOfAbsConv_le_of_forall_lt_LSeriesSummable'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant37cf855289dcd4e7b63e312cd986a0ae2b5c6590fea065811ba13fee295e9111.lean/declarations/lseries-abscissaofabsconv-le-of-forall-lt-lseriessummable--2de597a1d4536cb545e22f89.md) | 72 | `result-track:2de597a1d4536cb545e22f89803c1b222e745ea7ec874af223c25c3d4d723a48` |
| 9 | `lemma` | [LSeries.abscissaOfAbsConv_le_of_le_const_mul_rpow](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant37cf855289dcd4e7b63e312cd986a0ae2b5c6590fea065811ba13fee295e9111.lean/declarations/lseries-abscissaofabsconv-le-of-le-const-mul-rpow--9552d71b4f5b02b48679981c.md) | 87 | `result-track:9552d71b4f5b02b48679981cf9a6ceff667fc7ed0277c39c26aec5be4e15e469` |
| 10 | `lemma` | [LSeries.abscissaOfAbsConv_le_of_isBigO_rpow](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant37cf855289dcd4e7b63e312cd986a0ae2b5c6590fea065811ba13fee295e9111.lean/declarations/lseries-abscissaofabsconv-le-of-isbigo-rpow--d29e388301aeb6199ca5ed9a.md) | 98 | `result-track:d29e388301aeb6199ca5ed9abbe9ec9302ba3b11d9cca9910cd396320ff47bbb` |
| 11 | `lemma` | [LSeries.abscissaOfAbsConv_le_of_le_const](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant37cf855289dcd4e7b63e312cd986a0ae2b5c6590fea065811ba13fee295e9111.lean/declarations/lseries-abscissaofabsconv-le-of-le-const--422f727e3eccd0c3c5189833.md) | 108 | `result-track:422f727e3eccd0c3c5189833883bceec5537cb1b2fc25cd940bc06c532a314d9` |
| 12 | `lemma` | [LSeries.abscissaOfAbsConv_le_one_of_isBigO_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant37cf855289dcd4e7b63e312cd986a0ae2b5c6590fea065811ba13fee295e9111.lean/declarations/lseries-abscissaofabsconv-le-one-of-isbigo-one--f5427fb87c6e549d29f8a359.md) | 114 | `result-track:f5427fb87c6e549d29f8a3594837f784aa20d21d490165c17001bd354a5218b5` |
| 13 | `lemma` | [LSeries.summable_real_of_abscissaOfAbsConv_lt](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant37cf855289dcd4e7b63e312cd986a0ae2b5c6590fea065811ba13fee295e9111.lean/declarations/lseries-summable-real-of-abscissaofabsconv-lt--a6b4a9dff304455fd483750f.md) | 120 | `result-track:a6b4a9dff304455fd483750ff4a7b6fee901a381852e07461c91d0938e49e03b` |
| 14 | `lemma` | [LSeries.abscissaOfAbsConv_binop_le](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant37cf855289dcd4e7b63e312cd986a0ae2b5c6590fea065811ba13fee295e9111.lean/declarations/lseries-abscissaofabsconv-binop-le--3048c4ccfacd435fdff84c81.md) | 136 | `result-track:3048c4ccfacd435fdff84c8178b55daa8d9b351b102270bd8f6eec9bd210277b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
