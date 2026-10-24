# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Fintype.Variant8a5d1eaaf8919dceeab6eb6e6b3b2738f444ed38020861022215ca31fcf9d174

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8757a58c1353259472ce584efbf2955d6943ed1",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fintype/Variant8a5d1eaaf8919dceeab6eb6e6b3b2738f444ed38020861022215ca31fcf9d174.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant8a5d1eaaf8919dceeab6eb6e6b3b2738f444ed38020861022215ca31fcf9d174.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant8a5d1eaaf8919dceeab6eb6e6b3b2738f444ed38020861022215ca31fcf9d174.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8757a58c1353259472ce584efbf2955d6943ed1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Fintype/Variant8a5d1eaaf8919dceeab6eb6e6b3b2738f444ed38020861022215ca31fcf9d174.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Fintype/Variant8a5d1eaaf8919dceeab6eb6e6b3b2738f444ed38020861022215ca31fcf9d174.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Single` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Finsupp.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant8a5d1eaaf8919dceeab6eb6e6b3b2738f444ed38020861022215ca31fcf9d174.lean/declarations/finsupp-fintype--46fdc1f0beeaba6b027f9936.md) | 27 | `declaration-track:46fdc1f0beeaba6b027f993679a6d303c78a821387b9186bf9918c0f0e2a6da8` |
| 2 | `instance` | [Finsupp.infinite_of_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant8a5d1eaaf8919dceeab6eb6e6b3b2738f444ed38020861022215ca31fcf9d174.lean/declarations/finsupp-infinite-of-left--9fe34f419dd6a8683b326a32.md) | 30 | `declaration-track:9fe34f419dd6a8683b326a3269cec324c352c17ac7c0b0b0a3cc8cd729befacb` |
| 3 | `instance` | [Finsupp.infinite_of_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant8a5d1eaaf8919dceeab6eb6e6b3b2738f444ed38020861022215ca31fcf9d174.lean/declarations/finsupp-infinite-of-right--b09497de0a2b787b979d65ff.md) | 34 | `declaration-track:b09497de0a2b787b979d65ff1289455feed4bde3edfe19db4b78f4d88e478b41` |
| 4 | `lemma` | [Fintype.card_finsupp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant8a5d1eaaf8919dceeab6eb6e6b3b2738f444ed38020861022215ca31fcf9d174.lean/declarations/fintype-card-finsupp--0e35431b2671c297d0ccd668.md) | 39 | `result-track:0e35431b2671c297d0ccd668676f88d998cbde085b5311392389d24277539730` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
