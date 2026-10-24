# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Multiset.Variantd117826ea3aff612069b0e3e344f51bb7195f905bac7c90264af5c9ddfd2f374

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fdd55c3b75c8fd96988038b37f80ea5960543d26",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variantd117826ea3aff612069b0e3e344f51bb7195f905bac7c90264af5c9ddfd2f374.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantd117826ea3aff612069b0e3e344f51bb7195f905bac7c90264af5c9ddfd2f374.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantd117826ea3aff612069b0e3e344f51bb7195f905bac7c90264af5c9ddfd2f374.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fdd55c3b75c8fd96988038b37f80ea5960543d26`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variantd117826ea3aff612069b0e3e344f51bb7195f905bac7c90264af5c9ddfd2f374.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Multiset/Variantd117826ea3aff612069b0e3e344f51bb7195f905bac7c90264af5c9ddfd2f374.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Multiset.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Ring.List` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [CanonicallyOrderedAdd.multiset_prod_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantd117826ea3aff612069b0e3e344f51bb7195f905bac7c90264af5c9ddfd2f374.lean/declarations/canonicallyorderedadd-multiset-prod-pos--20a78b86d579dda942b0c1dc.md) | 19 | `result-track:20a78b86d579dda942b0c1dc7e7d5982352a01c6bed74114b9e0bdaa6ecb70a4` |
| 2 | `theorem` | [Multiset.le_prod_of_submultiplicative_on_pred_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantd117826ea3aff612069b0e3e344f51bb7195f905bac7c90264af5c9ddfd2f374.lean/declarations/multiset-le-prod-of-submultiplicative-on-pred-of-nonneg--148b63b9c647bc728eee39cb.md) | 30 | `result-track:148b63b9c647bc728eee39cbe2d493bc5e72f793acc45d6a43e855aa2de5d4bf` |
| 3 | `theorem` | [Multiset.le_prod_of_submultiplicative_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantd117826ea3aff612069b0e3e344f51bb7195f905bac7c90264af5c9ddfd2f374.lean/declarations/multiset-le-prod-of-submultiplicative-of-nonneg--b43fe4e780bd80a8d34667f9.md) | 45 | `result-track:b43fe4e780bd80a8d34667f9282a088709e008b7cf67277d38888f6076cefde7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
