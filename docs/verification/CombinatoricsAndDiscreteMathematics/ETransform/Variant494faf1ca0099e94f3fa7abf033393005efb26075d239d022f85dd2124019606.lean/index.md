# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ETransform.Variant494faf1ca0099e94f3fa7abf033393005efb26075d239d022f85dd2124019606

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db2393908d7e8134f92af2c2eefce1e4437458e6",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ETransform/Variant494faf1ca0099e94f3fa7abf033393005efb26075d239d022f85dd2124019606.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant494faf1ca0099e94f3fa7abf033393005efb26075d239d022f85dd2124019606.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant494faf1ca0099e94f3fa7abf033393005efb26075d239d022f85dd2124019606.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db2393908d7e8134f92af2c2eefce1e4437458e6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ETransform/Variant494faf1ca0099e94f3fa7abf033393005efb26075d239d022f85dd2124019606.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ETransform/Variant494faf1ca0099e94f3fa7abf033393005efb26075d239d022f85dd2124019606.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Pointwise.Finset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Nat` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulDysonETransform](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant494faf1ca0099e94f3fa7abf033393005efb26075d239d022f85dd2124019606.lean/declarations/muldysonetransform--b37322c45ae1af14735156ee.md) | 59 | `declaration-track:b37322c45ae1af14735156ee686627fd6507a7c40744e23bfadf29eaf845f439` |
| 2 | `theorem` | [mulDysonETransform.subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant494faf1ca0099e94f3fa7abf033393005efb26075d239d022f85dd2124019606.lean/declarations/muldysonetransform-subset--33297f66346a5a2bcb05cbc0.md) | 63 | `result-track:33297f66346a5a2bcb05cbc00c35c45419e6fa36ba715d4ffd9224c415ab884d` |
| 3 | `theorem` | [mulDysonETransform.card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant494faf1ca0099e94f3fa7abf033393005efb26075d239d022f85dd2124019606.lean/declarations/muldysonetransform-card--eda890c4e5fb46c6aa1df20a.md) | 69 | `result-track:eda890c4e5fb46c6aa1df20a0dc7d73139d66526cc74f454a3cfe894a078e2dd` |
| 4 | `theorem` | [mulDysonETransform_idem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant494faf1ca0099e94f3fa7abf033393005efb26075d239d022f85dd2124019606.lean/declarations/muldysonetransform-idem--c7ac52ed92cb660dd307858b.md) | 76 | `result-track:c7ac52ed92cb660dd307858bf6dccdf2278c67191964f8cf2f98840658483454` |
| 5 | `theorem` | [mulDysonETransform.smul_finset_snd_subset_fst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant494faf1ca0099e94f3fa7abf033393005efb26075d239d022f85dd2124019606.lean/declarations/muldysonetransform-smul-finset-snd-subset-fst--a0929e9183c531b1c5f971cb.md) | 87 | `result-track:a0929e9183c531b1c5f971cb919ced46477366926742354abc7780754178a330` |
| 6 | `def` | [mulETransformLeft](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant494faf1ca0099e94f3fa7abf033393005efb26075d239d022f85dd2124019606.lean/declarations/muletransformleft--677e07f2024744e1fcb6e969.md) | 114 | `declaration-track:677e07f2024744e1fcb6e969b478d41a35b55952698ac4b973d36c76cb67a2cd` |
| 7 | `def` | [mulETransformRight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant494faf1ca0099e94f3fa7abf033393005efb26075d239d022f85dd2124019606.lean/declarations/muletransformright--88ebcd41c1c3aae6f648ab57.md) | 121 | `declaration-track:88ebcd41c1c3aae6f648ab5703c5c255692b41a0a92f68590f1c86b4436a1afd` |
| 8 | `theorem` | [mulETransformLeft_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant494faf1ca0099e94f3fa7abf033393005efb26075d239d022f85dd2124019606.lean/declarations/muletransformleft-one--e892d7fb2b401e34161d2736.md) | 125 | `result-track:e892d7fb2b401e34161d2736e2b8df4945389ab50e292c53dbe2dd7acf4034cd` |
| 9 | `theorem` | [mulETransformRight_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant494faf1ca0099e94f3fa7abf033393005efb26075d239d022f85dd2124019606.lean/declarations/muletransformright-one--53456236021d2c77121dbdc0.md) | 128 | `result-track:53456236021d2c77121dbdc0cc236dfe1db52082e746b019a3b0918fa8002b8d` |
| 10 | `theorem` | [mulETransformLeft.fst_mul_snd_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant494faf1ca0099e94f3fa7abf033393005efb26075d239d022f85dd2124019606.lean/declarations/muletransformleft-fst-mul-snd-subset--7bdbe1fc1b9c6adbe45fa9d4.md) | 131 | `result-track:7bdbe1fc1b9c6adbe45fa9d44f7fe5170894fc5bd75b23dfd1af477cabddd7bf` |
| 11 | `theorem` | [mulETransformRight.fst_mul_snd_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant494faf1ca0099e94f3fa7abf033393005efb26075d239d022f85dd2124019606.lean/declarations/muletransformright-fst-mul-snd-subset--eebf360cf3b2674f1e0d6d05.md) | 137 | `result-track:eebf360cf3b2674f1e0d6d05ad21a6eef4b82da7f8e39c364bc5ca71b07324da` |
| 12 | `theorem` | [mulETransformLeft.card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant494faf1ca0099e94f3fa7abf033393005efb26075d239d022f85dd2124019606.lean/declarations/muletransformleft-card--ea7e9fa30b9ce9889cde820c.md) | 143 | `result-track:ea7e9fa30b9ce9889cde820c28f1f4b756c7f7056b206cc6d36c848804c738f4` |
| 13 | `theorem` | [mulETransformRight.card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant494faf1ca0099e94f3fa7abf033393005efb26075d239d022f85dd2124019606.lean/declarations/muletransformright-card--754ad16e2b3b6b9df55cc8df.md) | 148 | `result-track:754ad16e2b3b6b9df55cc8df976e4686c35153b1ef041551beaba8777ae0e8c5` |
| 14 | `theorem` | [MulETransform.card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant494faf1ca0099e94f3fa7abf033393005efb26075d239d022f85dd2124019606.lean/declarations/muletransform-card--8a77f141830aa1780ea33f31.md) | 155 | `result-track:8a77f141830aa1780ea33f31aeba74871e2e526527aed355884d570630ce291d` |
| 15 | `theorem` | [mulETransformLeft_inv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant494faf1ca0099e94f3fa7abf033393005efb26075d239d022f85dd2124019606.lean/declarations/muletransformleft-inv--5ac685d6d23ba1ba99a2033b.md) | 168 | `result-track:5ac685d6d23ba1ba99a2033b8079d6e9698a0ee346a60c2c9dd997bfd0785d25` |
| 16 | `theorem` | [mulETransformRight_inv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant494faf1ca0099e94f3fa7abf033393005efb26075d239d022f85dd2124019606.lean/declarations/muletransformright-inv--241c79e8125e5d790e6c5b35.md) | 172 | `result-track:241c79e8125e5d790e6c5b352b69696cfdf0df1cee913abaa0d0cc3049879641` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
