# Verification target: GRWTSK.Geometry.AlgebraicGeometry.BigZariski.Variantd48444683e3b48c74b9df4c72fa1ae5c46538e86867d973fef2483a94d3036d4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2224023a8e185c178a0f949de3f5c5df2a649033",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/BigZariski/Variantd48444683e3b48c74b9df4c72fa1ae5c46538e86867d973fef2483a94d3036d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/BigZariski/Variantd48444683e3b48c74b9df4c72fa1ae5c46538e86867d973fef2483a94d3036d4.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/BigZariski/Variantd48444683e3b48c74b9df4c72fa1ae5c46538e86867d973fef2483a94d3036d4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2224023a8e185c178a0f949de3f5c5df2a649033`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/BigZariski/Variantd48444683e3b48c74b9df4c72fa1ae5c46538e86867d973fef2483a94d3036d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/BigZariski/Variantd48444683e3b48c74b9df4c72fa1ae5c46538e86867d973fef2483a94d3036d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Sites.MorphismProperty` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Canonical` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zariskiPretopology](../../../../../mathematics/Geometry/AlgebraicGeometry/BigZariski/Variantd48444683e3b48c74b9df4c72fa1ae5c46538e86867d973fef2483a94d3036d4.lean/declarations/zariskipretopology--772c2ffd9546fb9e957ebff7.md) | 38 | `declaration-track:772c2ffd9546fb9e957ebff7499c67774e7507d08040eb141869182b4074f876` |
| 2 | `abbrev` | [zariskiTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/BigZariski/Variantd48444683e3b48c74b9df4c72fa1ae5c46538e86867d973fef2483a94d3036d4.lean/declarations/zariskitopology--92970c867186ea7a69ebb867.md) | 42 | `declaration-track:92970c867186ea7a69ebb867699d1956996c204be050a9714af6f496cbccd2a4` |
| 3 | `instance` | [subcanonical_zariskiTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/BigZariski/Variantd48444683e3b48c74b9df4c72fa1ae5c46538e86867d973fef2483a94d3036d4.lean/declarations/subcanonical-zariskitopology--56fa6a0c0933d22bb932cda5.md) | 45 | `declaration-track:56fa6a0c0933d22bb932cda55371c61fb536655201e119b63f3bf8d32b6f74be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
