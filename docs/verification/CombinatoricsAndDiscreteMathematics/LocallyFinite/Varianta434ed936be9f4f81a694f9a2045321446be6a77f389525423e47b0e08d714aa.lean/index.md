# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.LocallyFinite.Varianta434ed936be9f4f81a694f9a2045321446be6a77f389525423e47b0e08d714aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c32dacf651638ad7009e404174c458dfe1a75520",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LocallyFinite/Varianta434ed936be9f4f81a694f9a2045321446be6a77f389525423e47b0e08d714aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFinite/Varianta434ed936be9f4f81a694f9a2045321446be6a77f389525423e47b0e08d714aa.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFinite/Varianta434ed936be9f4f81a694f9a2045321446be6a77f389525423e47b0e08d714aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c32dacf651638ad7009e404174c458dfe1a75520`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/LocallyFinite/Varianta434ed936be9f4f81a694f9a2045321446be6a77f389525423e47b0e08d714aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/LocallyFinite/Varianta434ed936be9f4f81a694f9a2045321446be6a77f389525423e47b0e08d714aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Sigma` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Interval.Finset.SuccPred` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.SuccPred` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mul_prod_Ico_eq_prod_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFinite/Varianta434ed936be9f4f81a694f9a2045321446be6a77f389525423e47b0e08d714aa.lean/declarations/mul-prod-ico-eq-prod-icc--652e2af98c0b7c45dc2c55e1.md) | 37 | `result-track:652e2af98c0b7c45dc2c55e19622366b1942985277abd52f4603096408496521` |
| 2 | `lemma` | [prod_Ico_mul_eq_prod_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFinite/Varianta434ed936be9f4f81a694f9a2045321446be6a77f389525423e47b0e08d714aa.lean/declarations/prod-ico-mul-eq-prod-icc--441c5bdaf4a3ee653f7ffac0.md) | 44 | `result-track:441c5bdaf4a3ee653f7ffac08d2060c4c72326f6107974a36a4fe62fd3ebfd0f` |
| 3 | `lemma` | [mul_prod_Ioc_eq_prod_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFinite/Varianta434ed936be9f4f81a694f9a2045321446be6a77f389525423e47b0e08d714aa.lean/declarations/mul-prod-ioc-eq-prod-icc--ed343d0fe17654a94ed7533c.md) | 51 | `result-track:ed343d0fe17654a94ed7533c5ff65f56c88b010e65673c36c25e88b7f40d1104` |
| 4 | `lemma` | [prod_Ioc_mul_eq_prod_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFinite/Varianta434ed936be9f4f81a694f9a2045321446be6a77f389525423e47b0e08d714aa.lean/declarations/prod-ioc-mul-eq-prod-icc--8cd09f9145ba63c55d2ed9bb.md) | 58 | `result-track:8cd09f9145ba63c55d2ed9bb039b86f4e773e4572f22d26845f0834b6e128c5c` |
| 5 | `lemma` | [mul_prod_Ioo_eq_prod_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFinite/Varianta434ed936be9f4f81a694f9a2045321446be6a77f389525423e47b0e08d714aa.lean/declarations/mul-prod-ioo-eq-prod-ico--0c202817348c8a7d0358d304.md) | 65 | `result-track:0c202817348c8a7d0358d3044986f73f2fda0dfab66aab27de09a48e506fd591` |
| 6 | `lemma` | [prod_Ioo_mul_eq_prod_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFinite/Varianta434ed936be9f4f81a694f9a2045321446be6a77f389525423e47b0e08d714aa.lean/declarations/prod-ioo-mul-eq-prod-ico--cf29416220e140e4c0c26e23.md) | 72 | `result-track:cf29416220e140e4c0c26e23477a218e153172d96c49bf641ea42d3ec6b7e75c` |
| 7 | `lemma` | [mul_prod_Ioo_eq_prod_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFinite/Varianta434ed936be9f4f81a694f9a2045321446be6a77f389525423e47b0e08d714aa.lean/declarations/mul-prod-ioo-eq-prod-ioc--9de7f96607659417861f7cbc.md) | 79 | `result-track:9de7f96607659417861f7cbcab84adde115c38cb0da2f4641bd393da149fb37d` |
| 8 | `lemma` | [prod_Ioo_mul_eq_prod_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFinite/Varianta434ed936be9f4f81a694f9a2045321446be6a77f389525423e47b0e08d714aa.lean/declarations/prod-ioo-mul-eq-prod-ioc--6165da17596026c2b0903e47.md) | 86 | `result-track:6165da17596026c2b0903e4729362c2ae2625e87f856a72ffb4c701fcaae116e` |
| 9 | `theorem` | [prod_eq_prod_Ico_succ_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFinite/Varianta434ed936be9f4f81a694f9a2045321446be6a77f389525423e47b0e08d714aa.lean/declarations/prod-eq-prod-ico-succ-bot--24190a02fa72b3da36c531ec.md) | 95 | `result-track:24190a02fa72b3da36c531ece6166992ac9383bad5a2163c0374a10375e1b450` |
| 10 | `lemma` | [mul_prod_Ioi_eq_prod_Ici](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFinite/Varianta434ed936be9f4f81a694f9a2045321446be6a77f389525423e47b0e08d714aa.lean/declarations/mul-prod-ioi-eq-prod-ici--cddaf3f8e3135d0c3ac0e129.md) | 106 | `result-track:cddaf3f8e3135d0c3ac0e12991e664bf26d341c56ffb795f3f4c09c14cc60538` |
| 11 | `lemma` | [prod_Ioi_mul_eq_prod_Ici](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFinite/Varianta434ed936be9f4f81a694f9a2045321446be6a77f389525423e47b0e08d714aa.lean/declarations/prod-ioi-mul-eq-prod-ici--3d87fa1560e25d251622d52e.md) | 113 | `result-track:3d87fa1560e25d251622d52e89b54bd24b0344f4825b7eb56f5739cee016c898` |
| 12 | `lemma` | [mul_prod_Iio_eq_prod_Iic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFinite/Varianta434ed936be9f4f81a694f9a2045321446be6a77f389525423e47b0e08d714aa.lean/declarations/mul-prod-iio-eq-prod-iic--3a1bb1e40946dbee8c371bec.md) | 125 | `result-track:3a1bb1e40946dbee8c371bec314d20be5e902d9455a76cb2abab9c59c7001330` |
| 13 | `lemma` | [prod_Iio_mul_eq_prod_Iic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFinite/Varianta434ed936be9f4f81a694f9a2045321446be6a77f389525423e47b0e08d714aa.lean/declarations/prod-iio-mul-eq-prod-iic--047688db0c5651da84bd0fec.md) | 132 | `result-track:047688db0c5651da84bd0fecfd309487995095c80bab8723126f193a90f44fc0` |
| 14 | `lemma` | [sum_Ico_add_eq_sum_Ico_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFinite/Varianta434ed936be9f4f81a694f9a2045321446be6a77f389525423e47b0e08d714aa.lean/declarations/sum-ico-add-eq-sum-ico-add-one--90bd333ed799632b38dcadaf.md) | 150 | `result-track:90bd333ed799632b38dcadafe39d94d27d22c0ceb2cebd2a0dbe772ecd41e91f` |
| 15 | `lemma` | [prod_Ico_mul_eq_prod_Ico_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFinite/Varianta434ed936be9f4f81a694f9a2045321446be6a77f389525423e47b0e08d714aa.lean/declarations/prod-ico-mul-eq-prod-ico-add-one--f7a1a9de4b2c7f15520b3ad7.md) | 154 | `result-track:f7a1a9de4b2c7f15520b3ad7f7b5becefec6e141acf0c811aa720bb84ec6bf0e` |
| 16 | `lemma` | [prod_prod_Ioi_mul_eq_prod_prod_off_diag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFinite/Varianta434ed936be9f4f81a694f9a2045321446be6a77f389525423e47b0e08d714aa.lean/declarations/prod-prod-ioi-mul-eq-prod-prod-off-diag--b155a79880d15f92f4f2ce2c.md) | 163 | `result-track:b155a79880d15f92f4f2ce2c5ca41f3a2a6dbf64def76eb52eb3500fc760fc21` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
