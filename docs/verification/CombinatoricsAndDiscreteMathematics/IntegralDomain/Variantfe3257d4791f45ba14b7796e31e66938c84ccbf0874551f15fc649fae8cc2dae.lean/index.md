# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.IntegralDomain.Variantfe3257d4791f45ba14b7796e31e66938c84ccbf0874551f15fc649fae8cc2dae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91de25a84177af17245ba695d725b942f7b27c61",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantfe3257d4791f45ba14b7796e31e66938c84ccbf0874551f15fc649fae8cc2dae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantfe3257d4791f45ba14b7796e31e66938c84ccbf0874551f15fc649fae8cc2dae.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantfe3257d4791f45ba14b7796e31e66938c84ccbf0874551f15fc649fae8cc2dae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91de25a84177af17245ba695d725b942f7b27c61`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantfe3257d4791f45ba14b7796e31e66938c84ccbf0874551f15fc649fae8cc2dae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantfe3257d4791f45ba14b7796e31e66938c84ccbf0874551f15fc649fae8cc2dae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.RingDivision` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.SpecificGroups.Cyclic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GeomSum` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mul_right_bijective_of_finite₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantfe3257d4791f45ba14b7796e31e66938c84ccbf0874551f15fc649fae8cc2dae.lean/declarations/mul-right-bijective-of-finite--af94d0e72f5dc1f92143d3f5.md) | 48 | `result-track:af94d0e72f5dc1f92143d3f58aafcb8c0c45e3f1441e48364aecad94e5698bc4` |
| 2 | `theorem` | [mul_left_bijective_of_finite₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantfe3257d4791f45ba14b7796e31e66938c84ccbf0874551f15fc649fae8cc2dae.lean/declarations/mul-left-bijective-of-finite--b335f94a16e947f478d3536d.md) | 52 | `result-track:b335f94a16e947f478d3536da3310cff355d1e63675194d9e7ad97bf865abe6c` |
| 3 | `def` | [Fintype.groupWithZeroOfCancel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantfe3257d4791f45ba14b7796e31e66938c84ccbf0874551f15fc649fae8cc2dae.lean/declarations/fintype-groupwithzeroofcancel--cb32118de191ed04a760ed05.md) | 57 | `declaration-track:cb32118de191ed04a760ed050e1831fd593629ec98fe11b44fc133f728a38e6f` |
| 4 | `theorem` | [exists_eq_pow_of_mul_eq_pow_of_coprime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantfe3257d4791f45ba14b7796e31e66938c84ccbf0874551f15fc649fae8cc2dae.lean/declarations/exists-eq-pow-of-mul-eq-pow-of-coprime--af1c278e69fb7553f38d8e2c.md) | 68 | `result-track:af1c278e69fb7553f38d8e2ccfd4a1662fcf2b6fa81628adce079ba63a9f5f83` |
| 5 | `theorem` | [Finset.exists_eq_pow_of_mul_eq_pow_of_coprime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantfe3257d4791f45ba14b7796e31e66938c84ccbf0874551f15fc649fae8cc2dae.lean/declarations/finset-exists-eq-pow-of-mul-eq-pow-of-coprime--0cafaf08aa7187c35d9116af.md) | 80 | `result-track:0cafaf08aa7187c35d9116afc21e3507e97a275b9fad6f528c102da1f56cb72f` |
| 6 | `def` | [Fintype.divisionRingOfIsDomain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantfe3257d4791f45ba14b7796e31e66938c84ccbf0874551f15fc649fae8cc2dae.lean/declarations/fintype-divisionringofisdomain--5275ef194d577a1b905dccac.md) | 106 | `declaration-track:5275ef194d577a1b905dccacaa81bc775314df55c5126d6197cb5cd84b479079` |
| 7 | `def` | [Fintype.fieldOfDomain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantfe3257d4791f45ba14b7796e31e66938c84ccbf0874551f15fc649fae8cc2dae.lean/declarations/fintype-fieldofdomain--e516ac2387ccf46a4a60097c.md) | 115 | `declaration-track:e516ac2387ccf46a4a60097cb282340394becd3dd346aec13bf22a4499f7515e` |
| 8 | `theorem` | [Finite.isField_of_domain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantfe3257d4791f45ba14b7796e31e66938c84ccbf0874551f15fc649fae8cc2dae.lean/declarations/finite-isfield-of-domain--24fc027cadd7278ff99091c9.md) | 119 | `result-track:24fc027cadd7278ff99091c932823305796c960de1d6fe4c2ce4bb0b5c0673f9` |
| 9 | `theorem` | [card_nthRoots_subgroup_units](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantfe3257d4791f45ba14b7796e31e66938c84ccbf0874551f15fc649fae8cc2dae.lean/declarations/card-nthroots-subgroup-units--fadaaba386f338f7c9e6e47e.md) | 130 | `result-track:fadaaba386f338f7c9e6e47e8843831fce25f3efb5f3ba219a252e1612bd86ce` |
| 10 | `theorem` | [isCyclic_of_subgroup_isDomain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantfe3257d4791f45ba14b7796e31e66938c84ccbf0874551f15fc649fae8cc2dae.lean/declarations/iscyclic-of-subgroup-isdomain--b105715289086cfbc91f0877.md) | 145 | `result-track:b105715289086cfbc91f0877c4fa8213d6036a9b056c604beb49da4d486f06cd` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantfe3257d4791f45ba14b7796e31e66938c84ccbf0874551f15fc649fae8cc2dae.lean/declarations/instance--bad3cd079b64ded8f93d0f5c.md) | 157 | `declaration-track:bad3cd079b64ded8f93d0f5ce587cc464a18bdb968b50960ff51d9b62be2119f` |
| 12 | `instance` | [subgroup_units_cyclic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantfe3257d4791f45ba14b7796e31e66938c84ccbf0874551f15fc649fae8cc2dae.lean/declarations/subgroup-units-cyclic--1c54566247944eb36e991e3c.md) | 165 | `declaration-track:1c54566247944eb36e991e3ce0a678ee600f1a8e1de63dd22214fa3f4cad6a4d` |
| 13 | `theorem` | [div_eq_quo_add_rem_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantfe3257d4791f45ba14b7796e31e66938c84ccbf0874551f15fc649fae8cc2dae.lean/declarations/div-eq-quo-add-rem-div--7fe4e81bb429d1fb72151a01.md) | 182 | `result-track:7fe4e81bb429d1fb72151a012417f8e91840d589971ef0334b994c67c628d5aa` |
| 14 | `theorem` | [card_fiber_eq_of_mem_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantfe3257d4791f45ba14b7796e31e66938c84ccbf0874551f15fc649fae8cc2dae.lean/declarations/card-fiber-eq-of-mem-range--117f66c3e78180338cbfe290.md) | 203 | `result-track:117f66c3e78180338cbfe290c85e47e573aba73cc6bf194c7f3c082d50455c33` |
| 15 | `theorem` | [sum_hom_units_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantfe3257d4791f45ba14b7796e31e66938c84ccbf0874551f15fc649fae8cc2dae.lean/declarations/sum-hom-units-eq-zero--011747f1bc366f02dff30fb7.md) | 226 | `result-track:011747f1bc366f02dff30fb7d72658d5a17d9f612401da778b07c37bbbb6eea5` |
| 16 | `theorem` | [sum_hom_units](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantfe3257d4791f45ba14b7796e31e66938c84ccbf0874551f15fc649fae8cc2dae.lean/declarations/sum-hom-units--7096007e21b302fb3971ac0c.md) | 289 | `result-track:7096007e21b302fb3971ac0ca0e9511168616ba4f3e3e584796c20ab4003f3b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
