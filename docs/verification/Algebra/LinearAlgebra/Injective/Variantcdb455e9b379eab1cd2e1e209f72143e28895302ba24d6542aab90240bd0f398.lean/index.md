# Verification target: GRWTSK.Algebra.LinearAlgebra.Injective.Variantcdb455e9b379eab1cd2e1e209f72143e28895302ba24d6542aab90240bd0f398

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0e3547845f395368fcce89167aaedf126b83377",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Injective/Variantcdb455e9b379eab1cd2e1e209f72143e28895302ba24d6542aab90240bd0f398.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantcdb455e9b379eab1cd2e1e209f72143e28895302ba24d6542aab90240bd0f398.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantcdb455e9b379eab1cd2e1e209f72143e28895302ba24d6542aab90240bd0f398.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0e3547845f395368fcce89167aaedf126b83377`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Injective/Variantcdb455e9b379eab1cd2e1e209f72143e28895302ba24d6542aab90240bd0f398.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Injective/Variantcdb455e9b379eab1cd2e1e209f72143e28895302ba24d6542aab90240bd0f398.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Injective` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Injective.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.EpiMono` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [injective_object_of_injective_module](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantcdb455e9b379eab1cd2e1e209f72143e28895302ba24d6542aab90240bd0f398.lean/declarations/injective-object-of-injective-module--7bc0ef243a1c6972e31b53e7.md) | 20 | `result-track:7bc0ef243a1c6972e31b53e768def1b5658ff806a0c12c0b8c82f76b7378695e` |
| 2 | `theorem` | [injective_module_of_injective_object](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantcdb455e9b379eab1cd2e1e209f72143e28895302ba24d6542aab90240bd0f398.lean/declarations/injective-module-of-injective-object--c5abb72fdb8a007c629e4d4e.md) | 26 | `result-track:c5abb72fdb8a007c629e4d4e35767ba85dc1aba50194268c3e6d102a98df3a39` |
| 3 | `theorem` | [injective_iff_injective_object](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantcdb455e9b379eab1cd2e1e209f72143e28895302ba24d6542aab90240bd0f398.lean/declarations/injective-iff-injective-object--285f0048ea93d0637186b3af.md) | 35 | `result-track:285f0048ea93d0637186b3afe64da8653c2c319df970541b311626754f0ea00f` |
| 4 | `instance` | [ModuleCat.ulift_injective_of_injective.](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantcdb455e9b379eab1cd2e1e209f72143e28895302ba24d6542aab90240bd0f398.lean/declarations/modulecat-ulift-injective-of-injective--e0847407d11addfbf5abafc5.md) | 44 | `declaration-track:e0847407d11addfbf5abafc5ea4afa42661196b7bbda715ddcd17d469fa9085d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
