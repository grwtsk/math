# Verification target: GRWTSK.Algebra.LinearAlgebra.PositiveGeometry.Variantb8c332174c2fc1160a93e1a7d8f6202e1292e3e29d2a854707f7e45324299121

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bda7f24c63b2c3a9ea9ef3a05ff5e4a2d8c0995f",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PositiveGeometry/Variantb8c332174c2fc1160a93e1a7d8f6202e1292e3e29d2a854707f7e45324299121.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variantb8c332174c2fc1160a93e1a7d8f6202e1292e3e29d2a854707f7e45324299121.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variantb8c332174c2fc1160a93e1a7d8f6202e1292e3e29d2a854707f7e45324299121.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bda7f24c63b2c3a9ea9ef3a05ff5e4a2d8c0995f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PositiveGeometry/Variantb8c332174c2fc1160a93e1a7d8f6202e1292e3e29d2a854707f7e45324299121.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PositiveGeometry/Variantb8c332174c2fc1160a93e1a7d8f6202e1292e3e29d2a854707f7e45324299121.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Certification` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PositiveForm](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variantb8c332174c2fc1160a93e1a7d8f6202e1292e3e29d2a854707f7e45324299121.lean/declarations/positiveform--3ac8ac961928d985c7002628.md) | 28 | `declaration-track:3ac8ac961928d985c700262899658ec8cd1bfbb65875d2dfd5f54787ba3d6a3d` |
| 2 | `def` | [Visible](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variantb8c332174c2fc1160a93e1a7d8f6202e1292e3e29d2a854707f7e45324299121.lean/declarations/visible--b89d16289d6628ee3353e077.md) | 45 | `declaration-track:b89d16289d6628ee3353e07713f8ab9d638a5e6042a8c859c9386bb9405150ea` |
| 3 | `def` | [IsNull](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variantb8c332174c2fc1160a93e1a7d8f6202e1292e3e29d2a854707f7e45324299121.lean/declarations/isnull--f31f608e584a31253a39f16c.md) | 49 | `declaration-track:f31f608e584a31253a39f16c5ee1c1c37965fae11dd50f85e2acf02ccd4cffff` |
| 4 | `def` | [pullback](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variantb8c332174c2fc1160a93e1a7d8f6202e1292e3e29d2a854707f7e45324299121.lean/declarations/pullback--3795a961e13ed17df1af7525.md) | 53 | `declaration-track:3795a961e13ed17df1af7525dd866181588e5c18ccc4ac42c89f0a289263494e` |
| 5 | `theorem` | [pullback_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variantb8c332174c2fc1160a93e1a7d8f6202e1292e3e29d2a854707f7e45324299121.lean/declarations/pullback-nonnegative--6769fed7dfabea3015d67eeb.md) | 67 | `result-track:6769fed7dfabea3015d67eebd2769ee0e6cf08b0988a79a31e2147c30c0ad49d` |
| 6 | `theorem` | [pullback_visible_iff](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variantb8c332174c2fc1160a93e1a7d8f6202e1292e3e29d2a854707f7e45324299121.lean/declarations/pullback-visible-iff--f90422e7d9acd93bf7acb19d.md) | 72 | `result-track:f90422e7d9acd93bf7acb19d7bc2deca483b28fea2eb336a1cfb298d4a9c7197` |
| 7 | `theorem` | [pullback_isNull_iff](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variantb8c332174c2fc1160a93e1a7d8f6202e1292e3e29d2a854707f7e45324299121.lean/declarations/pullback-isnull-iff--66016ade75a96982f80cf263.md) | 77 | `result-track:66016ade75a96982f80cf2632decb35496b348086b98f6ac4ddab10681f1c94e` |
| 8 | `def` | [add](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variantb8c332174c2fc1160a93e1a7d8f6202e1292e3e29d2a854707f7e45324299121.lean/declarations/add--6cf4630965bc5961d170b134.md) | 82 | `declaration-track:6cf4630965bc5961d170b134c16ea037243dcd85a7eb7ce4ee96b8782e84b61b` |
| 9 | `theorem` | [add_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variantb8c332174c2fc1160a93e1a7d8f6202e1292e3e29d2a854707f7e45324299121.lean/declarations/add-nonnegative--d1b20530c99b344d4fffc59e.md) | 101 | `result-track:d1b20530c99b344d4fffc59ea5424f246ae47debed797051153ba649c5707091` |
| 10 | `structure` | [ProvenanceResidualization](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variantb8c332174c2fc1160a93e1a7d8f6202e1292e3e29d2a854707f7e45324299121.lean/declarations/provenanceresidualization--f842cc3358b7c8acc91b5268.md) | 112 | `declaration-track:f842cc3358b7c8acc91b52681a8ca84fdcfe294410e4a55110c5726633b2b304` |
| 11 | `def` | [residualForm](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variantb8c332174c2fc1160a93e1a7d8f6202e1292e3e29d2a854707f7e45324299121.lean/declarations/residualform--1c2e73e3902d5c9211e9f5d9.md) | 127 | `declaration-track:1c2e73e3902d5c9211e9f5d996eaa6105cc9d62b701ef18ccb60cd023f5e7373` |
| 12 | `theorem` | [residual_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variantb8c332174c2fc1160a93e1a7d8f6202e1292e3e29d2a854707f7e45324299121.lean/declarations/residual-nonnegative--8bbece85413f3587fa3d02cb.md) | 132 | `result-track:8bbece85413f3587fa3d02cb1db8ebcd46f5b993436fbb94020a1f107ab97f33` |
| 13 | `theorem` | [residual_visible_iff](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variantb8c332174c2fc1160a93e1a7d8f6202e1292e3e29d2a854707f7e45324299121.lean/declarations/residual-visible-iff--904b9d9fcf46f9e92783154c.md) | 139 | `result-track:904b9d9fcf46f9e92783154c0347e08f5d5bedc25e9a80b636aebac92e37c0ce` |
| 14 | `theorem` | [residual_isNull_iff](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variantb8c332174c2fc1160a93e1a7d8f6202e1292e3e29d2a854707f7e45324299121.lean/declarations/residual-isnull-iff--7ea78ab4bcc91706df57034a.md) | 146 | `result-track:7ea78ab4bcc91706df57034a93fa496d0b0ad596a30ceed12c0a77d98482073a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
