# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Sector.Variantb3595259792460e02af90aa00c22145dab6a646261b7b0061ced9828afcff6da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb9d7be2cf37d2007777bd4522afa6ca9242d437",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantb3595259792460e02af90aa00c22145dab6a646261b7b0061ced9828afcff6da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantb3595259792460e02af90aa00c22145dab6a646261b7b0061ced9828afcff6da.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantb3595259792460e02af90aa00c22145dab6a646261b7b0061ced9828afcff6da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb9d7be2cf37d2007777bd4522afa6ca9242d437`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantb3595259792460e02af90aa00c22145dab6a646261b7b0061ced9828afcff6da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantb3595259792460e02af90aa00c22145dab6a646261b7b0061ced9828afcff6da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.QuadraticMinors` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.FiniteCauchyBinet` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sine_step](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantb3595259792460e02af90aa00c22145dab6a646261b7b0061ced9828afcff6da.lean/declarations/sine-step--d9d573182c18aec5fa6473c8.md) | 30 | `result-track:d9d573182c18aec5fa6473c834516cf4da2241efecc2232289f4410fcb437e86` |
| 2 | `theorem` | [continuant_mul_sine](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantb3595259792460e02af90aa00c22145dab6a646261b7b0061ced9828afcff6da.lean/declarations/continuant-mul-sine--81b51f694ffabb24da193d1f.md) | 40 | `result-track:81b51f694ffabb24da193d1f16091a6a5ea574c3a0248b4e49696d5d02ed0ccc` |
| 3 | `theorem` | [continuant_eq_sine_ratio](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantb3595259792460e02af90aa00c22145dab6a646261b7b0061ced9828afcff6da.lean/declarations/continuant-eq-sine-ratio--0871851af905c79dac318fc2.md) | 77 | `result-track:0871851af905c79dac318fc2a34c4a1cdcb128d81b5287a280e9405e436ea44d` |
| 4 | `theorem` | [continuant_zero_angle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantb3595259792460e02af90aa00c22145dab6a646261b7b0061ced9828afcff6da.lean/declarations/continuant-zero-angle--34b4f4b1ac1d33c04f123887.md) | 84 | `result-track:34b4f4b1ac1d33c04f123887dc29063cca2b87c5db74870ad357458bca14d680` |
| 5 | `theorem` | [continuant_nonnegative](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantb3595259792460e02af90aa00c22145dab6a646261b7b0061ced9828afcff6da.lean/declarations/continuant-nonnegative--57255e4ed49aca452574a098.md) | 97 | `result-track:57255e4ed49aca452574a09869329ccf5140dcadc542138959bce34ba7950ced` |
| 6 | `theorem` | [quadratic_pfOrder](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantb3595259792460e02af90aa00c22145dab6a646261b7b0061ced9828afcff6da.lean/declarations/quadratic-pforder--0fae087a5700326d97a3956f.md) | 118 | `result-track:0fae087a5700326d97a3956fd31e6115cbb7a5ced95c86743997107b199cdf2b` |
| 7 | `def` | [transverseAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantb3595259792460e02af90aa00c22145dab6a646261b7b0061ced9828afcff6da.lean/declarations/transverseangle--15472518b3e60d08f6b04f5a.md) | 130 | `declaration-track:15472518b3e60d08f6b04f5a57f82de34ef8e847cfd7b8ea0fffb5c707834e76` |
| 8 | `theorem` | [transverseAngle_lt](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantb3595259792460e02af90aa00c22145dab6a646261b7b0061ced9828afcff6da.lean/declarations/transverseangle-lt--e5ebf9dd6af9f5a1c75dda11.md) | 133 | `result-track:e5ebf9dd6af9f5a1c75dda11dafa6d6246eb4b011c9c67ff3dd3a04bcfac11b8` |
| 9 | `theorem` | [transverseAngle_nonnegative](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantb3595259792460e02af90aa00c22145dab6a646261b7b0061ced9828afcff6da.lean/declarations/transverseangle-nonnegative--b393bc1b1a445797cb2587f5.md) | 150 | `result-track:b393bc1b1a445797cb2587f58f5bd421ab24853804b2af7f21292a9787b6e038` |
| 10 | `inductive` | [Factor](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantb3595259792460e02af90aa00c22145dab6a646261b7b0061ced9828afcff6da.lean/declarations/factor--1397855d841b417f5d22cf0d.md) | 155 | `declaration-track:1397855d841b417f5d22cf0d315dd981331bbded61c132a5a0e841d46adbecab` |
| 11 | `def` | [Factor.coefficient](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantb3595259792460e02af90aa00c22145dab6a646261b7b0061ced9828afcff6da.lean/declarations/factor-coefficient--6421c92f226c46ca3c5a9747.md) | 160 | `declaration-track:6421c92f226c46ca3c5a9747093bc73d972059bff528bea425d3bfa0d4b12e05` |
| 12 | `def` | [Factor.Admissible](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantb3595259792460e02af90aa00c22145dab6a646261b7b0061ced9828afcff6da.lean/declarations/factor-admissible--36358cea22280cea08aa90bc.md) | 165 | `declaration-track:36358cea22280cea08aa90bc60a6a887c7e2a5dde9dc2a9676ac70bd6d2ddb78` |
| 13 | `theorem` | [Factor.pfOrder](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantb3595259792460e02af90aa00c22145dab6a646261b7b0061ced9828afcff6da.lean/declarations/factor-pforder--9f12a523d9b8e4cad190a142.md) | 170 | `result-track:9f12a523d9b8e4cad190a1425917df57ddfa4a456eaa8a8879c4947ac7fa2489` |
| 14 | `def` | [productCoefficient](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantb3595259792460e02af90aa00c22145dab6a646261b7b0061ced9828afcff6da.lean/declarations/productcoefficient--b5c6a3e1462d56d649554c0d.md) | 177 | `declaration-track:b5c6a3e1462d56d649554c0d1d4252f577d780d9704402cb4d95add4c5e08e3b` |
| 15 | `theorem` | [product_pfOrder](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantb3595259792460e02af90aa00c22145dab6a646261b7b0061ced9828afcff6da.lean/declarations/product-pforder--7b8ece41fbd3adb8898a34c0.md) | 182 | `result-track:7b8ece41fbd3adb8898a34c017f11a988cce4d2e0a572cf4192665d8a74a089b` |
| 16 | `theorem` | [pfOrder_of_product_limit](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantb3595259792460e02af90aa00c22145dab6a646261b7b0061ced9828afcff6da.lean/declarations/pforder-of-product-limit--918dee22233d11be03b8a25c.md) | 191 | `result-track:918dee22233d11be03b8a25ccc6341ae21a33fe763672e78e8c9fec4d61eb57a` |
| 17 | `theorem` | [fixture_pfThree](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantb3595259792460e02af90aa00c22145dab6a646261b7b0061ced9828afcff6da.lean/declarations/fixture-pfthree--b3a633076101ba418b45cc5f.md) | 201 | `result-track:b3a633076101ba418b45cc5ff750fc2808c3a3e94bf7ec17c2363907819e6487` |
| 18 | `theorem` | [fixture_negative_orderFour](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantb3595259792460e02af90aa00c22145dab6a646261b7b0061ced9828afcff6da.lean/declarations/fixture-negative-orderfour--f062ce0d553cff3a184ade9b.md) | 207 | `result-track:f062ce0d553cff3a184ade9bbdc7042835c0051f37a662d37c16aa8c94b69dd8` |
| 19 | `theorem` | [fixture_not_pfFour](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantb3595259792460e02af90aa00c22145dab6a646261b7b0061ced9828afcff6da.lean/declarations/fixture-not-pffour--b21c74c15038f119c6873cdc.md) | 220 | `result-track:b21c74c15038f119c6873cdc85b6148ee037fad77220bd9cc49b0f775c3d443d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
