# Verification target: GRWTSK.NumberTheory.Regulator.Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70c6391ac0da8bdcabc91c771b099a3480ae7e68",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70c6391ac0da8bdcabc91c771b099a3480ae7e68`.

Source path: `GRWTSK/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.ZLattice.Covolume` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Misc` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.Units.DirichletTheorem` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [equivFinRank](../../../../mathematics/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean/declarations/equivfinrank--44952adbda1c3fd65de89f81.md) | 47 | `declaration-track:44952adbda1c3fd65de89f81fcab61899551ff8a4b9a55fdf734cf66be9b8afa` |
| 2 | `abbrev` | [IsMaxRank](../../../../mathematics/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean/declarations/ismaxrank--4fc524f4b8b02c0a9b511c50.md) | 61 | `declaration-track:4fc524f4b8b02c0a9b511c50e1ccb311d37bc6ac402aca6f61b98ecc853d06b7` |
| 3 | `def` | [basisOfIsMaxRank](../../../../mathematics/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean/declarations/basisofismaxrank--cfc712787aec11bccbfdbd6d.md) | 68 | `declaration-track:cfc712787aec11bccbfdbd6de59695f5bd623a173ec792408b75ecb407d51281` |
| 4 | `theorem` | [basisOfIsMaxRank_apply](../../../../mathematics/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean/declarations/basisofismaxrank-apply--b4f0147faf86c6c466140d0a.md) | 73 | `result-track:b4f0147faf86c6c466140d0a1ba1922ec46fb99ad1b59295608dc01987054be1` |
| 5 | `def` | [regOfFamily](../../../../mathematics/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean/declarations/regoffamily--73cdb064e6607c6abf95b0f7.md) | 82 | `declaration-track:73cdb064e6607c6abf95b0f7ef73c2ca30f71e767b13960faaefb76100ef5c71` |
| 6 | `theorem` | [regOfFamily_eq_zero](../../../../mathematics/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean/declarations/regoffamily-eq-zero--c84562bb34079ed9fc751112.md) | 87 | `result-track:c84562bb34079ed9fc751112147d987b0d7328009c3e0383cd02e29bd3ac7222` |
| 7 | `theorem` | [regOfFamily_of_isMaxRank](../../../../mathematics/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean/declarations/regoffamily-of-ismaxrank--8dc2f951d60a8ed6b0dfc818.md) | 92 | `result-track:8dc2f951d60a8ed6b0dfc8188dae7f51cd9c1ce71a8559fb82aed496646eb850` |
| 8 | `theorem` | [regOfFamily_pos](../../../../mathematics/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean/declarations/regoffamily-pos--a88c651ec1b3597d6b53add1.md) | 96 | `result-track:a88c651ec1b3597d6b53add1a34799cf373f32bce06af20316559e0ab236bf39` |
| 9 | `theorem` | [regOfFamily_ne_zero](../../../../mathematics/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean/declarations/regoffamily-ne-zero--c624fd8b98aa2eddd4c29172.md) | 102 | `result-track:c624fd8b98aa2eddd4c29172f85bd4f3b3ef1eccae8a27aa518a0e701a5582b7` |
| 10 | `theorem` | [regOfFamily_ne_zero_iff](../../../../mathematics/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean/declarations/regoffamily-ne-zero-iff--b99aa02d1be6f8085dce6a18.md) | 105 | `result-track:b99aa02d1be6f8085dce6a188a7a303c4b7c5d3deee8f797ec796db938387743` |
| 11 | `theorem` | [regOfFamily_eq_det'](../../../../mathematics/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean/declarations/regoffamily-eq-det--8b165133b6bed8e20f420948.md) | 110 | `result-track:8b165133b6bed8e20f4209486b812889e1ff265231d6543fbccbb447b67f3dc6` |
| 12 | `theorem` | [abs_det_eq_abs_det](../../../../mathematics/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean/declarations/abs-det-eq-abs-det--c6a7a7cf30139c108d24efba.md) | 127 | `result-track:c6a7a7cf30139c108d24efba4226379c42e9383a23bf9edf6c223d9dfade172c` |
| 13 | `theorem` | [regOfFamily_eq_det](../../../../mathematics/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean/declarations/regoffamily-eq-det--0127feede27f435fa32b1da5.md) | 164 | `result-track:0127feede27f435fa32b1da5e7e58b55a38dc3495e44182d3a8a11faf6c376e0` |
| 14 | `theorem` | [finrank_mul_regOfFamily_eq_det](../../../../mathematics/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean/declarations/finrank-mul-regoffamily-eq-det--2a4731988ed92e3beaca834d.md) | 176 | `result-track:2a4731988ed92e3beaca834d87af10cb4f890b8c7ae6820fe01c395ae3ef7319` |
| 15 | `def` | [regulator](../../../../mathematics/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean/declarations/regulator--3fa2926944510da6711546e2.md) | 204 | `declaration-track:3fa2926944510da6711546e2fe9e8f9feed5b2d684a8ed2fb1ddab509a4de69b` |
| 16 | `theorem` | [isMaxRank_fundSystem](../../../../mathematics/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean/declarations/ismaxrank-fundsystem--e9df00b652b41bb83a4f5483.md) | 206 | `result-track:e9df00b652b41bb83a4f548391014ae00558ce67d683546d318271b4ea4e6126` |
| 17 | `theorem` | [basisOfIsMaxRank_fundSystem](../../../../mathematics/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean/declarations/basisofismaxrank-fundsystem--f7fb685cbd8a4831ca2fc1ca.md) | 213 | `result-track:f7fb685cbd8a4831ca2fc1ca40331323e9fadcad94a7d36c2edc5e2b4b857c56` |
| 18 | `theorem` | [regulator_eq_regOfFamily_fundSystem](../../../../mathematics/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean/declarations/regulator-eq-regoffamily-fundsystem--f24449809d91d974c0208124.md) | 218 | `result-track:f24449809d91d974c0208124a6cbbdaee9e740974bb523ff02823e9cd594a853` |
| 19 | `theorem` | [regulator_pos](../../../../mathematics/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean/declarations/regulator-pos--574b0601b5387ade1218e4fd.md) | 224 | `result-track:574b0601b5387ade1218e4fd0d245b6e0dd90296bdb1cd9f9f2dac5fb9c2dbb0` |
| 20 | `theorem` | [regulator_ne_zero](../../../../mathematics/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean/declarations/regulator-ne-zero--1e35c54342ecb495f81c27b5.md) | 227 | `result-track:1e35c54342ecb495f81c27b5363f04d535a9646a3af3da477e7ee4399942ccc1` |
| 21 | `theorem` | [regulator_eq_det'](../../../../mathematics/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean/declarations/regulator-eq-det--c1738c3670fb366c955c3916.md) | 231 | `result-track:c1738c3670fb366c955c39162ec7a7369ca55a749119de5abb0a880023df0ff7` |
| 22 | `theorem` | [regulator_eq_det](../../../../mathematics/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean/declarations/regulator-eq-det--ff63e783cb836118ae97c082.md) | 241 | `result-track:ff63e783cb836118ae97c082ddd2a4d53f84e0881687a1454e95be934a4bc38d` |
| 23 | `theorem` | [finrank_mul_regulator_eq_det](../../../../mathematics/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean/declarations/finrank-mul-regulator-eq-det--66985d7e194de4a7ad4c855c.md) | 252 | `result-track:66985d7e194de4a7ad4c855c6c28ab8d8f7b29fff5121e1653bc373c12f21e60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
