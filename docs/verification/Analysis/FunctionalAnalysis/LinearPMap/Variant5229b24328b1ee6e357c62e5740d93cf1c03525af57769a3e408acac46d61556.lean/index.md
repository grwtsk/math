# Verification target: GRWTSK.Analysis.FunctionalAnalysis.LinearPMap.Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31f7d28198a95c423d9866a99cb1ed340e2ae343",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/LinearPMap/Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31f7d28198a95c423d9866a99cb1ed340e2ae343`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/LinearPMap/Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/LinearPMap/Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Equiv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.Completeness` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsFormalAdjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean/declarations/isformaladjoint--cf10f1ae79dd8cca31bb158a.md) | 66 | `declaration-track:cf10f1ae79dd8cca31bb158ad347b82fcee8697b8688cfc8ac8467fe66bbabdf` |
| 2 | `theorem` | [IsFormalAdjoint.symm](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean/declarations/isformaladjoint-symm--beeb2e24d9eb07ecdf831378.md) | 72 | `result-track:beeb2e24d9eb07ecdf831378631363eb43471d55e0e8aaeeb78ed67261bb893c` |
| 3 | `def` | [adjointDomain](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean/declarations/adjointdomain--418172b38a9896e8ce1aeac5.md) | 82 | `declaration-track:418172b38a9896e8ce1aeac52dbad1f3a6ee475a8c715aa0398faee5823ba676` |
| 4 | `def` | [adjointDomainMkCLM](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean/declarations/adjointdomainmkclm--d0753978d23e369dd88520dd.md) | 94 | `declaration-track:d0753978d23e369dd88520dda074bf9f97d23eb2350b22ab34592c16ab94b1bf` |
| 5 | `theorem` | [adjointDomainMkCLM_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean/declarations/adjointdomainmkclm-apply--35fed20e2c5421733898772f.md) | 97 | `result-track:35fed20e2c5421733898772ff675cec3c0c6bc581803a775fc836fc515792e9e` |
| 6 | `def` | [adjointDomainMkCLMExtend](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean/declarations/adjointdomainmkclmextend--a69f5ad15234515f2eed1622.md) | 105 | `declaration-track:a69f5ad15234515f2eed1622410d17b6e3f571b8b96f468bd741d41a26f06302` |
| 7 | `theorem` | [adjointDomainMkCLMExtend_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean/declarations/adjointdomainmkclmextend-apply--ff5ffd23caece2471c7bdd47.md) | 110 | `result-track:ff5ffd23caece2471c7bdd4702516feed18563e0b2e4aed5b7b33182d8d6c450` |
| 8 | `def` | [adjointAux](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean/declarations/adjointaux--0bbf3c12db84de535a7b1e7a.md) | 120 | `declaration-track:0bbf3c12db84de535a7b1e7a6af299b552ffebf2758b70741dec8fe62caf1956` |
| 9 | `theorem` | [adjointAux_inner](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean/declarations/adjointaux-inner--b8061791c90932439593fac4.md) | 131 | `result-track:b8061791c90932439593fac432ccfc60751d678f839115b586f9ffc0cd6926c8` |
| 10 | `theorem` | [adjointAux_unique](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean/declarations/adjointaux-unique--961c89f0b5f12a3463233e44.md) | 135 | `result-track:961c89f0b5f12a3463233e44d2c00fce39c27ab9088fbd9180d2f0906b5530f5` |
| 11 | `def` | [adjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean/declarations/adjoint--6997f6252a36fd2f5d869380.md) | 143 | `declaration-track:6997f6252a36fd2f5d8693800f95057eec600439e13d651ca7572437f677bd94` |
| 12 | `theorem` | [mem_adjoint_domain_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean/declarations/mem-adjoint-domain-iff--b029554afae7a0d572fd6196.md) | 150 | `result-track:b029554afae7a0d572fd6196e3ecc5599b1bb2333ff0b4ba9d37b8bc396f180c` |
| 13 | `theorem` | [mem_adjoint_domain_of_exists](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean/declarations/mem-adjoint-domain-of-exists--89d7a8aec5138c28a58ebd44.md) | 155 | `result-track:89d7a8aec5138c28a58ebd444ef8db5c904152a9bfd3d374117b46b6c7844a6b` |
| 14 | `theorem` | [adjoint_apply_of_not_dense](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean/declarations/adjoint-apply-of-not-dense--08da5df5ac7e1b7461d5bf3f.md) | 163 | `result-track:08da5df5ac7e1b7461d5bf3fee755943fd4ae70ea1408196649dff95d04fa02f` |
| 15 | `theorem` | [adjoint_apply_of_dense](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean/declarations/adjoint-apply-of-dense--4deeb1773334ced1f0a2ab08.md) | 168 | `result-track:4deeb1773334ced1f0a2ab0893fc15398eb233b7d57c41762d8e7e029d18ca39` |
| 16 | `theorem` | [adjoint_apply_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean/declarations/adjoint-apply-eq--cc8407c7e12728f589f13f4e.md) | 174 | `result-track:cc8407c7e12728f589f13f4ecbaa0829fee7dab5186ee88f598c9149a2e09a56` |
| 17 | `theorem` | [adjoint_isFormalAdjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean/declarations/adjoint-isformaladjoint--4f36f99929c474560f39a20e.md) | 180 | `result-track:4f36f99929c474560f39a20eeccc07433104c709a73606b3f4d6a01885975b49` |
| 18 | `theorem` | [IsFormalAdjoint.le_adjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean/declarations/isformaladjoint-le-adjoint--ef21aabfe207446d44e61179.md) | 185 | `result-track:ef21aabfe207446d44e611795358a85e53eb02e8009cd959878e6aec57b6b9ee` |
| 19 | `theorem` | [toPMap_adjoint_eq_adjoint_toPMap_of_dense](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean/declarations/topmap-adjoint-eq-adjoint-topmap-of-dense--5b21570a0bfe30dc81fdbc85.md) | 202 | `result-track:5b21570a0bfe30dc81fdbc85638d9c3f66c52c2955cf83be2482aa0bfd991465` |
| 20 | `instance` | [instStar](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean/declarations/inststar--e15778ac9dfa1ef08bea1bb2.md) | 219 | `declaration-track:e15778ac9dfa1ef08bea1bb2f668c899913c36230d8dcf7ce1ffacb4bda19025` |
| 21 | `theorem` | [isSelfAdjoint_def](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean/declarations/isselfadjoint-def--e35e7ef5b7018b2f42eb752a.md) | 224 | `result-track:e35e7ef5b7018b2f42eb752a0c0869636b46ecfc7f84ca4d9794893da69d6bd4` |
| 22 | `theorem` | [_root_.IsSelfAdjoint.dense_domain](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean/declarations/root-isselfadjoint-dense-domain--65f489e390c45c2353890a08.md) | 231 | `result-track:65f489e390c45c2353890a088877f344e6db93cba87934694eeff6bf64d3299a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
