# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.LinearLowerBound.Variantb841598eedc9869f496b761400058da51a9a24535c08469056b4c2f07c1fe657

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba280049736499ab933246646c2f7cd045e1f9f3",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LinearLowerBound/Variantb841598eedc9869f496b761400058da51a9a24535c08469056b4c2f07c1fe657.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LinearLowerBound/Variantb841598eedc9869f496b761400058da51a9a24535c08469056b4c2f07c1fe657.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LinearLowerBound/Variantb841598eedc9869f496b761400058da51a9a24535c08469056b4c2f07c1fe657.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba280049736499ab933246646c2f7cd045e1f9f3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/LinearLowerBound/Variantb841598eedc9869f496b761400058da51a9a24535c08469056b4c2f07c1fe657.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/LinearLowerBound/Variantb841598eedc9869f496b761400058da51a9a24535c08469056b4c2f07c1fe657.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Pointwise.Finset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Pointwise` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.SuccPred` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [pow_ssubset_pow_succ_of_pow_ne_closure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LinearLowerBound/Variantb841598eedc9869f496b761400058da51a9a24535c08469056b4c2f07c1fe657.lean/declarations/pow-ssubset-pow-succ-of-pow-ne-closure--bb9f03933deab7559f326bca.md) | 31 | `result-track:bb9f03933deab7559f326bcad350d5e2f8f22ecda7b974db8b6debcef0cba7c2` |
| 2 | `lemma` | [pow_right_strictMonoOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LinearLowerBound/Variantb841598eedc9869f496b761400058da51a9a24535c08469056b4c2f07c1fe657.lean/declarations/pow-right-strictmonoon--6a22bf33d434458f2bf4ef78.md) | 68 | `result-track:6a22bf33d434458f2bf4ef780b154cabc00ec2d05e936f9f676ce4d8dac345fa` |
| 3 | `lemma` | [pow_right_strictMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LinearLowerBound/Variantb841598eedc9869f496b761400058da51a9a24535c08469056b4c2f07c1fe657.lean/declarations/pow-right-strictmono--6d4842ae53883b3357e6c5b0.md) | 82 | `result-track:6d4842ae53883b3357e6c5b08289717a52afcc8cb8a5bcb4c7e6de0cced30f40` |
| 4 | `lemma` | [add_one_le_card_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LinearLowerBound/Variantb841598eedc9869f496b761400058da51a9a24535c08469056b4c2f07c1fe657.lean/declarations/add-one-le-card-pow--118b895848876a6e88bc2d16.md) | 92 | `result-track:118b895848876a6e88bc2d16026e974d0992fe1b3bf113b65509b46f16b0c2b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
