# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Products.Variant6cfe86c0b6a2a885482c9abe1b18e8db5eb4854f0798c9e8c2f3c917613b6336

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "47893231b14f47cf0df24ffde68dcb68782ffa81",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6cfe86c0b6a2a885482c9abe1b18e8db5eb4854f0798c9e8c2f3c917613b6336.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6cfe86c0b6a2a885482c9abe1b18e8db5eb4854f0798c9e8c2f3c917613b6336.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6cfe86c0b6a2a885482c9abe1b18e8db5eb4854f0798c9e8c2f3c917613b6336.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `47893231b14f47cf0df24ffde68dcb68782ffa81`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6cfe86c0b6a2a885482c9abe1b18e8db5eb4854f0798c9e8c2f3c917613b6336.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6cfe86c0b6a2a885482c9abe1b18e8db5eb4854f0798c9e8c2f3c917613b6336.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sums.Associator` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Products.Associator` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [functorEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6cfe86c0b6a2a885482c9abe1b18e8db5eb4854f0798c9e8c2f3c917613b6336.lean/declarations/functorequiv--1b83ea58498e98980c33e0aa.md) | 38 | `declaration-track:1b83ea58498e98980c33e0aac063d3c8302a9fe071ef68662d61ee6cdb3f1bec` |
| 2 | `lemma` | [functorEquiv_unit_app_app_inl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6cfe86c0b6a2a885482c9abe1b18e8db5eb4854f0798c9e8c2f3c917613b6336.lean/declarations/functorequiv-unit-app-app-inl--8d69d9e8f2e373c28c5fca57.md) | 52 | `result-track:8d69d9e8f2e373c28c5fca57aff3da4e813ef3065d74c6674a83e8b005084ce5` |
| 3 | `lemma` | [functorEquiv_unit_app_app_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6cfe86c0b6a2a885482c9abe1b18e8db5eb4854f0798c9e8c2f3c917613b6336.lean/declarations/functorequiv-unit-app-app-inr--ea56e4da156ae32c88878e9f.md) | 57 | `result-track:ea56e4da156ae32c88878e9f330b85efd54097b297c6618f1c3a9828f1df2d33` |
| 4 | `lemma` | [functorEquiv_unitIso_inv_app_app_inl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6cfe86c0b6a2a885482c9abe1b18e8db5eb4854f0798c9e8c2f3c917613b6336.lean/declarations/functorequiv-unitiso-inv-app-app-inl--d5594fdf9517af092de35457.md) | 62 | `result-track:d5594fdf9517af092de35457443c114df34305c577fd289fee8d6ef533bec3aa` |
| 5 | `lemma` | [functorEquiv_unitIso_inv_app_app_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6cfe86c0b6a2a885482c9abe1b18e8db5eb4854f0798c9e8c2f3c917613b6336.lean/declarations/functorequiv-unitiso-inv-app-app-inr--3a54929229e9b07aaec8bce0.md) | 67 | `result-track:3a54929229e9b07aaec8bce01ecfe434d9281af6e46745c0b6f96b459358a9c1` |
| 6 | `def` | [functorEquivFunctorCompFstIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6cfe86c0b6a2a885482c9abe1b18e8db5eb4854f0798c9e8c2f3c917613b6336.lean/declarations/functorequivfunctorcompfstiso--d2af67a8fb90efdc43764635.md) | 74 | `declaration-track:d2af67a8fb90efdc43764635ca47ce6674102ecffb2d38126ba60f45cc811300` |
| 7 | `def` | [functorEquivFunctorCompSndIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6cfe86c0b6a2a885482c9abe1b18e8db5eb4854f0798c9e8c2f3c917613b6336.lean/declarations/functorequivfunctorcompsndiso--b051ca9423f500dddcd00ecf.md) | 82 | `declaration-track:b051ca9423f500dddcd00ecf54808df6232a502a3043e8ad05273c8c60687188` |
| 8 | `def` | [functorEquivInverseCompWhiskeringLeftInlIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6cfe86c0b6a2a885482c9abe1b18e8db5eb4854f0798c9e8c2f3c917613b6336.lean/declarations/functorequivinversecompwhiskeringleftinliso--2d4704b97c5ada1407aebecd.md) | 90 | `declaration-track:2d4704b97c5ada1407aebecdb3e5fb509926ef69173f24386048109952b8db58` |
| 9 | `def` | [functorEquivInverseCompWhiskeringLeftInrIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6cfe86c0b6a2a885482c9abe1b18e8db5eb4854f0798c9e8c2f3c917613b6336.lean/declarations/functorequivinversecompwhiskeringleftinriso--501f017f5f5550f6d31401c9.md) | 98 | `declaration-track:501f017f5f5550f6d31401c96004261423831b6d391812a60b46734287c5bf2f` |
| 10 | `def` | [natTransOfWhiskerLeftInlInr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6cfe86c0b6a2a885482c9abe1b18e8db5eb4854f0798c9e8c2f3c917613b6336.lean/declarations/nattransofwhiskerleftinlinr--bd829aca6e30203767dc1756.md) | 106 | `declaration-track:bd829aca6e30203767dc1756137033cc291217faa3e689821b10f32371ee268f` |
| 11 | `lemma` | [natTransOfWhiskerLeftInlInr_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6cfe86c0b6a2a885482c9abe1b18e8db5eb4854f0798c9e8c2f3c917613b6336.lean/declarations/nattransofwhiskerleftinlinr-id--1313be25471ce2f079219a7c.md) | 114 | `result-track:1313be25471ce2f079219a7c3f62ba191bd2494e48406c6a3a95bb0388bf4439` |
| 12 | `lemma` | [natTransOfWhiskerLeftInlInr_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6cfe86c0b6a2a885482c9abe1b18e8db5eb4854f0798c9e8c2f3c917613b6336.lean/declarations/nattransofwhiskerleftinlinr-comp--82e3a511390ec0b3d39a456b.md) | 119 | `result-track:82e3a511390ec0b3d39a456b689669253723fb26f5e72a00650b368dfb911d17` |
| 13 | `def` | [natIsoOfWhiskerLeftInlInr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6cfe86c0b6a2a885482c9abe1b18e8db5eb4854f0798c9e8c2f3c917613b6336.lean/declarations/natisoofwhiskerleftinlinr--354599693800a6de19ca9aee.md) | 129 | `declaration-track:354599693800a6de19ca9aeebb08cb7b6a7c5ad16808b392683eda24e67e29b6` |
| 14 | `lemma` | [natIsoOfWhiskerLeftInlInr_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6cfe86c0b6a2a885482c9abe1b18e8db5eb4854f0798c9e8c2f3c917613b6336.lean/declarations/natisoofwhiskerleftinlinr-eq--d46d5e47c1e6dd2e97063603.md) | 135 | `result-track:d46d5e47c1e6dd2e97063603d081a9b7d49991c4a7114f8e42cefe390a4d2b64` |
| 15 | `def` | [equivalenceFunctorEquivFunctorIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6cfe86c0b6a2a885482c9abe1b18e8db5eb4854f0798c9e8c2f3c917613b6336.lean/declarations/equivalencefunctorequivfunctoriso--23e78c4b92b836c902616902.md) | 147 | `declaration-track:23e78c4b92b836c902616902c96347dded71a8a73f299d02ba1e87ca02370dd2` |
| 16 | `def` | [associativityFunctorEquivNaturalityFunctorIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6cfe86c0b6a2a885482c9abe1b18e8db5eb4854f0798c9e8c2f3c917613b6336.lean/declarations/associativityfunctorequivnaturalityfunctoriso--938ac06f9788a9ef359c72b5.md) | 163 | `declaration-track:938ac06f9788a9ef359c72b549e473d7d6d013e762cef07297be161c1103a382` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
