# Verification target: GRWTSK.Geometry.DifferentialGeometry.ContMDiffMap.Variant35c526a90581e2770223e789695c52ef41f45c2a286b5890d0cb3fcf8092466f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a13938d4ab809436bae42455cab2e20955d8ad3f",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/ContMDiffMap/Variant35c526a90581e2770223e789695c52ef41f45c2a286b5890d0cb3fcf8092466f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variant35c526a90581e2770223e789695c52ef41f45c2a286b5890d0cb3fcf8092466f.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variant35c526a90581e2770223e789695c52ef41f45c2a286b5890d0cb3fcf8092466f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a13938d4ab809436bae42455cab2e20955d8ad3f`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/ContMDiffMap/Variant35c526a90581e2770223e789695c52ef41f45c2a286b5890d0cb3fcf8092466f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/ContMDiffMap/Variant35c526a90581e2770223e789695c52ef41f45c2a286b5890d0cb3fcf8092466f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.ContMDiff` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ContMDiffMap](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variant35c526a90581e2770223e789695c52ef41f45c2a286b5890d0cb3fcf8092466f.lean/declarations/contmdiffmap--f79f5771cc6ea7b895d7b82a.md) | 39 | `declaration-track:f79f5771cc6ea7b895d7b82ad852d42df38f801c87724598b785d47250b7b3f2` |
| 2 | `def` | [SmoothMap](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variant35c526a90581e2770223e789695c52ef41f45c2a286b5890d0cb3fcf8092466f.lean/declarations/smoothmap--83b60e730e712296d9fcc29e.md) | 45 | `declaration-track:83b60e730e712296d9fcc29e6ef9c84aec3eede499d622e933bda3a6b3fba02c` |
| 3 | `instance` | [funLike](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variant35c526a90581e2770223e789695c52ef41f45c2a286b5890d0cb3fcf8092466f.lean/declarations/funlike--7bb4e4139fdb4f77d6a3b2b9.md) | 60 | `declaration-track:7bb4e4139fdb4f77d6a3b2b90281ddb513cb1ef157ebaa10a68efff9be9ad37c` |
| 4 | `theorem` | [contMDiff](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variant35c526a90581e2770223e789695c52ef41f45c2a286b5890d0cb3fcf8092466f.lean/declarations/contmdiff--10511fd0dde7db6823a0bee4.md) | 65 | `result-track:10511fd0dde7db6823a0bee4a235796b00d263706bc7096586ca095f9883c945` |
| 5 | `theorem` | [smooth](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variant35c526a90581e2770223e789695c52ef41f45c2a286b5890d0cb3fcf8092466f.lean/declarations/smooth--e28411a14a575b2a29987174.md) | 69 | `result-track:e28411a14a575b2a29987174d7730751b95cd56f1b83a3469f03feec3806e811` |
| 6 | `theorem` | [coeFn_mk](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variant35c526a90581e2770223e789695c52ef41f45c2a286b5890d0cb3fcf8092466f.lean/declarations/coefn-mk--c3062deca8b352d0622bba77.md) | 82 | `result-track:c3062deca8b352d0622bba77236c3819864f5f37f95b83411e95a260653ee672` |
| 7 | `theorem` | [coe_injective](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variant35c526a90581e2770223e789695c52ef41f45c2a286b5890d0cb3fcf8092466f.lean/declarations/coe-injective--e59d4c6e882958c6ee6af4b3.md) | 87 | `result-track:e59d4c6e882958c6ee6af4b38ef4cfe7e809153301b0e510a45d45ef6b686c26` |
| 8 | `theorem` | [ext](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variant35c526a90581e2770223e789695c52ef41f45c2a286b5890d0cb3fcf8092466f.lean/declarations/ext--acb416f2b6e8dffb787cab4f.md) | 92 | `result-track:acb416f2b6e8dffb787cab4f85026b3c568ed5fee50664464ee066d878f0eb37` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variant35c526a90581e2770223e789695c52ef41f45c2a286b5890d0cb3fcf8092466f.lean/declarations/instance--12eae560fac5a6079a973e55.md) | 95 | `declaration-track:12eae560fac5a6079a973e55306ed40f4e71f9a596589b549c929deb51e0c61e` |
| 10 | `def` | [id](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variant35c526a90581e2770223e789695c52ef41f45c2a286b5890d0cb3fcf8092466f.lean/declarations/id--2b360044a1771880c200f114.md) | 99 | `declaration-track:2b360044a1771880c200f114364b9cff150403e05502178a2f8d1177868374a4` |
| 11 | `def` | [comp](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variant35c526a90581e2770223e789695c52ef41f45c2a286b5890d0cb3fcf8092466f.lean/declarations/comp--0a05f6ef96518dc760bacbd7.md) | 104 | `declaration-track:0a05f6ef96518dc760bacbd732cb530b4adf4f05e9d1669e222190f54991fd62` |
| 12 | `theorem` | [comp_apply](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variant35c526a90581e2770223e789695c52ef41f45c2a286b5890d0cb3fcf8092466f.lean/declarations/comp-apply--949ef9ef43f8d73d7ba5f56f.md) | 110 | `result-track:949ef9ef43f8d73d7ba5f56fee582c969e1752b3352c6a889abf86daf8c3ea40` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variant35c526a90581e2770223e789695c52ef41f45c2a286b5890d0cb3fcf8092466f.lean/declarations/instance--d4d971a35da5fafc9fee4c20.md) | 115 | `declaration-track:d4d971a35da5fafc9fee4c203f011d63ab7473adb89724c15e074aa335b5bb11` |
| 14 | `def` | [const](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variant35c526a90581e2770223e789695c52ef41f45c2a286b5890d0cb3fcf8092466f.lean/declarations/const--5accc9c25414e46a1b1c9105.md) | 119 | `declaration-track:5accc9c25414e46a1b1c910565e816d55aa5ecb1b3b85f621210479501e8cb4a` |
| 15 | `def` | [fst](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variant35c526a90581e2770223e789695c52ef41f45c2a286b5890d0cb3fcf8092466f.lean/declarations/fst--ec702d7d2072c08e94e5963b.md) | 124 | `declaration-track:ec702d7d2072c08e94e5963b9ea4c95f475bebbe3eabb4854bf5a877cf739391` |
| 16 | `def` | [snd](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variant35c526a90581e2770223e789695c52ef41f45c2a286b5890d0cb3fcf8092466f.lean/declarations/snd--45ca016963600e34ff17e2c7.md) | 129 | `declaration-track:45ca016963600e34ff17e2c7a9cdd7e370ffca9c35b6327c7141a9702ce8560a` |
| 17 | `def` | [prodMk](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variant35c526a90581e2770223e789695c52ef41f45c2a286b5890d0cb3fcf8092466f.lean/declarations/prodmk--37e5ff34b9a4d97ad8c76c84.md) | 134 | `declaration-track:37e5ff34b9a4d97ad8c76c84409c6c4880eac09ffc4f006c7a18a851d2cc3fbe` |
| 18 | `instance` | [ContinuousLinearMap.hasCoeToContMDiffMap](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMap/Variant35c526a90581e2770223e789695c52ef41f45c2a286b5890d0cb3fcf8092466f.lean/declarations/continuouslinearmap-hascoetocontmdiffmap--5832ce448dc7c6cf629977d2.md) | 140 | `declaration-track:5832ce448dc7c6cf629977d2bc4514ac77d0fb96cb08128e99a97f3cb2dd254f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
