# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Double.Variant6b7feb50ec1100d7c15e55b0ee3b9b0020b0eee3a1c211a6ce09645c136ba07c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82a2a1e0d9f59dd7fa3908d288c2135404438d48",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant6b7feb50ec1100d7c15e55b0ee3b9b0020b0eee3a1c211a6ce09645c136ba07c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant6b7feb50ec1100d7c15e55b0ee3b9b0020b0eee3a1c211a6ce09645c136ba07c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant6b7feb50ec1100d7c15e55b0ee3b9b0020b0eee3a1c211a6ce09645c136ba07c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82a2a1e0d9f59dd7fa3908d288c2135404438d48`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant6b7feb50ec1100d7c15e55b0ee3b9b0020b0eee3a1c211a6ce09645c136ba07c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant6b7feb50ec1100d7c15e55b0ee3b9b0020b0eee3a1c211a6ce09645c136ba07c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.HasNoLoop` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Single` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Yoneda` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [double](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant6b7feb50ec1100d7c15e55b0ee3b9b0020b0eee3a1c211a6ce09645c136ba07c.lean/declarations/double--6e83b383333bd266adeb92e6.md) | 43 | `declaration-track:6e83b383333bd266adeb92e6738322deff8e1a672c79758ae495c617ed505499` |
| 2 | `lemma` | [isZero_double_X](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant6b7feb50ec1100d7c15e55b0ee3b9b0020b0eee3a1c211a6ce09645c136ba07c.lean/declarations/iszero-double-x--91f994080cf3d3f7ee06b9d5.md) | 64 | `result-track:91f994080cf3d3f7ee06b9d5edbe23d32e069506ee647c54841e2edbdf18e5db` |
| 3 | `def` | [doubleXIso₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant6b7feb50ec1100d7c15e55b0ee3b9b0020b0eee3a1c211a6ce09645c136ba07c.lean/declarations/doublexiso--b0032675a92fb920946f7867.md) | 71 | `declaration-track:b0032675a92fb920946f7867e7c4b9c054aaaebb08f5a70ba6f17201d3c59c47` |
| 4 | `def` | [doubleXIso₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant6b7feb50ec1100d7c15e55b0ee3b9b0020b0eee3a1c211a6ce09645c136ba07c.lean/declarations/doublexiso--35bf39c7549090eb84e1cd48.md) | 75 | `declaration-track:35bf39c7549090eb84e1cd48fcbc7bf1ccbd313492eb66e09a1ce843568b3531` |
| 5 | `lemma` | [double_d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant6b7feb50ec1100d7c15e55b0ee3b9b0020b0eee3a1c211a6ce09645c136ba07c.lean/declarations/double-d--eafba08ceec70ba9dbb4205c.md) | 80 | `result-track:eafba08ceec70ba9dbb4205cd8da29b58d4a616acae9b2053c52c0bbd0835e2b` |
| 6 | `lemma` | [double_d_eq_zero₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant6b7feb50ec1100d7c15e55b0ee3b9b0020b0eee3a1c211a6ce09645c136ba07c.lean/declarations/double-d-eq-zero--5496ae155987edf4f8b47a99.md) | 85 | `result-track:5496ae155987edf4f8b47a99f64d9cca31fa5fa047cb4d1a68fe7622fa2de4af` |
| 7 | `lemma` | [double_d_eq_zero₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant6b7feb50ec1100d7c15e55b0ee3b9b0020b0eee3a1c211a6ce09645c136ba07c.lean/declarations/double-d-eq-zero--bb070af0e63a1e3b3a3ed19a.md) | 89 | `result-track:bb070af0e63a1e3b3a3ed19a8b3c803759e96d89b14c6607f761f9bce45499b6` |
| 8 | `lemma` | [from_double_hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant6b7feb50ec1100d7c15e55b0ee3b9b0020b0eee3a1c211a6ce09645c136ba07c.lean/declarations/from-double-hom-ext--dfd0b9f5e0b008b1d537b326.md) | 95 | `result-track:dfd0b9f5e0b008b1d537b326821f8889d3507a4c7f2fec78e617ae5aa8742d0a` |
| 9 | `lemma` | [to_double_hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant6b7feb50ec1100d7c15e55b0ee3b9b0020b0eee3a1c211a6ce09645c136ba07c.lean/declarations/to-double-hom-ext--3dc32255ce54d0ad91242b6d.md) | 105 | `result-track:3dc32255ce54d0ad91242b6d2dbf41737b4b13513a50c143292fc7df040053a1` |
| 10 | `def` | [mkHomFromDouble](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant6b7feb50ec1100d7c15e55b0ee3b9b0020b0eee3a1c211a6ce09645c136ba07c.lean/declarations/mkhomfromdouble--7b89e2e721eb1ddef86dbf1d.md) | 121 | `declaration-track:7b89e2e721eb1ddef86dbf1d4e305e333f63be2df7dba78c81fe9c0de0e501f4` |
| 11 | `lemma` | [mkHomFromDouble_f₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant6b7feb50ec1100d7c15e55b0ee3b9b0020b0eee3a1c211a6ce09645c136ba07c.lean/declarations/mkhomfromdouble-f--a87b56e1cee22d11ffedbf1d.md) | 144 | `result-track:a87b56e1cee22d11ffedbf1d1b115f3076c1d520ff4720aec51cbcca1766cd9f` |
| 12 | `lemma` | [mkHomFromDouble_f₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant6b7feb50ec1100d7c15e55b0ee3b9b0020b0eee3a1c211a6ce09645c136ba07c.lean/declarations/mkhomfromdouble-f--91113e6c696cbee65d0270a9.md) | 151 | `result-track:91113e6c696cbee65d0270a9d97636d943487ebfca9241f049aa8f665956697c` |
| 13 | `def` | [evalCompCoyonedaCorepresentableByDoubleId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant6b7feb50ec1100d7c15e55b0ee3b9b0020b0eee3a1c211a6ce09645c136ba07c.lean/declarations/evalcompcoyonedacorepresentablebydoubleid--afbdf714379f5eb8f2d56698.md) | 163 | `declaration-track:afbdf714379f5eb8f2d56698dc4a0a9ca3e4bff6f37c11f6900e5910e031a9e4` |
| 14 | `def` | [evalCompCoyonedaCorepresentableBySingle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant6b7feb50ec1100d7c15e55b0ee3b9b0020b0eee3a1c211a6ce09645c136ba07c.lean/declarations/evalcompcoyonedacorepresentablebysingle--f27871b8774c5eb40994f5bf.md) | 183 | `declaration-track:f27871b8774c5eb40994f5bfd35071dd8144db137bb927a7ac9ef8f39d4990f3` |
| 15 | `def` | [evalCompCoyonedaCorepresentative](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant6b7feb50ec1100d7c15e55b0ee3b9b0020b0eee3a1c211a6ce09645c136ba07c.lean/declarations/evalcompcoyonedacorepresentative--644d82a74c51ddde8bfcb951.md) | 199 | `declaration-track:644d82a74c51ddde8bfcb951d9304f2af95590ef91f07e1d7ab81db4675c9369` |
| 16 | `def` | [evalCompCoyonedaCorepresentable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant6b7feb50ec1100d7c15e55b0ee3b9b0020b0eee3a1c211a6ce09645c136ba07c.lean/declarations/evalcompcoyonedacorepresentable--f8f7544daaaf2ed7bcd81570.md) | 208 | `declaration-track:f8f7544daaaf2ed7bcd81570426d210b0b5e86c4d7aaf8c67375cb0cc68cfd6d` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant6b7feb50ec1100d7c15e55b0ee3b9b0020b0eee3a1c211a6ce09645c136ba07c.lean/declarations/instance--0426bdc0e411ab15817d2de0.md) | 219 | `declaration-track:0426bdc0e411ab15817d2de019cf35de15c180631156ee7fa33f98a5c45b49e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
