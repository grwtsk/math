# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Coherent.Variant4a61aead084a57e464b4ffd37d9b5d64463e79dacae8cb223fe18474f7c67b47

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9cc8664e802a6093bf5c28ad2eb964841375d86",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variant4a61aead084a57e464b4ffd37d9b5d64463e79dacae8cb223fe18474f7c67b47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variant4a61aead084a57e464b4ffd37d9b5d64463e79dacae8cb223fe18474f7c67b47.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variant4a61aead084a57e464b4ffd37d9b5d64463e79dacae8cb223fe18474f7c67b47.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9cc8664e802a6093bf5c28ad2eb964841375d86`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variant4a61aead084a57e464b4ffd37d9b5d64463e79dacae8cb223fe18474f7c67b47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variant4a61aead084a57e464b4ffd37d9b5d64463e79dacae8cb223fe18474f7c67b47.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Canonical` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Coverage` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.EffectiveEpimorphic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sigma` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Precoherent](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variant4a61aead084a57e464b4ffd37d9b5d64463e79dacae8cb223fe18474f7c67b47.lean/declarations/precoherent--3a004903a5ebe76f4b3e0273.md) | 42 | `declaration-track:3a004903a5ebe76f4b3e0273c78b9a526ba4c1501e009405cd4bcee74a3ba120` |
| 2 | `def` | [coherentCoverage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variant4a61aead084a57e464b4ffd37d9b5d64463e79dacae8cb223fe18474f7c67b47.lean/declarations/coherentcoverage--d93e1328ea36f99d81d36c50.md) | 58 | `declaration-track:d93e1328ea36f99d81d36c50b9275b34f7e24ddd65683f8569b2a1aa58a3c71f` |
| 3 | `def` | [coherentTopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variant4a61aead084a57e464b4ffd37d9b5d64463e79dacae8cb223fe18474f7c67b47.lean/declarations/coherenttopology--4d937f6dd4a97af39e63bd98.md) | 71 | `declaration-track:4d937f6dd4a97af39e63bd98fa9b2359ceca9e8f8e34c5716dc2f10c3199697e` |
| 4 | `lemma` | [isSheaf_coherent](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variant4a61aead084a57e464b4ffd37d9b5d64463e79dacae8cb223fe18474f7c67b47.lean/declarations/issheaf-coherent--33f552f55af5a7f0ddec4122.md) | 74 | `result-track:33f552f55af5a7f0ddec412227e134ed72883eac97de2485939e0fa4efc7ad9a` |
| 5 | `theorem` | [mem_sieves_of_hasEffectiveEpiFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variant4a61aead084a57e464b4ffd37d9b5d64463e79dacae8cb223fe18474f7c67b47.lean/declarations/mem-sieves-of-haseffectiveepifamily--47a6789d658b56a758aec589.md) | 99 | `result-track:47a6789d658b56a758aec589113eb857e74b895068590f6d23adb70510a3c8f0` |
| 6 | `theorem` | [isSheaf_yoneda_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variant4a61aead084a57e464b4ffd37d9b5d64463e79dacae8cb223fe18474f7c67b47.lean/declarations/issheaf-yoneda-obj--afaf193ac9ccab2b9ebc664d.md) | 115 | `result-track:afaf193ac9ccab2b9ebc664d50c49077dc1877eb773410e3f3249e4d054a193d` |
| 7 | `theorem` | [isSubcanonical](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variant4a61aead084a57e464b4ffd37d9b5d64463e79dacae8cb223fe18474f7c67b47.lean/declarations/issubcanonical--e716359cea011d30230dabc7.md) | 132 | `result-track:e716359cea011d30230dabc7320dc4ad0b28832eda9d32695e5a294c934c7330` |
| 8 | `theorem` | [EffectiveEpiFamily.transitive_of_finite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variant4a61aead084a57e464b4ffd37d9b5d64463e79dacae8cb223fe18474f7c67b47.lean/declarations/effectiveepifamily-transitive-of-finite--6848cd2a4b6103165eb64461.md) | 147 | `result-track:6848cd2a4b6103165eb64461ea6b8348b85a167c5fe612617aea0257aa398033` |
| 9 | `theorem` | [coherentTopology.mem_sieves_iff_hasEffectiveEpiFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variant4a61aead084a57e464b4ffd37d9b5d64463e79dacae8cb223fe18474f7c67b47.lean/declarations/coherenttopology-mem-sieves-iff-haseffectiveepifamily--aa2ed876e6dd2dc577fdca61.md) | 185 | `result-track:aa2ed876e6dd2dc577fdca6119b89363a13d150652a327b21e3d68fb46e61da0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
