# Verification target: GRWTSK.Algebra.LinearAlgebra.GeneralizedInverseSchur.Variant94c89eb79b3b8d897cca53554957e9c50efa56ba44f508e25aa5098c19aac8cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62d4b1cb88c51ddb41d842411d43ac6484cbefba",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant94c89eb79b3b8d897cca53554957e9c50efa56ba44f508e25aa5098c19aac8cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant94c89eb79b3b8d897cca53554957e9c50efa56ba44f508e25aa5098c19aac8cc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant94c89eb79b3b8d897cca53554957e9c50efa56ba44f508e25aa5098c19aac8cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62d4b1cb88c51ddb41d842411d43ac6484cbefba`.

Source path: `GRWTSK/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant94c89eb79b3b8d897cca53554957e9c50efa56ba44f508e25aa5098c19aac8cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant94c89eb79b3b8d897cca53554957e9c50efa56ba44f508e25aa5098c19aac8cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.ExplicitSchurMatrix` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GeneralizedInverseBlockRealization](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant94c89eb79b3b8d897cca53554957e9c50efa56ba44f508e25aa5098c19aac8cc.lean/declarations/generalizedinverseblockrealization--e1e14fe82545a4d47352d31a.md) | 46 | `declaration-track:e1e14fe82545a4d47352d31a252e2165541babc69d463b6e19976cd310497469` |
| 2 | `def` | [solve](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant94c89eb79b3b8d897cca53554957e9c50efa56ba44f508e25aa5098c19aac8cc.lean/declarations/solve--a362df9867790f695988544f.md) | 72 | `declaration-track:a362df9867790f695988544fd16d8b6d8c86cdc6e5df1f13a35ea7cd81603660` |
| 3 | `theorem` | [solve_apply](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant94c89eb79b3b8d897cca53554957e9c50efa56ba44f508e25aa5098c19aac8cc.lean/declarations/solve-apply--0e3d7a8ef5eeb8de2fddad9c.md) | 77 | `result-track:0e3d7a8ef5eeb8de2fddad9c8bdbb3340da0a5e9d66ac44fb5673ec3096eda16` |
| 4 | `theorem` | [provenance_mulVec_solve](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant94c89eb79b3b8d897cca53554957e9c50efa56ba44f508e25aa5098c19aac8cc.lean/declarations/provenance-mulvec-solve--8fb63645636effafdc092bf6.md) | 82 | `result-track:8fb63645636effafdc092bf678cc4dfec9e3178d7c596bc1061266babb01f9a6` |
| 5 | `theorem` | [form_sub_right](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant94c89eb79b3b8d897cca53554957e9c50efa56ba44f508e25aa5098c19aac8cc.lean/declarations/form-sub-right--a5a88c83c038ea62662cd97d.md) | 87 | `result-track:a5a88c83c038ea62662cd97dd56562295803fe629d7c3b8fcafba758e224af91` |
| 6 | `def` | [blockSchurSolver](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant94c89eb79b3b8d897cca53554957e9c50efa56ba44f508e25aa5098c19aac8cc.lean/declarations/blockschursolver--ab315d8e8c6de1dc4b2e184b.md) | 99 | `declaration-track:ab315d8e8c6de1dc4b2e184b3c25d1b1e1ccf49c3c56ca3869c0323c5e91a28e` |
| 7 | `theorem` | [blockSchurSolver_solve](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant94c89eb79b3b8d897cca53554957e9c50efa56ba44f508e25aa5098c19aac8cc.lean/declarations/blockschursolver-solve--94c2a92709aa4a2b5517c7a0.md) | 110 | `result-track:94c2a92709aa4a2b5517c7a065c26c0ee607dafc06056ac56581425c7289bcee` |
| 8 | `def` | [generalizedSchurMatrix](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant94c89eb79b3b8d897cca53554957e9c50efa56ba44f508e25aa5098c19aac8cc.lean/declarations/generalizedschurmatrix--3647c8808bf2d3a46424618c.md) | 115 | `declaration-track:3647c8808bf2d3a46424618c13122cf8d78870fb10b880bdd50489249c6393c4` |
| 9 | `theorem` | [generalizedSchurCorrection_pairing](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant94c89eb79b3b8d897cca53554957e9c50efa56ba44f508e25aa5098c19aac8cc.lean/declarations/generalizedschurcorrection-pairing--d627690ed9f79de9ea2eba47.md) | 122 | `result-track:d627690ed9f79de9ea2eba47bbb69e22ab1d1ebb9c8325000b94b3ff34fa2b76` |
| 10 | `theorem` | [schurForm_eq_generalizedSchurMatrix](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant94c89eb79b3b8d897cca53554957e9c50efa56ba44f508e25aa5098c19aac8cc.lean/declarations/schurform-eq-generalizedschurmatrix--cb3076af62b5d8ce4edfb31b.md) | 136 | `result-track:cb3076af62b5d8ce4edfb31b7f68840c72783780da3c17b5f207149783f69f79` |
| 11 | `theorem` | [generalizedSchurMatrix_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant94c89eb79b3b8d897cca53554957e9c50efa56ba44f508e25aa5098c19aac8cc.lean/declarations/generalizedschurmatrix-nonnegative--68ef543d3792f1637653ae34.md) | 147 | `result-track:68ef543d3792f1637653ae34f8f62267f717189a882622d9394d0ac59c801475` |
| 12 | `theorem` | [autonomous_energy_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant94c89eb79b3b8d897cca53554957e9c50efa56ba44f508e25aa5098c19aac8cc.lean/declarations/autonomous-energy-decomposition--50d7e58aeaceea21345bc0e1.md) | 155 | `result-track:50d7e58aeaceea21345bc0e14b2935b5bdc67c243087e20f990eb759bea38fb3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
