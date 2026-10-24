# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Fold.Variant8718829b64d244df1f27b737d5776901bca0d39b36a6fe9982cc3f467de49e25

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed874bd9cb2a69f95ecb6b37abad38bb8a7812f0",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant8718829b64d244df1f27b737d5776901bca0d39b36a6fe9982cc3f467de49e25.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant8718829b64d244df1f27b737d5776901bca0d39b36a6fe9982cc3f467de49e25.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant8718829b64d244df1f27b737d5776901bca0d39b36a6fe9982cc3f467de49e25.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed874bd9cb2a69f95ecb6b37abad38bb8a7812f0`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant8718829b64d244df1f27b737d5776901bca0d39b36a6fe9982cc3f467de49e25.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant8718829b64d244df1f27b737d5776901bca0d39b36a6fe9982cc3f467de49e25.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.RvM.Defs` — import line 25; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.CountByIntegral` — import line 26; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.XiLogDeriv` — import line 27; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.ZetaConj` — import line 28; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [cpow_ofReal_conj](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant8718829b64d244df1f27b737d5776901bca0d39b36a6fe9982cc3f467de49e25.lean/declarations/cpow-ofreal-conj--d7e1c00c0a439f02ad735415.md) | 42 | `result-track:d7e1c00c0a439f02ad735415fdb90e79052c7792e3a3ea9f74519d4bd92dd5f3` |
| 2 | `lemma` | [Gammaℝ_conj](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant8718829b64d244df1f27b737d5776901bca0d39b36a6fe9982cc3f467de49e25.lean/declarations/gamma-conj--912079c3f158eb7da230c013.md) | 49 | `result-track:912079c3f158eb7da230c013bfd54b79c2e0ca862bf45d0b6e71bf9ddf3e5277` |
| 3 | `lemma` | [deriv_Gammaℝ_conj](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant8718829b64d244df1f27b737d5776901bca0d39b36a6fe9982cc3f467de49e25.lean/declarations/deriv-gamma-conj--1f88ab203e597908be8eced8.md) | 57 | `result-track:1f88ab203e597908be8eced83effe83f41b76f6c7f5b2fad33b1fc8802203c11` |
| 4 | `lemma` | [logDeriv_Gammaℝ_conj](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant8718829b64d244df1f27b737d5776901bca0d39b36a6fe9982cc3f467de49e25.lean/declarations/logderiv-gamma-conj--33b9c5df1b7b2f94b6b5bcca.md) | 64 | `result-track:33b9c5df1b7b2f94b6b5bcca66aff47e5bc7439b68bceeca9a178715f884cedd` |
| 5 | `lemma` | [logDeriv_completedZeta_conj](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant8718829b64d244df1f27b737d5776901bca0d39b36a6fe9982cc3f467de49e25.lean/declarations/logderiv-completedzeta-conj--ed7baa292985c8064ebea7e4.md) | 69 | `result-track:ed7baa292985c8064ebea7e433c78fdce757c38f386de3eb27e791d2696ecbb5` |
| 6 | `lemma` | [logDeriv_completedZeta_one_sub_conj](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant8718829b64d244df1f27b737d5776901bca0d39b36a6fe9982cc3f467de49e25.lean/declarations/logderiv-completedzeta-one-sub-conj--1cd474a4604aa8d4969c593d.md) | 84 | `result-track:1cd474a4604aa8d4969c593d425de57cd44f89f602133ef63674deb7f6a20a22` |
| 7 | `lemma` | [path_point_facts](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant8718829b64d244df1f27b737d5776901bca0d39b36a6fe9982cc3f467de49e25.lean/declarations/path-point-facts--6be4d7021c695cb303defab3.md) | 97 | `result-track:6be4d7021c695cb303defab3840e17751c2ebfcb23fae921fad65fbb06758ed4` |
| 8 | `lemma` | [continuousAt_logDeriv_completedZeta](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant8718829b64d244df1f27b737d5776901bca0d39b36a6fe9982cc3f467de49e25.lean/declarations/continuousat-logderiv-completedzeta--ea3781c1a288638a402d8845.md) | 107 | `result-track:ea3781c1a288638a402d884537ec5ab698a59ab63132620d983f164e7b089a46` |
| 9 | `lemma` | [horizontal_fold](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant8718829b64d244df1f27b737d5776901bca0d39b36a6fe9982cc3f467de49e25.lean/declarations/horizontal-fold--c5876fa46a1ef92b4476979e.md) | 117 | `result-track:c5876fa46a1ef92b4476979e2f43732922e229d9a1e169d28ad93bdf162ff479` |
| 10 | `lemma` | [vertical_fold](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant8718829b64d244df1f27b737d5776901bca0d39b36a6fe9982cc3f467de49e25.lean/declarations/vertical-fold--744dfd906ab748b14a1003c4.md) | 154 | `result-track:744dfd906ab748b14a1003c42f0c1942b868dadf5ad0f0aae7ba8c50eb8b3fd0` |
| 11 | `theorem` | [rectangleIntegral_logDeriv_completedZeta_eq_halfContour](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant8718829b64d244df1f27b737d5776901bca0d39b36a6fe9982cc3f467de49e25.lean/declarations/rectangleintegral-logderiv-completedzeta-eq-halfcontour--33906a0282e6c4e11f2715cb.md) | 174 | `result-track:33906a0282e6c4e11f2715cbcf00d5d3c57a38858a01b0413fde457b3d3f41c0` |
| 12 | `theorem` | [Ncount_eq_im_halfContour](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant8718829b64d244df1f27b737d5776901bca0d39b36a6fe9982cc3f467de49e25.lean/declarations/ncount-eq-im-halfcontour--9f6540efca73c20bbb0f5a17.md) | 197 | `result-track:9f6540efca73c20bbb0f5a1709c44b6cfa7bd1f6d54dadd35901c1d1747b4ffc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
