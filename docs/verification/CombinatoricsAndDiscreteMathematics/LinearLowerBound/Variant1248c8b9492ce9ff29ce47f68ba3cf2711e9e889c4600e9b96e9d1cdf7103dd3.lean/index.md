# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.LinearLowerBound.Variant1248c8b9492ce9ff29ce47f68ba3cf2711e9e889c4600e9b96e9d1cdf7103dd3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edf083bfafe260a493a471f90f2c87e2ab50d86c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LinearLowerBound/Variant1248c8b9492ce9ff29ce47f68ba3cf2711e9e889c4600e9b96e9d1cdf7103dd3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LinearLowerBound/Variant1248c8b9492ce9ff29ce47f68ba3cf2711e9e889c4600e9b96e9d1cdf7103dd3.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LinearLowerBound/Variant1248c8b9492ce9ff29ce47f68ba3cf2711e9e889c4600e9b96e9d1cdf7103dd3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edf083bfafe260a493a471f90f2c87e2ab50d86c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/LinearLowerBound/Variant1248c8b9492ce9ff29ce47f68ba3cf2711e9e889c4600e9b96e9d1cdf7103dd3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/LinearLowerBound/Variant1248c8b9492ce9ff29ce47f68ba3cf2711e9e889c4600e9b96e9d1cdf7103dd3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Pointwise.Finset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Pointwise` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.SuccPred` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [pow_ssubset_pow_succ_of_pow_ne_closure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LinearLowerBound/Variant1248c8b9492ce9ff29ce47f68ba3cf2711e9e889c4600e9b96e9d1cdf7103dd3.lean/declarations/pow-ssubset-pow-succ-of-pow-ne-closure--51a32f5812bcd6db8f3234e3.md) | 23 | `result-track:51a32f5812bcd6db8f3234e35cb6b13c874bed899d0b6422921b0dcf4b5ef464` |
| 2 | `lemma` | [pow_right_strictMonoOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LinearLowerBound/Variant1248c8b9492ce9ff29ce47f68ba3cf2711e9e889c4600e9b96e9d1cdf7103dd3.lean/declarations/pow-right-strictmonoon--d581b28df5bafb787e20d754.md) | 60 | `result-track:d581b28df5bafb787e20d754fb494b94b532c0d0d7cab4d3cb3133275f66a11d` |
| 3 | `lemma` | [pow_right_strictMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LinearLowerBound/Variant1248c8b9492ce9ff29ce47f68ba3cf2711e9e889c4600e9b96e9d1cdf7103dd3.lean/declarations/pow-right-strictmono--f9de83961545e92a8f30a4d9.md) | 74 | `result-track:f9de83961545e92a8f30a4d9ce8ceb1d1100bc7990dc679c1075f92328c7b954` |
| 4 | `lemma` | [add_one_le_card_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LinearLowerBound/Variant1248c8b9492ce9ff29ce47f68ba3cf2711e9e889c4600e9b96e9d1cdf7103dd3.lean/declarations/add-one-le-card-pow--8ac7951a51d79976ecc1b44b.md) | 84 | `result-track:8ac7951a51d79976ecc1b44ba91ba6c69f4676eb0230886891ccba500f53a2d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
