# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.VerticalStripDecay.Variantcf8420cc184028566c4af095c6c0b7e36bd20ad552a8fb79bbcbbe9b5da4b084

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98df6a476039a71003749d50827ceb08d75ca311",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variantcf8420cc184028566c4af095c6c0b7e36bd20ad552a8fb79bbcbbe9b5da4b084.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variantcf8420cc184028566c4af095c6c0b7e36bd20ad552a8fb79bbcbbe9b5da4b084.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variantcf8420cc184028566c4af095c6c0b7e36bd20ad552a8fb79bbcbbe9b5da4b084.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98df6a476039a71003749d50827ceb08d75ca311`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variantcf8420cc184028566c4af095c6c0b7e36bd20ad552a8fb79bbcbbe9b5da4b084.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variantcf8420cc184028566c4af095c6c0b7e36bd20ad552a8fb79bbcbbe9b5da4b084.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [iteratedDeriv_cexp_real_const_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variantcf8420cc184028566c4af095c6c0b7e36bd20ad552a8fb79bbcbbe9b5da4b084.lean/declarations/iteratedderiv-cexp-real-const-mul--a72f243b2a1e1a86c94a719c.md) | 33 | `result-track:a72f243b2a1e1a86c94a719cf71b3f830b7dd4221d1fa017bc8403bfa3f47f2c` |
| 2 | `lemma` | [iteratedDeriv_laplaceSliceSchwartz](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variantcf8420cc184028566c4af095c6c0b7e36bd20ad552a8fb79bbcbbe9b5da4b084.lean/declarations/iteratedderiv-laplacesliceschwartz--551b8f077fa7d11a354d5179.md) | 54 | `result-track:551b8f077fa7d11a354d51790b50de73507f6f422bb1fadeeb0c15ba353a90c9` |
| 3 | `def` | [laplaceSliceDerivativeFormula](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variantcf8420cc184028566c4af095c6c0b7e36bd20ad552a8fb79bbcbbe9b5da4b084.lean/declarations/laplaceslicederivativeformula--eadff5c9cf3cc55648ee2870.md) | 76 | `declaration-track:eadff5c9cf3cc55648ee28706e6753effa0b36eadfd8756a7eb63478136a242f` |
| 4 | `lemma` | [continuous_laplaceSliceDerivativeFormula](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variantcf8420cc184028566c4af095c6c0b7e36bd20ad552a8fb79bbcbbe9b5da4b084.lean/declarations/continuous-laplaceslicederivativeformula--8a6b9f7e083cea66e789db60.md) | 83 | `result-track:8a6b9f7e083cea66e789db60d41bdd13655687f4767f46276c26979e0ba30a5b` |
| 5 | `lemma` | [iteratedDeriv_eq_zero_of_notMem_tsupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variantcf8420cc184028566c4af095c6c0b7e36bd20ad552a8fb79bbcbbe9b5da4b084.lean/declarations/iteratedderiv-eq-zero-of-notmem-tsupport--2ac3964cb63b5c86c207294d.md) | 93 | `result-track:2ac3964cb63b5c86c207294d1091554208b282ffeb70489fff0bf9b8dadf34bb` |
| 6 | `lemma` | [support_iteratedDeriv_laplaceSlice_subset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variantcf8420cc184028566c4af095c6c0b7e36bd20ad552a8fb79bbcbbe9b5da4b084.lean/declarations/support-iteratedderiv-laplaceslice-subset--e4cd922ce1307ece69b2a15a.md) | 103 | `result-track:e4cd922ce1307ece69b2a15a82f696d5df7cc1ecfcd21edf5492abe9dd8355b1` |
| 7 | `theorem` | [laplaceSlice_iteratedDeriv_l1_uniform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variantcf8420cc184028566c4af095c6c0b7e36bd20ad552a8fb79bbcbbe9b5da4b084.lean/declarations/laplaceslice-iteratedderiv-l1-uniform--45695d198cb23e39e9652257.md) | 121 | `result-track:45695d198cb23e39e96522576e677df87d50a34ac1ffac049f6fa4c484f1e8b1` |
| 8 | `def` | [verticalOscillation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variantcf8420cc184028566c4af095c6c0b7e36bd20ad552a8fb79bbcbbe9b5da4b084.lean/declarations/verticaloscillation--019327edecd8b8ce91df5929.md) | 194 | `declaration-track:019327edecd8b8ce91df5929aa0c6c4c3e149388576ffc310417b81095dbf9c2` |
| 9 | `lemma` | [hasDerivAt_verticalOscillation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variantcf8420cc184028566c4af095c6c0b7e36bd20ad552a8fb79bbcbbe9b5da4b084.lean/declarations/hasderivat-verticaloscillation--137a7cca84c0075d05d13723.md) | 197 | `result-track:137a7cca84c0075d05d137238bf04150b8d10f543c26b53f932b0e41df15cd83` |
| 10 | `lemma` | [primitiveWeilLaplace_vertical_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variantcf8420cc184028566c4af095c6c0b7e36bd20ad552a8fb79bbcbbe9b5da4b084.lean/declarations/primitiveweillaplace-vertical-eq-integral--3d494cb53c32faee238bc59d.md) | 214 | `result-track:3d494cb53c32faee238bc59d0da44a9043ed06b53e7d8598499cb95e39e2f96b` |
| 11 | `lemma` | [integrable_iteratedDeriv_mul_verticalOscillation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variantcf8420cc184028566c4af095c6c0b7e36bd20ad552a8fb79bbcbbe9b5da4b084.lean/declarations/integrable-iteratedderiv-mul-verticaloscillation--9e9787e301e32ac3ba63b4fc.md) | 233 | `result-track:9e9787e301e32ac3ba63b4fc3c2b089ed7a9baba41b0bca10e5f29458ac954cd` |
| 12 | `lemma` | [verticalOscillation_mul_iteratedDeriv_integral_succ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variantcf8420cc184028566c4af095c6c0b7e36bd20ad552a8fb79bbcbbe9b5da4b084.lean/declarations/verticaloscillation-mul-iteratedderiv-integral-succ--8fa7041255f47f63b1b8420a.md) | 260 | `result-track:8fa7041255f47f63b1b8420af352ad7d6bdeeb7daab759ea21725748a7120096` |
| 13 | `lemma` | [primitiveWeilLaplace_vertical_moment_identity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variantcf8420cc184028566c4af095c6c0b7e36bd20ad552a8fb79bbcbbe9b5da4b084.lean/declarations/primitiveweillaplace-vertical-moment-identity--029b7546b814c401d4c8d9bb.md) | 330 | `result-track:029b7546b814c401d4c8d9bb5ea5d7af77bf4ef440125c62c44239366719cd59` |
| 14 | `theorem` | [primitiveWeilLaplace_vertical_pow_bound_uniform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variantcf8420cc184028566c4af095c6c0b7e36bd20ad552a8fb79bbcbbe9b5da4b084.lean/declarations/primitiveweillaplace-vertical-pow-bound-uniform--940886aa8ebf5b71815bba05.md) | 379 | `result-track:940886aa8ebf5b71815bba0578cc1964de32b74352b513a68ef4f7135b165f0d` |
| 15 | `theorem` | [primitiveWeilLaplace_decay_realStrip](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variantcf8420cc184028566c4af095c6c0b7e36bd20ad552a8fb79bbcbbe9b5da4b084.lean/declarations/primitiveweillaplace-decay-realstrip--0fe912c4361365fbcfc8bb6c.md) | 433 | `result-track:0fe912c4361365fbcfc8bb6c155329597c9e07003efe3ae6950e55608d0a8970` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
