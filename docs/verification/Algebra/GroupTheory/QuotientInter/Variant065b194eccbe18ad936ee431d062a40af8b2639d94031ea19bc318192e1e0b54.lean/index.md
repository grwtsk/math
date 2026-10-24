# Verification target: GRWTSK.Algebra.GroupTheory.QuotientInter.Variant065b194eccbe18ad936ee431d062a40af8b2639d94031ea19bc318192e1e0b54

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73e725caf70a23b812da56e1a7833da6794428d6",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/QuotientInter/Variant065b194eccbe18ad936ee431d062a40af8b2639d94031ea19bc318192e1e0b54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/QuotientInter/Variant065b194eccbe18ad936ee431d062a40af8b2639d94031ea19bc318192e1e0b54.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/QuotientInter/Variant065b194eccbe18ad936ee431d062a40af8b2639d94031ea19bc318192e1e0b54.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73e725caf70a23b812da56e1a7833da6794428d6`.

Source path: `GRWTSK/Algebra/GroupTheory/QuotientInter/Variant065b194eccbe18ad936ee431d062a40af8b2639d94031ea19bc318192e1e0b54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/QuotientInter/Variant065b194eccbe18ad936ee431d062a40af8b2639d94031ea19bc318192e1e0b54.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Finset.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [card_pow_quotient_mul_pow_inter_subgroup_le](../../../../../mathematics/Algebra/GroupTheory/QuotientInter/Variant065b194eccbe18ad936ee431d062a40af8b2639d94031ea19bc318192e1e0b54.lean/declarations/card-pow-quotient-mul-pow-inter-subgroup-le--46ceaa2c0bbc55c7696efcb2.md) | 33 | `result-track:46ceaa2c0bbc55c7696efcb264181cd622d2dbca9d45921713a5eeaeafba962f` |
| 2 | `lemma` | [le_card_quotient_mul_sq_inter_subgroup](../../../../../mathematics/Algebra/GroupTheory/QuotientInter/Variant065b194eccbe18ad936ee431d062a40af8b2639d94031ea19bc318192e1e0b54.lean/declarations/le-card-quotient-mul-sq-inter-subgroup--0fd7b66f0c7d16339b157f44.md) | 66 | `result-track:0fd7b66f0c7d16339b157f4470a029f31b19022811f753cdf500afa3b6368771` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
