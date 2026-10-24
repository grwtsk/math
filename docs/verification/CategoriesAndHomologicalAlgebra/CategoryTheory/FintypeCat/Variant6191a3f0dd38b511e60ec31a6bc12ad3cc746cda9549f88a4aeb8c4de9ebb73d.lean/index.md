# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FintypeCat.Variant6191a3f0dd38b511e60ec31a6bc12ad3cc746cda9549f88a4aeb8c4de9ebb73d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "897dbe57763da543323cb5530d13c8d8f08b9427",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant6191a3f0dd38b511e60ec31a6bc12ad3cc746cda9549f88a4aeb8c4de9ebb73d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant6191a3f0dd38b511e60ec31a6bc12ad3cc746cda9549f88a4aeb8c4de9ebb73d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant6191a3f0dd38b511e60ec31a6bc12ad3cc746cda9549f88a4aeb8c4de9ebb73d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `897dbe57763da543323cb5530d13c8d8f08b9427`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant6191a3f0dd38b511e60ec31a6bc12ad3cc746cda9549f88a4aeb8c4de9ebb73d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant6191a3f0dd38b511e60ec31a6bc12ad3cc746cda9549f88a4aeb8c4de9ebb73d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.FintypeCat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Products` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Shapes` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Prod` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Sigma` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant6191a3f0dd38b511e60ec31a6bc12ad3cc746cda9549f88a4aeb8c4de9ebb73d.lean/declarations/instance--a42ea8b4743687187a59abb6.md) | 34 | `declaration-track:a42ea8b4743687187a59abb6e3da5cbf3ecdec8d5f1a20ad292a4af962d6939f` |
| 2 | `instance` | [finiteLimitOfFiniteDiagram](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant6191a3f0dd38b511e60ec31a6bc12ad3cc746cda9549f88a4aeb8c4de9ebb73d.lean/declarations/finitelimitoffinitediagram--7844a2eb485b9feebfaf8330.md) | 41 | `declaration-track:7844a2eb485b9feebfaf83300a32cd59f89a933dc2d1e18ad136ede78b48c776` |
| 3 | `instance` | [inclusionCreatesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant6191a3f0dd38b511e60ec31a6bc12ad3cc746cda9549f88a4aeb8c4de9ebb73d.lean/declarations/inclusioncreatesfinitelimits--77d07b69d3aaddb770d31f74.md) | 46 | `declaration-track:77d07b69d3aaddb770d31f74617a38d6de9153ac8bb344abf0978e1698722a59` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant6191a3f0dd38b511e60ec31a6bc12ad3cc746cda9549f88a4aeb8c4de9ebb73d.lean/declarations/instance--97284fbffcec704714f6a5c0.md) | 52 | `declaration-track:97284fbffcec704714f6a5c07c1a101856f14ab80bf2d46a5529d4b4fee79813` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant6191a3f0dd38b511e60ec31a6bc12ad3cc746cda9549f88a4aeb8c4de9ebb73d.lean/declarations/instance--230e5c1e90ad8210b21b7c6f.md) | 56 | `declaration-track:230e5c1e90ad8210b21b7c6fd36961f7f7e6eb08e6de1c5d210208425a033bc7` |
| 6 | `instance` | [hasFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant6191a3f0dd38b511e60ec31a6bc12ad3cc746cda9549f88a4aeb8c4de9ebb73d.lean/declarations/hasfinitelimits--20dc3d6e467249c4c1a67e59.md) | 59 | `declaration-track:20dc3d6e467249c4c1a67e5956364d63d2b68098cd6cf34fcdc31ee2bf6c6355` |
| 7 | `instance` | [inclusion_preservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant6191a3f0dd38b511e60ec31a6bc12ad3cc746cda9549f88a4aeb8c4de9ebb73d.lean/declarations/inclusion-preservesfinitelimits--6d80fa755fe1be5ea0430e3f.md) | 62 | `declaration-track:6d80fa755fe1be5ea0430e3fa2d3d8dc6ec3ff63e764db47ed488f615cc5d74a` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant6191a3f0dd38b511e60ec31a6bc12ad3cc746cda9549f88a4aeb8c4de9ebb73d.lean/declarations/instance--ed7f8227fc8cceb97a21e651.md) | 68 | `declaration-track:ed7f8227fc8cceb97a21e65179a51c34f773499ba684bc1a2efad2db94a34ad9` |
| 9 | `def` | [productEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant6191a3f0dd38b511e60ec31a6bc12ad3cc746cda9549f88a4aeb8c4de9ebb73d.lean/declarations/productequiv--21bab718d1b3e1e8922cf734.md) | 73 | `declaration-track:21bab718d1b3e1e8922cf73434860787e4acc4768c42469c562c2ea5d2215173` |
| 10 | `lemma` | [productEquiv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant6191a3f0dd38b511e60ec31a6bc12ad3cc746cda9549f88a4aeb8c4de9ebb73d.lean/declarations/productequiv-apply--99a80b4fa3aff35615e00e63.md) | 86 | `result-track:99a80b4fa3aff35615e00e633923da20e9bfc4851f44e196ff4f105b6f6331bb` |
| 11 | `lemma` | [productEquiv_symm_comp_π_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant6191a3f0dd38b511e60ec31a6bc12ad3cc746cda9549f88a4aeb8c4de9ebb73d.lean/declarations/productequiv-symm-comp-apply--70712f924b7a1afdbbedf551.md) | 91 | `result-track:70712f924b7a1afdbbedf551e37993a5d6b3a5030eb0ea16f641d6b3ae65895c` |
| 12 | `instance` | [nonempty_pi_of_nonempty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant6191a3f0dd38b511e60ec31a6bc12ad3cc746cda9549f88a4aeb8c4de9ebb73d.lean/declarations/nonempty-pi-of-nonempty--c8426423fb300da8437c65c8.md) | 95 | `declaration-track:c8426423fb300da8437c65c8a03b7c6ac3426720c9c1ef89c990282213a23b3c` |
| 13 | `instance` | [finiteColimitOfFiniteDiagram](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant6191a3f0dd38b511e60ec31a6bc12ad3cc746cda9549f88a4aeb8c4de9ebb73d.lean/declarations/finitecolimitoffinitediagram--f5ff01071a10453c22293d78.md) | 101 | `declaration-track:f5ff01071a10453c22293d7845bf1bc1a9eb543ce6108a13082cb22451354a98` |
| 14 | `instance` | [inclusionCreatesFiniteColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant6191a3f0dd38b511e60ec31a6bc12ad3cc746cda9549f88a4aeb8c4de9ebb73d.lean/declarations/inclusioncreatesfinitecolimits--b66e9923d387b089807b3471.md) | 107 | `declaration-track:b66e9923d387b089807b347181288c6b535e4b69104a073e8d905dba9fc6a951` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant6191a3f0dd38b511e60ec31a6bc12ad3cc746cda9549f88a4aeb8c4de9ebb73d.lean/declarations/instance--6873e27b263bacd56e54a314.md) | 113 | `declaration-track:6873e27b263bacd56e54a314923ac85c5c5470f5ca581b271007095a06594841` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant6191a3f0dd38b511e60ec31a6bc12ad3cc746cda9549f88a4aeb8c4de9ebb73d.lean/declarations/instance--5057593ba6c49903e1babb7f.md) | 117 | `declaration-track:5057593ba6c49903e1babb7fd6a869db819db60d30ff56ac378d6cdd464d746a` |
| 17 | `instance` | [hasFiniteColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant6191a3f0dd38b511e60ec31a6bc12ad3cc746cda9549f88a4aeb8c4de9ebb73d.lean/declarations/hasfinitecolimits--266adb2fb280536fdc42b9d1.md) | 120 | `declaration-track:266adb2fb280536fdc42b9d1e35caa19c42a4eb8ed1209fdb55dbc40026b2eed` |
| 18 | `instance` | [inclusion_preservesFiniteColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant6191a3f0dd38b511e60ec31a6bc12ad3cc746cda9549f88a4aeb8c4de9ebb73d.lean/declarations/inclusion-preservesfinitecolimits--8b4a7769ecd0544a840502c5.md) | 123 | `declaration-track:8b4a7769ecd0544a840502c5d4a54cee200a3eb29a59b3e12574405b8a69b394` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant6191a3f0dd38b511e60ec31a6bc12ad3cc746cda9549f88a4aeb8c4de9ebb73d.lean/declarations/instance--3bb5636e958a31b26257713f.md) | 129 | `declaration-track:3bb5636e958a31b26257713f22e9dcc4aaa2fe3a57f7992ccf3f9959aae7617d` |
| 20 | `lemma` | [jointly_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant6191a3f0dd38b511e60ec31a6bc12ad3cc746cda9549f88a4aeb8c4de9ebb73d.lean/declarations/jointly-surjective--6a1c82d38952671b5a02bf0d.md) | 132 | `result-track:6a1c82d38952671b5a02bf0d8149054dbe93f7826d85745a10291619c0d608e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
