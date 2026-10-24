# Verification target: GRWTSK.Algebra.LinearAlgebra.InvertibleBlockSchur.Variant08fb77a2c355d72d30dbe44eaac9d713c807a63143291ce4999c1319bdec502c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d678bbada417d305a83d20390b5589757dd01ee6",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant08fb77a2c355d72d30dbe44eaac9d713c807a63143291ce4999c1319bdec502c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant08fb77a2c355d72d30dbe44eaac9d713c807a63143291ce4999c1319bdec502c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant08fb77a2c355d72d30dbe44eaac9d713c807a63143291ce4999c1319bdec502c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d678bbada417d305a83d20390b5589757dd01ee6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant08fb77a2c355d72d30dbe44eaac9d713c807a63143291ce4999c1319bdec502c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant08fb77a2c355d72d30dbe44eaac9d713c807a63143291ce4999c1319bdec502c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.BlockSchur` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [provenanceCrossMap](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant08fb77a2c355d72d30dbe44eaac9d713c807a63143291ce4999c1319bdec502c.lean/declarations/provenancecrossmap--0c1dbc9e80b65f74d1578fce.md) | 36 | `declaration-track:0c1dbc9e80b65f74d1578fceab22d806ca2eff38394e89391a914143f38a27ec` |
| 2 | `theorem` | [provenanceCrossMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant08fb77a2c355d72d30dbe44eaac9d713c807a63143291ce4999c1319bdec502c.lean/declarations/provenancecrossmap-apply--9d77641c9a7007321d9694b1.md) | 63 | `result-track:9d77641c9a7007321d9694b17113e2a4672cca550ce9ce9e64da4052647b6542` |
| 3 | `structure` | [InvertibleProvenanceBlock](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant08fb77a2c355d72d30dbe44eaac9d713c807a63143291ce4999c1319bdec502c.lean/declarations/invertibleprovenanceblock--2016d00c7d41ce0c62760c3a.md) | 70 | `declaration-track:2016d00c7d41ce0c62760c3a03906e6a806e53c24e3fca77f564f4599c2c50e2` |
| 4 | `def` | [solve](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant08fb77a2c355d72d30dbe44eaac9d713c807a63143291ce4999c1319bdec502c.lean/declarations/solve--2b4c440a3d05025abb86ae0a.md) | 83 | `declaration-track:2b4c440a3d05025abb86ae0aca7a989e5129568d5082ed7d718b2c9ecd039700` |
| 5 | `theorem` | [gramEquiv_solve](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant08fb77a2c355d72d30dbe44eaac9d713c807a63143291ce4999c1319bdec502c.lean/declarations/gramequiv-solve--e07166507070efe853efefdb.md) | 87 | `result-track:e07166507070efe853efefdb9b1af4cc5edcfd1c33f4a26b98a9937ff6899fa0` |
| 6 | `theorem` | [provenance_form_solve](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant08fb77a2c355d72d30dbe44eaac9d713c807a63143291ce4999c1319bdec502c.lean/declarations/provenance-form-solve--4b139b0553862debba513b90.md) | 93 | `result-track:4b139b0553862debba513b902d5e531da36cb304b1f129656d3378a8e9245df3` |
| 7 | `theorem` | [form_sub_right](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant08fb77a2c355d72d30dbe44eaac9d713c807a63143291ce4999c1319bdec502c.lean/declarations/form-sub-right--2be6051e2c913099840aa3f1.md) | 105 | `result-track:2be6051e2c913099840aa3f1e9fd6d75055c14e0838873b33aa8e4dcbaba2452` |
| 8 | `def` | [blockSchurSolver](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant08fb77a2c355d72d30dbe44eaac9d713c807a63143291ce4999c1319bdec502c.lean/declarations/blockschursolver--be9f885ee1336b64f3fc66c7.md) | 116 | `declaration-track:be9f885ee1336b64f3fc66c7d9b79595a0f31d2636d68d74aa4f662429b6d44c` |
| 9 | `theorem` | [blockSchurSolver_solve](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant08fb77a2c355d72d30dbe44eaac9d713c807a63143291ce4999c1319bdec502c.lean/declarations/blockschursolver-solve--5682b522ba4d692ef83d6e32.md) | 126 | `result-track:5682b522ba4d692ef83d6e3255e56fb7794d6af5f6b2500e7c321b4bbd0eae42` |
| 10 | `theorem` | [schur_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant08fb77a2c355d72d30dbe44eaac9d713c807a63143291ce4999c1319bdec502c.lean/declarations/schur-nonnegative--2cd452be4dbcc141714aa950.md) | 132 | `result-track:2cd452be4dbcc141714aa9503739424ce7407989620604c7e7261521d46ec150` |
| 11 | `theorem` | [schur_eq_sub](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant08fb77a2c355d72d30dbe44eaac9d713c807a63143291ce4999c1319bdec502c.lean/declarations/schur-eq-sub--a6d38a9dbaff7a5a634788c6.md) | 138 | `result-track:a6d38a9dbaff7a5a634788c6fd001e7be7a3d3e5d3e261206920a47ebe4c47fb` |
| 12 | `theorem` | [schur_diagonal_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant08fb77a2c355d72d30dbe44eaac9d713c807a63143291ce4999c1319bdec502c.lean/declarations/schur-diagonal-nonnegative--6a4dbd6540810aeae4cc0474.md) | 146 | `result-track:6a4dbd6540810aeae4cc0474ac754890c7d2f9d3295e248f928ef11f74b0a90a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
