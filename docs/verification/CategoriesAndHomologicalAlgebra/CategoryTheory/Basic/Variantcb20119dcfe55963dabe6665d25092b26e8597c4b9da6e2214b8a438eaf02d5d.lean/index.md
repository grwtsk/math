# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantcb20119dcfe55963dabe6665d25092b26e8597c4b9da6e2214b8a438eaf02d5d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea71ef21565cec22cbacb273f36c8c6dbce00620",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcb20119dcfe55963dabe6665d25092b26e8597c4b9da6e2214b8a438eaf02d5d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcb20119dcfe55963dabe6665d25092b26e8597c4b9da6e2214b8a438eaf02d5d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcb20119dcfe55963dabe6665d25092b26e8597c4b9da6e2214b8a438eaf02d5d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea71ef21565cec22cbacb273f36c8c6dbce00620`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcb20119dcfe55963dabe6665d25092b26e8597c4b9da6e2214b8a438eaf02d5d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcb20119dcfe55963dabe6665d25092b26e8597c4b9da6e2214b8a438eaf02d5d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Invertible.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Equiv.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcb20119dcfe55963dabe6665d25092b26e8597c4b9da6e2214b8a438eaf02d5d.lean/declarations/linear--281d26c757b89e8ec77a8f14.md) | 51 | `declaration-track:281d26c757b89e8ec77a8f14323a09e5c08b89dcc4fce01663c1c301fce8797c` |
| 2 | `instance` | [preadditiveNatLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcb20119dcfe55963dabe6665d25092b26e8597c4b9da6e2214b8a438eaf02d5d.lean/declarations/preadditivenatlinear--5f95d9c5d20febb0c0e15121.md) | 73 | `declaration-track:5f95d9c5d20febb0c0e1512152641c2c38dfe4c2a9253df3e8421c52021edd19` |
| 3 | `instance` | [preadditiveIntLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcb20119dcfe55963dabe6665d25092b26e8597c4b9da6e2214b8a438eaf02d5d.lean/declarations/preadditiveintlinear--05686fd6e5db29acabf0e04f.md) | 77 | `declaration-track:05686fd6e5db29acabf0e04fd59f664f8f60c57b1d233bf2ff7623ba65284b0b` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcb20119dcfe55963dabe6665d25092b26e8597c4b9da6e2214b8a438eaf02d5d.lean/declarations/instance--0b13e91921c18c507f0ede54.md) | 85 | `declaration-track:0b13e91921c18c507f0ede541a5f484d57c179c35ca0fdbc6e954cda939b305e` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcb20119dcfe55963dabe6665d25092b26e8597c4b9da6e2214b8a438eaf02d5d.lean/declarations/instance--0c2464f2bf72fd9e47c26dd0.md) | 89 | `declaration-track:0c2464f2bf72fd9e47c26dd06ff32555f50a4efddc6cdc171092ed932c98163a` |
| 6 | `instance` | [inducedCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcb20119dcfe55963dabe6665d25092b26e8597c4b9da6e2214b8a438eaf02d5d.lean/declarations/inducedcategory--032fe30b81175161857111eb.md) | 104 | `declaration-track:032fe30b81175161857111eb48737acd60a84328f21155d72d934d910c5b8274` |
| 7 | `instance` | [fullSubcategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcb20119dcfe55963dabe6665d25092b26e8597c4b9da6e2214b8a438eaf02d5d.lean/declarations/fullsubcategory--f7f017fec1d299ff7ab677e2.md) | 111 | `declaration-track:f7f017fec1d299ff7ab677e22d9dac36cbcbcd20b4c92c1ee005874bf784468e` |
| 8 | `def` | [leftComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcb20119dcfe55963dabe6665d25092b26e8597c4b9da6e2214b8a438eaf02d5d.lean/declarations/leftcomp--855e78b1b4b83670431ea441.md) | 120 | `declaration-track:855e78b1b4b83670431ea441c544b87456f6d02aae6c2aa94940292c0bb62b9c` |
| 9 | `def` | [rightComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcb20119dcfe55963dabe6665d25092b26e8597c4b9da6e2214b8a438eaf02d5d.lean/declarations/rightcomp--f116febb085000ff8b3e47e9.md) | 127 | `declaration-track:f116febb085000ff8b3e47e9137aa9fc5177fb8708df77265ee97597f413ed48` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcb20119dcfe55963dabe6665d25092b26e8597c4b9da6e2214b8a438eaf02d5d.lean/declarations/instance--9058c8de1293f094b150b621.md) | 132 | `declaration-track:9058c8de1293f094b150b62116e5643254b34db8ade086a9c99b328c00c08084` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcb20119dcfe55963dabe6665d25092b26e8597c4b9da6e2214b8a438eaf02d5d.lean/declarations/instance--2e10c8ad584e3d3a1729380f.md) | 137 | `declaration-track:2e10c8ad584e3d3a1729380f9c1e6a905aefb61b4c2c28c3ef74a8679e28b587` |
| 12 | `def` | [homCongr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcb20119dcfe55963dabe6665d25092b26e8597c4b9da6e2214b8a438eaf02d5d.lean/declarations/homcongr--57d94bd53c8867ef068170b4.md) | 144 | `declaration-track:57d94bd53c8867ef068170b413408dd9d680c0942b711b64bd1a7c2be53977a2` |
| 13 | `theorem` | [homCongr_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcb20119dcfe55963dabe6665d25092b26e8597c4b9da6e2214b8a438eaf02d5d.lean/declarations/homcongr-apply--86a2c767e196960ddc2c0251.md) | 160 | `result-track:86a2c767e196960ddc2c0251393ad37a6cc3289226afb2becd506542d5701595` |
| 14 | `theorem` | [homCongr_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcb20119dcfe55963dabe6665d25092b26e8597c4b9da6e2214b8a438eaf02d5d.lean/declarations/homcongr-symm-apply--ea0650d5bb57b42fe59d79bc.md) | 165 | `result-track:ea0650d5bb57b42fe59d79bc5d47f1673f08b254eed65e430caca2598ba9535f` |
| 15 | `lemma` | [units_smul_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcb20119dcfe55963dabe6665d25092b26e8597c4b9da6e2214b8a438eaf02d5d.lean/declarations/units-smul-comp--5a125a31791e50145c346fb1.md) | 173 | `result-track:5a125a31791e50145c346fb136789ce8a12e60cdfd486fc42f9266f9f10b2a1c` |
| 16 | `lemma` | [comp_units_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcb20119dcfe55963dabe6665d25092b26e8597c4b9da6e2214b8a438eaf02d5d.lean/declarations/comp-units-smul--af6a9588e6e1a5033177c967.md) | 178 | `result-track:af6a9588e6e1a5033177c967136fdfd189146f41082fad48436ec7c2d19c2626` |
| 17 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcb20119dcfe55963dabe6665d25092b26e8597c4b9da6e2214b8a438eaf02d5d.lean/declarations/comp--c792117a3e097a0965930a94.md) | 190 | `declaration-track:c792117a3e097a0965930a9407af74aa25c1df7cce99e2a9b1cd57901bc4514f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
