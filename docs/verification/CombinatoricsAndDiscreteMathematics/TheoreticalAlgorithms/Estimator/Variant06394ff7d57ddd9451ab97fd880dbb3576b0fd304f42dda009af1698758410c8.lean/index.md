# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Estimator.Variant06394ff7d57ddd9451ab97fd880dbb3576b0fd304f42dda009af1698758410c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f44659faeffe0ba2e4e140a2926b55c4a9a2ff71",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant06394ff7d57ddd9451ab97fd880dbb3576b0fd304f42dda009af1698758410c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant06394ff7d57ddd9451ab97fd880dbb3576b0fd304f42dda009af1698758410c8.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant06394ff7d57ddd9451ab97fd880dbb3576b0fd304f42dda009af1698758410c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f44659faeffe0ba2e4e140a2926b55c4a9a2ff71`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant06394ff7d57ddd9451ab97fd880dbb3576b0fd304f42dda009af1698758410c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant06394ff7d57ddd9451ab97fd880dbb3576b0fd304f42dda009af1698758410c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.EditDistance.Bounds` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Estimator` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LevenshteinEstimator'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant06394ff7d57ddd9451ab97fd880dbb3576b0fd304f42dda009af1698758410c8.lean/declarations/levenshteinestimator--37206407aa82950fcf74f55a.md) | 41 | `declaration-track:37206407aa82950fcf74f55aa3a0e8bbbb253e61962cbf2fe546738205c13763` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant06394ff7d57ddd9451ab97fd880dbb3576b0fd304f42dda009af1698758410c8.lean/declarations/instance--47fc1234d18ea56afad9392a.md) | 60 | `declaration-track:47fc1234d18ea56afad9392ae971525aed6378f9aec54f70305c0dade7c0400e` |
| 3 | `instance` | [estimator'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant06394ff7d57ddd9451ab97fd880dbb3576b0fd304f42dda009af1698758410c8.lean/declarations/estimator--a669b579d5ca692bfcbb6944.md) | 74 | `declaration-track:a669b579d5ca692bfcbb69449afcf78d5add7919088e918bc68b2292cc0117b9` |
| 4 | `def` | [LevenshteinEstimator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant06394ff7d57ddd9451ab97fd880dbb3576b0fd304f42dda009af1698758410c8.lean/declarations/levenshteinestimator--5c85b008a82ea57ee6668ad8.md) | 128 | `declaration-track:5c85b008a82ea57ee6668ad81f3318f45dc64cc893cec8b8cfeba2ffaf9fe798` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant06394ff7d57ddd9451ab97fd880dbb3576b0fd304f42dda009af1698758410c8.lean/declarations/instance--15b5171a13a824f651d1a1dc.md) | 131 | `declaration-track:15b5171a13a824f651d1a1dce753732999186c458c34e08394c2dd7b0c0a0cd0` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant06394ff7d57ddd9451ab97fd880dbb3576b0fd304f42dda009af1698758410c8.lean/declarations/instance--0cf1e3f8c2b51634185a168f.md) | 136 | `declaration-track:0cf1e3f8c2b51634185a168f20732e76f803100773d5a263168ddb2d9889543d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
