# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RestrictScalars.Variant7f37f1fdfc904a98d3e39bfb995221386d021b2e7f6328d3584488f08e9216ce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2c222a4ef4ff98ec126f196b2fb10fe74958e6a",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant7f37f1fdfc904a98d3e39bfb995221386d021b2e7f6328d3584488f08e9216ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant7f37f1fdfc904a98d3e39bfb995221386d021b2e7f6328d3584488f08e9216ce.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant7f37f1fdfc904a98d3e39bfb995221386d021b2e7f6328d3584488f08e9216ce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2c222a4ef4ff98ec126f196b2fb10fe74958e6a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant7f37f1fdfc904a98d3e39bfb995221386d021b2e7f6328d3584488f08e9216ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant7f37f1fdfc904a98d3e39bfb995221386d021b2e7f6328d3584488f08e9216ce.lean.json)

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
| 1 | `theorem` | [HasFDerivAtFilter.restrictScalars](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant7f37f1fdfc904a98d3e39bfb995221386d021b2e7f6328d3584488f08e9216ce.lean/declarations/hasfderivatfilter-restrictscalars--aab7151ab8ff6a707e6ff807.md) | 54 | `result-track:aab7151ab8ff6a707e6ff80728c2db16e9bc1d34707755fcd73e82069b6accbf` |
| 2 | `theorem` | [HasStrictFDerivAt.restrictScalars](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant7f37f1fdfc904a98d3e39bfb995221386d021b2e7f6328d3584488f08e9216ce.lean/declarations/hasstrictfderivat-restrictscalars--eba0dc3d44c87d9fb3fa8071.md) | 59 | `result-track:eba0dc3d44c87d9fb3fa80713c968e9f0ef562c7c23ffd4d2d59d568b4b22160` |
| 3 | `theorem` | [HasFDerivAt.restrictScalars](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant7f37f1fdfc904a98d3e39bfb995221386d021b2e7f6328d3584488f08e9216ce.lean/declarations/hasfderivat-restrictscalars--cd605d76ac2e8ae6319918da.md) | 64 | `result-track:cd605d76ac2e8ae6319918da7b50dfd32abf1c34d05fa45c27cd7e3e77266083` |
| 4 | `theorem` | [HasFDerivWithinAt.restrictScalars](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant7f37f1fdfc904a98d3e39bfb995221386d021b2e7f6328d3584488f08e9216ce.lean/declarations/hasfderivwithinat-restrictscalars--a8e7a2d26ff303db52c494b9.md) | 69 | `result-track:a8e7a2d26ff303db52c494b9d8d0bc9ac16c1d5f33328c891883a4620f0385da` |
| 5 | `theorem` | [DifferentiableAt.restrictScalars](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant7f37f1fdfc904a98d3e39bfb995221386d021b2e7f6328d3584488f08e9216ce.lean/declarations/differentiableat-restrictscalars--b988d20b9485e61abf80dc41.md) | 74 | `result-track:b988d20b9485e61abf80dc4138de3d237cafaced3b1542ba737ec641abcca65e` |
| 6 | `theorem` | [DifferentiableWithinAt.restrictScalars](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant7f37f1fdfc904a98d3e39bfb995221386d021b2e7f6328d3584488f08e9216ce.lean/declarations/differentiablewithinat-restrictscalars--229c34fa8c77227510be4c2c.md) | 78 | `result-track:229c34fa8c77227510be4c2c91c0be5f480247eb5f6e5230f744d96d4f06ece8` |
| 7 | `theorem` | [DifferentiableOn.restrictScalars](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant7f37f1fdfc904a98d3e39bfb995221386d021b2e7f6328d3584488f08e9216ce.lean/declarations/differentiableon-restrictscalars--429b172f05999e5614803935.md) | 83 | `result-track:429b172f05999e56148039359b1637c6cb57ce9ddde50ea6e052a7e33231cb2f` |
| 8 | `theorem` | [Differentiable.restrictScalars](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant7f37f1fdfc904a98d3e39bfb995221386d021b2e7f6328d3584488f08e9216ce.lean/declarations/differentiable-restrictscalars--7354101f31c8aeadb1321b85.md) | 87 | `result-track:7354101f31c8aeadb1321b85cedd0f402e89fbe8d45e04dc4c2c476b7d2146d3` |
| 9 | `theorem` | [HasFDerivWithinAt.of_restrictScalars](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant7f37f1fdfc904a98d3e39bfb995221386d021b2e7f6328d3584488f08e9216ce.lean/declarations/hasfderivwithinat-of-restrictscalars--bd9e065355b254373426e2d2.md) | 91 | `result-track:bd9e065355b254373426e2d200575fc7b537c8afbcd4248df94263ca0fe237ce` |
| 10 | `theorem` | [hasFDerivAt_of_restrictScalars](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant7f37f1fdfc904a98d3e39bfb995221386d021b2e7f6328d3584488f08e9216ce.lean/declarations/hasfderivat-of-restrictscalars--2172b1bfe6707ff782f2405d.md) | 97 | `result-track:2172b1bfe6707ff782f2405d4f5e58ea727e92476d471574b4e5a0e8fa409505` |
| 11 | `theorem` | [DifferentiableAt.fderiv_restrictScalars](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant7f37f1fdfc904a98d3e39bfb995221386d021b2e7f6328d3584488f08e9216ce.lean/declarations/differentiableat-fderiv-restrictscalars--d62c3ac6da11dd428b340839.md) | 102 | `result-track:d62c3ac6da11dd428b3408397320bb7a9b743da1c1877487e16ac54606ad8184` |
| 12 | `theorem` | [DifferentiableWithinAt.restrictScalars_fderivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant7f37f1fdfc904a98d3e39bfb995221386d021b2e7f6328d3584488f08e9216ce.lean/declarations/differentiablewithinat-restrictscalars-fderivwithin--9f2dfe0ff4de14713fff3b2d.md) | 106 | `result-track:9f2dfe0ff4de14713fff3b2deb3d65cebd1c5b72094ad697b38fb55fddb7b2cf` |
| 13 | `theorem` | [differentiableWithinAt_iff_restrictScalars](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant7f37f1fdfc904a98d3e39bfb995221386d021b2e7f6328d3584488f08e9216ce.lean/declarations/differentiablewithinat-iff-restrictscalars--adf0dce04202892893ea9d94.md) | 111 | `result-track:adf0dce04202892893ea9d9486c5cacf7acd3331c3ac113c4bf3a8130c7e896c` |
| 14 | `theorem` | [differentiableAt_iff_restrictScalars](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant7f37f1fdfc904a98d3e39bfb995221386d021b2e7f6328d3584488f08e9216ce.lean/declarations/differentiableat-iff-restrictscalars--b0f4e35fad5bfaace1931d12.md) | 120 | `result-track:b0f4e35fad5bfaace1931d12b4ea3f2cb8d43c0c48fcecca53f7709db910a811` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
