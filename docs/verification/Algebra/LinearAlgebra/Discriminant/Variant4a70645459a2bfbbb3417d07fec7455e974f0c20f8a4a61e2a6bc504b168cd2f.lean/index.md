# Verification target: GRWTSK.Algebra.LinearAlgebra.Discriminant.Variant4a70645459a2bfbbb3417d07fec7455e974f0c20f8a4a61e2a6bc504b168cd2f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08920e96865ec921aea118f8fa1f0bb8c5c17e63",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Discriminant/Variant4a70645459a2bfbbb3417d07fec7455e974f0c20f8a4a61e2a6bc504b168cd2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variant4a70645459a2bfbbb3417d07fec7455e974f0c20f8a4a61e2a6bc504b168cd2f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variant4a70645459a2bfbbb3417d07fec7455e974f0c20f8a4a61e2a6bc504b168cd2f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08920e96865ec921aea118f8fa1f0bb8c5c17e63`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Discriminant/Variant4a70645459a2bfbbb3417d07fec7455e974f0c20f8a4a61e2a6bc504b168cd2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Discriminant/Variant4a70645459a2bfbbb3417d07fec7455e974f0c20f8a4a61e2a6bc504b168cd2f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.NumberField.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Trace` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [discr](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variant4a70645459a2bfbbb3417d07fec7455e974f0c20f8a4a61e2a6bc504b168cd2f.lean/declarations/discr--62d25e953e1db9c5e5bf61dd.md) | 77 | `declaration-track:62d25e953e1db9c5e5bf61dda0221a994082c87298878c9a5a8661b1f9bd6765` |
| 2 | `theorem` | [discr_def](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variant4a70645459a2bfbbb3417d07fec7455e974f0c20f8a4a61e2a6bc504b168cd2f.lean/declarations/discr-def--cf7dcaaf18b316ab4c79e8dc.md) | 81 | `result-track:cf7dcaaf18b316ab4c79e8dcb4fdef15739c51636fa643761ce39591f5a44d2c` |
| 3 | `theorem` | [discr_reindex](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variant4a70645459a2bfbbb3417d07fec7455e974f0c20f8a4a61e2a6bc504b168cd2f.lean/declarations/discr-reindex--98ed16c6f84fe1dcf1f5cf52.md) | 94 | `result-track:98ed16c6f84fe1dcf1f5cf5256be475a696ad93df91712bb28f2f771f0c12b75` |
| 4 | `theorem` | [discr_zero_of_not_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variant4a70645459a2bfbbb3417d07fec7455e974f0c20f8a4a61e2a6bc504b168cd2f.lean/declarations/discr-zero-of-not-linearindependent--f4069124797d921136da49c8.md) | 99 | `result-track:f4069124797d921136da49c843ca926dab45df051118fada00db95411916112a` |
| 5 | `theorem` | [discr_of_matrix_vecMul](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variant4a70645459a2bfbbb3417d07fec7455e974f0c20f8a4a61e2a6bc504b168cd2f.lean/declarations/discr-of-matrix-vecmul--81fce95256b1a4edcdb929b1.md) | 119 | `result-track:81fce95256b1a4edcdb929b1a732e42d965ac2e5f15726f07758cdd463a8b829` |
| 6 | `theorem` | [discr_of_matrix_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variant4a70645459a2bfbbb3417d07fec7455e974f0c20f8a4a61e2a6bc504b168cd2f.lean/declarations/discr-of-matrix-mulvec--d2d2f7d62172163ad00f1707.md) | 127 | `result-track:d2d2f7d62172163ad00f170715d1a30e5ed4e5d383e4a4784ebe611af1dac7e8` |
| 7 | `theorem` | [discr_not_zero_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variant4a70645459a2bfbbb3417d07fec7455e974f0c20f8a4a61e2a6bc504b168cd2f.lean/declarations/discr-not-zero-of-basis--e9248417cc60587155e7fb83.md) | 144 | `result-track:e9248417cc60587155e7fb83068459801003013e6351775c64b64a5302cac790` |
| 8 | `theorem` | [discr_isUnit_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variant4a70645459a2bfbbb3417d07fec7455e974f0c20f8a4a61e2a6bc504b168cd2f.lean/declarations/discr-isunit-of-basis--de1e29d1d01b97960ddab4cf.md) | 162 | `result-track:de1e29d1d01b97960ddab4cf78af87e44961f4d89fe0f20c6e29f580827bd16a` |
| 9 | `theorem` | [discr_eq_det_embeddingsMatrixReindex_pow_two](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variant4a70645459a2bfbbb3417d07fec7455e974f0c20f8a4a61e2a6bc504b168cd2f.lean/declarations/discr-eq-det-embeddingsmatrixreindex-pow-two--819b3174a540a3a3ab022b31.md) | 172 | `result-track:819b3174a540a3a3ab022b31759fa0872881d12abf076a20f45faa4f73ea7fc5` |
| 10 | `theorem` | [discr_powerBasis_eq_prod](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variant4a70645459a2bfbbb3417d07fec7455e974f0c20f8a4a61e2a6bc504b168cd2f.lean/declarations/discr-powerbasis-eq-prod--72542dd075aad7269a579643.md) | 179 | `result-track:72542dd075aad7269a57964355ef5f156c8f388d1cb107bb8d8198e0195c069b` |
| 11 | `theorem` | [discr_powerBasis_eq_prod'](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variant4a70645459a2bfbbb3417d07fec7455e974f0c20f8a4a61e2a6bc504b168cd2f.lean/declarations/discr-powerbasis-eq-prod--744d8fc693f2107157456e79.md) | 189 | `result-track:744d8fc693f2107157456e79c5d73a71c112c4825890578bbcc24072c075d490` |
| 12 | `theorem` | [discr_powerBasis_eq_prod''](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variant4a70645459a2bfbbb3417d07fec7455e974f0c20f8a4a61e2a6bc504b168cd2f.lean/declarations/discr-powerbasis-eq-prod--71ef2b9e8ab570bf97d138ab.md) | 200 | `result-track:71ef2b9e8ab570bf97d138ab8470cd9f29b803297fd40cc276e0d702432c402a` |
| 13 | `theorem` | [discr_powerBasis_eq_norm](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variant4a70645459a2bfbbb3417d07fec7455e974f0c20f8a4a61e2a6bc504b168cd2f.lean/declarations/discr-powerbasis-eq-norm--3543c722d85e2764afeb8d23.md) | 231 | `result-track:3543c722d85e2764afeb8d23a09247cea26d31fd53145839d4eebb5db5464a5b` |
| 14 | `theorem` | [discr_isIntegral](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variant4a70645459a2bfbbb3417d07fec7455e974f0c20f8a4a61e2a6bc504b168cd2f.lean/declarations/discr-isintegral--776b6c0e93528ea356e66678.md) | 298 | `result-track:776b6c0e93528ea356e6667802a0c6d287ecd1f98be6c519a82c99f269f14a49` |
| 15 | `theorem` | [discr_eq_discr_of_toMatrix_coeff_isIntegral](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variant4a70645459a2bfbbb3417d07fec7455e974f0c20f8a4a61e2a6bc504b168cd2f.lean/declarations/discr-eq-discr-of-tomatrix-coeff-isintegral--9da3f9336c86a3d0f54aae8e.md) | 307 | `result-track:9da3f9336c86a3d0f54aae8ee8b8a7f8a5e725edf4d8bc544f563f08b73275e6` |
| 16 | `theorem` | [discr_mul_isIntegral_mem_adjoin](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variant4a70645459a2bfbbb3417d07fec7455e974f0c20f8a4a61e2a6bc504b168cd2f.lean/declarations/discr-mul-isintegral-mem-adjoin--de5355873d5f7e31c608c20f.md) | 341 | `result-track:de5355873d5f7e31c608c20f088d2aabe3a76b84d418e709107e93ae1802f9df` |
| 17 | `theorem` | [discr_eq_discr](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variant4a70645459a2bfbbb3417d07fec7455e974f0c20f8a4a61e2a6bc504b168cd2f.lean/declarations/discr-eq-discr--d4bb403df3c989eeefa2aa89.md) | 390 | `result-track:d4bb403df3c989eeefa2aa89449732522aaff481f484afa555cf2a01b3805b0f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
