# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Shrink.Variant448c40c96b2fd1da063192a60f00263c4da875c44595fa897df188ed81c396dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ac7188f0ed7ace7467ea6dac86aee87198fdbdf",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Variant448c40c96b2fd1da063192a60f00263c4da875c44595fa897df188ed81c396dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Variant448c40c96b2fd1da063192a60f00263c4da875c44595fa897df188ed81c396dd.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Variant448c40c96b2fd1da063192a60f00263c4da875c44595fa897df188ed81c396dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ac7188f0ed7ace7467ea6dac86aee87198fdbdf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Variant448c40c96b2fd1da063192a60f00263c4da875c44595fa897df188ed81c396dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Variant448c40c96b2fd1da063192a60f00263c4da875c44595fa897df188ed81c396dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.SuccPred.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Small.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Variant448c40c96b2fd1da063192a60f00263c4da875c44595fa897df188ed81c396dd.lean/declarations/instance--0234a835027def155a2f384f.md) | 21 | `declaration-track:0234a835027def155a2f384ff19669fb80b0be78c84053cbb72174c6cb8f340b` |
| 2 | `def` | [orderIsoShrink](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Variant448c40c96b2fd1da063192a60f00263c4da875c44595fa897df188ed81c396dd.lean/declarations/orderisoshrink--bf1bfb1bdd3910cde59f15db.md) | 27 | `declaration-track:bf1bfb1bdd3910cde59f15dbf1e78fd33e2a9c0a4b905cf3a05f8af9a52bc220` |
| 3 | `lemma` | [orderIsoShrink_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Variant448c40c96b2fd1da063192a60f00263c4da875c44595fa897df188ed81c396dd.lean/declarations/orderisoshrink-apply--865843b9e3877ef31ad260bc.md) | 38 | `result-track:865843b9e3877ef31ad260bcf70164ee92f914aa0e2fc47ff43735e70909e5db` |
| 4 | `lemma` | [orderIsoShrink_symm_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Variant448c40c96b2fd1da063192a60f00263c4da875c44595fa897df188ed81c396dd.lean/declarations/orderisoshrink-symm-apply--5f701a1f2a6b0113fdc5e575.md) | 42 | `result-track:5f701a1f2a6b0113fdc5e575eaeeba9e7e8b5e16cc7585516d76e8e23089ee1e` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Variant448c40c96b2fd1da063192a60f00263c4da875c44595fa897df188ed81c396dd.lean/declarations/instance--f579f7414cf3d60621a338e0.md) | 45 | `declaration-track:f579f7414cf3d60621a338e0f803aad85469a86141333d5c8ef9a304bf1cbdb1` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Variant448c40c96b2fd1da063192a60f00263c4da875c44595fa897df188ed81c396dd.lean/declarations/instance--8324fc76948e1e75eb1664fd.md) | 48 | `declaration-track:8324fc76948e1e75eb1664fd742930021d66094a01286fd55199e77726d99858` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Variant448c40c96b2fd1da063192a60f00263c4da875c44595fa897df188ed81c396dd.lean/declarations/instance--5528f1ad9993d81aaacb3334.md) | 52 | `declaration-track:5528f1ad9993d81aaacb3334a43408ecc9479fe5fc6f93df6ac7ea075701b877` |
| 8 | `lemma` | [equivShrink_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Variant448c40c96b2fd1da063192a60f00263c4da875c44595fa897df188ed81c396dd.lean/declarations/equivshrink-bot--6a83be19632d71bbf91afbc7.md) | 56 | `result-track:6a83be19632d71bbf91afbc7e192d20379fb6e2315bae495b6bfdea75d9b96dd` |
| 9 | `lemma` | [equivShrink_symm_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Variant448c40c96b2fd1da063192a60f00263c4da875c44595fa897df188ed81c396dd.lean/declarations/equivshrink-symm-bot--2babbee1444e03dd44be243c.md) | 59 | `result-track:2babbee1444e03dd44be243cb652f2b9cf6e49a6ecd9ceb3b7365d7e4c291204` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Variant448c40c96b2fd1da063192a60f00263c4da875c44595fa897df188ed81c396dd.lean/declarations/instance--53047ad1460ecec40565a84a.md) | 62 | `declaration-track:53047ad1460ecec40565a84a6ea16b13c4befd6bf8ba319069c7491513dcbd9c` |
| 11 | `lemma` | [equivShrink_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Variant448c40c96b2fd1da063192a60f00263c4da875c44595fa897df188ed81c396dd.lean/declarations/equivshrink-top--94037eafbb703d11fcb7ae5d.md) | 66 | `result-track:94037eafbb703d11fcb7ae5d7996d8194d86fbe472e05fde2a3ddb4086480333` |
| 12 | `lemma` | [equivShrink_symm_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Variant448c40c96b2fd1da063192a60f00263c4da875c44595fa897df188ed81c396dd.lean/declarations/equivshrink-symm-top--c37310beaa42d2511209fe35.md) | 69 | `result-track:c37310beaa42d2511209fe3519f015e43e328a1bd356984e76e43fcd85873d3d` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Variant448c40c96b2fd1da063192a60f00263c4da875c44595fa897df188ed81c396dd.lean/declarations/instance--c2710645738a6e247d22e7eb.md) | 76 | `declaration-track:c2710645738a6e247d22e7eb82e23ff6e99d8a45ebdd600a1e2430430e07d674` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Variant448c40c96b2fd1da063192a60f00263c4da875c44595fa897df188ed81c396dd.lean/declarations/instance--cc68fda404fd12ad6961cf3c.md) | 82 | `declaration-track:cc68fda404fd12ad6961cf3c3225e3beb442484c28052b4776a7d9e73bfa37d3` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Variant448c40c96b2fd1da063192a60f00263c4da875c44595fa897df188ed81c396dd.lean/declarations/instance--490c06a3cf4fc22ffb82dd11.md) | 88 | `declaration-track:490c06a3cf4fc22ffb82dd114650b74495dad6a54e04947c6da3cc125a3718f8` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Variant448c40c96b2fd1da063192a60f00263c4da875c44595fa897df188ed81c396dd.lean/declarations/instance--ff0e5696abb6c507be91ae84.md) | 92 | `declaration-track:ff0e5696abb6c507be91ae840ac08b5c9dd089df9eb51f9e1bfe03d97471ef10` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Variant448c40c96b2fd1da063192a60f00263c4da875c44595fa897df188ed81c396dd.lean/declarations/instance--e178ac7a375c03dbf7b3b0cf.md) | 96 | `declaration-track:e178ac7a375c03dbf7b3b0cf54386a2e3fa8dd0e4f6caf037cd50e600f647e11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
