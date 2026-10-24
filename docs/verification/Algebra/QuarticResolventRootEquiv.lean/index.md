# Verification target: GRWTSK.Algebra.QuarticResolventRootEquiv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5eaa1c7ce2137163efeb298f6297899c6698b0fc",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/QuarticResolventRootEquiv.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/Algebra/QuarticResolventRootEquiv.lean/index.md) · [Full source](../../../mathematics/Algebra/QuarticResolventRootEquiv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5eaa1c7ce2137163efeb298f6297899c6698b0fc`.

Source path: `GRWTSK/Algebra/QuarticResolventRootEquiv.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/QuarticResolventRootEquiv.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.QuarticBaseResolventRootSet`](../../../mathematics/Algebra/QuarticBaseResolventRootSet.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Algebra.QuarticGaloisMatching`](../../../mathematics/Algebra/QuarticGaloisMatching.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CubicRootCarrier](../../../mathematics/Algebra/QuarticResolventRootEquiv.lean/declarations/cubicrootcarrier--686f447c066a70399939b566.md) | 30 | `declaration-track:686f447c066a70399939b566c66d57f24e985c6f8d2c34ca9fb6aaeb28db84f6` |
| 2 | `def` | [perfectMatchingEquivCubicRoots](../../../mathematics/Algebra/QuarticResolventRootEquiv.lean/declarations/perfectmatchingequivcubicroots--c72b15591f091a64eae62b16.md) | 34 | `declaration-track:c72b15591f091a64eae62b16703001e437fa34deb52f5719d4ca504f7fda1fa9` |
| 3 | `theorem` | [cubicRootCarrier_automorphism_compatible](../../../mathematics/Algebra/QuarticResolventRootEquiv.lean/declarations/cubicrootcarrier-automorphism-compatible--e46ed2e1b527061866f2c103.md) | 62 | `result-track:e46ed2e1b527061866f2c103dfba67c8e19d4f97fd40815a7e8e45a1690bcba7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
