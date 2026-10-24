# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DershowitzManna.Variant7e3662d5f7c3877e96263c91b5e50728a54675af67162e1219ad4a8ecc5940ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cff3603c827eaf8b621403a04c5c975f0a8a8539",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant7e3662d5f7c3877e96263c91b5e50728a54675af67162e1219ad4a8ecc5940ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant7e3662d5f7c3877e96263c91b5e50728a54675af67162e1219ad4a8ecc5940ba.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant7e3662d5f7c3877e96263c91b5e50728a54675af67162e1219ad4a8ecc5940ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cff3603c827eaf8b621403a04c5c975f0a8a8539`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant7e3662d5f7c3877e96263c91b5e50728a54675af67162e1219ad4a8ecc5940ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant7e3662d5f7c3877e96263c91b5e50728a54675af67162e1219ad4a8ecc5940ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsDershowitzMannaLT](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant7e3662d5f7c3877e96263c91b5e50728a54675af67162e1219ad4a8ecc5940ba.lean/declarations/isdershowitzmannalt--b3d8ce87811c85ebc8560d7f.md) | 54 | `declaration-track:b3d8ce87811c85ebc8560d7fc7b7b76fe8d437c332cb186bab7012b6cfe9821c` |
| 2 | `lemma` | [IsDershowitzMannaLT.trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant7e3662d5f7c3877e96263c91b5e50728a54675af67162e1219ad4a8ecc5940ba.lean/declarations/isdershowitzmannalt-trans--47a792aa8011f9136d6ec868.md) | 62 | `result-track:47a792aa8011f9136d6ec8687a90f56f6a24390de3ebd9d0b174c9729c5e32c1` |
| 3 | `def` | [OneStep](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant7e3662d5f7c3877e96263c91b5e50728a54675af67162e1219ad4a8ecc5940ba.lean/declarations/onestep--8601f3fefb3691d5d1fc9e54.md) | 84 | `declaration-track:8601f3fefb3691d5d1fc9e54c91581b8cc55871f8fcc295b066ddf858061b825` |
| 4 | `lemma` | [isDershowitzMannaLT_of_oneStep](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant7e3662d5f7c3877e96263c91b5e50728a54675af67162e1219ad4a8ecc5940ba.lean/declarations/isdershowitzmannalt-of-onestep--c12681df318484429a393a5a.md) | 90 | `result-track:c12681df318484429a393a5a9428020c6c7d025b8558434e5ee7aa7d309d1761` |
| 5 | `lemma` | [isDershowitzMannaLT_singleton_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant7e3662d5f7c3877e96263c91b5e50728a54675af67162e1219ad4a8ecc5940ba.lean/declarations/isdershowitzmannalt-singleton-insert--8aab1c7f38e634ded7fd818b.md) | 95 | `result-track:8aab1c7f38e634ded7fd818b7b872168ba18f2b748f6a0223d9e7cc1ba075712` |
| 6 | `lemma` | [acc_oneStep_cons_of_acc_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant7e3662d5f7c3877e96263c91b5e50728a54675af67162e1219ad4a8ecc5940ba.lean/declarations/acc-onestep-cons-of-acc-lt--eef9d3e66b0d358be6123652.md) | 112 | `result-track:eef9d3e66b0d358be6123652db9832c9ac5932cae14c45cec1df05bcc95d4263` |
| 7 | `lemma` | [acc_oneStep_of_acc_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant7e3662d5f7c3877e96263c91b5e50728a54675af67162e1219ad4a8ecc5940ba.lean/declarations/acc-onestep-of-acc-lt--9f450118cc06a27279e997fb.md) | 131 | `result-track:9f450118cc06a27279e997fb23afd6439becd170895dd3e4c5fafbfffb5d14b7` |
| 8 | `lemma` | [isDershowitzMannaLT_singleton_wf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant7e3662d5f7c3877e96263c91b5e50728a54675af67162e1219ad4a8ecc5940ba.lean/declarations/isdershowitzmannalt-singleton-wf--f12102422d015a05a112c659.md) | 141 | `result-track:f12102422d015a05a112c6599ae55baeca20e8a220dfd78ff4f4458018331cd4` |
| 9 | `lemma` | [transGen_oneStep_of_isDershowitzMannaLT](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant7e3662d5f7c3877e96263c91b5e50728a54675af67162e1219ad4a8ecc5940ba.lean/declarations/transgen-onestep-of-isdershowitzmannalt--1b13f5b263121c23890242f8.md) | 145 | `result-track:1b13f5b263121c23890242f89ab1735826758147b3d6215df6ca6f7bf6bfa875` |
| 10 | `lemma` | [isDershowitzMannaLT_of_transGen_oneStep](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant7e3662d5f7c3877e96263c91b5e50728a54675af67162e1219ad4a8ecc5940ba.lean/declarations/isdershowitzmannalt-of-transgen-onestep--4481ee6fd820a5045789e55a.md) | 161 | `result-track:4481ee6fd820a5045789e55af93ab3d233deb8fc00af52a1556bfe797b2b19c5` |
| 11 | `lemma` | [transGen_oneStep_eq_isDershowitzMannaLT](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant7e3662d5f7c3877e96263c91b5e50728a54675af67162e1219ad4a8ecc5940ba.lean/declarations/transgen-onestep-eq-isdershowitzmannalt--741c52c157006b2c99691393.md) | 167 | `result-track:741c52c157006b2c99691393a402af5370ec749e7a1d35220ba7dd70a0349037` |
| 12 | `theorem` | [wellFounded_isDershowitzMannaLT](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant7e3662d5f7c3877e96263c91b5e50728a54675af67162e1219ad4a8ecc5940ba.lean/declarations/wellfounded-isdershowitzmannalt--397b313f7eb8daba014fcbeb.md) | 173 | `result-track:397b313f7eb8daba014fcbebee468504894d0a5d1d5e4f5cef796f2238ef3141` |
| 13 | `instance` | [instWellFoundedIsDershowitzMannaLT](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant7e3662d5f7c3877e96263c91b5e50728a54675af67162e1219ad4a8ecc5940ba.lean/declarations/instwellfoundedisdershowitzmannalt--57914365aecbd0dcab3e7da1.md) | 178 | `declaration-track:57914365aecbd0dcab3e7da1eda577d2ca6b9ace1a86faae96c1763151bdfd43` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
