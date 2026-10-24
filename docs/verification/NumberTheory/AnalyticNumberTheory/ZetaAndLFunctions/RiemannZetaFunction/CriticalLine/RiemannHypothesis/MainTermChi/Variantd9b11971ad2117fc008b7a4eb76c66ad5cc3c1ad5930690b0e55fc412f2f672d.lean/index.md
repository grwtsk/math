# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.MainTermChi.Variantd9b11971ad2117fc008b7a4eb76c66ad5cc3c1ad5930690b0e55fc412f2f672d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be2de34516f6248636513b16bb9571ab47c39d3f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantd9b11971ad2117fc008b7a4eb76c66ad5cc3c1ad5930690b0e55fc412f2f672d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantd9b11971ad2117fc008b7a4eb76c66ad5cc3c1ad5930690b0e55fc412f2f672d.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantd9b11971ad2117fc008b7a4eb76c66ad5cc3c1ad5930690b0e55fc412f2f672d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be2de34516f6248636513b16bb9571ab47c39d3f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantd9b11971ad2117fc008b7a4eb76c66ad5cc3c1ad5930690b0e55fc412f2f672d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantd9b11971ad2117fc008b7a4eb76c66ad5cc3c1ad5930690b0e55fc412f2f672d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmE.LGrowth` — import line 17; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.Statement` — import line 18; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.Hypotheses` — import line 19; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.LocalCountChi` — import line 20; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.GammaSideChi` — import line 21; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.CountByIntegralChi` — import line 22; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.FoldChi` — import line 23; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.RvMChiDefs` — import line 24; external provider; requires a separately pinned dependency.
- `Zeta23.Assembly` — import line 25; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.ReZeroCountChi` — import line 26; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.GammaFactsChiProof` — import line 27; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [zerosInL_subset_of_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantd9b11971ad2117fc008b7a4eb76c66ad5cc3c1ad5930690b0e55fc412f2f672d.lean/declarations/zerosinl-subset-of-le--d618badcb46625429c030c67.md) | 40 | `result-track:d618badcb46625429c030c677fc84e5ab4bf1ba3804c827452601b3004e00235` |
| 2 | `lemma` | [NcountL_le_of_subset](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantd9b11971ad2117fc008b7a4eb76c66ad5cc3c1ad5930690b0e55fc412f2f672d.lean/declarations/ncountl-le-of-subset--f10a6c70b18ff5ac4bd11dab.md) | 45 | `result-track:f10a6c70b18ff5ac4bd11dab062cd08f196fc0ab7bb8cc8ffa09d9f37355eac8` |
| 3 | `lemma` | [NcountL_add](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantd9b11971ad2117fc008b7a4eb76c66ad5cc3c1ad5930690b0e55fc412f2f672d.lean/declarations/ncountl-add--c763ef8ddf67bdebd4d68ef9.md) | 58 | `result-track:c763ef8ddf67bdebd4d68ef99cbcf820890fa05c3f3e6d3b5af7e8aa3fe8fa60` |
| 4 | `lemma` | [exists_goodHeightL](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantd9b11971ad2117fc008b7a4eb76c66ad5cc3c1ad5930690b0e55fc412f2f672d.lean/declarations/exists-goodheightl--8990d5df19a6f7a8eaccb349.md) | 65 | `result-track:8990d5df19a6f7a8eaccb349f8418754ed0cf91dd3ea4603881fa1c53f7d4e47` |
| 5 | `lemma` | [LFunction_ne_zero_on_segment'](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantd9b11971ad2117fc008b7a4eb76c66ad5cc3c1ad5930690b0e55fc412f2f672d.lean/declarations/lfunction-ne-zero-on-segment--630cef221b1fd15c6c854561.md) | 85 | `result-track:630cef221b1fd15c6c854561e5b603706260ca0f9da54841481c70abeb0afa08` |
| 6 | `lemma` | [continuousOn_logDeriv_LFunction](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantd9b11971ad2117fc008b7a4eb76c66ad5cc3c1ad5930690b0e55fc412f2f672d.lean/declarations/continuouson-logderiv-lfunction--a5c103bd7daa5fc7f118d9c0.md) | 94 | `result-track:a5c103bd7daa5fc7f118d9c0e9e2bcacf32917acd866b9be6de0671a61a6ae07` |
| 7 | `lemma` | [halfContourChi_split](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantd9b11971ad2117fc008b7a4eb76c66ad5cc3c1ad5930690b0e55fc412f2f672d.lean/declarations/halfcontourchi-split--cad3a6617cd4c7f51c1e79a9.md) | 106 | `result-track:cad3a6617cd4c7f51c1e79a9f2bc275c604c0c93bc0003d4f238586da8b982ba` |
| 8 | `theorem` | [muq_le_log_uniform](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantd9b11971ad2117fc008b7a4eb76c66ad5cc3c1ad5930690b0e55fc412f2f672d.lean/declarations/muq-le-log-uniform--49a45fe349b6a36586e3e596.md) | 188 | `result-track:49a45fe349b6a36586e3e596e289d7a2e6224e47c5b90215bd696fc4c9b698a5` |
| 9 | `theorem` | [mainChi_uniform_aux](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantd9b11971ad2117fc008b7a4eb76c66ad5cc3c1ad5930690b0e55fc412f2f672d.lean/declarations/mainchi-uniform-aux--f31280ed6b61fcca84d5ff75.md) | 260 | `result-track:f31280ed6b61fcca84d5ff75ff0fe54b2134c6c4b10b2ac88440c7922a602000` |
| 10 | `theorem` | [mainChi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantd9b11971ad2117fc008b7a4eb76c66ad5cc3c1ad5930690b0e55fc412f2f672d.lean/declarations/mainchi--ad38e747f7922d5f220e4d10.md) | 514 | `result-track:ad38e747f7922d5f220e4d10f2f84aeed5be72cc2e6a7c18e1d3e96f8dee1d06` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
