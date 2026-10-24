# Verification target: GRWTSK.Algebra.LinearAlgebra.FeshbachInertia.Variant0bbce98bbb444017e6390b67f8bd6c8ecbd6bd98b64323023c0231217a887580

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "504ed46b806871efac71ec62c9c0001a809ad247",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FeshbachInertia/Variant0bbce98bbb444017e6390b67f8bd6c8ecbd6bd98b64323023c0231217a887580.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachInertia/Variant0bbce98bbb444017e6390b67f8bd6c8ecbd6bd98b64323023c0231217a887580.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachInertia/Variant0bbce98bbb444017e6390b67f8bd6c8ecbd6bd98b64323023c0231217a887580.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `504ed46b806871efac71ec62c9c0001a809ad247`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FeshbachInertia/Variant0bbce98bbb444017e6390b67f8bd6c8ecbd6bd98b64323023c0231217a887580.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FeshbachInertia/Variant0bbce98bbb444017e6390b67f8bd6c8ecbd6bd98b64323023c0231217a887580.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FeshbachHermitian` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.Prod` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.Signature` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [assemble](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachInertia/Variant0bbce98bbb444017e6390b67f8bd6c8ecbd6bd98b64323023c0231217a887580.lean/declarations/assemble--fd9508e5f7aff15bb7eb6ae1.md) | 28 | `declaration-track:fd9508e5f7aff15bb7eb6ae13518cf6f1d7a22e74fbbdb6a0010db1057f2d15e` |
| 2 | `def` | [fullForm](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachInertia/Variant0bbce98bbb444017e6390b67f8bd6c8ecbd6bd98b64323023c0231217a887580.lean/declarations/fullform--1eadcdac964bbe26d657bbef.md) | 32 | `declaration-track:1eadcdac964bbe26d657bbef05de4f342aec41de737579305f598b5866622895` |
| 3 | `def` | [reducedForm](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachInertia/Variant0bbce98bbb444017e6390b67f8bd6c8ecbd6bd98b64323023c0231217a887580.lean/declarations/reducedform--f9ccb98151b3b8ac940ea927.md) | 37 | `declaration-track:f9ccb98151b3b8ac940ea927fe7537b7a29ce8d948d7987fac4f57f296068a5d` |
| 4 | `theorem` | [fullForm_apply](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachInertia/Variant0bbce98bbb444017e6390b67f8bd6c8ecbd6bd98b64323023c0231217a887580.lean/declarations/fullform-apply--bd3d9c496457497d00908592.md) | 42 | `result-track:bd3d9c496457497d00908592056bee1d402d67ab647e89ba1ed66a2c8f5f4998` |
| 5 | `theorem` | [reducedForm_apply](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachInertia/Variant0bbce98bbb444017e6390b67f8bd6c8ecbd6bd98b64323023c0231217a887580.lean/declarations/reducedform-apply--910aa265a67e79e0a1d24e21.md) | 51 | `result-track:910aa265a67e79e0a1d24e2164bffe8b5fc4d7d411391b92ae0cf2f8c70b3543` |
| 6 | `def` | [shear](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachInertia/Variant0bbce98bbb444017e6390b67f8bd6c8ecbd6bd98b64323023c0231217a887580.lean/declarations/shear--8376c721ebe6133aa531de42.md) | 60 | `declaration-track:8376c721ebe6133aa531de426d937056fee562b6e37272b9c35133d6bea77a82` |
| 7 | `theorem` | [shear_apply](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachInertia/Variant0bbce98bbb444017e6390b67f8bd6c8ecbd6bd98b64323023c0231217a887580.lean/declarations/shear-apply--98b6217d27266a3902ee9019.md) | 72 | `result-track:98b6217d27266a3902ee9019a54ae4ecf8ee7a248b9333fd48374108b86788c5` |
| 8 | `def` | [formEquiv](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachInertia/Variant0bbce98bbb444017e6390b67f8bd6c8ecbd6bd98b64323023c0231217a887580.lean/declarations/formequiv--0a66346f2c16162805777c59.md) | 78 | `declaration-track:0a66346f2c16162805777c5932cb7a7f20d9fd63997b321f00c73b04ee25edd7` |
| 9 | `theorem` | [sigPos_eq](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachInertia/Variant0bbce98bbb444017e6390b67f8bd6c8ecbd6bd98b64323023c0231217a887580.lean/declarations/sigpos-eq--80407ce84d4c78a5c54ba9ed.md) | 89 | `result-track:80407ce84d4c78a5c54ba9ed3fed0e320f25f5851a280bc1303548cbba2c82d2` |
| 10 | `theorem` | [sigNeg_eq](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachInertia/Variant0bbce98bbb444017e6390b67f8bd6c8ecbd6bd98b64323023c0231217a887580.lean/declarations/signeg-eq--8e1d31290331a986acb14a79.md) | 95 | `result-track:8e1d31290331a986acb14a79756edb5962b48f531d9e90d4ebd81f38bf7ea9bc` |
| 11 | `theorem` | [radical_finrank_eq](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachInertia/Variant0bbce98bbb444017e6390b67f8bd6c8ecbd6bd98b64323023c0231217a887580.lean/declarations/radical-finrank-eq--86bbec1f79e7e057c02a3bf7.md) | 101 | `result-track:86bbec1f79e7e057c02a3bf7607d9fe879f7301e4a86ef8f757a83fd420cb182` |
| 12 | `theorem` | [inertia_eq](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachInertia/Variant0bbce98bbb444017e6390b67f8bd6c8ecbd6bd98b64323023c0231217a887580.lean/declarations/inertia-eq--2d834337b24a01c5ec2bd1ea.md) | 109 | `result-track:2d834337b24a01c5ec2bd1ea9c559c50b2560a413036c13afee6408d520f7777` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
