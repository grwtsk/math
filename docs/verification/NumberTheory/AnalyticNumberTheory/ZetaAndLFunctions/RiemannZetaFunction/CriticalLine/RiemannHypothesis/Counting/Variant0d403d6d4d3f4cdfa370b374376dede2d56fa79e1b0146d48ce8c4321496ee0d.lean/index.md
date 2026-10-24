# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Counting.Variant0d403d6d4d3f4cdfa370b374376dede2d56fa79e1b0146d48ce8c4321496ee0d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fdd946ca26170f088b8f7ad50480b815f57c058c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Counting/Variant0d403d6d4d3f4cdfa370b374376dede2d56fa79e1b0146d48ce8c4321496ee0d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Counting/Variant0d403d6d4d3f4cdfa370b374376dede2d56fa79e1b0146d48ce8c4321496ee0d.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Counting/Variant0d403d6d4d3f4cdfa370b374376dede2d56fa79e1b0146d48ce8c4321496ee0d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fdd946ca26170f088b8f7ad50480b815f57c058c`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Counting/Variant0d403d6d4d3f4cdfa370b374376dede2d56fa79e1b0146d48ce8c4321496ee0d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Counting/Variant0d403d6d4d3f4cdfa370b374376dede2d56fa79e1b0146d48ce8c4321496ee0d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Defs` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [window_finite](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Counting/Variant0d403d6d4d3f4cdfa370b374376dede2d56fa79e1b0146d48ce8c4321496ee0d.lean/declarations/window-finite--5e678ad8421b6945366dae24.md) | 20 | `result-track:5e678ad8421b6945366dae24e45822939d57166d9d0b82042fe94686bc34dd02` |
| 2 | `lemma` | [window_subset_carrier](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Counting/Variant0d403d6d4d3f4cdfa370b374376dede2d56fa79e1b0146d48ce8c4321496ee0d.lean/declarations/window-subset-carrier--9f8d1bb54506f326c3d3cca9.md) | 22 | `result-track:9f8d1bb54506f326c3d3cca953e7964defc42463bf33beb3a28733e6dc5f8ebf` |
| 3 | `lemma` | [ncard_le_finsum_mult](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Counting/Variant0d403d6d4d3f4cdfa370b374376dede2d56fa79e1b0146d48ce8c4321496ee0d.lean/declarations/ncard-le-finsum-mult--6a6ca61de662b99b654196c6.md) | 25 | `result-track:6a6ca61de662b99b654196c6fb400ed331b2e3614fa052855c55c9c21ae8ac9b` |
| 4 | `lemma` | [finsum_mult_mono](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Counting/Variant0d403d6d4d3f4cdfa370b374376dede2d56fa79e1b0146d48ce8c4321496ee0d.lean/declarations/finsum-mult-mono--67bf5d5dde52290f97f153be.md) | 35 | `result-track:67bf5d5dde52290f97f153be486d444aa5c4d512ec2dd592e18b5a50a0b7933f` |
| 5 | `lemma` | [ncard_mono](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Counting/Variant0d403d6d4d3f4cdfa370b374376dede2d56fa79e1b0146d48ce8c4321496ee0d.lean/declarations/ncard-mono--866f35892b8447bb1f25bbdb.md) | 43 | `result-track:866f35892b8447bb1f25bbdb32239250a87cb059af224277e5a2a00d9ef23186` |
| 6 | `theorem` | [trivial_chain](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Counting/Variant0d403d6d4d3f4cdfa370b374376dede2d56fa79e1b0146d48ce8c4321496ee0d.lean/declarations/trivial-chain--b0def20a34376c9541941885.md) | 48 | `result-track:b0def20a34376c9541941885627254a67689d6fbe8b29d205b705970f6286f3b` |
| 7 | `lemma` | [Nd_le_N](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Counting/Variant0d403d6d4d3f4cdfa370b374376dede2d56fa79e1b0146d48ce8c4321496ee0d.lean/declarations/nd-le-n--169b5c8a96ee0c997548e8cb.md) | 60 | `result-track:169b5c8a96ee0c997548e8cb5daee204767cb9c2250aa827f1e894ab3656c8aa` |
| 8 | `lemma` | [N0star_le_Nd](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Counting/Variant0d403d6d4d3f4cdfa370b374376dede2d56fa79e1b0146d48ce8c4321496ee0d.lean/declarations/n0star-le-nd--bea7aead751cbd1679eb9a4f.md) | 63 | `result-track:bea7aead751cbd1679eb9a4f7e9f2b2a3b5814818e3de695533ea40fe8363424` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
