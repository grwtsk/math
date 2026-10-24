# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Multiset.Variante1a34fdb264cb70a9504870ed27ab32f117f6fa7aac29ded1eed0ed44c4ab457

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3ace74825f6b4be9d2757cb7e9a46fd01343ca7",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variante1a34fdb264cb70a9504870ed27ab32f117f6fa7aac29ded1eed0ed44c4ab457.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante1a34fdb264cb70a9504870ed27ab32f117f6fa7aac29ded1eed0ed44c4ab457.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante1a34fdb264cb70a9504870ed27ab32f117f6fa7aac29ded1eed0ed44c4ab457.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3ace74825f6b4be9d2757cb7e9a46fd01343ca7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variante1a34fdb264cb70a9504870ed27ab32f117f6fa7aac29ded1eed0ed44c4ab457.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Multiset/Variante1a34fdb264cb70a9504870ed27ab32f117f6fa7aac29ded1eed0ed44c4ab457.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Multiset.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Ring.List` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [CanonicallyOrderedAdd.multiset_prod_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante1a34fdb264cb70a9504870ed27ab32f117f6fa7aac29ded1eed0ed44c4ab457.lean/declarations/canonicallyorderedadd-multiset-prod-pos--62d1dae96966c9a17aca924c.md) | 27 | `result-track:62d1dae96966c9a17aca924c9585feba99372e571a06cbb9e7c1f9f07d093181` |
| 2 | `theorem` | [Multiset.le_prod_of_submultiplicative_on_pred_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante1a34fdb264cb70a9504870ed27ab32f117f6fa7aac29ded1eed0ed44c4ab457.lean/declarations/multiset-le-prod-of-submultiplicative-on-pred-of-nonneg--deadc8d1ecfcda8ae57c80d8.md) | 38 | `result-track:deadc8d1ecfcda8ae57c80d84bdc22d2940d6e89a3c64689d657234e5066be33` |
| 3 | `theorem` | [Multiset.le_prod_of_submultiplicative_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variante1a34fdb264cb70a9504870ed27ab32f117f6fa7aac29ded1eed0ed44c4ab457.lean/declarations/multiset-le-prod-of-submultiplicative-of-nonneg--54d65106f9607fd31d8f4379.md) | 53 | `result-track:54d65106f9607fd31d8f4379f282616051b751f012bf7e1778539ea77a42aef4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
