# Verification target: GRWTSK.Algebra.LinearAlgebra.ProvenanceProjection.Variant72c15bad217098dd053139c6dd0953e348b485405970a922816f765a3dc5b8bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1d7b93d1f9e0c6dcf7c648dbb8e345e331cab8d",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ProvenanceProjection/Variant72c15bad217098dd053139c6dd0953e348b485405970a922816f765a3dc5b8bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant72c15bad217098dd053139c6dd0953e348b485405970a922816f765a3dc5b8bf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant72c15bad217098dd053139c6dd0953e348b485405970a922816f765a3dc5b8bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1d7b93d1f9e0c6dcf7c648dbb8e345e331cab8d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ProvenanceProjection/Variant72c15bad217098dd053139c6dd0953e348b485405970a922816f765a3dc5b8bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ProvenanceProjection/Variant72c15bad217098dd053139c6dd0953e348b485405970a922816f765a3dc5b8bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.PositiveGeometry` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProvenanceProjector](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant72c15bad217098dd053139c6dd0953e348b485405970a922816f765a3dc5b8bf.lean/declarations/provenanceprojector--dc0d95dffba7f02c6deff1b9.md) | 34 | `declaration-track:dc0d95dffba7f02c6deff1b950275d0bbc03c48fb302f1c222d79ddcde90c15d` |
| 2 | `def` | [residualMap](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant72c15bad217098dd053139c6dd0953e348b485405970a922816f765a3dc5b8bf.lean/declarations/residualmap--9674b718206cb75b5d8c68d3.md) | 44 | `declaration-track:9674b718206cb75b5d8c68d35a4fcb1ff78675a5fab6b82e759b092f6799eabc` |
| 3 | `theorem` | [residualMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant72c15bad217098dd053139c6dd0953e348b485405970a922816f765a3dc5b8bf.lean/declarations/residualmap-apply--f23473fcb3f93987643ab548.md) | 48 | `result-track:f23473fcb3f93987643ab548c83e560e53883700e9c488a288197ccb1f024a3d` |
| 4 | `theorem` | [project_add_residual](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant72c15bad217098dd053139c6dd0953e348b485405970a922816f765a3dc5b8bf.lean/declarations/project-add-residual--6038fe9b2b526b5cce5eb08e.md) | 53 | `result-track:6038fe9b2b526b5cce5eb08e864d6cfec2037e7310b79a07641631e32b75ab2e` |
| 5 | `theorem` | [project_residual_zero](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant72c15bad217098dd053139c6dd0953e348b485405970a922816f765a3dc5b8bf.lean/declarations/project-residual-zero--e7549c7a23ff1b99755bcb93.md) | 58 | `result-track:e7549c7a23ff1b99755bcb9365a7c0594b52879f92f1d3174972d11d8c603f1d` |
| 6 | `theorem` | [residual_project_zero](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant72c15bad217098dd053139c6dd0953e348b485405970a922816f765a3dc5b8bf.lean/declarations/residual-project-zero--9d0a1d1cf7e664d229e86916.md) | 63 | `result-track:9d0a1d1cf7e664d229e8691632d0b1956dd4da2472f6fdde9569adbb7c8ec6d4` |
| 7 | `theorem` | [project_orthogonal_residual](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant72c15bad217098dd053139c6dd0953e348b485405970a922816f765a3dc5b8bf.lean/declarations/project-orthogonal-residual--8aebd224d40305d749b29634.md) | 68 | `result-track:8aebd224d40305d749b296340a24c62f7e1c1742550df51c14f7c157fc21a0fe` |
| 8 | `theorem` | [residual_orthogonal_project](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant72c15bad217098dd053139c6dd0953e348b485405970a922816f765a3dc5b8bf.lean/declarations/residual-orthogonal-project--750ddd5241d5a836ff252ef3.md) | 74 | `result-track:750ddd5241d5a836ff252ef31c60174653d1653715357befbbb0b312cf124871` |
| 9 | `theorem` | [form_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant72c15bad217098dd053139c6dd0953e348b485405970a922816f765a3dc5b8bf.lean/declarations/form-decomposition--5e2190d2edd5274eabe8dcb8.md) | 81 | `result-track:5e2190d2edd5274eabe8dcb8ff9a83806c9e526de388b1504d6fb72b3eaf1315` |
| 10 | `theorem` | [residual_eq_sub_projected](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant72c15bad217098dd053139c6dd0953e348b485405970a922816f765a3dc5b8bf.lean/declarations/residual-eq-sub-projected--bbce12dc1253160597e96a95.md) | 93 | `result-track:bbce12dc1253160597e96a95a0ba4599579e44e8ae7ddf013cdeb9594f5cdffb` |
| 11 | `def` | [projectedForm](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant72c15bad217098dd053139c6dd0953e348b485405970a922816f765a3dc5b8bf.lean/declarations/projectedform--aeb1bbf6259fe8358ada4dc9.md) | 99 | `declaration-track:aeb1bbf6259fe8358ada4dc9c585b613de8fdf8502bc42937aaa0cad259b01dd` |
| 12 | `def` | [residualForm](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant72c15bad217098dd053139c6dd0953e348b485405970a922816f765a3dc5b8bf.lean/declarations/residualform--76a65135dcc830f8fc4896ad.md) | 104 | `declaration-track:76a65135dcc830f8fc4896adf339d71d163c94c2c641634eacbc25f3893153e1` |
| 13 | `theorem` | [residualForm_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant72c15bad217098dd053139c6dd0953e348b485405970a922816f765a3dc5b8bf.lean/declarations/residualform-nonnegative--7214b7fb9697b413ddbc1b89.md) | 108 | `result-track:7214b7fb9697b413ddbc1b89d0a14ed0c1fd90090e8b7d5f3b6b9b67e42a1fda` |
| 14 | `theorem` | [projectedForm_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant72c15bad217098dd053139c6dd0953e348b485405970a922816f765a3dc5b8bf.lean/declarations/projectedform-nonnegative--1a37231c4a6b917303231c40.md) | 113 | `result-track:1a37231c4a6b917303231c40de102549eff122406f3382ebeec81929aadae3cc` |
| 15 | `theorem` | [quadratic_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant72c15bad217098dd053139c6dd0953e348b485405970a922816f765a3dc5b8bf.lean/declarations/quadratic-decomposition--5754ba8176b73eee86db541a.md) | 119 | `result-track:5754ba8176b73eee86db541a24634fca84fa71677d4905b23c9d8b59a6076615` |
| 16 | `def` | [asResidualization](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant72c15bad217098dd053139c6dd0953e348b485405970a922816f765a3dc5b8bf.lean/declarations/asresidualization--7b505b401f9b933f19fe407e.md) | 125 | `declaration-track:7b505b401f9b933f19fe407eba165662a97357ed4e7ad8421e6cfa5a0366b0a9` |
| 17 | `theorem` | [asResidualization_residualForm](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant72c15bad217098dd053139c6dd0953e348b485405970a922816f765a3dc5b8bf.lean/declarations/asresidualization-residualform--cad7ce0aa784ad6798435925.md) | 129 | `result-track:cad7ce0aa784ad6798435925993b46cd0c6b3e6ee45b2cdd0e23c91e70225805` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
