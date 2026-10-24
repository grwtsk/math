# Verification target: GRWTSK.Algebra.QuarticRootLocus

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85a0d844236e528bde0e3bdc0dea8e251704f94f",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/QuarticRootLocus.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/Algebra/QuarticRootLocus.lean/index.md) · [Full source](../../../mathematics/Algebra/QuarticRootLocus.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85a0d844236e528bde0e3bdc0dea8e251704f94f`.

Source path: `GRWTSK/Algebra/QuarticRootLocus.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/QuarticRootLocus.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.QuarticRootPermutation`](../../../mathematics/Algebra/QuarticRootPermutation.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rootLocus](../../../mathematics/Algebra/QuarticRootLocus.lean/declarations/rootlocus--b6f29280fb233ed5235c8790.md) | 26 | `declaration-track:b6f29280fb233ed5235c8790fef25a1e07e671537ebcc10c21c7dc1e047fbd8d` |
| 2 | `theorem` | [rootLocus_iff](../../../mathematics/Algebra/QuarticRootLocus.lean/declarations/rootlocus-iff--0a35db52f020bf73bcf70f11.md) | 31 | `result-track:0a35db52f020bf73bcf70f110fde4b1a193bf13c266c6c69164c79aba637a1b8` |
| 3 | `theorem` | [rootLocus_image](../../../mathematics/Algebra/QuarticRootLocus.lean/declarations/rootlocus-image--e21a2e792c916fc6e530697a.md) | 39 | `result-track:e21a2e792c916fc6e530697a958d3a7908b57d5de2363ed7be3afb2ab2058d27` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
