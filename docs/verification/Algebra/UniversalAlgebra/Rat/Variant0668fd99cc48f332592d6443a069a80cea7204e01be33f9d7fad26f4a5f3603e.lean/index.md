# Verification target: GRWTSK.Algebra.UniversalAlgebra.Rat.Variant0668fd99cc48f332592d6443a069a80cea7204e01be33f9d7fad26f4a5f3603e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "927ff6812ec1dd6f659744bce23fcebbb63e309f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Rat/Variant0668fd99cc48f332592d6443a069a80cea7204e01be33f9d7fad26f4a5f3603e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant0668fd99cc48f332592d6443a069a80cea7204e01be33f9d7fad26f4a5f3603e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant0668fd99cc48f332592d6443a069a80cea7204e01be33f9d7fad26f4a5f3603e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `927ff6812ec1dd6f659744bce23fcebbb63e309f`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Rat/Variant0668fd99cc48f332592d6443a069a80cea7204e01be33f9d7fad26f4a5f3603e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Rat/Variant0668fd99cc48f332592d6443a069a80cea7204e01be33f9d7fad26f4a5f3603e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Opposite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.NNRat.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Rat.instStarRing](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant0668fd99cc48f332592d6443a069a80cea7204e01be33f9d7fad26f4a5f3603e.lean/declarations/rat-inststarring--e6300f2a58bdfd0784314762.md) | 15 | `declaration-track:e6300f2a58bdfd0784314762ba322e1708e2609085c854f219bd224c7f55b45b` |
| 2 | `instance` | [NNRat.instStarRing](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant0668fd99cc48f332592d6443a069a80cea7204e01be33f9d7fad26f4a5f3603e.lean/declarations/nnrat-inststarring--3d60cfc1fabfe0502f7fbb73.md) | 16 | `declaration-track:3d60cfc1fabfe0502f7fbb735dd134fd30b5a270c84ad7b282a45be4ca50c541` |
| 3 | `instance` | [Rat.instTrivialStar](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant0668fd99cc48f332592d6443a069a80cea7204e01be33f9d7fad26f4a5f3603e.lean/declarations/rat-insttrivialstar--e6672ff488d20450e9f99091.md) | 17 | `declaration-track:e6672ff488d20450e9f990919d865bddb0a41e3fd291620967111e27dad819ca` |
| 4 | `instance` | [NNRat.instTrivialStar](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant0668fd99cc48f332592d6443a069a80cea7204e01be33f9d7fad26f4a5f3603e.lean/declarations/nnrat-insttrivialstar--2af3457218748f303a284e6a.md) | 18 | `declaration-track:2af3457218748f303a284e6af80f541d9b3ad5ea5b27dd991fd89b3fdfed3c14` |
| 5 | `lemma` | [star_nnratCast](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant0668fd99cc48f332592d6443a069a80cea7204e01be33f9d7fad26f4a5f3603e.lean/declarations/star-nnratcast--05294eadba3602b7e1dadac4.md) | 25 | `result-track:05294eadba3602b7e1dadac4060e313628db327a13563fb7a8c39f7b85e76a73` |
| 6 | `theorem` | [star_ratCast](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant0668fd99cc48f332592d6443a069a80cea7204e01be33f9d7fad26f4a5f3603e.lean/declarations/star-ratcast--ef2259ea3e31578527001abe.md) | 29 | `result-track:ef2259ea3e31578527001abee8bb5214e38310f550696db47d9231fec9e67e10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
