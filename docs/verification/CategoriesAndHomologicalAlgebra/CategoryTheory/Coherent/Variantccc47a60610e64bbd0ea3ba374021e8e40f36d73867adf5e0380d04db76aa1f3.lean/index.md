# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Coherent.Variantccc47a60610e64bbd0ea3ba374021e8e40f36d73867adf5e0380d04db76aa1f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d789bb3d36e6d439602feb8fcd92399dea8b9e66",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variantccc47a60610e64bbd0ea3ba374021e8e40f36d73867adf5e0380d04db76aa1f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variantccc47a60610e64bbd0ea3ba374021e8e40f36d73867adf5e0380d04db76aa1f3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variantccc47a60610e64bbd0ea3ba374021e8e40f36d73867adf5e0380d04db76aa1f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d789bb3d36e6d439602feb8fcd92399dea8b9e66`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variantccc47a60610e64bbd0ea3ba374021e8e40f36d73867adf5e0380d04db76aa1f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variantccc47a60610e64bbd0ea3ba374021e8e40f36d73867adf5e0380d04db76aa1f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Canonical` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Coverage` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.EffectiveEpimorphic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sigma` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Precoherent](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variantccc47a60610e64bbd0ea3ba374021e8e40f36d73867adf5e0380d04db76aa1f3.lean/declarations/precoherent--914c2ac108c7808ef7c0292d.md) | 50 | `declaration-track:914c2ac108c7808ef7c0292d40a381267ce29b9d53c232242738f211f7c6c39d` |
| 2 | `def` | [coherentCoverage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variantccc47a60610e64bbd0ea3ba374021e8e40f36d73867adf5e0380d04db76aa1f3.lean/declarations/coherentcoverage--0476ef51bb1fc0bee29135ab.md) | 66 | `declaration-track:0476ef51bb1fc0bee29135abc2d6aaf749da1e5aaaa6a7cec66fbb3fa28b6836` |
| 3 | `def` | [coherentTopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variantccc47a60610e64bbd0ea3ba374021e8e40f36d73867adf5e0380d04db76aa1f3.lean/declarations/coherenttopology--7afd35154c26afc2c47b3724.md) | 79 | `declaration-track:7afd35154c26afc2c47b3724fa527fdddcc874e39640cade98f629a4820c2a9e` |
| 4 | `lemma` | [isSheaf_coherent](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variantccc47a60610e64bbd0ea3ba374021e8e40f36d73867adf5e0380d04db76aa1f3.lean/declarations/issheaf-coherent--67cfeb0692ed559f732c8323.md) | 82 | `result-track:67cfeb0692ed559f732c8323d6eb477f0f2f6ce90344bf4f915ef01f748598f2` |
| 5 | `theorem` | [mem_sieves_of_hasEffectiveEpiFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variantccc47a60610e64bbd0ea3ba374021e8e40f36d73867adf5e0380d04db76aa1f3.lean/declarations/mem-sieves-of-haseffectiveepifamily--3b05330e2426ae0dd30c93d6.md) | 107 | `result-track:3b05330e2426ae0dd30c93d6b26f054f843bfae409c2b43d3410c1f599c1811f` |
| 6 | `theorem` | [isSheaf_yoneda_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variantccc47a60610e64bbd0ea3ba374021e8e40f36d73867adf5e0380d04db76aa1f3.lean/declarations/issheaf-yoneda-obj--b513c485677950044e4566c4.md) | 123 | `result-track:b513c485677950044e4566c421c50343db3ea37e4e9f71e476c01577d25071b2` |
| 7 | `theorem` | [isSubcanonical](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variantccc47a60610e64bbd0ea3ba374021e8e40f36d73867adf5e0380d04db76aa1f3.lean/declarations/issubcanonical--74373d089bf2a97999d448d5.md) | 140 | `result-track:74373d089bf2a97999d448d5e029a44b387ca7e7bf452937c818a1a9ff214e8d` |
| 8 | `theorem` | [EffectiveEpiFamily.transitive_of_finite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variantccc47a60610e64bbd0ea3ba374021e8e40f36d73867adf5e0380d04db76aa1f3.lean/declarations/effectiveepifamily-transitive-of-finite--ab13789a8193f1646b73d7bf.md) | 155 | `result-track:ab13789a8193f1646b73d7bf634bf2c07d5235ec6b2bee19fcc9a75c7c587b8a` |
| 9 | `theorem` | [coherentTopology.mem_sieves_iff_hasEffectiveEpiFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variantccc47a60610e64bbd0ea3ba374021e8e40f36d73867adf5e0380d04db76aa1f3.lean/declarations/coherenttopology-mem-sieves-iff-haseffectiveepifamily--4ec39de9f51cde9a9b405bd1.md) | 193 | `result-track:4ec39de9f51cde9a9b405bd17e2bd7bd756942296be4569ac19c24979e02c63e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
