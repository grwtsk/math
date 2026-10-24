# Verification target: GRWTSK.Geometry.ConvexGeometry.TotallyBounded.Variantecab30695211f1cbce05570bafcd6bf7af1d547629a8a989d29060e300c07429

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "193cd52befddcd9c96d39adf15407a8d918638bb",
  "lexical_observation_count": 1,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/TotallyBounded/Variantecab30695211f1cbce05570bafcd6bf7af1d547629a8a989d29060e300c07429.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/ConvexGeometry/TotallyBounded/Variantecab30695211f1cbce05570bafcd6bf7af1d547629a8a989d29060e300c07429.lean/index.md) · [Full source](../../../../../mathematics/Geometry/ConvexGeometry/TotallyBounded/Variantecab30695211f1cbce05570bafcd6bf7af1d547629a8a989d29060e300c07429.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `193cd52befddcd9c96d39adf15407a8d918638bb`.

Source path: `GRWTSK/Geometry/ConvexGeometry/TotallyBounded/Variantecab30695211f1cbce05570bafcd6bf7af1d547629a8a989d29060e300c07429.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/TotallyBounded/Variantecab30695211f1cbce05570bafcd6bf7af1d547629a8a989d29060e300c07429.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.Cauchy` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Hull` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.IsUniformGroup.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.LocallyConvex` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [totallyBounded_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/TotallyBounded/Variantecab30695211f1cbce05570bafcd6bf7af1d547629a8a989d29060e300c07429.lean/declarations/totallybounded-convexhull--c1a2ea2e6e15194fe1362972.md) | 42 | `result-track:c1a2ea2e6e15194fe1362972239cab354fd2130f2d126cefd03980b27c160a91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
