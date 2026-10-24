# Verification target: GRWTSK.Algebra.LinearAlgebra.PositiveGeometry.Variant779b372895db26774df738075da295b2c43954dbfbb5d9f5a2b0f8f6e356f882

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "793b12fcbdb0e25d876e968c15724b820dd97dcd",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PositiveGeometry/Variant779b372895db26774df738075da295b2c43954dbfbb5d9f5a2b0f8f6e356f882.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant779b372895db26774df738075da295b2c43954dbfbb5d9f5a2b0f8f6e356f882.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant779b372895db26774df738075da295b2c43954dbfbb5d9f5a2b0f8f6e356f882.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `793b12fcbdb0e25d876e968c15724b820dd97dcd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PositiveGeometry/Variant779b372895db26774df738075da295b2c43954dbfbb5d9f5a2b0f8f6e356f882.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PositiveGeometry/Variant779b372895db26774df738075da295b2c43954dbfbb5d9f5a2b0f8f6e356f882.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Certification` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PositiveForm](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant779b372895db26774df738075da295b2c43954dbfbb5d9f5a2b0f8f6e356f882.lean/declarations/positiveform--110686990357cb7f00f2c40c.md) | 35 | `declaration-track:110686990357cb7f00f2c40c5877cb2278be1b12d89fa8edcd4cc5beca15e967` |
| 2 | `def` | [Visible](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant779b372895db26774df738075da295b2c43954dbfbb5d9f5a2b0f8f6e356f882.lean/declarations/visible--af351734da872b94f0b7122a.md) | 52 | `declaration-track:af351734da872b94f0b7122a123339c5a7349286a0928d06f99569c7f9570aa5` |
| 3 | `def` | [IsNull](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant779b372895db26774df738075da295b2c43954dbfbb5d9f5a2b0f8f6e356f882.lean/declarations/isnull--74e40a455ef9d9877d7339e9.md) | 56 | `declaration-track:74e40a455ef9d9877d7339e9ffb40d7f2b8a4162dadc3c86afe85aba7ad22049` |
| 4 | `def` | [pullback](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant779b372895db26774df738075da295b2c43954dbfbb5d9f5a2b0f8f6e356f882.lean/declarations/pullback--468a5f200e5a016645c5d1ff.md) | 60 | `declaration-track:468a5f200e5a016645c5d1ffa4aac9cb72e85d64d4b70626fce65ae1fe3bfd6b` |
| 5 | `theorem` | [pullback_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant779b372895db26774df738075da295b2c43954dbfbb5d9f5a2b0f8f6e356f882.lean/declarations/pullback-nonnegative--caf77d2d937c058fd2cceaed.md) | 74 | `result-track:caf77d2d937c058fd2cceaedb0724051012df111a37f751415027448f4160bd8` |
| 6 | `theorem` | [pullback_visible_iff](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant779b372895db26774df738075da295b2c43954dbfbb5d9f5a2b0f8f6e356f882.lean/declarations/pullback-visible-iff--b64d27652b847c7897fb310f.md) | 79 | `result-track:b64d27652b847c7897fb310f30ee80226a598f4d70d7256e4e7448524363695e` |
| 7 | `theorem` | [pullback_isNull_iff](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant779b372895db26774df738075da295b2c43954dbfbb5d9f5a2b0f8f6e356f882.lean/declarations/pullback-isnull-iff--c2d8ff37a38f378a06c155db.md) | 84 | `result-track:c2d8ff37a38f378a06c155db2678537f5f40f55ff873fe500c4edd5142dbbd75` |
| 8 | `def` | [add](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant779b372895db26774df738075da295b2c43954dbfbb5d9f5a2b0f8f6e356f882.lean/declarations/add--79b03418b67beebc4c426ec7.md) | 89 | `declaration-track:79b03418b67beebc4c426ec728e11f032f6595154f917cf5d5d15361404d5e65` |
| 9 | `theorem` | [add_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant779b372895db26774df738075da295b2c43954dbfbb5d9f5a2b0f8f6e356f882.lean/declarations/add-nonnegative--3cfd78a33ce64f796aa8a147.md) | 108 | `result-track:3cfd78a33ce64f796aa8a147dd8449867bf9d7e655e81cacb63c9372c94c343c` |
| 10 | `structure` | [ProvenanceResidualization](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant779b372895db26774df738075da295b2c43954dbfbb5d9f5a2b0f8f6e356f882.lean/declarations/provenanceresidualization--0fd752691f23dd76b9f33cb0.md) | 119 | `declaration-track:0fd752691f23dd76b9f33cb06ab75310057a87df571e7db78a7c5d7c1394a697` |
| 11 | `def` | [residualForm](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant779b372895db26774df738075da295b2c43954dbfbb5d9f5a2b0f8f6e356f882.lean/declarations/residualform--c8de966507ec4b5fddc747b2.md) | 134 | `declaration-track:c8de966507ec4b5fddc747b2a2c9be8f5ef5f1ae0a98d2373da41c1d944e12f2` |
| 12 | `theorem` | [residual_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant779b372895db26774df738075da295b2c43954dbfbb5d9f5a2b0f8f6e356f882.lean/declarations/residual-nonnegative--3429f69cc66643d9c9a54fd9.md) | 139 | `result-track:3429f69cc66643d9c9a54fd952d03d5f68be86900d132f420dc2dff0d824a137` |
| 13 | `theorem` | [residual_visible_iff](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant779b372895db26774df738075da295b2c43954dbfbb5d9f5a2b0f8f6e356f882.lean/declarations/residual-visible-iff--ce241f8025bbe5a3fa070c93.md) | 146 | `result-track:ce241f8025bbe5a3fa070c93f616d3d072dcbeece603cd9b75f295d717f187d3` |
| 14 | `theorem` | [residual_isNull_iff](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant779b372895db26774df738075da295b2c43954dbfbb5d9f5a2b0f8f6e356f882.lean/declarations/residual-isnull-iff--2b72fbb1726a976f947aea3d.md) | 153 | `result-track:2b72fbb1726a976f947aea3ddc5f93eceadefd9fc8e9b7724c89e87504af01e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
