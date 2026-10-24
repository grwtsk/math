# Verification target: GRWTSK.Algebra.LinearAlgebra.Isometry.Variant33dfca4e35ec1969e4eef9a1c9eb5632f66405390b85c7659f6a51c89b1ce1b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "726b1ac204a41e445a9dd752a1fa3f7e7ad93d3e",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Isometry/Variant33dfca4e35ec1969e4eef9a1c9eb5632f66405390b85c7659f6a51c89b1ce1b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant33dfca4e35ec1969e4eef9a1c9eb5632f66405390b85c7659f6a51c89b1ce1b0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant33dfca4e35ec1969e4eef9a1c9eb5632f66405390b85c7659f6a51c89b1ce1b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `726b1ac204a41e445a9dd752a1fa3f7e7ad93d3e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Isometry/Variant33dfca4e35ec1969e4eef9a1c9eb5632f66405390b85c7659f6a51c89b1ce1b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Isometry/Variant33dfca4e35ec1969e4eef9a1c9eb5632f66405390b85c7659f6a51c89b1ce1b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Circle` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Determinant` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rotation](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant33dfca4e35ec1969e4eef9a1c9eb5632f66405390b85c7659f6a51c89b1ce1b0.lean/declarations/rotation--203f9e12729ad58e1471271a.md) | 49 | `declaration-track:203f9e12729ad58e1471271a694f1f0c94aa528bec328a28063b749aed81872d` |
| 2 | `theorem` | [rotation_apply](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant33dfca4e35ec1969e4eef9a1c9eb5632f66405390b85c7659f6a51c89b1ce1b0.lean/declarations/rotation-apply--be12286cf58fb449107ebb64.md) | 58 | `result-track:be12286cf58fb449107ebb64b27a29cad711cc1245902b595ba710fb28bc3302` |
| 3 | `theorem` | [rotation_symm](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant33dfca4e35ec1969e4eef9a1c9eb5632f66405390b85c7659f6a51c89b1ce1b0.lean/declarations/rotation-symm--380356903d1e56292374d53f.md) | 62 | `result-track:380356903d1e56292374d53f7cc6c559bfaee7ccf6e092f8b00d6cd7f1946057` |
| 4 | `theorem` | [rotation_trans](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant33dfca4e35ec1969e4eef9a1c9eb5632f66405390b85c7659f6a51c89b1ce1b0.lean/declarations/rotation-trans--f40fd7c897a35da662119bd0.md) | 66 | `result-track:f40fd7c897a35da662119bd0fc7165cab9032d3246c99f7cca4e307b9ee41c79` |
| 5 | `theorem` | [rotation_ne_conjLIE](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant33dfca4e35ec1969e4eef9a1c9eb5632f66405390b85c7659f6a51c89b1ce1b0.lean/declarations/rotation-ne-conjlie--af73870f61a705c4877bf059.md) | 70 | `result-track:af73870f61a705c4877bf059a233b612ed0bd2798f8d557f765fd6785df17cf7` |
| 6 | `def` | [rotationOf](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant33dfca4e35ec1969e4eef9a1c9eb5632f66405390b85c7659f6a51c89b1ce1b0.lean/declarations/rotationof--7c08a2e9baf401aa9de4fead.md) | 81 | `declaration-track:7c08a2e9baf401aa9de4feadf15c4b3e7d54c2d08482a51d4fd70e8fb4bd024d` |
| 7 | `theorem` | [rotationOf_rotation](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant33dfca4e35ec1969e4eef9a1c9eb5632f66405390b85c7659f6a51c89b1ce1b0.lean/declarations/rotationof-rotation--1574fc6ef93e66c494aac6df.md) | 85 | `result-track:1574fc6ef93e66c494aac6df242e638ebfb9670e423711bf3ec6c666cae2214f` |
| 8 | `theorem` | [rotation_injective](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant33dfca4e35ec1969e4eef9a1c9eb5632f66405390b85c7659f6a51c89b1ce1b0.lean/declarations/rotation-injective--15c8eb88b4eff2337bbc6a1d.md) | 88 | `result-track:15c8eb88b4eff2337bbc6a1db8844aaf0cfaf1556b90f4cce2d6a176fa41f37b` |
| 9 | `theorem` | [LinearIsometry.re_apply_eq_re_of_add_conj_eq](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant33dfca4e35ec1969e4eef9a1c9eb5632f66405390b85c7659f6a51c89b1ce1b0.lean/declarations/linearisometry-re-apply-eq-re-of-add-conj-eq--1f7b5c2fff6a4f0f752843b5.md) | 91 | `result-track:1f7b5c2fff6a4f0f752843b57e5a3853fc8d8aa69f15936f53f05b6f19de90d7` |
| 10 | `theorem` | [LinearIsometry.im_apply_eq_im_or_neg_of_re_apply_eq_re](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant33dfca4e35ec1969e4eef9a1c9eb5632f66405390b85c7659f6a51c89b1ce1b0.lean/declarations/linearisometry-im-apply-eq-im-or-neg-of-re-apply-eq-re--f271d845d04cf17a4038b148.md) | 96 | `result-track:f271d845d04cf17a4038b148b1c8638b10ea1fb2074fd6304b92b210c7535afa` |
| 11 | `theorem` | [LinearIsometry.im_apply_eq_im](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant33dfca4e35ec1969e4eef9a1c9eb5632f66405390b85c7659f6a51c89b1ce1b0.lean/declarations/linearisometry-im-apply-eq-im--70edf96eb03c211e62eec636.md) | 103 | `result-track:70edf96eb03c211e62eec6365eaaafb187706e57286f8add6afb4732913d8490` |
| 12 | `theorem` | [LinearIsometry.re_apply_eq_re](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant33dfca4e35ec1969e4eef9a1c9eb5632f66405390b85c7659f6a51c89b1ce1b0.lean/declarations/linearisometry-re-apply-eq-re--05be9d6555ddfea5a25b24cf.md) | 117 | `result-track:05be9d6555ddfea5a25b24cfb6d980a30ed298e6b566e07526fe58945248a37e` |
| 13 | `theorem` | [linear_isometry_complex_aux](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant33dfca4e35ec1969e4eef9a1c9eb5632f66405390b85c7659f6a51c89b1ce1b0.lean/declarations/linear-isometry-complex-aux--570abd9c041e8d0e53ad7339.md) | 122 | `result-track:570abd9c041e8d0e53ad73394b6bd3e21938b6bc1124a030642b384d82fdb70b` |
| 14 | `theorem` | [linear_isometry_complex](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant33dfca4e35ec1969e4eef9a1c9eb5632f66405390b85c7659f6a51c89b1ce1b0.lean/declarations/linear-isometry-complex--81aedd9d54bad32a3c32fe50.md) | 138 | `result-track:81aedd9d54bad32a3c32fe50ebe62e63e26598b50636bd315b57d700391cd159` |
| 15 | `theorem` | [toMatrix_rotation](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant33dfca4e35ec1969e4eef9a1c9eb5632f66405390b85c7659f6a51c89b1ce1b0.lean/declarations/tomatrix-rotation--fb656931c21dc7a80de06048.md) | 149 | `result-track:fb656931c21dc7a80de0604853cf62aa9596fc66be13e04ea83b9665c9e2fdd5` |
| 16 | `theorem` | [det_rotation](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant33dfca4e35ec1969e4eef9a1c9eb5632f66405390b85c7659f6a51c89b1ce1b0.lean/declarations/det-rotation--5fdf12494567230edb31188f.md) | 161 | `result-track:5fdf12494567230edb31188f341ed3c2d45260c6f9f3d49e8b1a436a97db0dc4` |
| 17 | `theorem` | [linearEquiv_det_rotation](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant33dfca4e35ec1969e4eef9a1c9eb5632f66405390b85c7659f6a51c89b1ce1b0.lean/declarations/linearequiv-det-rotation--51b6a5d275af071b541afe0a.md) | 167 | `result-track:51b6a5d275af071b541afe0ab91fd7f6dde7bb1f8fe7ffd916447a713d836fa6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
