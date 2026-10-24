# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Commitment.Variantdc5f0176ef3dd121de9a2668c927a24c235454f33578782727fde9cc3e62ed75

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5312e43cde9ad7df8c70b359cc689d414c9593c3",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variantdc5f0176ef3dd121de9a2668c927a24c235454f33578782727fde9cc3e62ed75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variantdc5f0176ef3dd121de9a2668c927a24c235454f33578782727fde9cc3e62ed75.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variantdc5f0176ef3dd121de9a2668c927a24c235454f33578782727fde9cc3e62ed75.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5312e43cde9ad7df8c70b359cc689d414c9593c3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variantdc5f0176ef3dd121de9a2668c927a24c235454f33578782727fde9cc3e62ed75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variantdc5f0176ef3dd121de9a2668c927a24c235454f33578782727fde9cc3e62ed75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FilesystemCodec.Codec` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [absorbEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variantdc5f0176ef3dd121de9a2668c927a24c235454f33578782727fde9cc3e62ed75.lean/declarations/absorbequiv--8a0e3429b11b077ea61444db.md) | 28 | `declaration-track:8a0e3429b11b077ea61444dbf4821be56a3439946d9d63a247e4dbb0a5840e86` |
| 2 | `def` | [absorb](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variantdc5f0176ef3dd121de9a2668c927a24c235454f33578782727fde9cc3e62ed75.lean/declarations/absorb--96a0a8bb3ad6d451de32f72a.md) | 39 | `declaration-track:96a0a8bb3ad6d451de32f72a6575f87c3c3dd80ed284971bb50c49ce6ed4682e` |
| 3 | `def` | [unabsorb](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variantdc5f0176ef3dd121de9a2668c927a24c235454f33578782727fde9cc3e62ed75.lean/declarations/unabsorb--29c51d521a10383c132b2fda.md) | 51 | `declaration-track:29c51d521a10383c132b2fda50631555dcc825dfca1cdc5e235413c6465ee669` |
| 4 | `theorem` | [unabsorb_absorb](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variantdc5f0176ef3dd121de9a2668c927a24c235454f33578782727fde9cc3e62ed75.lean/declarations/unabsorb-absorb--3008c05c976df29f33cfa33f.md) | 63 | `result-track:3008c05c976df29f33cfa33f5419a2400511c5b42f76f336a60feec3d0236bd9` |
| 5 | `theorem` | [absorb_unabsorb](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variantdc5f0176ef3dd121de9a2668c927a24c235454f33578782727fde9cc3e62ed75.lean/declarations/absorb-unabsorb--970181cd4a4a860695f73759.md) | 75 | `result-track:970181cd4a4a860695f737599b135bdac7ac23c14932b0b89abda52b0a709fdd` |
| 6 | `theorem` | [unabsorb_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variantdc5f0176ef3dd121de9a2668c927a24c235454f33578782727fde9cc3e62ed75.lean/declarations/unabsorb-apply--cc89538897742216ff21cfab.md) | 87 | `result-track:cc89538897742216ff21cfab97acafd0e41c4a704462717016ceb692e0d94ea0` |
| 7 | `def` | [absorbSequenceEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variantdc5f0176ef3dd121de9a2668c927a24c235454f33578782727fde9cc3e62ed75.lean/declarations/absorbsequenceequiv--802508cdac72e3626f523f82.md) | 101 | `declaration-track:802508cdac72e3626f523f82e9bf24d691d90090a707535a8bdf849d1e880163` |
| 8 | `theorem` | [absorbSequenceEquiv_bijective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variantdc5f0176ef3dd121de9a2668c927a24c235454f33578782727fde9cc3e62ed75.lean/declarations/absorbsequenceequiv-bijective--0f4497d9a1797ebc6eb01c03.md) | 114 | `result-track:0f4497d9a1797ebc6eb01c039d98afedbcad01bfba25056860d6378818f1e636` |
| 9 | `theorem` | [absorbSequence_inverse_forward](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variantdc5f0176ef3dd121de9a2668c927a24c235454f33578782727fde9cc3e62ed75.lean/declarations/absorbsequence-inverse-forward--e2d636538d445ada2cef6692.md) | 125 | `result-track:e2d636538d445ada2cef6692767373b3fbc232892e9c2b0a7f591a39b10c79d9` |
| 10 | `theorem` | [absorb_pair_not_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variantdc5f0176ef3dd121de9a2668c927a24c235454f33578782727fde9cc3e62ed75.lean/declarations/absorb-pair-not-injective--8ffdd6ac9187241c217b8c11.md) | 144 | `result-track:8ffdd6ac9187241c217b8c112a6fb6b925b50fe63bda7c3d63df937de38d09e5` |
| 11 | `def` | [digestQuantizer](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variantdc5f0176ef3dd121de9a2668c927a24c235454f33578782727fde9cc3e62ed75.lean/declarations/digestquantizer--3e95ecf30c273e20e59ac380.md) | 166 | `declaration-track:3e95ecf30c273e20e59ac3807fb3ae5dbdc810efa9332a28b370b83133dc6a1b` |
| 12 | `theorem` | [digest_effectiveStates_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variantdc5f0176ef3dd121de9a2668c927a24c235454f33578782727fde9cc3e62ed75.lean/declarations/digest-effectivestates-le--083badf9c121b2c53a34efbb.md) | 174 | `result-track:083badf9c121b2c53a34efbb47031ad99119b8f508853941dba53763da398bc4` |
| 13 | `theorem` | [digest_not_injective_of_card_gt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variantdc5f0176ef3dd121de9a2668c927a24c235454f33578782727fde9cc3e62ed75.lean/declarations/digest-not-injective-of-card-gt--adff4b158963418728392562.md) | 184 | `result-track:adff4b158963418728392562ef7e8d865b2cb2cf25bd16d52a8b6ec6477c8fc4` |
| 14 | `theorem` | [digest_has_collision_of_card_gt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variantdc5f0176ef3dd121de9a2668c927a24c235454f33578782727fde9cc3e62ed75.lean/declarations/digest-has-collision-of-card-gt--c10e2c5aa3d5cc646876765d.md) | 200 | `result-track:c10e2c5aa3d5cc646876765d55a0c566c697c88e1f2a7e6f4e336bcb39a2fd5e` |
| 15 | `theorem` | [digest_has_distinct_indistinguishable_snapshots](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variantdc5f0176ef3dd121de9a2668c927a24c235454f33578782727fde9cc3e62ed75.lean/declarations/digest-has-distinct-indistinguishable-snapshots--148645a6561fc9abcd6bb21c.md) | 212 | `result-track:148645a6561fc9abcd6bb21cf0ebe9622cac1c35ea8a88178dc99ae1776367b5` |
| 16 | `theorem` | [no_digest_decoder_of_card_gt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variantdc5f0176ef3dd121de9a2668c927a24c235454f33578782727fde9cc3e62ed75.lean/declarations/no-digest-decoder-of-card-gt--b6efbb528ade6c584f2791ab.md) | 224 | `result-track:b6efbb528ade6c584f2791ab8c455ad77bd6dc65bae484e6524808e489240d02` |
| 17 | `theorem` | [collision_prevents_unique_preimage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variantdc5f0176ef3dd121de9a2668c927a24c235454f33578782727fde9cc3e62ed75.lean/declarations/collision-prevents-unique-preimage--03690bd7b82e4608bc284f86.md) | 242 | `result-track:03690bd7b82e4608bc284f86987d092912e2cc45a6573474571728cf705ff76e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
