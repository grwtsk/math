# Verification target: GRWTSK.Algebra.LinearAlgebra.Irreducible.Varianta4601f7973cea6f092ad0da863865abf2b4b770bc077211f518b9b4593fe3a97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2c5ac948c66c8b8598abd233f8487d9a4ee95ca",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Irreducible/Varianta4601f7973cea6f092ad0da863865abf2b4b770bc077211f518b9b4593fe3a97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Varianta4601f7973cea6f092ad0da863865abf2b4b770bc077211f518b9b4593fe3a97.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Varianta4601f7973cea6f092ad0da863865abf2b4b770bc077211f518b9b4593fe3a97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2c5ac948c66c8b8598abd233f8487d9a4ee95ca`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Irreducible/Varianta4601f7973cea6f092ad0da863865abf2b4b770bc077211f518b9b4593fe3a97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Irreducible/Varianta4601f7973cea6f092ad0da863865abf2b4b770bc077211f518b9b4593fe3a97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.RootSystem.RootPositive` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.RootSystem.WeylGroup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RepresentationTheory.Submodule` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invtRootSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Varianta4601f7973cea6f092ad0da863865abf2b4b770bc077211f518b9b4593fe3a97.lean/declarations/invtrootsubmodule--66930c9621768d8949063f55.md) | 36 | `declaration-track:66930c9621768d8949063f55d4f21b75d072282bf9702e0fcd87dd196f9b52a1` |
| 2 | `lemma` | [mem_invtRootSubmodule_iff](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Varianta4601f7973cea6f092ad0da863865abf2b4b770bc077211f518b9b4593fe3a97.lean/declarations/mem-invtrootsubmodule-iff--70ee09637dc0f923724946ce.md) | 39 | `result-track:70ee09637dc0f923724946cefdd4e5dcd093b3c27b3aa78bd81beb86ef6adfb2` |
| 3 | `lemma` | [invtRootSubmodule.top_mem](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Varianta4601f7973cea6f092ad0da863865abf2b4b770bc077211f518b9b4593fe3a97.lean/declarations/invtrootsubmodule-top-mem--ae6e4f8c1f85474485c98755.md) | 43 | `result-track:ae6e4f8c1f85474485c98755319389f610885c60177df24e4fc2fec51d8b617d` |
| 4 | `lemma` | [invtRootSubmodule.bot_mem](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Varianta4601f7973cea6f092ad0da863865abf2b4b770bc077211f518b9b4593fe3a97.lean/declarations/invtrootsubmodule-bot-mem--34d018b9f89e5be2cb0f035f.md) | 46 | `result-track:34d018b9f89e5be2cb0f035f345042975807b806d938c420b8c6eb0ca53ff24d` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Varianta4601f7973cea6f092ad0da863865abf2b4b770bc077211f518b9b4593fe3a97.lean/declarations/instance--532c93732d21c9bba471f398.md) | 49 | `declaration-track:532c93732d21c9bba471f3982b75977d60b8c8cd38c2260dd958eb5686ed059e` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Varianta4601f7973cea6f092ad0da863865abf2b4b770bc077211f518b9b4593fe3a97.lean/declarations/instance--6b42c25346afd40788cef4ce.md) | 55 | `declaration-track:6b42c25346afd40788cef4ce87fe2b1f03ddb78f10a0d8ae3eb8f27cc8ce329d` |
| 7 | `lemma` | [isSimpleModule_weylGroupRootRep_iff](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Varianta4601f7973cea6f092ad0da863865abf2b4b770bc077211f518b9b4593fe3a97.lean/declarations/issimplemodule-weylgrouprootrep-iff--c661ded42ce81556ee8d0577.md) | 58 | `result-track:c661ded42ce81556ee8d05773fdde7ee5227b84e14127a6ba0574f8957f0fd7a` |
| 8 | `class` | [IsIrreducible](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Varianta4601f7973cea6f092ad0da863865abf2b4b770bc077211f518b9b4593fe3a97.lean/declarations/isirreducible--c5c8f2f06f8538ac46fb616b.md) | 81 | `declaration-track:c5c8f2f06f8538ac46fb616b597e9d7f5e9d0063aa29a10e7ccc009366a9048b` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Varianta4601f7973cea6f092ad0da863865abf2b4b770bc077211f518b9b4593fe3a97.lean/declarations/instance--6d7c72188af71ede8fd6576a.md) | 89 | `declaration-track:6d7c72188af71ede8fd6576a4a0eac4a8514b1090c821d882aba42e532bb2c02` |
| 10 | `lemma` | [isSimpleModule_weylGroupRootRep](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Varianta4601f7973cea6f092ad0da863865abf2b4b770bc077211f518b9b4593fe3a97.lean/declarations/issimplemodule-weylgrouprootrep--1cd88dfb28ce6796ea2b2985.md) | 95 | `result-track:1cd88dfb28ce6796ea2b2985e7a9f33fe97983d9b4c45e8565fa3b568646aaa3` |
| 11 | `def` | [toRootSystem](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Varianta4601f7973cea6f092ad0da863865abf2b4b770bc077211f518b9b4593fe3a97.lean/declarations/torootsystem--9451eba7432c9c4d5cbc500c.md) | 101 | `declaration-track:9451eba7432c9c4d5cbc500c5593ba17991d3a92b91dec3667233a0cdc2c8ee4` |
| 12 | `lemma` | [invtSubmodule_reflection_of_invtSubmodule_coreflection](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Varianta4601f7973cea6f092ad0da863865abf2b4b770bc077211f518b9b4593fe3a97.lean/declarations/invtsubmodule-reflection-of-invtsubmodule-coreflection--9a75e7d45e2937bad3677cae.md) | 108 | `result-track:9a75e7d45e2937bad3677caed52c35326226ab7be9c5a6d1cbc984d07e058e96` |
| 13 | `lemma` | [IsIrreducible.mk'](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Varianta4601f7973cea6f092ad0da863865abf2b4b770bc077211f518b9b4593fe3a97.lean/declarations/isirreducible-mk--f4a5098283fba77c91ac8f7c.md) | 117 | `result-track:f4a5098283fba77c91ac8f7c0ec0311a4051fe2b07234605dec8f04b0ead2576` |
| 14 | `lemma` | [isIrreducible_iff_invtRootSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Varianta4601f7973cea6f092ad0da863865abf2b4b770bc077211f518b9b4593fe3a97.lean/declarations/isirreducible-iff-invtrootsubmodule--3042844305fff80c56f12c70.md) | 131 | `result-track:3042844305fff80c56f12c70b1186f36817b8010f810038ab84595fc5b994248` |
| 15 | `lemma` | [exist_set_root_not_disjoint_and_le_ker_coroot'_of_invtSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Varianta4601f7973cea6f092ad0da863865abf2b4b770bc077211f518b9b4593fe3a97.lean/declarations/exist-set-root-not-disjoint-and-le-ker-coroot-of-invtsubmodule--271715748e2d22422b5ae627.md) | 145 | `result-track:271715748e2d22422b5ae627c9edf74224a57c81bf5455d5e06c88c704deb178` |
| 16 | `lemma` | [span_orbit_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Varianta4601f7973cea6f092ad0da863865abf2b4b770bc077211f518b9b4593fe3a97.lean/declarations/span-orbit-eq-top--dafefae8db37128a80e45a04.md) | 156 | `result-track:dafefae8db37128a80e45a04633a0438f1d794b892d01f62781a688da36980c2` |
| 17 | `lemma` | [exists_form_eq_form_and_form_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Varianta4601f7973cea6f092ad0da863865abf2b4b770bc077211f518b9b4593fe3a97.lean/declarations/exists-form-eq-form-and-form-ne-zero--056e419c5e40a6b3c61dab4e.md) | 163 | `result-track:056e419c5e40a6b3c61dab4ec80753d25b299f10311faaf7701b3cc27d92f76f` |
| 18 | `lemma` | [span_root_image_eq_top_of_forall_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Varianta4601f7973cea6f092ad0da863865abf2b4b770bc077211f518b9b4593fe3a97.lean/declarations/span-root-image-eq-top-of-forall-orthogonal--de62c56ec3e5562c18b990e0.md) | 175 | `result-track:de62c56ec3e5562c18b990e085f4e622e22df1703706711d8be1dc4d168f9d62` |
| 19 | `lemma` | [eq_top_of_mem_invtSubmodule_of_forall_eq_univ](../../../../../mathematics/Algebra/LinearAlgebra/Irreducible/Varianta4601f7973cea6f092ad0da863865abf2b4b770bc077211f518b9b4593fe3a97.lean/declarations/eq-top-of-mem-invtsubmodule-of-forall-eq-univ--a46fa15f2605c65a4e382729.md) | 197 | `result-track:a46fa15f2605c65a4e382729257bf879f1579479325760c93de5f61e4eeeb7a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
