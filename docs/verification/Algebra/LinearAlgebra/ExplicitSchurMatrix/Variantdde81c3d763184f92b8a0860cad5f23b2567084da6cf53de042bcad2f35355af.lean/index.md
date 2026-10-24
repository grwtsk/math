# Verification target: GRWTSK.Algebra.LinearAlgebra.ExplicitSchurMatrix.Variantdde81c3d763184f92b8a0860cad5f23b2567084da6cf53de042bcad2f35355af

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8126cb2791037940a81508a3f7bf6ea9cfa38a6f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variantdde81c3d763184f92b8a0860cad5f23b2567084da6cf53de042bcad2f35355af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variantdde81c3d763184f92b8a0860cad5f23b2567084da6cf53de042bcad2f35355af.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variantdde81c3d763184f92b8a0860cad5f23b2567084da6cf53de042bcad2f35355af.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8126cb2791037940a81508a3f7bf6ea9cfa38a6f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variantdde81c3d763184f92b8a0860cad5f23b2567084da6cf53de042bcad2f35355af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variantdde81c3d763184f92b8a0860cad5f23b2567084da6cf53de042bcad2f35355af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.MatrixBlockSchur` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Symmetric` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [provenanceMatrix_isSymm](../../../../../mathematics/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variantdde81c3d763184f92b8a0860cad5f23b2567084da6cf53de042bcad2f35355af.lean/declarations/provenancematrix-issymm--eafd99d962f0215267df7fa4.md) | 32 | `result-track:eafd99d962f0215267df7fa4cf20b54dd6c5eff8a45788d58833bac6e8171593` |
| 2 | `theorem` | [inverseProvenanceMatrix_isSymm](../../../../../mathematics/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variantdde81c3d763184f92b8a0860cad5f23b2567084da6cf53de042bcad2f35355af.lean/declarations/inverseprovenancematrix-issymm--babcaa305c6a6c8ca4d400f4.md) | 46 | `result-track:babcaa305c6a6c8ca4d400f4c4e433b43eaf1577c2fc0e03e1819a82c17996a4` |
| 3 | `def` | [schurMatrix](../../../../../mathematics/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variantdde81c3d763184f92b8a0860cad5f23b2567084da6cf53de042bcad2f35355af.lean/declarations/schurmatrix--1c671bf2d09a8a9f92f62f79.md) | 76 | `declaration-track:1c671bf2d09a8a9f92f62f7971954c2308dede32fc04495f36aaa7b30c1fd5b4` |
| 4 | `theorem` | [schurCorrection_pairing](../../../../../mathematics/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variantdde81c3d763184f92b8a0860cad5f23b2567084da6cf53de042bcad2f35355af.lean/declarations/schurcorrection-pairing--9f14ebd1a3ca65f23e23b6c1.md) | 82 | `result-track:9f14ebd1a3ca65f23e23b6c19443bd126cf7cef17acb53ac8ce00becd669f412` |
| 5 | `theorem` | [schurForm_eq_schurMatrix](../../../../../mathematics/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variantdde81c3d763184f92b8a0860cad5f23b2567084da6cf53de042bcad2f35355af.lean/declarations/schurform-eq-schurmatrix--0f94efa386780f33714683aa.md) | 104 | `result-track:0f94efa386780f33714683aaf387d7ec5a54bdcccb1369aa950136759972c6cf` |
| 6 | `theorem` | [schurMatrix_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variantdde81c3d763184f92b8a0860cad5f23b2567084da6cf53de042bcad2f35355af.lean/declarations/schurmatrix-nonnegative--c45085db674078baee2960c7.md) | 113 | `result-track:c45085db674078baee2960c7f1ba1d9ab7b20a548d188a0e1f265e8361976cf9` |
| 7 | `theorem` | [autonomous_energy_eq_explained_add_schurMatrix](../../../../../mathematics/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variantdde81c3d763184f92b8a0860cad5f23b2567084da6cf53de042bcad2f35355af.lean/declarations/autonomous-energy-eq-explained-add-schurmatrix--aa04f7d0da02fe7f9e3d11bd.md) | 121 | `result-track:aa04f7d0da02fe7f9e3d11bd16fa73ccdcd7f658c7dc4dca707917ae40778626` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
