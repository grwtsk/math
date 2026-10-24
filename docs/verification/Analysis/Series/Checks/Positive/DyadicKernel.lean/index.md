# Verification target: GRWTSK.Analysis.Series.Checks.Positive.DyadicKernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5916b65695de5c5083d2e5b67636afaeb653043",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Series/Checks/Positive/DyadicKernel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/Series/Checks/Positive/DyadicKernel.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/Series/Checks/Positive/DyadicKernel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5916b65695de5c5083d2e5b67636afaeb653043`.

Source path: `GRWTSK/Analysis/Series/Checks/Positive/DyadicKernel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Series/Checks/Positive/DyadicKernel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Series.DyadicKernel`](../../../../../../mathematics/Analysis/Series/DyadicKernel.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Topology.Algebra.InfiniteSum.Group` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [kernel_generic](../../../../../../mathematics/Analysis/Series/Checks/Positive/DyadicKernel.lean/declarations/kernel-generic--1130d24edb3bee4e6c90b464.md) | 8 | `result-track:1130d24edb3bee4e6c90b4644b40b64625e3f0703158b5f61edae333255f031b` |
| 2 | `theorem` | [kernel_one_one_two](../../../../../../mathematics/Analysis/Series/Checks/Positive/DyadicKernel.lean/declarations/kernel-one-one-two--36371f667ef74838e801775f.md) | 13 | `result-track:36371f667ef74838e801775fdbdd12b41bf9909a0f283ada330eb1cd5e34888f` |
| 3 | `theorem` | [kernel_boundary_lower](../../../../../../mathematics/Analysis/Series/Checks/Positive/DyadicKernel.lean/declarations/kernel-boundary-lower--3bb18755fb911b2d34ba8eb8.md) | 16 | `result-track:3bb18755fb911b2d34ba8eb8cec3add07b44f12badefc3564b19b494bbfa1c08` |
| 4 | `theorem` | [kernel_boundary_not_summable](../../../../../../mathematics/Analysis/Series/Checks/Positive/DyadicKernel.lean/declarations/kernel-boundary-not-summable--13a0d63a4e4a6831410a42c6.md) | 23 | `result-track:13a0d63a4e4a6831410a42c6938d9589f65cb65afc9aeed6ab8dd47af7a7180f` |
| 5 | `theorem` | [kernel_zero_parameter](../../../../../../mathematics/Analysis/Series/Checks/Positive/DyadicKernel.lean/declarations/kernel-zero-parameter--b3e66a7d64d20fa31eb88726.md) | 30 | `result-track:b3e66a7d64d20fa31eb88726ed199cf5cae21dfa44ef15be616a1a19fbf5745e` |
| 6 | `theorem` | [kernel_zero_parameter_not_summable](../../../../../../mathematics/Analysis/Series/Checks/Positive/DyadicKernel.lean/declarations/kernel-zero-parameter-not-summable--405d9ac7a78a502b700217fa.md) | 33 | `result-track:405d9ac7a78a502b700217fafc5f25724f8b8429be6e26ca8cb105570f7332aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
