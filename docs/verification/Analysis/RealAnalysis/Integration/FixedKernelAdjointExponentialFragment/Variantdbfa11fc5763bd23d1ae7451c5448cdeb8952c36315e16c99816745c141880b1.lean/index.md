# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.FixedKernelAdjointExponentialFragment.Variantdbfa11fc5763bd23d1ae7451c5448cdeb8952c36315e16c99816745c141880b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f46b26e735629adf21b1bc27bf16151d619ceaa4",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponentialFragment/Variantdbfa11fc5763bd23d1ae7451c5448cdeb8952c36315e16c99816745c141880b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponentialFragment/Variantdbfa11fc5763bd23d1ae7451c5448cdeb8952c36315e16c99816745c141880b1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponentialFragment/Variantdbfa11fc5763bd23d1ae7451c5448cdeb8952c36315e16c99816745c141880b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f46b26e735629adf21b1bc27bf16151d619ceaa4`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponentialFragment/Variantdbfa11fc5763bd23d1ae7451c5448cdeb8952c36315e16c99816745c141880b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponentialFragment/Variantdbfa11fc5763bd23d1ae7451c5448cdeb8952c36315e16c99816745c141880b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fullShift_neg_cancel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponentialFragment/Variantdbfa11fc5763bd23d1ae7451c5448cdeb8952c36315e16c99816745c141880b1.lean/declarations/fullshift-neg-cancel--c6e04d7332896269c5c84e66.md) | 31 | `result-track:c6e04d7332896269c5c84e66ffcbb696fffc1470285fbd613770530b742e4772` |
| 2 | `theorem` | [zeroExtension_exponential_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponentialFragment/Variantdbfa11fc5763bd23d1ae7451c5448cdeb8952c36315e16c99816745c141880b1.lean/declarations/zeroextension-exponential-ae--fdab99f218054cacf4321776.md) | 43 | `result-track:fdab99f218054cacf432177616bf926884c92770f00820f97fd27ad47aa65b2a` |
| 3 | `theorem` | [restriction_backwardShift_exponential](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponentialFragment/Variantdbfa11fc5763bd23d1ae7451c5448cdeb8952c36315e16c99816745c141880b1.lean/declarations/restriction-backwardshift-exponential--377b8068e1ee06cdc6fdeb5c.md) | 55 | `result-track:377b8068e1ee06cdc6fdeb5cac94c402d3e3e1247c34461bbf08606c0ee89ba7` |
| 4 | `theorem` | [exponential_inner_shift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponentialFragment/Variantdbfa11fc5763bd23d1ae7451c5448cdeb8952c36315e16c99816745c141880b1.lean/declarations/exponential-inner-shift--f76a7cd6aeec12cef63df929.md) | 80 | `result-track:f76a7cd6aeec12cef63df929661e92f5e74a912ce2aa4e92cab38a45c46a04c2` |
| 5 | `theorem` | [exponential_inner_sourceOperator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponentialFragment/Variantdbfa11fc5763bd23d1ae7451c5448cdeb8952c36315e16c99816745c141880b1.lean/declarations/exponential-inner-sourceoperator--ba245cb2c5a741d8045eb132.md) | 95 | `result-track:ba245cb2c5a741d8045eb13289176dfbf822cb424e25117fe6b23c214e5cfb25` |
| 6 | `theorem` | [sourceOperator_adjoint_exponential](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponentialFragment/Variantdbfa11fc5763bd23d1ae7451c5448cdeb8952c36315e16c99816745c141880b1.lean/declarations/sourceoperator-adjoint-exponential--8790b58f5d5277327049613f.md) | 126 | `result-track:8790b58f5d5277327049613f67a41ef728291ceb850f2cec59625f008a997faf` |
| 7 | `theorem` | [sourceOperator_adjoint_exponential_zero_of_nontrivial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponentialFragment/Variantdbfa11fc5763bd23d1ae7451c5448cdeb8952c36315e16c99816745c141880b1.lean/declarations/sourceoperator-adjoint-exponential-zero-of-nontrivial--e6f2aa6d0ded452fc9091c67.md) | 135 | `result-track:e6f2aa6d0ded452fc9091c675c1308e6d4afe4bb55b7ca1e0c7a62cdd47e8419` |
| 8 | `theorem` | [sourceOperator_adjoint_exponential_zero_occurrence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponentialFragment/Variantdbfa11fc5763bd23d1ae7451c5448cdeb8952c36315e16c99816745c141880b1.lean/declarations/sourceoperator-adjoint-exponential-zero-occurrence--5e0064dd34e337926c81f822.md) | 145 | `result-track:5e0064dd34e337926c81f822a99819da8ad948330d152551d9c27d139922a0ab` |
| 9 | `theorem` | [nontrivial_reference_visible_kernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponentialFragment/Variantdbfa11fc5763bd23d1ae7451c5448cdeb8952c36315e16c99816745c141880b1.lean/declarations/nontrivial-reference-visible-kernel--e47f237cc1e1b22e726adef4.md) | 154 | `result-track:e47f237cc1e1b22e726adef4bcc071ae6ca3c393597a42f3cdc094be7929e1cd` |
| 10 | `theorem` | [occurrence_reference_visible_kernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponentialFragment/Variantdbfa11fc5763bd23d1ae7451c5448cdeb8952c36315e16c99816745c141880b1.lean/declarations/occurrence-reference-visible-kernel--2f75e6d095043fe1fc903f79.md) | 166 | `result-track:2f75e6d095043fe1fc903f79f9231bf530c7f1009883e02cc3c879c013d1bcb2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
