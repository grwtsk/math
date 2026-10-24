# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.End.Variant11d57554bbcfa8aa0eab9b279b05cfca25dee32ef3c8b58ab852f8f11d52f2eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e517bc59cf212a4f887a507c25951d757a98b2d3",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant11d57554bbcfa8aa0eab9b279b05cfca25dee32ef3c8b58ab852f8f11d52f2eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant11d57554bbcfa8aa0eab9b279b05cfca25dee32ef3c8b58ab852f8f11d52f2eb.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant11d57554bbcfa8aa0eab9b279b05cfca25dee32ef3c8b58ab852f8f11d52f2eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e517bc59cf212a4f887a507c25951d757a98b2d3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant11d57554bbcfa8aa0eab9b279b05cfca25dee32ef3c8b58ab852f8f11d52f2eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant11d57554bbcfa8aa0eab9b279b05cfca25dee32ef3c8b58ab852f8f11d52f2eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Multiequalizer` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [multicospanShapeEnd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant11d57554bbcfa8aa0eab9b279b05cfca25dee32ef3c8b58ab852f8f11d52f2eb.lean/declarations/multicospanshapeend--a27648bf4d473018a2c547ff.md) | 38 | `declaration-track:a27648bf4d473018a2c547ffdd8f6372c504024d3c7e0d8be2a36b09c13bb9a0` |
| 2 | `def` | [multicospanIndexEnd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant11d57554bbcfa8aa0eab9b279b05cfca25dee32ef3c8b58ab852f8f11d52f2eb.lean/declarations/multicospanindexend--8c94b9b0596db837c584bc86.md) | 47 | `declaration-track:8c94b9b0596db837c584bc86c1be53b9c39442f9658a5fc5f70874992d40f54f` |
| 3 | `abbrev` | [Wedge](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant11d57554bbcfa8aa0eab9b279b05cfca25dee32ef3c8b58ab852f8f11d52f2eb.lean/declarations/wedge--a0c60d21bdbbe4de9dacb0ab.md) | 56 | `declaration-track:a0c60d21bdbbe4de9dacb0ab52f187296e239b45797f0717af9e8ea2ca4b2ce2` |
| 4 | `abbrev` | [mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant11d57554bbcfa8aa0eab9b279b05cfca25dee32ef3c8b58ab852f8f11d52f2eb.lean/declarations/mk--da4bd662971545a0e954b792.md) | 69 | `declaration-track:da4bd662971545a0e954b792d80e6d5d9b56abd1c921a8a6bab7ac9059f88d5f` |
| 5 | `lemma` | [mk_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant11d57554bbcfa8aa0eab9b279b05cfca25dee32ef3c8b58ab852f8f11d52f2eb.lean/declarations/mk--f59bac9a6fc74716a317baad.md) | 73 | `result-track:f59bac9a6fc74716a317baad266a62f16e69a6b5e9d54fdf7662045cab6f8ff5` |
| 6 | `lemma` | [condition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant11d57554bbcfa8aa0eab9b279b05cfca25dee32ef3c8b58ab852f8f11d52f2eb.lean/declarations/condition--ea6aa206c07dee772bef247b.md) | 78 | `result-track:ea6aa206c07dee772bef247b58a6f8401431ef04a2a1388a2560b5be99872831` |
| 7 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant11d57554bbcfa8aa0eab9b279b05cfca25dee32ef3c8b58ab852f8f11d52f2eb.lean/declarations/hom-ext--b1702b6902fcdccfc03762fa.md) | 86 | `result-track:b1702b6902fcdccfc03762faadadd4c3e167a249b59428e9f19db37375020702` |
| 8 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant11d57554bbcfa8aa0eab9b279b05cfca25dee32ef3c8b58ab852f8f11d52f2eb.lean/declarations/lift--b3d0c2ddb22e9d00203e9e3f.md) | 91 | `declaration-track:b3d0c2ddb22e9d00203e9e3f8a676bbd0a69485ee302a7b84c55bedebe09bd08` |
| 9 | `lemma` | [lift_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant11d57554bbcfa8aa0eab9b279b05cfca25dee32ef3c8b58ab852f8f11d52f2eb.lean/declarations/lift--789c56a168d87d7f741fb5f5.md) | 97 | `result-track:789c56a168d87d7f741fb5f5aed2b6c76836a4129188b21cde9670aefcdcc6cc` |
| 10 | `abbrev` | [HasEnd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant11d57554bbcfa8aa0eab9b279b05cfca25dee32ef3c8b58ab852f8f11d52f2eb.lean/declarations/hasend--b6a9e54a12d97897ca24ef1a.md) | 110 | `declaration-track:b6a9e54a12d97897ca24ef1aceb1bec5ecfa285064d44b24eef392b11a9b6a65` |
| 11 | `def` | [end_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant11d57554bbcfa8aa0eab9b279b05cfca25dee32ef3c8b58ab852f8f11d52f2eb.lean/declarations/end--76faafe00e58f0b113379645.md) | 115 | `declaration-track:76faafe00e58f0b113379645dff6437bab7705aad6cb283023dfec24c7c431e5` |
| 12 | `def` | [end_.π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant11d57554bbcfa8aa0eab9b279b05cfca25dee32ef3c8b58ab852f8f11d52f2eb.lean/declarations/end--037ed58cf8f1518e8a187c7d.md) | 119 | `declaration-track:037ed58cf8f1518e8a187c7d84239fc9c767611ddae45aac0dedc792388d3fe2` |
| 13 | `lemma` | [end_.condition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant11d57554bbcfa8aa0eab9b279b05cfca25dee32ef3c8b58ab852f8f11d52f2eb.lean/declarations/end-condition--3ea66438f49322e05756238c.md) | 122 | `result-track:3ea66438f49322e05756238c1f6146662f3be6e0fa25b8a14b12987e95059267` |
| 14 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant11d57554bbcfa8aa0eab9b279b05cfca25dee32ef3c8b58ab852f8f11d52f2eb.lean/declarations/hom-ext--29ac6b9316ee8e28d8a347af.md) | 129 | `result-track:29ac6b9316ee8e28d8a347af50a753b109cb7366cdd46f9b93fa875db1e4db3b` |
| 15 | `def` | [end_.lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant11d57554bbcfa8aa0eab9b279b05cfca25dee32ef3c8b58ab852f8f11d52f2eb.lean/declarations/end-lift--b110f98710e9dc2fbf456a93.md) | 139 | `declaration-track:b110f98710e9dc2fbf456a9357ab4bedafc14cb7234191fadb69adef4f568722` |
| 16 | `lemma` | [end_.lift_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant11d57554bbcfa8aa0eab9b279b05cfca25dee32ef3c8b58ab852f8f11d52f2eb.lean/declarations/end-lift--d7030261ef7002f01b989197.md) | 143 | `result-track:d7030261ef7002f01b9891971180bc0bdd1733258c4cc87bd36370afe249dc3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
