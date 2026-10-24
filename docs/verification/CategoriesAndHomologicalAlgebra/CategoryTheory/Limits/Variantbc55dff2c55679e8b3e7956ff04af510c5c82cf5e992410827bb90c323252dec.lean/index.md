# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variantbc55dff2c55679e8b3e7956ff04af510c5c82cf5e992410827bb90c323252dec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6362cb5a0557455371f8526f55bfa747e24d3200",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbc55dff2c55679e8b3e7956ff04af510c5c82cf5e992410827bb90c323252dec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbc55dff2c55679e8b3e7956ff04af510c5c82cf5e992410827bb90c323252dec.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbc55dff2c55679e8b3e7956ff04af510c5c82cf5e992410827bb90c323252dec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6362cb5a0557455371f8526f55bfa747e24d3200`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbc55dff2c55679e8b3e7956ff04af510c5c82cf5e992410827bb90c323252dec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbc55dff2c55679e8b3e7956ff04af510c5c82cf5e992410827bb90c323252dec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Functorial` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.FunctorCategory` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.HasLimits` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [limitFunctorial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbc55dff2c55679e8b3e7956ff04af510c5c82cf5e992410827bb90c323252dec.lean/declarations/limitfunctorial--921ae26cd268229f4d6ac581.md) | 45 | `declaration-track:921ae26cd268229f4d6ac58102599a54bfbc87657fdfe560f4355447fe117375` |
| 2 | `theorem` | [limitFunctorial_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbc55dff2c55679e8b3e7956ff04af510c5c82cf5e992410827bb90c323252dec.lean/declarations/limitfunctorial-map--54947820ab7b856abd93e331.md) | 50 | `result-track:54947820ab7b856abd93e331ff9afdf46e67eed073fe2a1b0d5d2d9143ed514f` |
| 3 | `instance` | [limitLaxMonoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbc55dff2c55679e8b3e7956ff04af510c5c82cf5e992410827bb90c323252dec.lean/declarations/limitlaxmonoidal--c566c1ff9548a004e651c437.md) | 58 | `declaration-track:c566c1ff9548a004e651c437a87bc347592435ac84866989c28ce1023ec5facf` |
| 4 | `def` | [limLax](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbc55dff2c55679e8b3e7956ff04af510c5c82cf5e992410827bb90c323252dec.lean/declarations/limlax--d2bc36dd2f1d2b279e060402.md) | 113 | `declaration-track:d2bc36dd2f1d2b279e060402ee9c2a4340e6f20987f4ee079903bc0b9c878bcd` |
| 5 | `theorem` | [limLax_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbc55dff2c55679e8b3e7956ff04af510c5c82cf5e992410827bb90c323252dec.lean/declarations/limlax-obj--3e3e80147826d92f84edf898.md) | 118 | `result-track:3e3e80147826d92f84edf898749bcb90be544d2fec74d7808f44dd3588b43c5c` |
| 6 | `theorem` | [limLax_obj'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbc55dff2c55679e8b3e7956ff04af510c5c82cf5e992410827bb90c323252dec.lean/declarations/limlax-obj--ba6b606b5e43c9cf570a74d0.md) | 122 | `result-track:ba6b606b5e43c9cf570a74d06973672403af89125bba2c15ee9f2b49e528905b` |
| 7 | `theorem` | [limLax_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbc55dff2c55679e8b3e7956ff04af510c5c82cf5e992410827bb90c323252dec.lean/declarations/limlax-map--04f637e889af1d9abc36bfda.md) | 127 | `result-track:04f637e889af1d9abc36bfda8b3db3145b722d5035065a9227bb7874acaa9409` |
| 8 | `theorem` | [limLax_ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbc55dff2c55679e8b3e7956ff04af510c5c82cf5e992410827bb90c323252dec.lean/declarations/limlax--08fc6f2f90d62255b367192c.md) | 132 | `result-track:08fc6f2f90d62255b367192c2345282e1a2065a7fe7bd0f77e47c70121a8a7df` |
| 9 | `theorem` | [limLax_μ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbc55dff2c55679e8b3e7956ff04af510c5c82cf5e992410827bb90c323252dec.lean/declarations/limlax--179ddad25452f755da59c673.md) | 141 | `result-track:179ddad25452f755da59c6731ee03df46d2534cc6c50822bbb1fae1312852e9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
