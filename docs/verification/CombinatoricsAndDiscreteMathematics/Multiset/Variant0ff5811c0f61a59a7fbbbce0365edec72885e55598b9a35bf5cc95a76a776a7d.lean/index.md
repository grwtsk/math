# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Multiset.Variant0ff5811c0f61a59a7fbbbce0365edec72885e55598b9a35bf5cc95a76a776a7d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a11852e8cd254374ed8f5f1f13485533e3b4e1f1",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant0ff5811c0f61a59a7fbbbce0365edec72885e55598b9a35bf5cc95a76a776a7d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant0ff5811c0f61a59a7fbbbce0365edec72885e55598b9a35bf5cc95a76a776a7d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant0ff5811c0f61a59a7fbbbce0365edec72885e55598b9a35bf5cc95a76a776a7d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a11852e8cd254374ed8f5f1f13485533e3b4e1f1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant0ff5811c0f61a59a7fbbbce0365edec72885e55598b9a35bf5cc95a76a776a7d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Multiset/Variant0ff5811c0f61a59a7fbbbce0365edec72885e55598b9a35bf5cc95a76a776a7d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Interval.Finset.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Multiset` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [map_add_left_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant0ff5811c0f61a59a7fbbbce0365edec72885e55598b9a35bf5cc95a76a776a7d.lean/declarations/map-add-left-icc--0f455c2aceb26cdb165a8cad.md) | 29 | `result-track:0f455c2aceb26cdb165a8cada6e7ee93e40717b7cb062f1a23b638ad99fb4645` |
| 2 | `lemma` | [map_add_left_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant0ff5811c0f61a59a7fbbbce0365edec72885e55598b9a35bf5cc95a76a776a7d.lean/declarations/map-add-left-ico--281d72ce9f14f541b222721f.md) | 33 | `result-track:281d72ce9f14f541b222721f15d83ce29ff062f401b97bf611a774b3eed0d46e` |
| 3 | `lemma` | [map_add_left_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant0ff5811c0f61a59a7fbbbce0365edec72885e55598b9a35bf5cc95a76a776a7d.lean/declarations/map-add-left-ioc--8531d305bac2ed2a1b18f502.md) | 37 | `result-track:8531d305bac2ed2a1b18f5022a9301970dba36eed6da83d55bcc3acc3bb1819b` |
| 4 | `lemma` | [map_add_left_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant0ff5811c0f61a59a7fbbbce0365edec72885e55598b9a35bf5cc95a76a776a7d.lean/declarations/map-add-left-ioo--6832afdd880ff2a5a1ade91f.md) | 41 | `result-track:6832afdd880ff2a5a1ade91fd7dcc32e7a02c786eaa86beb692b73fa6f4ac088` |
| 5 | `lemma` | [map_add_right_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant0ff5811c0f61a59a7fbbbce0365edec72885e55598b9a35bf5cc95a76a776a7d.lean/declarations/map-add-right-icc--aa8a84e870e4ac915a2f879b.md) | 45 | `result-track:aa8a84e870e4ac915a2f879b032ed12142d0927beda4845d6c2307227d3673e5` |
| 6 | `lemma` | [map_add_right_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant0ff5811c0f61a59a7fbbbce0365edec72885e55598b9a35bf5cc95a76a776a7d.lean/declarations/map-add-right-ico--52c4b1b9713fe6d69c148bb1.md) | 49 | `result-track:52c4b1b9713fe6d69c148bb1f686c0d3a27bd261d2ce52e8b7980e0bcf614721` |
| 7 | `lemma` | [map_add_right_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant0ff5811c0f61a59a7fbbbce0365edec72885e55598b9a35bf5cc95a76a776a7d.lean/declarations/map-add-right-ioc--6b637b81fe8ddb2bcdb8c73d.md) | 53 | `result-track:6b637b81fe8ddb2bcdb8c73d02cdb9bb21d21679b904e75ec09dd685717acc37` |
| 8 | `lemma` | [map_add_right_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant0ff5811c0f61a59a7fbbbce0365edec72885e55598b9a35bf5cc95a76a776a7d.lean/declarations/map-add-right-ioo--c65a3980a8e2e82319709d7e.md) | 57 | `result-track:c65a3980a8e2e82319709d7e9005f7e16e767a55368dc464e29428c8eb70c20c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
