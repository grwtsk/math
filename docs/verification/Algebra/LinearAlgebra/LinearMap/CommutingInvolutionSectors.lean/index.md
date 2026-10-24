# Verification target: GRWTSK.LinearAlgebra.LinearMap.CommutingInvolutionSectors

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb0d65dd8cdbfc4b84fd5ad15224516874fafb64",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb0d65dd8cdbfc4b84fd5ad15224516874fafb64`.

Source path: `GRWTSK/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LinearMap.End` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Determinant` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Sign](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean/declarations/sign--e1db424990e8332976fde972.md) | 37 | `declaration-track:e1db424990e8332976fde972bcc16a21d477c3236342ee0e4741fc319d6995e8` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean/declarations/instance--63e8f6c9e7979731958a67c8.md) | 42 | `declaration-track:63e8f6c9e7979731958a67c85acd3aed94f09782cbbb4ea398d74d3c44e925ef` |
| 3 | `def` | [Sign.scalar](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean/declarations/sign-scalar--d186b44859ca5848b429dd38.md) | 47 | `declaration-track:d186b44859ca5848b429dd3810d6c1abbc6b1d77c20d08a74e0d4a942b927bf6` |
| 4 | `theorem` | [Sign.scalar_negative](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean/declarations/sign-scalar-negative--57b1bc1fce8d3ce498bf43de.md) | 52 | `result-track:57b1bc1fce8d3ce498bf43debfa2f590e77a7f21b1ed53917b222db84a2978ad` |
| 5 | `theorem` | [Sign.scalar_positive](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean/declarations/sign-scalar-positive--8e51e6427f5280080c5478a7.md) | 55 | `result-track:8e51e6427f5280080c5478a768be078748d7826d068705a9fa46d8fa3a014209` |
| 6 | `abbrev` | [Sector](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean/declarations/sector--2810a457e8f2e7708672dfc6.md) | 58 | `declaration-track:2810a457e8f2e7708672dfc659733d53b39345c7dd1cd4e9a596a174ce8045b2` |
| 7 | `structure` | [CommutingInvolutions](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean/declarations/commutinginvolutions--a3f3f23a19010620793a8f55.md) | 61 | `declaration-track:a3f3f23a19010620793a8f556a8b93021fcc2d150ed70a5076d636a4cf6dd4c5` |
| 8 | `def` | [CommutingInvolutions.InSector](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean/declarations/commutinginvolutions-insector--acbbbd1433d6639cfd6488db.md) | 69 | `declaration-track:acbbbd1433d6639cfd6488db20fb6c50edad2f420c6d19d4ad8cc8781cf7bd9b` |
| 9 | `structure` | [Intertwiner](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean/declarations/intertwiner--b06a9802cacc49b0e444f579.md) | 75 | `declaration-track:b06a9802cacc49b0e444f57928b9cf0fc12a8d3db6ca3610eaafac6400cb3efe` |
| 10 | `theorem` | [Intertwiner.maps_sector](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean/declarations/intertwiner-maps-sector--74e1e3282c60415bd9223a2c.md) | 84 | `result-track:74e1e3282c60415bd9223a2cf31bb05ac2eb4c1945c48ee48e74abf600cbf9bd` |
| 11 | `structure` | [SectorDecomposition](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean/declarations/sectordecomposition--31e5f89df9e2b96edce6123f.md) | 108 | `declaration-track:31e5f89df9e2b96edce6123f8dcd34720359a6ac6643e9895bcbc258b00756b3` |
| 12 | `theorem` | [SectorDecomposition.reconstruct](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean/declarations/sectordecomposition-reconstruct--2f5a901cb852d621d73d68a4.md) | 117 | `result-track:2f5a901cb852d621d73d68a43bfe32ec94e398979f6fe0e815e16f8f8e38c73d` |
| 13 | `structure` | [ResolvedPencil](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean/declarations/resolvedpencil--ff2491f764dc06b2443ada52.md) | 131 | `declaration-track:ff2491f764dc06b2443ada529fa2aa889b46740f3b1a8fcce0076ef264f153cb` |
| 14 | `def` | [zeroSet](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean/declarations/zeroset--1af6eb4e0424ed0229fa5f48.md) | 150 | `declaration-track:1af6eb4e0424ed0229fa5f4850cea467f246665b756bde1ce1a9ba8b99659d3c` |
| 15 | `def` | [sectorZeroSet](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean/declarations/sectorzeroset--8942fd875127b9a7d1db641e.md) | 154 | `declaration-track:8942fd875127b9a7d1db641e690cc5ffffc9f39b7765f685a299f893c799c7c1` |
| 16 | `theorem` | [determinant_eq_zero_iff_sector](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean/declarations/determinant-eq-zero-iff-sector--0aa83f3f46e7c2d74390b9ff.md) | 158 | `result-track:0aa83f3f46e7c2d74390b9ffe37aee163eeded79b9135984ffaf7fb5a4cdec64` |
| 17 | `theorem` | [zeroSet_eq_iUnion_sectorZeroSet](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean/declarations/zeroset-eq-iunion-sectorzeroset--d090b6c4b1949f988639565c.md) | 173 | `result-track:d090b6c4b1949f988639565c8e042d339a05646cef23b845bf79de0d1d6f233c` |
| 18 | `theorem` | [operator_preserves_sector](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean/declarations/operator-preserves-sector--4aeb1f3620adf8a93cb184a7.md) | 180 | `result-track:4aeb1f3620adf8a93cb184a7f42a36ae1ddf7be6ee1987d6a592777fe7fbc6f9` |
| 19 | `def` | [conjugateOperator](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean/declarations/conjugateoperator--422714bc4a14a6ff1410d3f2.md) | 204 | `declaration-track:422714bc4a14a6ff1410d3f2401a5c6372c3628673608a176d82c11d2bdaac6a` |
| 20 | `theorem` | [det_conjugateOperator](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean/declarations/det-conjugateoperator--dc4769a930677ea25ea30928.md) | 209 | `result-track:dc4769a930677ea25ea30928841bc803646330d0ee0e9c0069e87797123127cc` |
| 21 | `theorem` | [det_conjugateOperator_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean/declarations/det-conjugateoperator-eq-zero-iff--3b098a05e11b187757e05c7e.md) | 226 | `result-track:3b098a05e11b187757e05c7e2a746726fd66f1146a9449a73693a143760fd4a7` |
| 22 | `structure` | [GeneralizedEigenvaluePencil](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean/declarations/generalizedeigenvaluepencil--02826e075314a71bb2538326.md) | 233 | `declaration-track:02826e075314a71bb25383264db4031f6e3b80f7d6ae6d22ec2a2f84012da5e5` |
| 23 | `def` | [GeneralizedEigenvaluePencil.operator](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean/declarations/generalizedeigenvaluepencil-operator--651b4ab070b31705e920c2f0.md) | 239 | `declaration-track:651b4ab070b31705e920c2f0c94e88629ec98340b684e203d127543ac586c0f9` |
| 24 | `def` | [GeneralizedEigenvaluePencil.zeroSet](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean/declarations/generalizedeigenvaluepencil-zeroset--759175a2c2f6d9af1e10adb2.md) | 245 | `declaration-track:759175a2c2f6d9af1e10adb262bdda6b3079d849b46185b86b4e3b51b5a9a9b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
