# Verification target: GRWTSK.Algebra.QuarticGaloisKernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28422cda36006f07dedc5d74d3a5fc2d232f1d1c",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/QuarticGaloisKernel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/Algebra/QuarticGaloisKernel.lean/index.md) · [Full source](../../../mathematics/Algebra/QuarticGaloisKernel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28422cda36006f07dedc5d74d3a5fc2d232f1d1c`.

Source path: `GRWTSK/Algebra/QuarticGaloisKernel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/QuarticGaloisKernel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.QuarticResolventActionKernel`](../../../mathematics/Algebra/QuarticResolventActionKernel.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Algebra.QuarticGaloisMatching`](../../../mathematics/Algebra/QuarticGaloisMatching.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [automorphism_matching_kernel_iff](../../../mathematics/Algebra/QuarticGaloisKernel.lean/declarations/automorphism-matching-kernel-iff--b690e26224484343f6a62f44.md) | 28 | `result-track:b690e26224484343f6a62f442f8d459dbc89f88b60f7ff76484197616aebc330` |
| 2 | `theorem` | [automorphism_fixes_all_adjacencies_iff_kernel](../../../mathematics/Algebra/QuarticGaloisKernel.lean/declarations/automorphism-fixes-all-adjacencies-iff-kernel--51f22e886bb7231892b1a37c.md) | 42 | `result-track:51f22e886bb7231892b1a37c013fdbc1a69142061c47523b71bd48eec17a257d` |
| 3 | `theorem` | [automorphism_fixes_all_adjacencies_iff_double_transposition](../../../mathematics/Algebra/QuarticGaloisKernel.lean/declarations/automorphism-fixes-all-adjacencies-iff-double-transposition--0a91c0c39029e33fdce6a24a.md) | 64 | `result-track:0a91c0c39029e33fdce6a24a826aae5f3f8f80ab57966e9ad1fe7a4d58443fda` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
