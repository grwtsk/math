# Verification target: GRWTSK.Algebra.LinearAlgebra.Refinement.Variantbc217e1c1887d7dd4f87b1d645ab84e8aafd35328d2f7e0b2b92cd9e680bb18c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b92d5e7decbbe95f051970bcaf03d16ee247bb1",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Refinement/Variantbc217e1c1887d7dd4f87b1d645ab84e8aafd35328d2f7e0b2b92cd9e680bb18c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Refinement/Variantbc217e1c1887d7dd4f87b1d645ab84e8aafd35328d2f7e0b2b92cd9e680bb18c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Refinement/Variantbc217e1c1887d7dd4f87b1d645ab84e8aafd35328d2f7e0b2b92cd9e680bb18c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b92d5e7decbbe95f051970bcaf03d16ee247bb1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Refinement/Variantbc217e1c1887d7dd4f87b1d645ab84e8aafd35328d2f7e0b2b92cd9e680bb18c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Refinement/Variantbc217e1c1887d7dd4f87b1d645ab84e8aafd35328d2f7e0b2b92cd9e680bb18c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Terrain.AbsoluteRegion` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Manifest` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LinearMap.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [HierarchyEvidenceStatus](../../../../../mathematics/Algebra/LinearAlgebra/Refinement/Variantbc217e1c1887d7dd4f87b1d645ab84e8aafd35328d2f7e0b2b92cd9e680bb18c.lean/declarations/hierarchyevidencestatus--2bf2cb12489b260df6f80c96.md) | 20 | `declaration-track:2bf2cb12489b260df6f80c966615878c429d0e3c89ce7baca5c33a62ab0b1ed1` |
| 2 | `structure` | [HierarchyLevelMetadata](../../../../../mathematics/Algebra/LinearAlgebra/Refinement/Variantbc217e1c1887d7dd4f87b1d645ab84e8aafd35328d2f7e0b2b92cd9e680bb18c.lean/declarations/hierarchylevelmetadata--f2a1d95b2197587922a02a66.md) | 28 | `declaration-track:f2a1d95b2197587922a02a66ea1467c6aef39e215d87a680fae6d5706cff33a8` |
| 3 | `structure` | [GlobalHierarchy](../../../../../mathematics/Algebra/LinearAlgebra/Refinement/Variantbc217e1c1887d7dd4f87b1d645ab84e8aafd35328d2f7e0b2b92cd9e680bb18c.lean/declarations/globalhierarchy--9813e9da32e13a77b0e1df8b.md) | 36 | `declaration-track:9813e9da32e13a77b0e1df8b84d003a7ec8f5dad8e831bbb15ce4058c192e43d` |
| 4 | `structure` | [LinearLaplacianEncoding](../../../../../mathematics/Algebra/LinearAlgebra/Refinement/Variantbc217e1c1887d7dd4f87b1d645ab84e8aafd35328d2f7e0b2b92cd9e680bb18c.lean/declarations/linearlaplacianencoding--ea4a5cec94a25287441b272f.md) | 54 | `declaration-track:ea4a5cec94a25287441b272ff19d78bfe9f9ae17b5585ed0aa9571a23ea036c2` |
| 5 | `theorem` | [reconstruct](../../../../../mathematics/Algebra/LinearAlgebra/Refinement/Variantbc217e1c1887d7dd4f87b1d645ab84e8aafd35328d2f7e0b2b92cd9e680bb18c.lean/declarations/reconstruct--3beda615ffe757092819f48a.md) | 68 | `result-track:3beda615ffe757092819f48a8a186be518007b2415dd1e7480d62c67dd2d879a` |
| 6 | `structure` | [RefinementObstruction](../../../../../mathematics/Algebra/LinearAlgebra/Refinement/Variantbc217e1c1887d7dd4f87b1d645ab84e8aafd35328d2f7e0b2b92cd9e680bb18c.lean/declarations/refinementobstruction--25f8421e3f5b548197f3d13c.md) | 75 | `declaration-track:25f8421e3f5b548197f3d13cc8a6266edabfbca6e27a68063f298dec2bcb765e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
