# Verification target: GRWTSK.Analysis.FunctionalAnalysis.CoshEnvelope.Variant4f03f70a76b968e601060ccb0e54498021ed48893bf2b13fa6215988b3153b28

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5cda8dfe7ca44263144b03c8ee70bc6aa12d71ec",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/CoshEnvelope/Variant4f03f70a76b968e601060ccb0e54498021ed48893bf2b13fa6215988b3153b28.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/CoshEnvelope/Variant4f03f70a76b968e601060ccb0e54498021ed48893bf2b13fa6215988b3153b28.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/CoshEnvelope/Variant4f03f70a76b968e601060ccb0e54498021ed48893bf2b13fa6215988b3153b28.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5cda8dfe7ca44263144b03c8ee70bc6aa12d71ec`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/CoshEnvelope/Variant4f03f70a76b968e601060ccb0e54498021ed48893bf2b13fa6215988b3153b28.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/CoshEnvelope/Variant4f03f70a76b968e601060ccb0e54498021ed48893bf2b13fa6215988b3153b28.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Deriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Jensen` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [envelope](../../../../../mathematics/Analysis/FunctionalAnalysis/CoshEnvelope/Variant4f03f70a76b968e601060ccb0e54498021ed48893bf2b13fa6215988b3153b28.lean/declarations/envelope--34760064af2df31c06c3c854.md) | 24 | `declaration-track:34760064af2df31c06c3c854fb554666ef442a318f896114d998e3a1989dadf4` |
| 2 | `def` | [logEnvelope](../../../../../mathematics/Analysis/FunctionalAnalysis/CoshEnvelope/Variant4f03f70a76b968e601060ccb0e54498021ed48893bf2b13fa6215988b3153b28.lean/declarations/logenvelope--2f9af238ef65d56099dea79a.md) | 25 | `declaration-track:2f9af238ef65d56099dea79adfffa1140455764d93e6c666f87890748c70a4d5` |
| 3 | `def` | [logSlope](../../../../../mathematics/Analysis/FunctionalAnalysis/CoshEnvelope/Variant4f03f70a76b968e601060ccb0e54498021ed48893bf2b13fa6215988b3153b28.lean/declarations/logslope--29151e72bc0bd74bafc95726.md) | 26 | `declaration-track:29151e72bc0bd74bafc9572641ed867c59557b53137eb4bf38b544795d394bd6` |
| 4 | `theorem` | [logEnvelope_hasDerivAt](../../../../../mathematics/Analysis/FunctionalAnalysis/CoshEnvelope/Variant4f03f70a76b968e601060ccb0e54498021ed48893bf2b13fa6215988b3153b28.lean/declarations/logenvelope-hasderivat--cf621b630a7eeb17b1aabc1e.md) | 28 | `result-track:cf621b630a7eeb17b1aabc1e7ed05d37cf892bc7f56283864d2ac396b5a417f2` |
| 5 | `theorem` | [logSlope_hasDerivAt](../../../../../mathematics/Analysis/FunctionalAnalysis/CoshEnvelope/Variant4f03f70a76b968e601060ccb0e54498021ed48893bf2b13fa6215988b3153b28.lean/declarations/logslope-hasderivat--620874afb50a06d0957bbf6b.md) | 37 | `result-track:620874afb50a06d0957bbf6ba0f429d1fdfb47f269e964f8e49a87feeea104aa` |
| 6 | `theorem` | [logEnvelope_convex](../../../../../mathematics/Analysis/FunctionalAnalysis/CoshEnvelope/Variant4f03f70a76b968e601060ccb0e54498021ed48893bf2b13fa6215988b3153b28.lean/declarations/logenvelope-convex--45ff04f7d14cc7a1fd87f2db.md) | 49 | `result-track:45ff04f7d14cc7a1fd87f2db40290922a28f9adddd6c365b2262f58b1f43c22a` |
| 7 | `theorem` | [envelope_pos](../../../../../mathematics/Analysis/FunctionalAnalysis/CoshEnvelope/Variant4f03f70a76b968e601060ccb0e54498021ed48893bf2b13fa6215988b3153b28.lean/declarations/envelope-pos--4f16dceb573a541b44ebb103.md) | 60 | `result-track:4f16dceb573a541b44ebb1039bc7f996f79bdab7f814a271394ab2984ef84877` |
| 8 | `theorem` | [logEnvelope_eq_log](../../../../../mathematics/Analysis/FunctionalAnalysis/CoshEnvelope/Variant4f03f70a76b968e601060ccb0e54498021ed48893bf2b13fa6215988b3153b28.lean/declarations/logenvelope-eq-log--2d7c944d2a82bb5bd2474c2f.md) | 64 | `result-track:2d7c944d2a82bb5bd2474c2f35dd96f74dfa0c43463edd6ef6874a8a652e58ff` |
| 9 | `theorem` | [envelope_le_max_endpoints](../../../../../mathematics/Analysis/FunctionalAnalysis/CoshEnvelope/Variant4f03f70a76b968e601060ccb0e54498021ed48893bf2b13fa6215988b3153b28.lean/declarations/envelope-le-max-endpoints--69d07e3ac73f1f0a686f2bb4.md) | 73 | `result-track:69d07e3ac73f1f0a686f2bb463e1c846f566e5edd6efa05e898db8aa4afff52a` |
| 10 | `theorem` | [exp_one_lt_rational](../../../../../mathematics/Analysis/FunctionalAnalysis/CoshEnvelope/Variant4f03f70a76b968e601060ccb0e54498021ed48893bf2b13fa6215988b3153b28.lean/declarations/exp-one-lt-rational--0aa39f2b38643606b7e3b1a3.md) | 83 | `result-track:0aa39f2b38643606b7e3b1a3f5fb9a3359808e7219bce271d3c4f30ba952bcf2` |
| 11 | `theorem` | [envelope_exp_formula](../../../../../mathematics/Analysis/FunctionalAnalysis/CoshEnvelope/Variant4f03f70a76b968e601060ccb0e54498021ed48893bf2b13fa6215988b3153b28.lean/declarations/envelope-exp-formula--fcea77f27cfb7e2bc1f97cb8.md) | 86 | `result-track:fcea77f27cfb7e2bc1f97cb8efae18ea1f8e7263b815981599a954923c487413` |
| 12 | `theorem` | [envelope_one_lt_six](../../../../../mathematics/Analysis/FunctionalAnalysis/CoshEnvelope/Variant4f03f70a76b968e601060ccb0e54498021ed48893bf2b13fa6215988b3153b28.lean/declarations/envelope-one-lt-six--adf71f04cd34c5e900f3ebf7.md) | 94 | `result-track:adf71f04cd34c5e900f3ebf79f78385efb4a7aab02ea2c17570049edcab3c322` |
| 13 | `theorem` | [envelope_nat_endpoint_le](../../../../../mathematics/Analysis/FunctionalAnalysis/CoshEnvelope/Variant4f03f70a76b968e601060ccb0e54498021ed48893bf2b13fa6215988b3153b28.lean/declarations/envelope-nat-endpoint-le--1384a3f153cd30ce4b7ca47c.md) | 100 | `result-track:1384a3f153cd30ce4b7ca47c509bdaa43f308d97cd2e1127809fd2583560e1d2` |
| 14 | `theorem` | [envelope_le_rational_endpoints](../../../../../mathematics/Analysis/FunctionalAnalysis/CoshEnvelope/Variant4f03f70a76b968e601060ccb0e54498021ed48893bf2b13fa6215988b3153b28.lean/declarations/envelope-le-rational-endpoints--cc5d5859945b4cc9c7c8ca47.md) | 109 | `result-track:cc5d5859945b4cc9c7c8ca47baaffacf15866e870806caf61e523ef6851bc413` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
