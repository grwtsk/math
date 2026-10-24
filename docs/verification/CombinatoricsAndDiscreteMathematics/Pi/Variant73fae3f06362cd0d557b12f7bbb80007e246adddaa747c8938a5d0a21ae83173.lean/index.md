# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Pi.Variant73fae3f06362cd0d557b12f7bbb80007e246adddaa747c8938a5d0a21ae83173

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7e79533346a2114ef641f6ac77df96e2bd2ba4b",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant73fae3f06362cd0d557b12f7bbb80007e246adddaa747c8938a5d0a21ae83173.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant73fae3f06362cd0d557b12f7bbb80007e246adddaa747c8938a5d0a21ae83173.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant73fae3f06362cd0d557b12f7bbb80007e246adddaa747c8938a5d0a21ae83173.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7e79533346a2114ef641f6ac77df96e2bd2ba4b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant73fae3f06362cd0d557b12f7bbb80007e246adddaa747c8938a5d0a21ae83173.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Pi/Variant73fae3f06362cd0d557b12f7bbb80007e246adddaa747c8938a5d0a21ae83173.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Piecewise` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.GroupWithZero.Finset` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Pi` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Indicator` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [list_prod_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant73fae3f06362cd0d557b12f7bbb80007e246adddaa747c8938a5d0a21ae83173.lean/declarations/list-prod-apply--7197ccba33fc4dd467c769b6.md) | 29 | `result-track:7197ccba33fc4dd467c769b69bb37217fe3379ddb33a5175f7c050ecbf69501c` |
| 2 | `theorem` | [multiset_prod_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant73fae3f06362cd0d557b12f7bbb80007e246adddaa747c8938a5d0a21ae83173.lean/declarations/multiset-prod-apply--6745069417beac992010bb54.md) | 34 | `result-track:6745069417beac992010bb54a269a2d42a834b7910b96f8380283cebb0607b6b` |
| 3 | `theorem` | [Finset.prod_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant73fae3f06362cd0d557b12f7bbb80007e246adddaa747c8938a5d0a21ae83173.lean/declarations/finset-prod-apply--9fccf042590abf0098b2b143.md) | 41 | `result-track:9fccf042590abf0098b2b14317f6949517a546d6681c974d564e5ff0310645b8` |
| 4 | `theorem` | [Finset.prod_fn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant73fae3f06362cd0d557b12f7bbb80007e246adddaa747c8938a5d0a21ae83173.lean/declarations/finset-prod-fn--4da05caf5c46d1d2fac06f6b.md) | 47 | `result-track:4da05caf5c46d1d2fac06f6b408f36229f15dc42f20e86cbd0c9cb09606bb280` |
| 5 | `theorem` | [Fintype.prod_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant73fae3f06362cd0d557b12f7bbb80007e246adddaa747c8938a5d0a21ae83173.lean/declarations/fintype-prod-apply--28a2611f7e0d5812f9d7fca8.md) | 52 | `result-track:28a2611f7e0d5812f9d7fca8c0226b960075bc14b78c4a0ef846e3bda920dde1` |
| 6 | `theorem` | [prod_mk_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant73fae3f06362cd0d557b12f7bbb80007e246adddaa747c8938a5d0a21ae83173.lean/declarations/prod-mk-prod--d187312dc8616fc8ede1ea03.md) | 57 | `result-track:d187312dc8616fc8ede1ea036fc23d739b5879b33295a1367169fb7db4692f83` |
| 7 | `theorem` | [pi_eq_sum_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant73fae3f06362cd0d557b12f7bbb80007e246adddaa747c8938a5d0a21ae83173.lean/declarations/pi-eq-sum-univ--f48c656b7fb73d784f622f4e.md) | 63 | `result-track:f48c656b7fb73d784f622f4edeb1be47acc0fa2e90dfa9d07e3b1fdd2ee98900` |
| 8 | `lemma` | [prod_indicator_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant73fae3f06362cd0d557b12f7bbb80007e246adddaa747c8938a5d0a21ae83173.lean/declarations/prod-indicator-apply--14a3cfd4b0e0efe21664b8f9.md) | 71 | `result-track:14a3cfd4b0e0efe21664b8f999f83b8a0834657176c1b0237c3b1a836834c918` |
| 9 | `lemma` | [prod_indicator](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant73fae3f06362cd0d557b12f7bbb80007e246adddaa747c8938a5d0a21ae83173.lean/declarations/prod-indicator--577f8fdb1009eb28025620f2.md) | 82 | `result-track:577f8fdb1009eb28025620f2286d56694ea70d91bf6f5b09af9e92c7fedb8895` |
| 10 | `lemma` | [prod_indicator_const_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant73fae3f06362cd0d557b12f7bbb80007e246adddaa747c8938a5d0a21ae83173.lean/declarations/prod-indicator-const-apply--e2e5507cd49c8c22ee1070db.md) | 86 | `result-track:e2e5507cd49c8c22ee1070db9ef4da2b1a455c52db319aafb9dcafb2babf9bd3` |
| 11 | `lemma` | [prod_indicator_const](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant73fae3f06362cd0d557b12f7bbb80007e246adddaa747c8938a5d0a21ae83173.lean/declarations/prod-indicator-const--848bc4588ae2d0c04dba2546.md) | 90 | `result-track:848bc4588ae2d0c04dba2546884f751773f65bed2a0e47b8cc822fd74bff2f6e` |
| 12 | `theorem` | [Finset.univ_prod_mulSingle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant73fae3f06362cd0d557b12f7bbb80007e246adddaa747c8938a5d0a21ae83173.lean/declarations/finset-univ-prod-mulsingle--7af716026cdcd89c748018cb.md) | 101 | `result-track:7af716026cdcd89c748018cbd6fa540652076dac99a6e584f3b4f86b42269442` |
| 13 | `theorem` | [MonoidHom.functions_ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant73fae3f06362cd0d557b12f7bbb80007e246adddaa747c8938a5d0a21ae83173.lean/declarations/monoidhom-functions-ext--eb71f541fcc3d16d77ca2e0f.md) | 107 | `result-track:eb71f541fcc3d16d77ca2e0ff2b5f52b9c5cb203f983aa0ae75d9ad84e086a21` |
| 14 | `theorem` | [MonoidHom.functions_ext'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant73fae3f06362cd0d557b12f7bbb80007e246adddaa747c8938a5d0a21ae83173.lean/declarations/monoidhom-functions-ext--e5ebdf8f4250441597374349.md) | 119 | `result-track:e5ebdf8f425044159737434944d42183b48f84346072116cb93d462ade642620` |
| 15 | `theorem` | [RingHom.functions_ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant73fae3f06362cd0d557b12f7bbb80007e246adddaa747c8938a5d0a21ae83173.lean/declarations/ringhom-functions-ext--f6defd9ad21b4b17e41f386b.md) | 133 | `result-track:f6defd9ad21b4b17e41f386bbe7a874481b82478aaf305d26d8e3209a7bfd47b` |
| 16 | `theorem` | [fst_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant73fae3f06362cd0d557b12f7bbb80007e246adddaa747c8938a5d0a21ae83173.lean/declarations/fst-prod--9781222d2bb488bc4ea393c6.md) | 145 | `result-track:9781222d2bb488bc4ea393c66e74dd08d940b61b224177461e29dba4a16b8ddc` |
| 17 | `theorem` | [snd_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant73fae3f06362cd0d557b12f7bbb80007e246adddaa747c8938a5d0a21ae83173.lean/declarations/snd-prod--cf5d3d9e9a2988ff04d370c2.md) | 149 | `result-track:cf5d3d9e9a2988ff04d370c2e5f257cdc5b25feb99bcf8b22f2025932fee6f1a` |
| 18 | `def` | [Pi.monoidHomMulEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant73fae3f06362cd0d557b12f7bbb80007e246adddaa747c8938a5d0a21ae83173.lean/declarations/pi-monoidhommulequiv--29345f8c0e72da7102cdf9ea.md) | 161 | `declaration-track:29345f8c0e72da7102cdf9ea76975f510e5d55c3e4fde716204e3fc41228d82a` |
| 19 | `lemma` | [Pi.single_induction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant73fae3f06362cd0d557b12f7bbb80007e246adddaa747c8938a5d0a21ae83173.lean/declarations/pi-single-induction--5a1075501157ce9653a39185.md) | 194 | `result-track:5a1075501157ce9653a39185dbf31ccfbba57bab30ba207b456c10515fc359fa` |
| 20 | `lemma` | [Pi.mulSingle_induction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant73fae3f06362cd0d557b12f7bbb80007e246adddaa747c8938a5d0a21ae83173.lean/declarations/pi-mulsingle-induction--5e6d20739f6294d427624c8c.md) | 202 | `result-track:5e6d20739f6294d427624c8c6ed3cb59d3ff9ea036deaaa50576870e0e107e3e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
