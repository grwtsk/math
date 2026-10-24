# Verification target: GRWTSK.Algebra.LinearAlgebra.Invertible.Variant0638f9e2c0b2090afa04c1b77b200ce115b1983e4dce6da4845acac57bf43e92

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb92735d60b7f721e739089fdd61e8b5d82db1e6",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Invertible/Variant0638f9e2c0b2090afa04c1b77b200ce115b1983e4dce6da4845acac57bf43e92.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variant0638f9e2c0b2090afa04c1b77b200ce115b1983e4dce6da4845acac57bf43e92.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variant0638f9e2c0b2090afa04c1b77b200ce115b1983e4dce6da4845acac57bf43e92.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb92735d60b7f721e739089fdd61e8b5d82db1e6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Invertible/Variant0638f9e2c0b2090afa04c1b77b200ce115b1983e4dce6da4845acac57bf43e92.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Invertible/Variant0638f9e2c0b2090afa04c1b77b200ce115b1983e4dce6da4845acac57bf43e92.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.ConjTranspose` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [invOf_mul_cancel_left](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variant0638f9e2c0b2090afa04c1b77b200ce115b1983e4dce6da4845acac57bf43e92.lean/declarations/invof-mul-cancel-left--02b4354b5067a19732cdbc88.md) | 44 | `result-track:02b4354b5067a19732cdbc88b98be7759faff7f5b20a6317cc14447f75ab29a4` |
| 2 | `theorem` | [mul_invOf_cancel_left](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variant0638f9e2c0b2090afa04c1b77b200ce115b1983e4dce6da4845acac57bf43e92.lean/declarations/mul-invof-cancel-left--bc35663e32e15f7324d79054.md) | 48 | `result-track:bc35663e32e15f7324d790547faf79c4e0212093c86e3ba8de614a0803241fa5` |
| 3 | `theorem` | [invOf_mul_cancel_right](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variant0638f9e2c0b2090afa04c1b77b200ce115b1983e4dce6da4845acac57bf43e92.lean/declarations/invof-mul-cancel-right--8df53011b1d56c1c2c641921.md) | 52 | `result-track:8df53011b1d56c1c2c6419211ef17f6c5e8e672ad8136c280a1ae82550660c2b` |
| 4 | `theorem` | [mul_invOf_cancel_right](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variant0638f9e2c0b2090afa04c1b77b200ce115b1983e4dce6da4845acac57bf43e92.lean/declarations/mul-invof-cancel-right--4a7a5adac2c13128161a97d8.md) | 56 | `result-track:4a7a5adac2c13128161a97d8af0f523c15174bcd750be3344864bb1d26dfc353` |
| 5 | `instance` | [invertibleConjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variant0638f9e2c0b2090afa04c1b77b200ce115b1983e4dce6da4845acac57bf43e92.lean/declarations/invertibleconjtranspose--5627c13a8bb6aeab41012843.md) | 63 | `declaration-track:5627c13a8bb6aeab41012843fb02bc0a166aa22af8181e31769873815a0ac8c5` |
| 6 | `lemma` | [conjTranspose_invOf](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variant0638f9e2c0b2090afa04c1b77b200ce115b1983e4dce6da4845acac57bf43e92.lean/declarations/conjtranspose-invof--ca8e464e600aca7c51e48acb.md) | 65 | `result-track:ca8e464e600aca7c51e48acb3a9966830481dedb60a5b2976f1035674f47821d` |
| 7 | `def` | [invertibleOfInvertibleConjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variant0638f9e2c0b2090afa04c1b77b200ce115b1983e4dce6da4845acac57bf43e92.lean/declarations/invertibleofinvertibleconjtranspose--18d069db92f7698c02a48b02.md) | 68 | `declaration-track:18d069db92f7698c02a48b023c79b6fcf46a816c660f504443c4ad7379051e99` |
| 8 | `lemma` | [isUnit_conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variant0638f9e2c0b2090afa04c1b77b200ce115b1983e4dce6da4845acac57bf43e92.lean/declarations/isunit-conjtranspose--74b8135552c602180a6eb96b.md) | 72 | `result-track:74b8135552c602180a6eb96b23acf8ea50b45c4bb9eb846230d11090d4b50d1a` |
| 9 | `instance` | [invertibleTranspose](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variant0638f9e2c0b2090afa04c1b77b200ce115b1983e4dce6da4845acac57bf43e92.lean/declarations/invertibletranspose--8682925e02c11653ddb83d70.md) | 83 | `declaration-track:8682925e02c11653ddb83d703f1c04dc92fbc609d25ed7ae3cc9ec6c870c9a42` |
| 10 | `lemma` | [transpose_invOf](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variant0638f9e2c0b2090afa04c1b77b200ce115b1983e4dce6da4845acac57bf43e92.lean/declarations/transpose-invof--fbd7af2aba423fbe597d7434.md) | 88 | `result-track:fbd7af2aba423fbe597d7434250e8e64d90518eb66f3297a1793fff0b12ce077` |
| 11 | `def` | [invertibleOfInvertibleTranspose](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variant0638f9e2c0b2090afa04c1b77b200ce115b1983e4dce6da4845acac57bf43e92.lean/declarations/invertibleofinvertibletranspose--0d5ae19a6b68eeb2ca683997.md) | 93 | `declaration-track:0d5ae19a6b68eeb2ca683997d11a308496d5562f9bc18af71a4d7fcc2bc9f976` |
| 12 | `def` | [transposeInvertibleEquivInvertible](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variant0638f9e2c0b2090afa04c1b77b200ce115b1983e4dce6da4845acac57bf43e92.lean/declarations/transposeinvertibleequivinvertible--9bcad5c97dc901a493575cf3.md) | 101 | `declaration-track:9bcad5c97dc901a493575cf333322fc9e34ea2127a50926a1eb62a242687ec25` |
| 13 | `lemma` | [isUnit_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variant0638f9e2c0b2090afa04c1b77b200ce115b1983e4dce6da4845acac57bf43e92.lean/declarations/isunit-transpose--9388d7c6b661b52db7fd497f.md) | 107 | `result-track:9388d7c6b661b52db7fd497f0f0434464360adbeab244ef65c9af2c677d15259` |
| 14 | `lemma` | [add_mul_mul_invOf_mul_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variant0638f9e2c0b2090afa04c1b77b200ce115b1983e4dce6da4845acac57bf43e92.lean/declarations/add-mul-mul-invof-mul-eq-one--ffff069552c6d6e55462fbbf.md) | 122 | `result-track:ffff069552c6d6e55462fbbf5435dbad4c2541f6df7443e65ee262493cfeb189` |
| 15 | `lemma` | [add_mul_mul_invOf_mul_eq_one'](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variant0638f9e2c0b2090afa04c1b77b200ce115b1983e4dce6da4845acac57bf43e92.lean/declarations/add-mul-mul-invof-mul-eq-one--c05fd3e017592675f882ad7c.md) | 141 | `result-track:c05fd3e017592675f882ad7c8c6dc1f6edd0864eb6fef363c968211e9d6bd72a` |
| 16 | `def` | [invertibleAddMulMul](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variant0638f9e2c0b2090afa04c1b77b200ce115b1983e4dce6da4845acac57bf43e92.lean/declarations/invertibleaddmulmul--0592faabcbf494156a3b3054.md) | 162 | `declaration-track:0592faabcbf494156a3b305413f80d261fe9d39691a780f379d19065bbfb5719` |
| 17 | `theorem` | [invOf_add_mul_mul](../../../../../mathematics/Algebra/LinearAlgebra/Invertible/Variant0638f9e2c0b2090afa04c1b77b200ce115b1983e4dce6da4845acac57bf43e92.lean/declarations/invof-add-mul-mul--0a5f5d3bc7f9c0fff0f1c551.md) | 168 | `result-track:0a5f5d3bc7f9c0fff0f1c551e4193abdfa8cd167626e9793e09e9344e70693a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
