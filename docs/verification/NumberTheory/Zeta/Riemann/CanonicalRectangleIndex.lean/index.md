# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleIndex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd83a5a324a709a4c1255b7e8b1f79b449fab9fa",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleIndex.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleIndex.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleIndex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd83a5a324a709a4c1255b7e8b1f79b449fab9fa`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleIndex.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalRectangleIndex.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.RectangleDivisorIndex`](../../../../../mathematics/Analysis/ComplexAnalysis/RectangleDivisorIndex.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.MirrorCountingRectangle`](../../../../../mathematics/NumberTheory/Zeta/Riemann/MirrorCountingRectangle.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.PoleContourPolygonIndex`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleContourPolygonIndex.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [region](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleIndex.lean/declarations/region--0cdec8732f849f774189d90a.md) | 33 | `declaration-track:0cdec8732f849f774189d90a5dc18687e2b688ce5203de8c6d4eae62a99b4cb4` |
| 2 | `theorem` | [region_interior](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleIndex.lean/declarations/region-interior--acfb0b60025f33c8d2997efc.md) | 36 | `result-track:acfb0b60025f33c8d2997efcc3e6e5840bc34359b67a2ea15dd6211bfb347b83` |
| 3 | `def` | [BoundaryNonzero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleIndex.lean/declarations/boundarynonzero--6d629d0deee797440ffe7393.md) | 39 | `declaration-track:6d629d0deee797440ffe7393730b57c2e7dbd77434ec00ff9df60ecfdd4d9f3b` |
| 4 | `theorem` | [source_analytic](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleIndex.lean/declarations/source-analytic--7ad0f50271526416e5cd80bf.md) | 42 | `result-track:7ad0f50271526416e5cd80bf1bb1cb39362e95dd534bac01a4f3de00c481ff2c` |
| 5 | `theorem` | [source_local](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleIndex.lean/declarations/source-local--42a4ce03d0b1de1e752d01e0.md) | 48 | `result-track:42a4ce03d0b1de1e752d01e02f025fd2ea8bca643b2ed62a5e69616856bc0bf8` |
| 6 | `abbrev` | [RegionalPoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleIndex.lean/declarations/regionalpoint--89a6fdebba5ec5da266c5608.md) | 58 | `declaration-track:89a6fdebba5ec5da266c5608ba6a86bde80f16d54ab6b165f3dcac963d3913c4` |
| 7 | `theorem` | [regional_location](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleIndex.lean/declarations/regional-location--d7a37ca5bfbbd40f61ebedc0.md) | 60 | `result-track:d7a37ca5bfbbd40f61ebedc0ad67720fef10bc388f8ff619b7fa803fa10098c3` |
| 8 | `theorem` | [source_covered](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleIndex.lean/declarations/source-covered--55bc6dd0a8b8d115bf4c2f87.md) | 66 | `result-track:55bc6dd0a8b8d115bf4c2f87160f382d62a961d52dfa359efb1e345e52d53573` |
| 9 | `theorem` | [exists_source_quotient](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleIndex.lean/declarations/exists-source-quotient--3bd55fb3a816f83dc96f9270.md) | 81 | `result-track:3bd55fb3a816f83dc96f9270651ffa265d89f180e6de9565a17788bddcfc5aa3` |
| 10 | `def` | [sourceCurve](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleIndex.lean/declarations/sourcecurve--89d1786ca60ea0d6b6921781.md) | 100 | `declaration-track:89d1786ca60ea0d6b6921781304596028f272d1f734eadce7de71317a67adf52` |
| 11 | `theorem` | [sourceCurve_closed](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleIndex.lean/declarations/sourcecurve-closed--004ab04f9f4ec38a3804f165.md) | 103 | `result-track:004ab04f9f4ec38a3804f16550949c854a6052b6a51ec706fcf19a19c574b402` |
| 12 | `theorem` | [sourceCurve_nonzero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleIndex.lean/declarations/sourcecurve-nonzero--7ccdd6bdca7567eaf813f68c.md) | 106 | `result-track:7ccdd6bdca7567eaf813f68c9a68dc0fc135004d104eea15b52fb2ec1b005a92` |
| 13 | `theorem` | [index_eq_count](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleIndex.lean/declarations/index-eq-count--d9b5ff0571520b5365972f07.md) | 111 | `result-track:d9b5ff0571520b5365972f07767ff0efa0a66fa33497ba5bffa07e5720e7265f` |
| 14 | `theorem` | [curve_eq_maintained](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleIndex.lean/declarations/curve-eq-maintained--73aac89072d46cde8e20bf8a.md) | 129 | `result-track:73aac89072d46cde8e20bf8a498b49b0f27d6469a9e89034e940a42734f88649` |
| 15 | `theorem` | [evaluated_index_eq_count](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleIndex.lean/declarations/evaluated-index-eq-count--57c434fa3b98fbddf4de66e4.md) | 139 | `result-track:57c434fa3b98fbddf4de66e40c6ab18d45825596502d2ba89e93500e2beadb05` |
| 16 | `theorem` | [count_eq_of_evaluate](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleIndex.lean/declarations/count-eq-of-evaluate--b4105f2d2bc0a0eb59da7642.md) | 159 | `result-track:b4105f2d2bc0a0eb59da7642eb40fba81e4052d3fd81a8387c5e1c1bf8ea74ee` |
| 17 | `theorem` | [complete_pair_of_evaluate_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleIndex.lean/declarations/complete-pair-of-evaluate-one--d2a36171a8b059f599690531.md) | 171 | `result-track:d2a36171a8b059f599690531abcbc87adf702c95cb93c3d2ff47ad31750cff78` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
