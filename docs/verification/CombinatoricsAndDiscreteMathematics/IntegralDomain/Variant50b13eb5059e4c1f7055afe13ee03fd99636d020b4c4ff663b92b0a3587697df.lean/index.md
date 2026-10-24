# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.IntegralDomain.Variant50b13eb5059e4c1f7055afe13ee03fd99636d020b4c4ff663b92b0a3587697df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2635ae53cf7c7b1957838874f8f4ff31f0d8c295",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant50b13eb5059e4c1f7055afe13ee03fd99636d020b4c4ff663b92b0a3587697df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant50b13eb5059e4c1f7055afe13ee03fd99636d020b4c4ff663b92b0a3587697df.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant50b13eb5059e4c1f7055afe13ee03fd99636d020b4c4ff663b92b0a3587697df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2635ae53cf7c7b1957838874f8f4ff31f0d8c295`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant50b13eb5059e4c1f7055afe13ee03fd99636d020b4c4ff663b92b0a3587697df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant50b13eb5059e4c1f7055afe13ee03fd99636d020b4c4ff663b92b0a3587697df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GeomSum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Roots` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Inv` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.SpecificGroups.Cyclic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mul_right_bijective_of_finite₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant50b13eb5059e4c1f7055afe13ee03fd99636d020b4c4ff663b92b0a3587697df.lean/declarations/mul-right-bijective-of-finite--b1202f32eeab275ded4350e5.md) | 49 | `result-track:b1202f32eeab275ded4350e599859d7564d887965170fa286c4a11aecda9fc5f` |
| 2 | `theorem` | [mul_left_bijective_of_finite₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant50b13eb5059e4c1f7055afe13ee03fd99636d020b4c4ff663b92b0a3587697df.lean/declarations/mul-left-bijective-of-finite--39fe5592bd3a53f29da4441a.md) | 52 | `result-track:39fe5592bd3a53f29da4441abaee114ade7d7ca09f5e71504e87cc7d04e79ecc` |
| 3 | `def` | [Fintype.groupWithZeroOfCancel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant50b13eb5059e4c1f7055afe13ee03fd99636d020b4c4ff663b92b0a3587697df.lean/declarations/fintype-groupwithzeroofcancel--aa39df00e395fbc51a745cc2.md) | 56 | `declaration-track:aa39df00e395fbc51a745cc20e1103fe7d865cdb9f5b7911b69f3291ce753911` |
| 4 | `theorem` | [exists_eq_pow_of_mul_eq_pow_of_coprime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant50b13eb5059e4c1f7055afe13ee03fd99636d020b4c4ff663b92b0a3587697df.lean/declarations/exists-eq-pow-of-mul-eq-pow-of-coprime--a5cb59684cb0657ead20efb5.md) | 66 | `result-track:a5cb59684cb0657ead20efb5bd72c146096805179ec702ee1f81cd8c7021c286` |
| 5 | `theorem` | [Finset.exists_eq_pow_of_mul_eq_pow_of_coprime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant50b13eb5059e4c1f7055afe13ee03fd99636d020b4c4ff663b92b0a3587697df.lean/declarations/finset-exists-eq-pow-of-mul-eq-pow-of-coprime--260b48933a33be5809b83f5a.md) | 77 | `result-track:260b48933a33be5809b83f5aca2f404563275b6f7f2db1c15600c40f3c631ca9` |
| 6 | `def` | [Fintype.divisionRingOfIsDomain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant50b13eb5059e4c1f7055afe13ee03fd99636d020b4c4ff663b92b0a3587697df.lean/declarations/fintype-divisionringofisdomain--ce9159bcb50d3b7ca22b4bcf.md) | 100 | `declaration-track:ce9159bcb50d3b7ca22b4bcfc562a90ee53d61a5c5776e7625b33620e0b5ef46` |
| 7 | `def` | [Fintype.fieldOfDomain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant50b13eb5059e4c1f7055afe13ee03fd99636d020b4c4ff663b92b0a3587697df.lean/declarations/fintype-fieldofdomain--c10e438435f2915141b35af3.md) | 111 | `declaration-track:c10e438435f2915141b35af316009c81a9c9dd9395bb188d9f8b127fab5d7f59` |
| 8 | `theorem` | [Finite.isField_of_domain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant50b13eb5059e4c1f7055afe13ee03fd99636d020b4c4ff663b92b0a3587697df.lean/declarations/finite-isfield-of-domain--ff19aa8cbdb20b552beb687d.md) | 114 | `result-track:ff19aa8cbdb20b552beb687daf4ef049de3de034bee54cf7a69594c503247c96` |
| 9 | `theorem` | [card_nthRoots_subgroup_units](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant50b13eb5059e4c1f7055afe13ee03fd99636d020b4c4ff663b92b0a3587697df.lean/declarations/card-nthroots-subgroup-units--c8b8ce40d1a9f2f5a52d472f.md) | 122 | `result-track:c8b8ce40d1a9f2f5a52d472f6f66e13d8405e56907cae17e5f81381ba80e7535` |
| 10 | `theorem` | [isCyclic_of_subgroup_isDomain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant50b13eb5059e4c1f7055afe13ee03fd99636d020b4c4ff663b92b0a3587697df.lean/declarations/iscyclic-of-subgroup-isdomain--62b4c54cff4ceed563bca038.md) | 131 | `result-track:62b4c54cff4ceed563bca038587a2a23a1955b1ea1983f905013cb12f8764c4b` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant50b13eb5059e4c1f7055afe13ee03fd99636d020b4c4ff663b92b0a3587697df.lean/declarations/instance--3aad249b494be7daa862d9af.md) | 142 | `declaration-track:3aad249b494be7daa862d9af40f98729507085ce66bf0b1d7b7e8bb338521405` |
| 12 | `instance` | [subgroup_units_cyclic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant50b13eb5059e4c1f7055afe13ee03fd99636d020b4c4ff663b92b0a3587697df.lean/declarations/subgroup-units-cyclic--909137fec78f3a4703a2633b.md) | 150 | `declaration-track:909137fec78f3a4703a2633bb94a9a62a6aa77d13f98bebdf681daa26aefe702` |
| 13 | `theorem` | [div_eq_quo_add_rem_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant50b13eb5059e4c1f7055afe13ee03fd99636d020b4c4ff663b92b0a3587697df.lean/declarations/div-eq-quo-add-rem-div--a4b7cb6cf6a24547d205c370.md) | 164 | `result-track:a4b7cb6cf6a24547d205c370723cd9f6d8a1595915af3ca3fd54e9554450865e` |
| 14 | `theorem` | [sum_hom_units_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant50b13eb5059e4c1f7055afe13ee03fd99636d020b4c4ff663b92b0a3587697df.lean/declarations/sum-hom-units-eq-zero--51d96970eec52e53fcbb7339.md) | 185 | `result-track:51d96970eec52e53fcbb73398f4415eac5549d5bfded59baa19e9f38d0056c5b` |
| 15 | `theorem` | [sum_hom_units](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant50b13eb5059e4c1f7055afe13ee03fd99636d020b4c4ff663b92b0a3587697df.lean/declarations/sum-hom-units--d7b6bb923f9c7e3ff99e0298.md) | 243 | `result-track:d7b6bb923f9c7e3ff99e02987740088f16a9a60e2367c3d7d5da2fa090b82fad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
