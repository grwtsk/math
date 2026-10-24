# Verification target: GRWTSK.Geometry.AlgebraicGeometry.FunctionField.Variant6998d1e7b593af50f6b67edd3fdc42ca3fd248bed8d641e301d9d2cf82fa231a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6820aceb9450686c2e9744deaedb0baeb33bbb32",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/FunctionField/Variant6998d1e7b593af50f6b67edd3fdc42ca3fd248bed8d641e301d9d2cf82fa231a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/FunctionField/Variant6998d1e7b593af50f6b67edd3fdc42ca3fd248bed8d641e301d9d2cf82fa231a.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/FunctionField/Variant6998d1e7b593af50f6b67edd3fdc42ca3fd248bed8d641e301d9d2cf82fa231a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6820aceb9450686c2e9744deaedb0baeb33bbb32`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/FunctionField/Variant6998d1e7b593af50f6b67edd3fdc42ca3fd248bed8d641e301d9d2cf82fa231a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/FunctionField/Variant6998d1e7b593af50f6b67edd3fdc42ca3fd248bed8d641e301d9d2cf82fa231a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Properties` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Scheme.functionField](../../../../../mathematics/Geometry/AlgebraicGeometry/FunctionField/Variant6998d1e7b593af50f6b67edd3fdc42ca3fd248bed8d641e301d9d2cf82fa231a.lean/declarations/scheme-functionfield--272d260b1226a70cea4b5a07.md) | 34 | `declaration-track:272d260b1226a70cea4b5a078896a121a1975ec03765ed0ec697598b092297da` |
| 2 | `abbrev` | [Scheme.germToFunctionField](../../../../../mathematics/Geometry/AlgebraicGeometry/FunctionField/Variant6998d1e7b593af50f6b67edd3fdc42ca3fd248bed8d641e301d9d2cf82fa231a.lean/declarations/scheme-germtofunctionfield--beebacd8286f7873bc831e75.md) | 39 | `declaration-track:beebacd8286f7873bc831e75ea443231630bb59a325c5d3d1850537753971f40` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FunctionField/Variant6998d1e7b593af50f6b67edd3fdc42ca3fd248bed8d641e301d9d2cf82fa231a.lean/declarations/instance--629591adb33595e4077fe861.md) | 46 | `declaration-track:629591adb33595e4077fe861bbaa6c733729c3546c7399b1fb7b74f1f5d3cd9e` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FunctionField/Variant6998d1e7b593af50f6b67edd3fdc42ca3fd248bed8d641e301d9d2cf82fa231a.lean/declarations/instance--e923bd89448dd159c810860a.md) | 50 | `declaration-track:e923bd89448dd159c810860ac203aa446e88264a5f11b5094c0717878fa851a4` |
| 5 | `theorem` | [germ_injective_of_isIntegral](../../../../../mathematics/Geometry/AlgebraicGeometry/FunctionField/Variant6998d1e7b593af50f6b67edd3fdc42ca3fd248bed8d641e301d9d2cf82fa231a.lean/declarations/germ-injective-of-isintegral--7a30e2934576fa816e4f564b.md) | 65 | `result-track:7a30e2934576fa816e4f564bbe1a1d918956d2045633829e7e33be1d223aee71` |
| 6 | `theorem` | [Scheme.germToFunctionField_injective](../../../../../mathematics/Geometry/AlgebraicGeometry/FunctionField/Variant6998d1e7b593af50f6b67edd3fdc42ca3fd248bed8d641e301d9d2cf82fa231a.lean/declarations/scheme-germtofunctionfield-injective--487f81b2fab565716b5d4580.md) | 76 | `result-track:487f81b2fab565716b5d458081c060eada92d570ea96fd1cec86081b3a575d75` |
| 7 | `theorem` | [genericPoint_eq_of_isOpenImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/FunctionField/Variant6998d1e7b593af50f6b67edd3fdc42ca3fd248bed8d641e301d9d2cf82fa231a.lean/declarations/genericpoint-eq-of-isopenimmersion--432ff477f1ce04df9051a923.md) | 81 | `result-track:432ff477f1ce04df9051a923196fafe1be4cfa398c1c277ef5ac162fc76e6fd1` |
| 8 | `instance` | [stalkFunctionFieldAlgebra](../../../../../mathematics/Geometry/AlgebraicGeometry/FunctionField/Variant6998d1e7b593af50f6b67edd3fdc42ca3fd248bed8d641e301d9d2cf82fa231a.lean/declarations/stalkfunctionfieldalgebra--5a29b9cc6ed0ef35a5ba859f.md) | 96 | `declaration-track:5a29b9cc6ed0ef35a5ba859f6055fab552eea0431504e707119699f416cfdb11` |
| 9 | `instance` | [functionField_isScalarTower](../../../../../mathematics/Geometry/AlgebraicGeometry/FunctionField/Variant6998d1e7b593af50f6b67edd3fdc42ca3fd248bed8d641e301d9d2cf82fa231a.lean/declarations/functionfield-isscalartower--bdecdcc360b55c4a3d937820.md) | 102 | `declaration-track:bdecdcc360b55c4a3d9378205b1e1b217c2cd7a87b24c9c536f83b2a24e28812` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FunctionField/Variant6998d1e7b593af50f6b67edd3fdc42ca3fd248bed8d641e301d9d2cf82fa231a.lean/declarations/instance--30c9ab468a739b2bca3c2286.md) | 110 | `declaration-track:30c9ab468a739b2bca3c228626be0b6eee5fc03c6ee04f451e09a93ce0b3c1b6` |
| 11 | `theorem` | [genericPoint_eq_bot_of_affine](../../../../../mathematics/Geometry/AlgebraicGeometry/FunctionField/Variant6998d1e7b593af50f6b67edd3fdc42ca3fd248bed8d641e301d9d2cf82fa231a.lean/declarations/genericpoint-eq-bot-of-affine--42f7ba6fbdce232dce599723.md) | 115 | `result-track:42f7ba6fbdce232dce599723c716218586a4dd82d6a7c4f90a8178bbed1ab235` |
| 12 | `instance` | [functionField_isFractionRing_of_affine](../../../../../mathematics/Geometry/AlgebraicGeometry/FunctionField/Variant6998d1e7b593af50f6b67edd3fdc42ca3fd248bed8d641e301d9d2cf82fa231a.lean/declarations/functionfield-isfractionring-of-affine--81f05dc18e32b0a5f313f595.md) | 124 | `declaration-track:81f05dc18e32b0a5f313f595da5f5a9e244be75d1b48ae12b74973b0235574f0` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FunctionField/Variant6998d1e7b593af50f6b67edd3fdc42ca3fd248bed8d641e301d9d2cf82fa231a.lean/declarations/instance--5b08d9128948f2d0c3cc8748.md) | 136 | `declaration-track:5b08d9128948f2d0c3cc8748b958bdbd5948ab6e4cabf19c22983ea568bedbd3` |
| 14 | `theorem` | [IsAffineOpen.primeIdealOf_genericPoint](../../../../../mathematics/Geometry/AlgebraicGeometry/FunctionField/Variant6998d1e7b593af50f6b67edd3fdc42ca3fd248bed8d641e301d9d2cf82fa231a.lean/declarations/isaffineopen-primeidealof-genericpoint--509f2e23bc601a0edb380bc3.md) | 141 | `result-track:509f2e23bc601a0edb380bc375b6b4759704d5364006771762c35fbf5427d8b5` |
| 15 | `theorem` | [functionField_isFractionRing_of_isAffineOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/FunctionField/Variant6998d1e7b593af50f6b67edd3fdc42ca3fd248bed8d641e301d9d2cf82fa231a.lean/declarations/functionfield-isfractionring-of-isaffineopen--f9bfcd6e3aa152e62a7e6379.md) | 161 | `result-track:f9bfcd6e3aa152e62a7e63798a9d5c870173d2ac3585c72f5f4e7c7d9f8eea53` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FunctionField/Variant6998d1e7b593af50f6b67edd3fdc42ca3fd248bed8d641e301d9d2cf82fa231a.lean/declarations/instance--198de4539ebca456df1e8161.md) | 175 | `declaration-track:198de4539ebca456df1e8161760055057e459638d516711678d3ec54fe10d3e2` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FunctionField/Variant6998d1e7b593af50f6b67edd3fdc42ca3fd248bed8d641e301d9d2cf82fa231a.lean/declarations/instance--4b089cac1e15e6c17f00f598.md) | 178 | `declaration-track:4b089cac1e15e6c17f00f598330c64853b40d6ba93bf6edd41f6bfda74b281fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
