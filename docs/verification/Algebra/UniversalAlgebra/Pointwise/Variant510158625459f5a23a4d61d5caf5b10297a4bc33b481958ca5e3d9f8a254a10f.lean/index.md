# Verification target: GRWTSK.Algebra.UniversalAlgebra.Pointwise.Variant510158625459f5a23a4d61d5caf5b10297a4bc33b481958ca5e3d9f8a254a10f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7fdc0841fec21cbd1ba3ed238568e67a4b36c5c9",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Pointwise/Variant510158625459f5a23a4d61d5caf5b10297a4bc33b481958ca5e3d9f8a254a10f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variant510158625459f5a23a4d61d5caf5b10297a4bc33b481958ca5e3d9f8a254a10f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variant510158625459f5a23a4d61d5caf5b10297a4bc33b481958ca5e3d9f8a254a10f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7fdc0841fec21cbd1ba3ed238568e67a4b36c5c9`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Pointwise/Variant510158625459f5a23a4d61d5caf5b10297a4bc33b481958ca5e3d9f8a254a10f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Pointwise/Variant510158625459f5a23a4d61d5caf5b10297a4bc33b481958ca5e3d9f8a254a10f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Module` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Real.sInf_smul_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variant510158625459f5a23a4d61d5caf5b10297a4bc33b481958ca5e3d9f8a254a10f.lean/declarations/real-sinf-smul-of-nonneg--b3abf387035ac2f0e3d92e14.md) | 44 | `result-track:b3abf387035ac2f0e3d92e14eed9d917c917a61cdb1f74500378b6f152591e99` |
| 2 | `theorem` | [Real.smul_iInf_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variant510158625459f5a23a4d61d5caf5b10297a4bc33b481958ca5e3d9f8a254a10f.lean/declarations/real-smul-iinf-of-nonneg--d96b600bed83d809229d5a0c.md) | 56 | `result-track:d96b600bed83d809229d5a0c534cd1130a247e64bdacf7d8e1a53b12a2f74c01` |
| 3 | `theorem` | [Real.sSup_smul_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variant510158625459f5a23a4d61d5caf5b10297a4bc33b481958ca5e3d9f8a254a10f.lean/declarations/real-ssup-smul-of-nonneg--f21f04eac7d88884834afc11.md) | 60 | `result-track:f21f04eac7d88884834afc11c91f4a0864caaf542d636182eaef48922ba91b11` |
| 4 | `theorem` | [Real.smul_iSup_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variant510158625459f5a23a4d61d5caf5b10297a4bc33b481958ca5e3d9f8a254a10f.lean/declarations/real-smul-isup-of-nonneg--57ad5f3db9d295ab879d214d.md) | 72 | `result-track:57ad5f3db9d295ab879d214d94df28b53d16ac4e696831c124f196289b49f2de` |
| 5 | `theorem` | [Real.sInf_smul_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variant510158625459f5a23a4d61d5caf5b10297a4bc33b481958ca5e3d9f8a254a10f.lean/declarations/real-sinf-smul-of-nonpos--c3227ec4fa7ba1031a00a5cb.md) | 82 | `result-track:c3227ec4fa7ba1031a00a5cb36b771bf57b75d21ce148173930b5435aa05c1fe` |
| 6 | `theorem` | [Real.smul_iSup_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variant510158625459f5a23a4d61d5caf5b10297a4bc33b481958ca5e3d9f8a254a10f.lean/declarations/real-smul-isup-of-nonpos--aad5af3dc65f16dc20199c73.md) | 94 | `result-track:aad5af3dc65f16dc20199c733494f741d5e1c0effcb3e5a4d6c670205b5cee17` |
| 7 | `theorem` | [Real.sSup_smul_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variant510158625459f5a23a4d61d5caf5b10297a4bc33b481958ca5e3d9f8a254a10f.lean/declarations/real-ssup-smul-of-nonpos--bb0fffd205ba82bbac62031b.md) | 98 | `result-track:bb0fffd205ba82bbac62031bed20c8559a0bdc151f03c8431718d4fd9e323e45` |
| 8 | `theorem` | [Real.smul_iInf_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variant510158625459f5a23a4d61d5caf5b10297a4bc33b481958ca5e3d9f8a254a10f.lean/declarations/real-smul-iinf-of-nonpos--38a331fb63544b4c01a8c215.md) | 110 | `result-track:38a331fb63544b4c01a8c215fe573b1ec1a4bda20ce86e999d0db289fa1100bb` |
| 9 | `theorem` | [Real.mul_iInf_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variant510158625459f5a23a4d61d5caf5b10297a4bc33b481958ca5e3d9f8a254a10f.lean/declarations/real-mul-iinf-of-nonneg--f2f2fa9e7d7c2931bb74f3b6.md) | 123 | `result-track:f2f2fa9e7d7c2931bb74f3b6f92e5e3f5c76ad00beb1ebd7d703d942f4c4c1b1` |
| 10 | `theorem` | [Real.mul_iSup_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variant510158625459f5a23a4d61d5caf5b10297a4bc33b481958ca5e3d9f8a254a10f.lean/declarations/real-mul-isup-of-nonneg--13a6ad672e80a8f446eb9cc5.md) | 127 | `result-track:13a6ad672e80a8f446eb9cc563eb3b36fdd0919e15c48db7857e9798f7484844` |
| 11 | `theorem` | [Real.mul_iInf_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variant510158625459f5a23a4d61d5caf5b10297a4bc33b481958ca5e3d9f8a254a10f.lean/declarations/real-mul-iinf-of-nonpos--fb926fdc4b46e4bf98563720.md) | 131 | `result-track:fb926fdc4b46e4bf9856372007d03e25c3495a1d08454269005b3903757d6b43` |
| 12 | `theorem` | [Real.mul_iSup_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variant510158625459f5a23a4d61d5caf5b10297a4bc33b481958ca5e3d9f8a254a10f.lean/declarations/real-mul-isup-of-nonpos--b7dfce0002181a9023b1446a.md) | 135 | `result-track:b7dfce0002181a9023b1446ac6f60b008399a2a053b04868973598e861550331` |
| 13 | `theorem` | [Real.iInf_mul_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variant510158625459f5a23a4d61d5caf5b10297a4bc33b481958ca5e3d9f8a254a10f.lean/declarations/real-iinf-mul-of-nonneg--98d68a541914dfc44df0452b.md) | 139 | `result-track:98d68a541914dfc44df0452ba9ee7831e22043bf84ddb5c901713735f08d1145` |
| 14 | `theorem` | [Real.iSup_mul_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variant510158625459f5a23a4d61d5caf5b10297a4bc33b481958ca5e3d9f8a254a10f.lean/declarations/real-isup-mul-of-nonneg--17f0d487f67f74dbb0d752a9.md) | 143 | `result-track:17f0d487f67f74dbb0d752a9637150825aa0145c2a76788d768808f714bcaab6` |
| 15 | `theorem` | [Real.iInf_mul_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variant510158625459f5a23a4d61d5caf5b10297a4bc33b481958ca5e3d9f8a254a10f.lean/declarations/real-iinf-mul-of-nonpos--ee07552e3b899fea76e848ca.md) | 147 | `result-track:ee07552e3b899fea76e848cadbd1a51d55995d2223d9c9dba2dac2578d3c692a` |
| 16 | `theorem` | [Real.iSup_mul_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variant510158625459f5a23a4d61d5caf5b10297a4bc33b481958ca5e3d9f8a254a10f.lean/declarations/real-isup-mul-of-nonpos--c96e062ca94eba97b214d887.md) | 151 | `result-track:c96e062ca94eba97b214d887030cd09c64b618f78045f53d47a3bd545187aec5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
