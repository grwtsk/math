# Verification target: GRWTSK.Geometry.DifferentialGeometry.Tangent.Variant3e9d412b66fa2df9d37817e0f21aac4e299e9baa88217f0ad665fe28da2e1d79

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "095041cd6654c3d2fea3dd018df121a4b0757e9f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Tangent/Variant3e9d412b66fa2df9d37817e0f21aac4e299e9baa88217f0ad665fe28da2e1d79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variant3e9d412b66fa2df9d37817e0f21aac4e299e9baa88217f0ad665fe28da2e1d79.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variant3e9d412b66fa2df9d37817e0f21aac4e299e9baa88217f0ad665fe28da2e1d79.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `095041cd6654c3d2fea3dd018df121a4b0757e9f`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Tangent/Variant3e9d412b66fa2df9d37817e0f21aac4e299e9baa88217f0ad665fe28da2e1d79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Tangent/Variant3e9d412b66fa2df9d37817e0f21aac4e299e9baa88217f0ad665fe28da2e1d79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.MFDeriv.Atlas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.MFDeriv.UniqueDifferential` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.VectorBundle.Tangent` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.Diffeomorph` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tangentMap_chart](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variant3e9d412b66fa2df9d37817e0f21aac4e299e9baa88217f0ad665fe28da2e1d79.lean/declarations/tangentmap-chart--a4206c43e6cd842ab5bd61d3.md) | 33 | `result-track:a4206c43e6cd842ab5bd61d3b096765df733c9d4385b4b438b17b3425ef5688f` |
| 2 | `theorem` | [tangentMap_chart_symm](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variant3e9d412b66fa2df9d37817e0f21aac4e299e9baa88217f0ad665fe28da2e1d79.lean/declarations/tangentmap-chart-symm--cb0723c40c791040d413049b.md) | 45 | `result-track:cb0723c40c791040d413049b89c5ac8d525a5eea4a0093d301accffae25afaac` |
| 3 | `lemma` | [mfderiv_chartAt_eq_tangentCoordChange](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variant3e9d412b66fa2df9d37817e0f21aac4e299e9baa88217f0ad665fe28da2e1d79.lean/declarations/mfderiv-chartat-eq-tangentcoordchange--591a7dc1aabef4cc00a083f2.md) | 57 | `result-track:591a7dc1aabef4cc00a083f2e3d5fc980019f9cd4c81d251ccd53826478495f4` |
| 4 | `theorem` | [UniqueMDiffOn.tangentBundle_proj_preimage](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variant3e9d412b66fa2df9d37817e0f21aac4e299e9baa88217f0ad665fe28da2e1d79.lean/declarations/uniquemdiffon-tangentbundle-proj-preimage--4e040b23e2e4e1127b11bb14.md) | 64 | `result-track:4e040b23e2e4e1127b11bb14e4f197ec43f6c07eeaac550c9f14745233d5be4e` |
| 5 | `lemma` | [inTangentCoordinates_eq_mfderiv_comp](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variant3e9d412b66fa2df9d37817e0f21aac4e299e9baa88217f0ad665fe28da2e1d79.lean/declarations/intangentcoordinates-eq-mfderiv-comp--69aee15708879ab0356f1cfe.md) | 71 | `result-track:69aee15708879ab0356f1cfec4f2fa54702c3c76a1a734d09925a4409e4de5a7` |
| 6 | `def` | [tangentBundleModelSpaceDiffeomorph](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variant3e9d412b66fa2df9d37817e0f21aac4e299e9baa88217f0ad665fe28da2e1d79.lean/declarations/tangentbundlemodelspacediffeomorph--c115ebde13754a6cd403793e.md) | 95 | `declaration-track:c115ebde13754a6cd403793e079875f99c4db471521fc9abbe86b19d8cf8bf72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
