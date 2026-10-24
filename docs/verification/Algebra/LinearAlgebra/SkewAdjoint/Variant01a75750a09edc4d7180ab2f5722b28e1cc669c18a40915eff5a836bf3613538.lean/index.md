# Verification target: GRWTSK.Algebra.LinearAlgebra.SkewAdjoint.Variant01a75750a09edc4d7180ab2f5722b28e1cc669c18a40915eff5a836bf3613538

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5223149d3cb0b0d822924679811b1871793dd9e",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SkewAdjoint/Variant01a75750a09edc4d7180ab2f5722b28e1cc669c18a40915eff5a836bf3613538.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SkewAdjoint/Variant01a75750a09edc4d7180ab2f5722b28e1cc669c18a40915eff5a836bf3613538.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SkewAdjoint/Variant01a75750a09edc4d7180ab2f5722b28e1cc669c18a40915eff5a836bf3613538.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5223149d3cb0b0d822924679811b1871793dd9e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SkewAdjoint/Variant01a75750a09edc4d7180ab2f5722b28e1cc669c18a40915eff5a836bf3613538.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SkewAdjoint/Variant01a75750a09edc4d7180ab2f5722b28e1cc669c18a40915eff5a836bf3613538.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Matrix` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.SesquilinearForm` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NoncommRing` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [LinearMap.BilinForm.isSkewAdjoint_bracket](../../../../../mathematics/Algebra/LinearAlgebra/SkewAdjoint/Variant01a75750a09edc4d7180ab2f5722b28e1cc669c18a40915eff5a836bf3613538.lean/declarations/linearmap-bilinform-isskewadjoint-bracket--9dba03d9bdcd00b356c04d49.md) | 51 | `result-track:9dba03d9bdcd00b356c04d494f390aae99afef6429aaad823fdf71ab803f2edb` |
| 2 | `def` | [skewAdjointLieSubalgebra](../../../../../mathematics/Algebra/LinearAlgebra/SkewAdjoint/Variant01a75750a09edc4d7180ab2f5722b28e1cc669c18a40915eff5a836bf3613538.lean/declarations/skewadjointliesubalgebra--c2190351dc7cab42a6e60ff5.md) | 62 | `declaration-track:c2190351dc7cab42a6e60ff52f5f469552ebd4ab4a900de085fe5da1a99e71bb` |
| 3 | `def` | [skewAdjointLieSubalgebraEquiv](../../../../../mathematics/Algebra/LinearAlgebra/SkewAdjoint/Variant01a75750a09edc4d7180ab2f5722b28e1cc669c18a40915eff5a836bf3613538.lean/declarations/skewadjointliesubalgebraequiv--8c8e4ca247a228a2fee69453.md) | 70 | `declaration-track:8c8e4ca247a228a2fee69453b914db9eee32559e65fa208c61afd7763a5acc51` |
| 4 | `theorem` | [skewAdjointLieSubalgebraEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/SkewAdjoint/Variant01a75750a09edc4d7180ab2f5722b28e1cc669c18a40915eff5a836bf3613538.lean/declarations/skewadjointliesubalgebraequiv-apply--21b7f962884f8250e9e3b3bc.md) | 79 | `result-track:21b7f962884f8250e9e3b3bc752b8995922f4a1528aee8c6d34088c0ca935547` |
| 5 | `theorem` | [skewAdjointLieSubalgebraEquiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/SkewAdjoint/Variant01a75750a09edc4d7180ab2f5722b28e1cc669c18a40915eff5a836bf3613538.lean/declarations/skewadjointliesubalgebraequiv-symm-apply--a62c5ead7f16c869a8f63f2a.md) | 85 | `result-track:a62c5ead7f16c869a8f63f2aedf6f6782aa5d2023ac2ca7b2185e703357a2f1d` |
| 6 | `theorem` | [Matrix.lie_transpose](../../../../../mathematics/Algebra/LinearAlgebra/SkewAdjoint/Variant01a75750a09edc4d7180ab2f5722b28e1cc669c18a40915eff5a836bf3613538.lean/declarations/matrix-lie-transpose--0cf7a49cb9658afa1301286e.md) | 98 | `result-track:0cf7a49cb9658afa1301286ec67633a014a7e58c13f91d622f3509d2683cb588` |
| 7 | `theorem` | [Matrix.isSkewAdjoint_bracket](../../../../../mathematics/Algebra/LinearAlgebra/SkewAdjoint/Variant01a75750a09edc4d7180ab2f5722b28e1cc669c18a40915eff5a836bf3613538.lean/declarations/matrix-isskewadjoint-bracket--272877645a182e88ecaa6b7f.md) | 101 | `result-track:272877645a182e88ecaa6b7ff0487c29de7f914b0372866b04f9b610d10066e8` |
| 8 | `def` | [skewAdjointMatricesLieSubalgebra](../../../../../mathematics/Algebra/LinearAlgebra/SkewAdjoint/Variant01a75750a09edc4d7180ab2f5722b28e1cc669c18a40915eff5a836bf3613538.lean/declarations/skewadjointmatricesliesubalgebra--8b29d41e12762adb6c663907.md) | 113 | `declaration-track:8b29d41e12762adb6c663907ef49c8acc0d6c3481c0d149b5ac37d692b896442` |
| 9 | `theorem` | [mem_skewAdjointMatricesLieSubalgebra](../../../../../mathematics/Algebra/LinearAlgebra/SkewAdjoint/Variant01a75750a09edc4d7180ab2f5722b28e1cc669c18a40915eff5a836bf3613538.lean/declarations/mem-skewadjointmatricesliesubalgebra--af4e8664b1998d0065834964.md) | 118 | `result-track:af4e8664b1998d0065834964768007a3f557eee101470b6265ddb2944643dba9` |
| 10 | `def` | [skewAdjointMatricesLieSubalgebraEquiv](../../../../../mathematics/Algebra/LinearAlgebra/SkewAdjoint/Variant01a75750a09edc4d7180ab2f5722b28e1cc669c18a40915eff5a836bf3613538.lean/declarations/skewadjointmatricesliesubalgebraequiv--8060896338698a9c6eaef62a.md) | 124 | `declaration-track:8060896338698a9c6eaef62a8040a5a0caf0a9de8d56a25141ddd1f10e1eeeef` |
| 11 | `theorem` | [skewAdjointMatricesLieSubalgebraEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/SkewAdjoint/Variant01a75750a09edc4d7180ab2f5722b28e1cc669c18a40915eff5a836bf3613538.lean/declarations/skewadjointmatricesliesubalgebraequiv-apply--9d968b7ba6e09bf0bb770fb7.md) | 135 | `result-track:9d968b7ba6e09bf0bb770fb724cbf938aebd967fd96a1d3a11ef5e1d8b29faf2` |
| 12 | `def` | [skewAdjointMatricesLieSubalgebraEquivTranspose](../../../../../mathematics/Algebra/LinearAlgebra/SkewAdjoint/Variant01a75750a09edc4d7180ab2f5722b28e1cc669c18a40915eff5a836bf3613538.lean/declarations/skewadjointmatricesliesubalgebraequivtranspose--ea10485d72eee9c0bb574396.md) | 142 | `declaration-track:ea10485d72eee9c0bb5743964a86ad64434313671e97673a9a17db1c66ee900d` |
| 13 | `theorem` | [skewAdjointMatricesLieSubalgebraEquivTranspose_apply](../../../../../mathematics/Algebra/LinearAlgebra/SkewAdjoint/Variant01a75750a09edc4d7180ab2f5722b28e1cc669c18a40915eff5a836bf3613538.lean/declarations/skewadjointmatricesliesubalgebraequivtranspose-apply--0dba4a212896b2b912295e8a.md) | 153 | `result-track:0dba4a212896b2b912295e8a76c6d8454d4758af8b6e792abc4b46d315e7361f` |
| 14 | `theorem` | [mem_skewAdjointMatricesLieSubalgebra_unit_smul](../../../../../mathematics/Algebra/LinearAlgebra/SkewAdjoint/Variant01a75750a09edc4d7180ab2f5722b28e1cc669c18a40915eff5a836bf3613538.lean/declarations/mem-skewadjointmatricesliesubalgebra-unit-smul--ba725a2c17c1e106d1122c24.md) | 159 | `result-track:ba725a2c17c1e106d1122c240a74a67e11ff49c688dfb79e36c3f92fef513f67` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
