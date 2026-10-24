# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Etransform.Variant1597460701004d099631b22dc03ce416040fd16562f0352bd7eadac87d38d6d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "982333021fad4fd93f11e3400384f519f7dfeac5",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Etransform/Variant1597460701004d099631b22dc03ce416040fd16562f0352bd7eadac87d38d6d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant1597460701004d099631b22dc03ce416040fd16562f0352bd7eadac87d38d6d9.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant1597460701004d099631b22dc03ce416040fd16562f0352bd7eadac87d38d6d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `982333021fad4fd93f11e3400384f519f7dfeac5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Etransform/Variant1597460701004d099631b22dc03ce416040fd16562f0352bd7eadac87d38d6d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ETransform/Variant1597460701004d099631b22dc03ce416040fd16562f0352bd7eadac87d38d6d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Pointwise` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulDysonEtransform](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant1597460701004d099631b22dc03ce416040fd16562f0352bd7eadac87d38d6d9.lean/declarations/muldysonetransform--28236d978854dd634cf3280e.md) | 52 | `declaration-track:28236d978854dd634cf3280e475e9da27f0c3a69b9365a6734a6e9a77e1d725c` |
| 2 | `theorem` | [mulDysonEtransform.subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant1597460701004d099631b22dc03ce416040fd16562f0352bd7eadac87d38d6d9.lean/declarations/muldysonetransform-subset--1fc879becd85c0780b0774f5.md) | 58 | `result-track:1fc879becd85c0780b0774f57a3f56904e0c6f0c1661144a194858e731210e0b` |
| 3 | `theorem` | [mulDysonEtransform.card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant1597460701004d099631b22dc03ce416040fd16562f0352bd7eadac87d38d6d9.lean/declarations/muldysonetransform-card--e14c097d1649a07188abc8b9.md) | 66 | `result-track:e14c097d1649a07188abc8b95442b263e2a03d5a2267cc521fedf4401d176a2e` |
| 4 | `theorem` | [mulDysonEtransform_idem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant1597460701004d099631b22dc03ce416040fd16562f0352bd7eadac87d38d6d9.lean/declarations/muldysonetransform-idem--eeff30fc5dcf8d7eff3d4bbd.md) | 75 | `result-track:eeff30fc5dcf8d7eff3d4bbd5e6b88fe7e2a09769093213f7a42d4df37f6934f` |
| 5 | `theorem` | [mulDysonEtransform.smul_finset_snd_subset_fst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant1597460701004d099631b22dc03ce416040fd16562f0352bd7eadac87d38d6d9.lean/declarations/muldysonetransform-smul-finset-snd-subset-fst--02c926001e535790a0ab1317.md) | 88 | `result-track:02c926001e535790a0ab131791802f82125ac072474db6a9e73638c106c3dfbf` |
| 6 | `def` | [mulEtransformLeft](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant1597460701004d099631b22dc03ce416040fd16562f0352bd7eadac87d38d6d9.lean/declarations/muletransformleft--0262e0f6f16424faee7c67ec.md) | 117 | `declaration-track:0262e0f6f16424faee7c67ec4a636c764b9db8a0b298ac2c5e89c94077e6521d` |
| 7 | `def` | [mulEtransformRight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant1597460701004d099631b22dc03ce416040fd16562f0352bd7eadac87d38d6d9.lean/declarations/muletransformright--c0975b1756e4c77b03bc2163.md) | 126 | `declaration-track:c0975b1756e4c77b03bc216330cd6383c1af88066157a3285ea10005c730bc61` |
| 8 | `theorem` | [mulEtransformLeft_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant1597460701004d099631b22dc03ce416040fd16562f0352bd7eadac87d38d6d9.lean/declarations/muletransformleft-one--089a781ee7918938ab7f410d.md) | 132 | `result-track:089a781ee7918938ab7f410dde0a6d5e36e814c56f457424e5e05644f253ecee` |
| 9 | `theorem` | [mulEtransformRight_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant1597460701004d099631b22dc03ce416040fd16562f0352bd7eadac87d38d6d9.lean/declarations/muletransformright-one--b5ae731bc9abc64755d9d1fc.md) | 137 | `result-track:b5ae731bc9abc64755d9d1fc6e7762224a87dcbe4445ddfb2b5c9c0f4db8ef1d` |
| 10 | `theorem` | [mulEtransformLeft.fst_mul_snd_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant1597460701004d099631b22dc03ce416040fd16562f0352bd7eadac87d38d6d9.lean/declarations/muletransformleft-fst-mul-snd-subset--b3ebf22798d454e4ba7cbdc2.md) | 142 | `result-track:b3ebf22798d454e4ba7cbdc258c059bce2e4387dcead2c2759daa4010d6ac85c` |
| 11 | `theorem` | [mulEtransformRight.fst_mul_snd_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant1597460701004d099631b22dc03ce416040fd16562f0352bd7eadac87d38d6d9.lean/declarations/muletransformright-fst-mul-snd-subset--4603b4c8beb882d779888a92.md) | 150 | `result-track:4603b4c8beb882d779888a926de8317d1d0d5f70ba46c9bb7cc209904147b9c8` |
| 12 | `theorem` | [mulEtransformLeft.card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant1597460701004d099631b22dc03ce416040fd16562f0352bd7eadac87d38d6d9.lean/declarations/muletransformleft-card--e95039d1dd0d731ed6889fad.md) | 158 | `result-track:e95039d1dd0d731ed6889fadf872f4fa38f3cba9bc92066eee7fb53e0be90367` |
| 13 | `theorem` | [mulEtransformRight.card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant1597460701004d099631b22dc03ce416040fd16562f0352bd7eadac87d38d6d9.lean/declarations/muletransformright-card--3cdd83b06e530f01aee87bb9.md) | 165 | `result-track:3cdd83b06e530f01aee87bb9395668843b90b00d82897f1617604fd48d918ce8` |
| 14 | `theorem` | [MulEtransform.card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant1597460701004d099631b22dc03ce416040fd16562f0352bd7eadac87d38d6d9.lean/declarations/muletransform-card--0b0b70dfc51d33881e4daefc.md) | 174 | `result-track:0b0b70dfc51d33881e4daefcea5dee31f15254ad41a480beb79b19aa3805bb37` |
| 15 | `theorem` | [mulEtransformLeft_inv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant1597460701004d099631b22dc03ce416040fd16562f0352bd7eadac87d38d6d9.lean/declarations/muletransformleft-inv--318275993b83cab27996fa1e.md) | 189 | `result-track:318275993b83cab27996fa1e61aade50ebe28c57509b7b7d6ea08d9d1322db31` |
| 16 | `theorem` | [mulEtransformRight_inv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant1597460701004d099631b22dc03ce416040fd16562f0352bd7eadac87d38d6d9.lean/declarations/muletransformright-inv--b8978be242ff89a054c36b3a.md) | 195 | `result-track:b8978be242ff89a054c36b3a89129839e9b9f61b1a898365dd8603dbd887b0ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
