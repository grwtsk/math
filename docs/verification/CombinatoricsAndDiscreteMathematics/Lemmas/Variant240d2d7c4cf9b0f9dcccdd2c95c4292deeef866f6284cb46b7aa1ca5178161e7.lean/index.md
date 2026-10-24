# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Lemmas.Variant240d2d7c4cf9b0f9dcccdd2c95c4292deeef866f6284cb46b7aa1ca5178161e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "182bf55299123e8ef63ac89ba802ab65f1171497",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variant240d2d7c4cf9b0f9dcccdd2c95c4292deeef866f6284cb46b7aa1ca5178161e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant240d2d7c4cf9b0f9dcccdd2c95c4292deeef866f6284cb46b7aa1ca5178161e7.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant240d2d7c4cf9b0f9dcccdd2c95c4292deeef866f6284cb46b7aa1ca5178161e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `182bf55299123e8ef63ac89ba802ab65f1171497`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variant240d2d7c4cf9b0f9dcccdd2c95c4292deeef866f6284cb46b7aa1ca5178161e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Lemmas/Variant240d2d7c4cf9b0f9dcccdd2c95c4292deeef866f6284cb46b7aa1ca5178161e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.BigOperators.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Multiset.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dvd_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant240d2d7c4cf9b0f9dcccdd2c95c4292deeef866f6284cb46b7aa1ca5178161e7.lean/declarations/dvd-prod--6cc87800aecfa445e127d573.md) | 18 | `result-track:6cc87800aecfa445e127d57348aff1d22025f7694aa806e9f75815196d355cd6` |
| 2 | `theorem` | [prod_eq_one_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant240d2d7c4cf9b0f9dcccdd2c95c4292deeef866f6284cb46b7aa1ca5178161e7.lean/declarations/prod-eq-one-iff--4295b4f607c6ed7f2dbd1ed2.md) | 23 | `result-track:4295b4f607c6ed7f2dbd1ed282ffabb801faaa4173f66095e356d10de1487f54` |
| 3 | `lemma` | [CanonicallyOrderedCommSemiring.multiset_prod_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant240d2d7c4cf9b0f9dcccdd2c95c4292deeef866f6284cb46b7aa1ca5178161e7.lean/declarations/canonicallyorderedcommsemiring-multiset-prod-pos--a1cc222ddc881b32cfbfbdb5.md) | 32 | `result-track:a1cc222ddc881b32cfbfbdb52f9dcf5c58e8d293c26aaff10d3fb3ceb24bc44d` |
| 4 | `theorem` | [multiset_sum_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant240d2d7c4cf9b0f9dcccdd2c95c4292deeef866f6284cb46b7aa1ca5178161e7.lean/declarations/multiset-sum-right--10354941e5c5d7192f6ade82.md) | 44 | `result-track:10354941e5c5d7192f6ade828d87ccba73cee501195fd506c38481ba52224ac2` |
| 5 | `theorem` | [multiset_sum_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant240d2d7c4cf9b0f9dcccdd2c95c4292deeef866f6284cb46b7aa1ca5178161e7.lean/declarations/multiset-sum-left--64a72828d069e306ad859ecb.md) | 50 | `result-track:64a72828d069e306ad859ecb8ab5653e31b2a0834ebbb179396d8e68be547260` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
