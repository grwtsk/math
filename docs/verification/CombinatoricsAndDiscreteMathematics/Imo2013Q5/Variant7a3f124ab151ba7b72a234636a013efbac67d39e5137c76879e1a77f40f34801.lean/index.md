# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Imo2013Q5.Variant7a3f124ab151ba7b72a234636a013efbac67d39e5137c76879e1a77f40f34801

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f55c4decc67bc79af6e5732c83fad0752627a7f7",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2013Q5/Variant7a3f124ab151ba7b72a234636a013efbac67d39e5137c76879e1a77f40f34801.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2013Q5/Variant7a3f124ab151ba7b72a234636a013efbac67d39e5137c76879e1a77f40f34801.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2013Q5/Variant7a3f124ab151ba7b72a234636a013efbac67d39e5137c76879e1a77f40f34801.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f55c4decc67bc79af6e5732c83fad0752627a7f7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2013Q5/Variant7a3f124ab151ba7b72a234636a013efbac67d39e5137c76879e1a77f40f34801.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Imo2013Q5/Variant7a3f124ab151ba7b72a234636a013efbac67d39e5137c76879e1a77f40f34801.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GeomSum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Archimedean` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [le_of_all_pow_lt_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2013Q5/Variant7a3f124ab151ba7b72a234636a013efbac67d39e5137c76879e1a77f40f34801.lean/declarations/le-of-all-pow-lt-succ--7cc491869916f2e3c0ceb8b8.md) | 32 | `result-track:7cc491869916f2e3c0ceb8b810103aaacc6de9208ebb606996057d1e3ac49f83` |
| 2 | `theorem` | [le_of_all_pow_lt_succ'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2013Q5/Variant7a3f124ab151ba7b72a234636a013efbac67d39e5137c76879e1a77f40f34801.lean/declarations/le-of-all-pow-lt-succ--145806a12afeb7c82fec8e0a.md) | 63 | `result-track:145806a12afeb7c82fec8e0aad79132795e7178982533556f7612eae2b37c3ac` |
| 3 | `theorem` | [f_pos_of_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2013Q5/Variant7a3f124ab151ba7b72a234636a013efbac67d39e5137c76879e1a77f40f34801.lean/declarations/f-pos-of-pos--737aa37621bd1a2ecd2f9f88.md) | 79 | `result-track:737aa37621bd1a2ecd2f9f88c19479675c956de023f5b3d76e051f0d389d13d4` |
| 4 | `theorem` | [fx_gt_xm1](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2013Q5/Variant7a3f124ab151ba7b72a234636a013efbac67d39e5137c76879e1a77f40f34801.lean/declarations/fx-gt-xm1--0f58125798112e78635709f2.md) | 97 | `result-track:0f58125798112e78635709f2c695556f93f24831ebd8790d36684da9f0a84b21` |
| 5 | `theorem` | [pow_f_le_f_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2013Q5/Variant7a3f124ab151ba7b72a234636a013efbac67d39e5137c76879e1a77f40f34801.lean/declarations/pow-f-le-f-pow--003985f39ec2e2a7509e9a92.md) | 113 | `result-track:003985f39ec2e2a7509e9a926a42f9130edadd4f3384663d2d10bb9939165652` |
| 6 | `theorem` | [fixed_point_of_pos_nat_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2013Q5/Variant7a3f124ab151ba7b72a234636a013efbac67d39e5137c76879e1a77f40f34801.lean/declarations/fixed-point-of-pos-nat-pow--1772c831d343d78bedb85e7b.md) | 127 | `result-track:1772c831d343d78bedb85e7b6f226669aa85c43be656005f052c465558c3564b` |
| 7 | `theorem` | [fixed_point_of_gt_1](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2013Q5/Variant7a3f124ab151ba7b72a234636a013efbac67d39e5137c76879e1a77f40f34801.lean/declarations/fixed-point-of-gt-1--eb8b160131ca1d6aacc68b1f.md) | 138 | `result-track:eb8b160131ca1d6aacc68b1f108954888ec6dbb36b7380ed7985c83d4fa6a8f9` |
| 8 | `theorem` | [imo2013_q5](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2013Q5/Variant7a3f124ab151ba7b72a234636a013efbac67d39e5137c76879e1a77f40f34801.lean/declarations/imo2013-q5--671a7ca0a96792efea63f7e4.md) | 164 | `result-track:671a7ca0a96792efea63f7e4c98e7f3d94fcea909d173f62c0666cf278ebc17d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
