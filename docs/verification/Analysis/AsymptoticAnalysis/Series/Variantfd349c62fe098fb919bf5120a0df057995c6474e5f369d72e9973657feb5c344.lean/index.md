# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Series.Variantfd349c62fe098fb919bf5120a0df057995c6474e5f369d72e9973657feb5c344

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a341dd43ec76ac98087a4fc2ea4ecead90ba9b3",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Series/Variantfd349c62fe098fb919bf5120a0df057995c6474e5f369d72e9973657feb5c344.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantfd349c62fe098fb919bf5120a0df057995c6474e5f369d72e9973657feb5c344.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantfd349c62fe098fb919bf5120a0df057995c6474e5f369d72e9973657feb5c344.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a341dd43ec76ac98087a4fc2ea4ecead90ba9b3`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Series/Variantfd349c62fe098fb919bf5120a0df057995c6474e5f369d72e9973657feb5c344.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Series/Variantfd349c62fe098fb919bf5120a0df057995c6474e5f369d72e9973657feb5c344.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.GammaFacts` — import line 27; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.LogDerivUniformlyOn` — import line 28; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.MultipliableUniformlyOn` — import line 29; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.EulerMascheroni` — import line 30; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Beta` — import line 31; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.IntegerCompl` — import line 32; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 33; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [wTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantfd349c62fe098fb919bf5120a0df057995c6474e5f369d72e9973657feb5c344.lean/declarations/wterm--829e90c3f0e7a782a007fe44.md) | 46 | `declaration-track:829e90c3f0e7a782a007fe4475b8e9bda09fba7f087a1cc1bf3513b965332869` |
| 2 | `lemma` | [one_add_wTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantfd349c62fe098fb919bf5120a0df057995c6474e5f369d72e9973657feb5c344.lean/declarations/one-add-wterm--342c0472ebeda157ee2a2acd.md) | 48 | `result-track:342c0472ebeda157ee2a2acd3cec8545092fd882aafbfa62f285ffdcdb12a337` |
| 3 | `lemma` | [norm_natCast_add_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantfd349c62fe098fb919bf5120a0df057995c6474e5f369d72e9973657feb5c344.lean/declarations/norm-natcast-add-one--2737b90b4a94e4e16e8568f5.md) | 53 | `result-track:2737b90b4a94e4e16e8568f50630af830d3e401913d1b2e97eac2dc7afd7b942` |
| 4 | `lemma` | [norm_wTerm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantfd349c62fe098fb919bf5120a0df057995c6474e5f369d72e9973657feb5c344.lean/declarations/norm-wterm-le--0ee7ab653a484dd75ffa9eda.md) | 58 | `result-track:0ee7ab653a484dd75ffa9eda58f2eb61f52085109b1247e0523f8db884f79ee1` |
| 5 | `lemma` | [summable_wBound](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantfd349c62fe098fb919bf5120a0df057995c6474e5f369d72e9973657feb5c344.lean/declarations/summable-wbound--af7f5a23d0c8a987ac2b5d30.md) | 97 | `result-track:af7f5a23d0c8a987ac2b5d30dd08e6b1712eb744b7bdcc02c142c6fac8f13f85` |
| 6 | `lemma` | [summable_norm_wTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantfd349c62fe098fb919bf5120a0df057995c6474e5f369d72e9973657feb5c344.lean/declarations/summable-norm-wterm--15bdb6d74eb9e110cad8feb4.md) | 115 | `result-track:15bdb6d74eb9e110cad8feb4ea18ca5d3218f3cd9a25bc848e0c88cc3d6b87aa` |
| 7 | `lemma` | [multipliable_one_add_wTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantfd349c62fe098fb919bf5120a0df057995c6474e5f369d72e9973657feb5c344.lean/declarations/multipliable-one-add-wterm--d435c6c50cbf1b82b0556f80.md) | 125 | `result-track:d435c6c50cbf1b82b0556f80d223e833ae6f684f0462f6480e9ed5508d7ad5b7` |
| 8 | `lemma` | [harmonic_cast_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantfd349c62fe098fb919bf5120a0df057995c6474e5f369d72e9973657feb5c344.lean/declarations/harmonic-cast-eq--6cdb692637d810042d2c623e.md) | 130 | `result-track:6cdb692637d810042d2c623ee88b36df4788cf7c9929bf5b2e3d51ad579fac85` |
| 9 | `lemma` | [inv_gammaSeq_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantfd349c62fe098fb919bf5120a0df057995c6474e5f369d72e9973657feb5c344.lean/declarations/inv-gammaseq-eq--274b58d0af3a2ffac330ae8e.md) | 138 | `result-track:274b58d0af3a2ffac330ae8e144c1e762f8de7d53355ad46e808c78a22f477b0` |
| 10 | `theorem` | [inv_gamma_eq_prod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantfd349c62fe098fb919bf5120a0df057995c6474e5f369d72e9973657feb5c344.lean/declarations/inv-gamma-eq-prod--ae0dd101bb58a8ffdd6f13a7.md) | 217 | `result-track:ae0dd101bb58a8ffdd6f13a7337ef1f79c468a8d1faf8c117c6b5ee07b7842a2` |
| 11 | `lemma` | [logDeriv_one_add_wTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantfd349c62fe098fb919bf5120a0df057995c6474e5f369d72e9973657feb5c344.lean/declarations/logderiv-one-add-wterm--1f38a0f238f0ea464d1787d2.md) | 257 | `result-track:1f38a0f238f0ea464d1787d201eabcb23497e89a3ba62f531ab3b05181f1c3e9` |
| 12 | `theorem` | [summable_digamma_series](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantfd349c62fe098fb919bf5120a0df057995c6474e5f369d72e9973657feb5c344.lean/declarations/summable-digamma-series--5053116ab2c3a2c143a56014.md) | 306 | `result-track:5053116ab2c3a2c143a560148a084677d3f2419ca5978a185b6299efaa0113f2` |
| 13 | `theorem` | [hasSum_digamma_series](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantfd349c62fe098fb919bf5120a0df057995c6474e5f369d72e9973657feb5c344.lean/declarations/hassum-digamma-series--5c0d364fd292db22bca598c8.md) | 356 | `result-track:5c0d364fd292db22bca598c87607c006463123614ae7e221116807304d64616a` |
| 14 | `theorem` | [digamma_series](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantfd349c62fe098fb919bf5120a0df057995c6474e5f369d72e9973657feb5c344.lean/declarations/digamma-series--21de4a21792e530b4bfc7c87.md) | 500 | `result-track:21de4a21792e530b4bfc7c87937c4108dbcd89fb0e2838b1451133e864336e9a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
