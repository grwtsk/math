# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.RoutingStatus.Variantb0f9ebccc74db696f4a59d27c425c9a3d6c9da49fa4fce00c55d59ce8764548b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2833edd231af3838e0901e970504c6d9541d8311",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RoutingStatus/Variantb0f9ebccc74db696f4a59d27c425c9a3d6c9da49fa4fce00c55d59ce8764548b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RoutingStatus/Variantb0f9ebccc74db696f4a59d27c425c9a3d6c9da49fa4fce00c55d59ce8764548b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RoutingStatus/Variantb0f9ebccc74db696f4a59d27c425c9a3d6c9da49fa4fce00c55d59ce8764548b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2833edd231af3838e0901e970504c6d9541d8311`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/RoutingStatus/Variantb0f9ebccc74db696f4a59d27c425c9a3d6c9da49fa4fce00c55d59ce8764548b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/RoutingStatus/Variantb0f9ebccc74db696f4a59d27c425c9a3d6c9da49fa4fce00c55d59ce8764548b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Projection.FormalNeighborhood` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Core.SemanticIdentity` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [BoundaryStatus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RoutingStatus/Variantb0f9ebccc74db696f4a59d27c425c9a3d6c9da49fa4fce00c55d59ce8764548b.lean/declarations/boundarystatus--a5329339a79e902584295ee1.md) | 16 | `declaration-track:a5329339a79e902584295ee1bc90a1edc735ae7fa3ac579002d2ffe37de21662` |
| 2 | `inductive` | [RoutingObstruction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RoutingStatus/Variantb0f9ebccc74db696f4a59d27c425c9a3d6c9da49fa4fce00c55d59ce8764548b.lean/declarations/routingobstruction--5fcdecc1be816e9d820447ce.md) | 22 | `declaration-track:5fcdecc1be816e9d820447ce71ce5b17ba22150bac93f73d2343461e44938808` |
| 3 | `structure` | [RoutingResidue](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RoutingStatus/Variantb0f9ebccc74db696f4a59d27c425c9a3d6c9da49fa4fce00c55d59ce8764548b.lean/declarations/routingresidue--7b72e0aeea052f90721e742d.md) | 30 | `declaration-track:7b72e0aeea052f90721e742d3c8a68067e7aafc8a884544543349827c28eeeaa` |
| 4 | `inductive` | [SeparationStatus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RoutingStatus/Variantb0f9ebccc74db696f4a59d27c425c9a3d6c9da49fa4fce00c55d59ce8764548b.lean/declarations/separationstatus--a55459de88727fd932e0359d.md) | 39 | `declaration-track:a55459de88727fd932e0359d36b1c3231c5fb170fbdf17346fa117e5f1cee2a8` |
| 5 | `inductive` | [RouteStatus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RoutingStatus/Variantb0f9ebccc74db696f4a59d27c425c9a3d6c9da49fa4fce00c55d59ce8764548b.lean/declarations/routestatus--04f5080b1724fc7468547a4e.md) | 46 | `declaration-track:04f5080b1724fc7468547a4ef394241b16b28f8ccafcd4d611ad59fc40a24300` |
| 6 | `structure` | [IntrinsicPosition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RoutingStatus/Variantb0f9ebccc74db696f4a59d27c425c9a3d6c9da49fa4fce00c55d59ce8764548b.lean/declarations/intrinsicposition--3abeedd86d162b9a23999c05.md) | 52 | `declaration-track:3abeedd86d162b9a23999c053feb6f2ccba7f23ab7464c1293a2f2650197e861` |
| 7 | `structure` | [IncidenceSingleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RoutingStatus/Variantb0f9ebccc74db696f4a59d27c425c9a3d6c9da49fa4fce00c55d59ce8764548b.lean/declarations/incidencesingleton--fd428c7e62d65f2b6afde38e.md) | 60 | `declaration-track:fd428c7e62d65f2b6afde38e05d31c3e8a9ebc35cde5c29100dfaf0986eecef8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
