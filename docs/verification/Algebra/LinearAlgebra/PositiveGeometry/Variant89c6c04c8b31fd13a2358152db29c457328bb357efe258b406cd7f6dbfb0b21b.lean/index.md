# Verification target: GRWTSK.Algebra.LinearAlgebra.PositiveGeometry.Variant89c6c04c8b31fd13a2358152db29c457328bb357efe258b406cd7f6dbfb0b21b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08fa0221b5300bb43af6718eaf468a9b25b81211",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PositiveGeometry/Variant89c6c04c8b31fd13a2358152db29c457328bb357efe258b406cd7f6dbfb0b21b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant89c6c04c8b31fd13a2358152db29c457328bb357efe258b406cd7f6dbfb0b21b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant89c6c04c8b31fd13a2358152db29c457328bb357efe258b406cd7f6dbfb0b21b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08fa0221b5300bb43af6718eaf468a9b25b81211`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PositiveGeometry/Variant89c6c04c8b31fd13a2358152db29c457328bb357efe258b406cd7f6dbfb0b21b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PositiveGeometry/Variant89c6c04c8b31fd13a2358152db29c457328bb357efe258b406cd7f6dbfb0b21b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Certification` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PositiveForm](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant89c6c04c8b31fd13a2358152db29c457328bb357efe258b406cd7f6dbfb0b21b.lean/declarations/positiveform--edfee3b4d2eac6299b2c0bda.md) | 28 | `declaration-track:edfee3b4d2eac6299b2c0bdaa98ef5a1d6906d0a6903af6a13332a7e90730f2f` |
| 2 | `def` | [Visible](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant89c6c04c8b31fd13a2358152db29c457328bb357efe258b406cd7f6dbfb0b21b.lean/declarations/visible--93777cc52dbcb05875feb0e9.md) | 44 | `declaration-track:93777cc52dbcb05875feb0e91f74151ecec33267077e7f70a1a436883b5d0dfb` |
| 3 | `def` | [IsNull](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant89c6c04c8b31fd13a2358152db29c457328bb357efe258b406cd7f6dbfb0b21b.lean/declarations/isnull--5872860263a23f79dd829a27.md) | 48 | `declaration-track:5872860263a23f79dd829a27025ca2d0bd3b19c6436c394b700b5e1b30539b78` |
| 4 | `def` | [pullback](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant89c6c04c8b31fd13a2358152db29c457328bb357efe258b406cd7f6dbfb0b21b.lean/declarations/pullback--b76a58fa7b8aef1332984d49.md) | 52 | `declaration-track:b76a58fa7b8aef1332984d497f86f1ab0c5d67cc6a83c05ab3ab9d88c20e0114` |
| 5 | `theorem` | [pullback_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant89c6c04c8b31fd13a2358152db29c457328bb357efe258b406cd7f6dbfb0b21b.lean/declarations/pullback-nonnegative--92692ded56dde5436e3740d1.md) | 66 | `result-track:92692ded56dde5436e3740d198a992366af0664c06e0c5f1512c92f35322ef32` |
| 6 | `theorem` | [pullback_visible_iff](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant89c6c04c8b31fd13a2358152db29c457328bb357efe258b406cd7f6dbfb0b21b.lean/declarations/pullback-visible-iff--3eba73cd22b833ff61f71542.md) | 71 | `result-track:3eba73cd22b833ff61f71542d5946a6798cb6af13878e7cfeb94942162a5359b` |
| 7 | `theorem` | [pullback_isNull_iff](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant89c6c04c8b31fd13a2358152db29c457328bb357efe258b406cd7f6dbfb0b21b.lean/declarations/pullback-isnull-iff--e16bddd00709eeff6919bf9b.md) | 76 | `result-track:e16bddd00709eeff6919bf9b8046b55e059c75c844a5b77398073bde9de75ed8` |
| 8 | `def` | [add](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant89c6c04c8b31fd13a2358152db29c457328bb357efe258b406cd7f6dbfb0b21b.lean/declarations/add--a20655d310ecbe5b3a099820.md) | 81 | `declaration-track:a20655d310ecbe5b3a0998206a648766896a1d57013168ae5ed02953ad26add6` |
| 9 | `theorem` | [add_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant89c6c04c8b31fd13a2358152db29c457328bb357efe258b406cd7f6dbfb0b21b.lean/declarations/add-nonnegative--9c9abe2e9a5b560849922c41.md) | 100 | `result-track:9c9abe2e9a5b560849922c417d1c56486f36d343d42cd64710add59c7e3aa9af` |
| 10 | `structure` | [ProvenanceResidualization](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant89c6c04c8b31fd13a2358152db29c457328bb357efe258b406cd7f6dbfb0b21b.lean/declarations/provenanceresidualization--70e53bff38196e3f9ef48de6.md) | 111 | `declaration-track:70e53bff38196e3f9ef48de6f781d54731176bdf23fdb7671372ee1334a316c1` |
| 11 | `def` | [residualForm](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant89c6c04c8b31fd13a2358152db29c457328bb357efe258b406cd7f6dbfb0b21b.lean/declarations/residualform--3cdf6a2e82a85b8c82a6193a.md) | 125 | `declaration-track:3cdf6a2e82a85b8c82a6193a6a280a29be29e579b1399e9dc87d8bde6b99e55d` |
| 12 | `theorem` | [residual_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant89c6c04c8b31fd13a2358152db29c457328bb357efe258b406cd7f6dbfb0b21b.lean/declarations/residual-nonnegative--518edd1bc8ad83b6104b7b8f.md) | 130 | `result-track:518edd1bc8ad83b6104b7b8f25389e674e744dbd9deffd685b6cdd26d287f9d7` |
| 13 | `theorem` | [residual_visible_iff](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant89c6c04c8b31fd13a2358152db29c457328bb357efe258b406cd7f6dbfb0b21b.lean/declarations/residual-visible-iff--d64a99f28a84de175fc4828f.md) | 137 | `result-track:d64a99f28a84de175fc4828feda88dc566e185d1c507fbf065dedbb9944a04b6` |
| 14 | `theorem` | [residual_isNull_iff](../../../../../mathematics/Algebra/LinearAlgebra/PositiveGeometry/Variant89c6c04c8b31fd13a2358152db29c457328bb357efe258b406cd7f6dbfb0b21b.lean/declarations/residual-isnull-iff--0fd7b4a2f69d9e012f203974.md) | 144 | `result-track:0fd7b4a2f69d9e012f203974efb63191a6191c2191f1db0fdda18c7847bed5de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
