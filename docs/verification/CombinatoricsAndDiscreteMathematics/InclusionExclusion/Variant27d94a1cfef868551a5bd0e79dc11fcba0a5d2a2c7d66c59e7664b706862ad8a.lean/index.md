# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.InclusionExclusion.Variant27d94a1cfef868551a5bd0e79dc11fcba0a5d2a2c7d66c59e7664b706862ad8a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a76512f90c7e12e3931cf71abbcb688eb9439cc7",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/InclusionExclusion/Variant27d94a1cfef868551a5bd0e79dc11fcba0a5d2a2c7d66c59e7664b706862ad8a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/InclusionExclusion/Variant27d94a1cfef868551a5bd0e79dc11fcba0a5d2a2c7d66c59e7664b706862ad8a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/InclusionExclusion/Variant27d94a1cfef868551a5bd0e79dc11fcba0a5d2a2c7d66c59e7664b706862ad8a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a76512f90c7e12e3931cf71abbcb688eb9439cc7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/InclusionExclusion/Variant27d94a1cfef868551a5bd0e79dc11fcba0a5d2a2c7d66c59e7664b706862ad8a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/InclusionExclusion/Variant27d94a1cfef868551a5bd0e79dc11fcba0a5d2a2c7d66c59e7664b706862ad8a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.BigOperators` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [prod_indicator_biUnion_sub_indicator](../../../../mathematics/CombinatoricsAndDiscreteMathematics/InclusionExclusion/Variant27d94a1cfef868551a5bd0e79dc11fcba0a5d2a2c7d66c59e7664b706862ad8a.lean/declarations/prod-indicator-biunion-sub-indicator--17309f99695462aa343b98f3.md) | 56 | `result-track:17309f99695462aa343b98f3e024eec0b7f069ab33ff8f6afbc450cb69fdef8f` |
| 2 | `theorem` | [inclusion_exclusion_sum_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/InclusionExclusion/Variant27d94a1cfef868551a5bd0e79dc11fcba0a5d2a2c7d66c59e7664b706862ad8a.lean/declarations/inclusion-exclusion-sum-biunion--f2ba38c82b206b2c6300b14e.md) | 69 | `result-track:f2ba38c82b206b2c6300b14e9feff345f0165e855639748e0e6e74384b0d84b4` |
| 3 | `theorem` | [inclusion_exclusion_card_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/InclusionExclusion/Variant27d94a1cfef868551a5bd0e79dc11fcba0a5d2a2c7d66c59e7664b706862ad8a.lean/declarations/inclusion-exclusion-card-biunion--10b89805f1a0de475055b39a.md) | 107 | `result-track:10b89805f1a0de475055b39a5ba437d002799e675eb864a5ccde857437fca6e9` |
| 4 | `theorem` | [inclusion_exclusion_sum_inf_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/InclusionExclusion/Variant27d94a1cfef868551a5bd0e79dc11fcba0a5d2a2c7d66c59e7664b706862ad8a.lean/declarations/inclusion-exclusion-sum-inf-compl--08ab245f37359f3b767732e4.md) | 118 | `result-track:08ab245f37359f3b767732e40cb58334a487850785420762d9576cea52baa03e` |
| 5 | `theorem` | [inclusion_exclusion_card_inf_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/InclusionExclusion/Variant27d94a1cfef868551a5bd0e79dc11fcba0a5d2a2c7d66c59e7664b706862ad8a.lean/declarations/inclusion-exclusion-card-inf-compl--061eb903dbbf923ee0ba2c9e.md) | 135 | `result-track:061eb903dbbf923ee0ba2c9e1ffd5ef7b0a333c1b3c0b218ec6282383c1b54e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
