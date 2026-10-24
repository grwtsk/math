# Verification target: GRWTSK.NumberTheory.Moebius.CanonicalFourFamilyFullAdjointReconstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bd4c059a0f468212e1d4666d54e42eb8ac28e2b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyFullAdjointReconstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyFullAdjointReconstruction.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyFullAdjointReconstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bd4c059a0f468212e1d4666d54e42eb8ac28e2b`.

Source path: `GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyFullAdjointReconstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CanonicalFourFamilyFullAdjointReconstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.Matrix.FiniteAdjointDescent`](../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/FiniteAdjointDescent.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CanonicalFourFamilyArithmeticRestrictions`](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyArithmeticRestrictions.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [matrix](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyFullAdjointReconstruction.lean/declarations/matrix--3eab7ac0a5e81719124e6bed.md) | 15 | `declaration-track:3eab7ac0a5e81719124e6bedb54fb9976f916f72efe17e0644fda556af081936` |
| 2 | `abbrev` | [cells](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyFullAdjointReconstruction.lean/declarations/cells--fe9b962967389372197b12ba.md) | 17 | `declaration-track:fe9b962967389372197b12bac18413fc86913b98e541139cc33ce9a70903c9c5` |
| 3 | `abbrev` | [window](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyFullAdjointReconstruction.lean/declarations/window--7255a7caa554b46657ac293b.md) | 18 | `declaration-track:7255a7caa554b46657ac293b53e51fd716734ea2939866dceadd0557f8a39e11` |
| 4 | `def` | [fullAdjointDamping](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyFullAdjointReconstruction.lean/declarations/fulladjointdamping--a943d119ef921b48587a0f4d.md) | 20 | `declaration-track:a943d119ef921b48587a0f4dc4c915f2fecd5266328c60eb511be10955366149` |
| 5 | `def` | [fullAdjointReconstruction](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyFullAdjointReconstruction.lean/declarations/fulladjointreconstruction--633dcd0d218adb5588141d80.md) | 21 | `declaration-track:633dcd0d218adb5588141d80adaa629458c94f08251d7688885a50779884d861` |
| 6 | `theorem` | [source_energy](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyFullAdjointReconstruction.lean/declarations/source-energy--c0b0ef9de29d37723e7e67f8.md) | 24 | `result-track:c0b0ef9de29d37723e7e67f83ba1635efe105f702b1db8130344647fe9cb4d74` |
| 7 | `theorem` | [matrix_apply](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyFullAdjointReconstruction.lean/declarations/matrix-apply--0f42dbbc74e5553629ee5150.md) | 28 | `result-track:0f42dbbc74e5553629ee5150645f2ccd7dea913482255046502384e584f3c53e` |
| 8 | `theorem` | [fullAdjointDamping_pos](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyFullAdjointReconstruction.lean/declarations/fulladjointdamping-pos--f7db369db9d1de061b84fab1.md) | 34 | `result-track:f7db369db9d1de061b84fab18e9f84bac07175bcf63caae146d4cb2b024849ba` |
| 9 | `theorem` | [fullAdjointReconstruction_bound](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyFullAdjointReconstruction.lean/declarations/fulladjointreconstruction-bound--dddec1f79f0fc3d7b73802c6.md) | 37 | `result-track:dddec1f79f0fc3d7b73802c62a063b6f4f27d8d7aca917a6b72e007c81d82e7d` |
| 10 | `theorem` | [fullAdjointResidual_descent](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyFullAdjointReconstruction.lean/declarations/fulladjointresidual-descent--547612a42cb50bb9d399649f.md) | 43 | `result-track:547612a42cb50bb9d399649f265742cbc782b0d8cd71ba96f986f585b8a1c4b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
