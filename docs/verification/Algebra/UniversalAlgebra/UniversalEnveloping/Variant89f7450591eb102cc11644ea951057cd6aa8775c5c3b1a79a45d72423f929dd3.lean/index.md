# Verification target: GRWTSK.Algebra.UniversalAlgebra.UniversalEnveloping.Variant89f7450591eb102cc11644ea951057cd6aa8775c5c3b1a79a45d72423f929dd3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e5a6a3a7f24d84cb5806a43e638355006a1d891",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/UniversalEnveloping/Variant89f7450591eb102cc11644ea951057cd6aa8775c5c3b1a79a45d72423f929dd3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Variant89f7450591eb102cc11644ea951057cd6aa8775c5c3b1a79a45d72423f929dd3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Variant89f7450591eb102cc11644ea951057cd6aa8775c5c3b1a79a45d72423f929dd3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e5a6a3a7f24d84cb5806a43e638355006a1d891`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/UniversalEnveloping/Variant89f7450591eb102cc11644ea951057cd6aa8775c5c3b1a79a45d72423f929dd3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/UniversalEnveloping/Variant89f7450591eb102cc11644ea951057cd6aa8775c5c3b1a79a45d72423f929dd3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.OfAssociative` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.RingQuot` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorAlgebra.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Rel](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Variant89f7450591eb102cc11644ea951057cd6aa8775c5c3b1a79a45d72423f929dd3.lean/declarations/rel--53ab8bdda610fb6d9fa2c51d.md) | 59 | `declaration-track:53ab8bdda610fb6d9fa2c51d45dc423c4b920a7a4d8ff413b7d3c675785711e8` |
| 2 | `def` | [UniversalEnvelopingAlgebra](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Variant89f7450591eb102cc11644ea951057cd6aa8775c5c3b1a79a45d72423f929dd3.lean/declarations/universalenvelopingalgebra--3118c8289e2091667652f16b.md) | 65 | `declaration-track:3118c8289e2091667652f16ba89364a53a700281bff4b42e22d5099da4b830a9` |
| 3 | `instance` | [instInhabited](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Variant89f7450591eb102cc11644ea951057cd6aa8775c5c3b1a79a45d72423f929dd3.lean/declarations/instinhabited--31d7097be204597cb3e67244.md) | 72 | `declaration-track:31d7097be204597cb3e67244e4308370465bafc328e5da2cd6c6f628b9d6b8c4` |
| 4 | `instance` | [instRing](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Variant89f7450591eb102cc11644ea951057cd6aa8775c5c3b1a79a45d72423f929dd3.lean/declarations/instring--80d08ccd915a53832a64bcc5.md) | 75 | `declaration-track:80d08ccd915a53832a64bcc53a8d85c1507e45f9b6b89d5b6390bc1e706cb552` |
| 5 | `instance` | [instAlgebra](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Variant89f7450591eb102cc11644ea951057cd6aa8775c5c3b1a79a45d72423f929dd3.lean/declarations/instalgebra--4a3f9a4e3bd5fca640c4d9f6.md) | 78 | `declaration-track:4a3f9a4e3bd5fca640c4d9f673b8328b40220676fa0e3b6fe8270dd5231ff61a` |
| 6 | `def` | [mkAlgHom](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Variant89f7450591eb102cc11644ea951057cd6aa8775c5c3b1a79a45d72423f929dd3.lean/declarations/mkalghom--bd6ca04202de26f1ba03cefc.md) | 84 | `declaration-track:bd6ca04202de26f1ba03cefc4768d433ba422eebe0eda4b3fe286aadff882d99` |
| 7 | `def` | [ι](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Variant89f7450591eb102cc11644ea951057cd6aa8775c5c3b1a79a45d72423f929dd3.lean/declarations/anonymous--36ae9a91dd1137044b2750d2.md) | 91 | `declaration-track:36ae9a91dd1137044b2750d2701d7dd51cdad56023d2f5a85b88677f297acf05` |
| 8 | `def` | [lift](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Variant89f7450591eb102cc11644ea951057cd6aa8775c5c3b1a79a45d72423f929dd3.lean/declarations/lift--b0f91da08afa6b9770693853.md) | 102 | `declaration-track:b0f91da08afa6b977069385344a32453d0828e95099faab2958ea05c46c59ed9` |
| 9 | `theorem` | [lift_symm_apply](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Variant89f7450591eb102cc11644ea951057cd6aa8775c5c3b1a79a45d72423f929dd3.lean/declarations/lift-symm-apply--38f77e96730dcc01c379a85b.md) | 134 | `result-track:38f77e96730dcc01c379a85bb1582cddd79ad1dffa61e30318c46d1a4705e0e3` |
| 10 | `theorem` | [ι_comp_lift](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Variant89f7450591eb102cc11644ea951057cd6aa8775c5c3b1a79a45d72423f929dd3.lean/declarations/comp-lift--f9d0a7b1a295ab0103120a28.md) | 139 | `result-track:f9d0a7b1a295ab0103120a2834514b8224453fa0dbc97bf415f4925fd550b67b` |
| 11 | `theorem` | [lift_ι_apply](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Variant89f7450591eb102cc11644ea951057cd6aa8775c5c3b1a79a45d72423f929dd3.lean/declarations/lift-apply--e10eb52e4ccbdcf555f32382.md) | 143 | `result-track:e10eb52e4ccbdcf555f32382ae60edb84ee4047beeda3198647b9810cd7be33a` |
| 12 | `theorem` | [lift_ι_apply'](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Variant89f7450591eb102cc11644ea951057cd6aa8775c5c3b1a79a45d72423f929dd3.lean/declarations/lift-apply--9678d3b485c5164eaaa15c94.md) | 147 | `result-track:9678d3b485c5164eaaa15c947a2a5285505b3455fa274bfacafabfa099023bde` |
| 13 | `theorem` | [lift_unique](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Variant89f7450591eb102cc11644ea951057cd6aa8775c5c3b1a79a45d72423f929dd3.lean/declarations/lift-unique--8209f25c0dadfcd8e2452b8f.md) | 151 | `result-track:8209f25c0dadfcd8e2452b8fb9c0adc3120b2ee89b82f7178e1c4ef8b142277a` |
| 14 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Variant89f7450591eb102cc11644ea951057cd6aa8775c5c3b1a79a45d72423f929dd3.lean/declarations/hom-ext--9bb856d71a566ae8abc13610.md) | 157 | `result-track:9bb856d71a566ae8abc1361031740114a0c921a630778e4693d606ed47b175ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
