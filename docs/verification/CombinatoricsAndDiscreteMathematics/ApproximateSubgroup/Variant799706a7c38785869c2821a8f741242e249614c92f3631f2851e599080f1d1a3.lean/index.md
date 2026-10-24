# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ApproximateSubgroup.Variant799706a7c38785869c2821a8f741242e249614c92f3631f2851e599080f1d1a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1ff56a827f718bdf3d50a3c4fafa7bdb781cad7",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ApproximateSubgroup/Variant799706a7c38785869c2821a8f741242e249614c92f3631f2851e599080f1d1a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApproximateSubgroup/Variant799706a7c38785869c2821a8f741242e249614c92f3631f2851e599080f1d1a3.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApproximateSubgroup/Variant799706a7c38785869c2821a8f741242e249614c92f3631f2851e599080f1d1a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1ff56a827f718bdf3d50a3c4fafa7bdb781cad7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ApproximateSubgroup/Variant799706a7c38785869c2821a8f741242e249614c92f3631f2851e599080f1d1a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ApproximateSubgroup/Variant799706a7c38785869c2821a8f741242e249614c92f3631f2851e599080f1d1a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Pointwise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Additive.CovBySMul` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Additive.RuzsaCovering` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Additive.SmallTripling` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsApproximateAddSubgroup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApproximateSubgroup/Variant799706a7c38785869c2821a8f741242e249614c92f3631f2851e599080f1d1a3.lean/declarations/isapproximateaddsubgroup--af8f651dbba8fb167bad2416.md) | 55 | `declaration-track:af8f651dbba8fb167bad2416d504d412b5125234c0f39b632fd730a85740dd7b` |
| 2 | `structure` | [IsApproximateSubgroup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApproximateSubgroup/Variant799706a7c38785869c2821a8f741242e249614c92f3631f2851e599080f1d1a3.lean/declarations/isapproximatesubgroup--3bdbac74629170eca6b25c39.md) | 67 | `declaration-track:3bdbac74629170eca6b25c39cbfed9de90a0979ce721be6879db3bdd427e88a9` |
| 3 | `lemma` | [nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApproximateSubgroup/Variant799706a7c38785869c2821a8f741242e249614c92f3631f2851e599080f1d1a3.lean/declarations/nonempty--23afa6e73cbfd23ce7ff4f6d.md) | 74 | `result-track:23afa6e73cbfd23ce7ff4f6daf69671d72c29b50eca22d9235adebe37894dd5e` |
| 4 | `lemma` | [one_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApproximateSubgroup/Variant799706a7c38785869c2821a8f741242e249614c92f3631f2851e599080f1d1a3.lean/declarations/one-le--7076b107b2d116a7c8293b3d.md) | 77 | `result-track:7076b107b2d116a7c8293b3db7fa1c6581123f82616d8158057f09d98c77fa49` |
| 5 | `lemma` | [mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApproximateSubgroup/Variant799706a7c38785869c2821a8f741242e249614c92f3631f2851e599080f1d1a3.lean/declarations/mono--a77fae2f3c9754a51cf8ac8e.md) | 83 | `result-track:a77fae2f3c9754a51cf8ac8ec6b0f425e4fbd43ff17db940c61a413df23b0cb2` |
| 6 | `lemma` | [card_pow_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApproximateSubgroup/Variant799706a7c38785869c2821a8f741242e249614c92f3631f2851e599080f1d1a3.lean/declarations/card-pow-le--7914e027e7238d5ec290fb24.md) | 89 | `result-track:7914e027e7238d5ec290fb24bad09dd3631c5e125f991a82f36a8de53b72d7d6` |
| 7 | `lemma` | [card_mul_self_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApproximateSubgroup/Variant799706a7c38785869c2821a8f741242e249614c92f3631f2851e599080f1d1a3.lean/declarations/card-mul-self-le--32ac865f58e98c42c48a3dd1.md) | 103 | `result-track:32ac865f58e98c42c48a3dd1e4ed299cafa4a7e5226e00ccb3c90bde47097b45` |
| 8 | `lemma` | [image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApproximateSubgroup/Variant799706a7c38785869c2821a8f741242e249614c92f3631f2851e599080f1d1a3.lean/declarations/image--ececb7ccf21df2f607315871.md) | 107 | `result-track:ececb7ccf21df2f607315871028a43ee3a0758283ebef08616ceab600f98ece7` |
| 9 | `lemma` | [subgroup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApproximateSubgroup/Variant799706a7c38785869c2821a8f741242e249614c92f3631f2851e599080f1d1a3.lean/declarations/subgroup--ee71b0a76c736d7b4773c20e.md) | 122 | `result-track:ee71b0a76c736d7b4773c20edc592e7c3775370dc69f37db8e1b762ccde9dcca` |
| 10 | `lemma` | [of_small_tripling](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApproximateSubgroup/Variant799706a7c38785869c2821a8f741242e249614c92f3631f2851e599080f1d1a3.lean/declarations/of-small-tripling--73d19b53f5a1f8d02a5828e0.md) | 130 | `result-track:73d19b53f5a1f8d02a5828e0ddcf2e48fba01d55a9427a9f2ddc023d159f8b35` |
| 11 | `lemma` | [pow_inter_pow_covBySMul_sq_inter_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApproximateSubgroup/Variant799706a7c38785869c2821a8f741242e249614c92f3631f2851e599080f1d1a3.lean/declarations/pow-inter-pow-covbysmul-sq-inter-sq--6136912176f920a37e4bf52c.md) | 144 | `result-track:6136912176f920a37e4bf52c188aaf6f8b3e848988cd9030e8d1b9a43b261fbd` |
| 12 | `lemma` | [pow_inter_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApproximateSubgroup/Variant799706a7c38785869c2821a8f741242e249614c92f3631f2851e599080f1d1a3.lean/declarations/pow-inter-pow--4106df1bbcce93efeb78d157.md) | 172 | `result-track:4106df1bbcce93efeb78d157cdf128127532800773b2e92669acead0c44e2f52` |
| 13 | `lemma` | [isApproximateSubgroup_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ApproximateSubgroup/Variant799706a7c38785869c2821a8f741242e249614c92f3631f2851e599080f1d1a3.lean/declarations/isapproximatesubgroup-one--e6da46ebf98b7a437b6ad36b.md) | 190 | `result-track:e6da46ebf98b7a437b6ad36ba8f5ecdef6e72e58a90515a11181bab2627d37eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
