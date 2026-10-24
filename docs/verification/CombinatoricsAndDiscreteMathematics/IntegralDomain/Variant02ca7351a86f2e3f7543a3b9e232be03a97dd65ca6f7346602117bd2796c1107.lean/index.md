# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.IntegralDomain.Variant02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dab793a51b446a47f1e20f77b103db770df84a5a",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dab793a51b446a47f1e20f77b103db770df84a5a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.RingDivision` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.SpecificGroups.Cyclic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GeomSum` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mul_right_bijective_of_finite₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean/declarations/mul-right-bijective-of-finite--23987fe6bddef52cee19863e.md) | 40 | `result-track:23987fe6bddef52cee19863e93126a75bf10375d77f5beb363016919ab3fb51f` |
| 2 | `theorem` | [mul_left_bijective_of_finite₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean/declarations/mul-left-bijective-of-finite--0ce2dfca07bf8b1d6c7cb3a9.md) | 44 | `result-track:0ce2dfca07bf8b1d6c7cb3a9d031935398432a6f52ab517cbc924de6cfca176e` |
| 3 | `def` | [Fintype.groupWithZeroOfCancel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean/declarations/fintype-groupwithzeroofcancel--b1bcfd44070760bfb2cb5d60.md) | 49 | `declaration-track:b1bcfd44070760bfb2cb5d60d29cabda0bd9882f2d1bb9b66a68b892e20bb287` |
| 4 | `theorem` | [exists_eq_pow_of_mul_eq_pow_of_coprime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean/declarations/exists-eq-pow-of-mul-eq-pow-of-coprime--fd498d541abc7f4d2518d406.md) | 60 | `result-track:fd498d541abc7f4d2518d40618710e5d1089bba2ab478d85d36100106df6ee86` |
| 5 | `theorem` | [Finset.exists_eq_pow_of_mul_eq_pow_of_coprime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean/declarations/finset-exists-eq-pow-of-mul-eq-pow-of-coprime--c363b40bade9982ea34b91d3.md) | 72 | `result-track:c363b40bade9982ea34b91d3ba8a71a115b516e833bb870fc5872a78be0acce6` |
| 6 | `def` | [Fintype.divisionRingOfIsDomain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean/declarations/fintype-divisionringofisdomain--0993901ebdf3e0a228706fbd.md) | 98 | `declaration-track:0993901ebdf3e0a228706fbd0418a4d197eb3182f95e35e48fe395b06b5242d1` |
| 7 | `def` | [Fintype.fieldOfDomain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean/declarations/fintype-fieldofdomain--7eb96fa043ec996381aaa148.md) | 107 | `declaration-track:7eb96fa043ec996381aaa148f538d3c63e1ef1fb93ade1146e419aca6d076914` |
| 8 | `theorem` | [Finite.isField_of_domain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean/declarations/finite-isfield-of-domain--0f57093ef236a2c1617f5045.md) | 111 | `result-track:0f57093ef236a2c1617f5045d70f9139b188ea5155c30a4cc0f78e2a40c6c589` |
| 9 | `theorem` | [card_nthRoots_subgroup_units](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean/declarations/card-nthroots-subgroup-units--038323e1210d7fdf46d0c222.md) | 122 | `result-track:038323e1210d7fdf46d0c2225b77cc70670bf819b6b1b951c0335db53e3db6e1` |
| 10 | `theorem` | [isCyclic_of_subgroup_isDomain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean/declarations/iscyclic-of-subgroup-isdomain--dea27674642f8f8d73947dcc.md) | 137 | `result-track:dea27674642f8f8d73947dcc5a997a7a5e12d319b45d4fb7be4b0387967f8d10` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean/declarations/instance--1653797483de6638d6c0b009.md) | 149 | `declaration-track:1653797483de6638d6c0b00910ad0c300e55228b50aab39ff0c962e55dc766f6` |
| 12 | `instance` | [subgroup_units_cyclic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean/declarations/subgroup-units-cyclic--f10605773182cb73e190ec58.md) | 157 | `declaration-track:f10605773182cb73e190ec58e7e6fd994df1830c98121e5811cc5c2d6db8e4cb` |
| 13 | `theorem` | [div_eq_quo_add_rem_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean/declarations/div-eq-quo-add-rem-div--5a12f2988e0ca25e9d4fcf2b.md) | 174 | `result-track:5a12f2988e0ca25e9d4fcf2b98d413212c374aa37cefd6d2c052b229797be452` |
| 14 | `theorem` | [card_fiber_eq_of_mem_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean/declarations/card-fiber-eq-of-mem-range--823178da00cfe0aeb250148e.md) | 195 | `result-track:823178da00cfe0aeb250148eff3c18a96e4b7ed046e38be6cc57a282f4dc94ca` |
| 15 | `theorem` | [sum_hom_units_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean/declarations/sum-hom-units-eq-zero--f56572cc5eba83cd9a99b32b.md) | 218 | `result-track:f56572cc5eba83cd9a99b32b81a885ae55ae35d67b4aebe7dca7514157fb4a30` |
| 16 | `theorem` | [sum_hom_units](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant02ca7351a86f2e3f7543a3b9e232be03a97dd65ca6f7346602117bd2796c1107.lean/declarations/sum-hom-units--210d49f5d85fc4bb08a1909f.md) | 281 | `result-track:210d49f5d85fc4bb08a1909fc091e57f85596f523866f0c0aeb5310e61e0a330` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
