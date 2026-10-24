# Verification target: GRWTSK.Algebra.LinearAlgebra.Pairing.Variant6636974e1e872020f9c05ad7a28a2013f32193a101b525a5719e098a8c6a27ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35bf48decb1c4dc028f1cc2b5a32ae2670e544c2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Pairing/Variant6636974e1e872020f9c05ad7a28a2013f32193a101b525a5719e098a8c6a27ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant6636974e1e872020f9c05ad7a28a2013f32193a101b525a5719e098a8c6a27ed.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant6636974e1e872020f9c05ad7a28a2013f32193a101b525a5719e098a8c6a27ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35bf48decb1c4dc028f1cc2b5a32ae2670e544c2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Pairing/Variant6636974e1e872020f9c05ad7a28a2013f32193a101b525a5719e098a8c6a27ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Pairing/Variant6636974e1e872020f9c05ad7a28a2013f32193a101b525a5719e098a8c6a27ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toTensorPower](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant6636974e1e872020f9c05ad7a28a2013f32193a101b525a5719e098a8c6a27ed.lean/declarations/totensorpower--c9f0cccbbf352d38404159fd.md) | 37 | `declaration-track:c9f0cccbbf352d38404159fd9d69b0fbc7d924bf96a4fec8ddaf72b8743685c9` |
| 2 | `lemma` | [toTensorPower_apply_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant6636974e1e872020f9c05ad7a28a2013f32193a101b525a5719e098a8c6a27ed.lean/declarations/totensorpower-apply-multi--bacd71b1a1e5c074dfe3e935.md) | 43 | `result-track:bacd71b1a1e5c074dfe3e935a4343c4d69633594e9afa3e134553434a75f936d` |
| 3 | `def` | [alternatingMapToDual](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant6636974e1e872020f9c05ad7a28a2013f32193a101b525a5719e098a8c6a27ed.lean/declarations/alternatingmaptodual--972871bf809a2367e1ca0a52.md) | 52 | `declaration-track:972871bf809a2367e1ca0a5204262340156efe60cf1455e0890be1e6e3ea0a5c` |
| 4 | `theorem` | [alternatingMapToDual_apply_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant6636974e1e872020f9c05ad7a28a2013f32193a101b525a5719e098a8c6a27ed.lean/declarations/alternatingmaptodual-apply-multi--b5c827af46557c4816f12068.md) | 65 | `result-track:b5c827af46557c4816f12068bbeec171d96183531406ad83b8612fd6e797d2a8` |
| 5 | `def` | [pairingDual](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant6636974e1e872020f9c05ad7a28a2013f32193a101b525a5719e098a8c6a27ed.lean/declarations/pairingdual--8c8e115888458b03bfb4e067.md) | 72 | `declaration-track:8c8e115888458b03bfb4e0670a796940c81e4f7f9ec9c1652e9b22f637154027` |
| 6 | `lemma` | [pairingDual_ιMulti_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant6636974e1e872020f9c05ad7a28a2013f32193a101b525a5719e098a8c6a27ed.lean/declarations/pairingdual-multi-multi--8b757b9ec0619d3709a84e2e.md) | 79 | `result-track:8b757b9ec0619d3709a84e2e017b3537228a9d7ebdf1b5b946ce1b4f867fb320` |
| 7 | `lemma` | [pairingDual_apply_apply_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant6636974e1e872020f9c05ad7a28a2013f32193a101b525a5719e098a8c6a27ed.lean/declarations/pairingdual-apply-apply-eq-one--a0fb6218c9ce9f28daec6a23.md) | 103 | `result-track:a0fb6218c9ce9f28daec6a23686dc995dcecb92ec4c8d5f69e5cafddd5cfc3d9` |
| 8 | `lemma` | [pairingDual_apply_apply_eq_one_zero](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variant6636974e1e872020f9c05ad7a28a2013f32193a101b525a5719e098a8c6a27ed.lean/declarations/pairingdual-apply-apply-eq-one-zero--6c2e59d4b3f327f7a7c1ad56.md) | 117 | `result-track:6c2e59d4b3f327f7a7c1ad56b6ee628529f02e0445fc67d61a858a3f1b6d3f62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
