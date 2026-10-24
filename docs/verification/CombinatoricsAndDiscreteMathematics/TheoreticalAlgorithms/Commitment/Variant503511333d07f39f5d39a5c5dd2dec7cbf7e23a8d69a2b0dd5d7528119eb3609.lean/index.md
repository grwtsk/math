# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Commitment.Variant503511333d07f39f5d39a5c5dd2dec7cbf7e23a8d69a2b0dd5d7528119eb3609

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0adba60e09f8db1290381d7bb42d94a3d72af692",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant503511333d07f39f5d39a5c5dd2dec7cbf7e23a8d69a2b0dd5d7528119eb3609.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant503511333d07f39f5d39a5c5dd2dec7cbf7e23a8d69a2b0dd5d7528119eb3609.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant503511333d07f39f5d39a5c5dd2dec7cbf7e23a8d69a2b0dd5d7528119eb3609.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0adba60e09f8db1290381d7bb42d94a3d72af692`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant503511333d07f39f5d39a5c5dd2dec7cbf7e23a8d69a2b0dd5d7528119eb3609.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant503511333d07f39f5d39a5c5dd2dec7cbf7e23a8d69a2b0dd5d7528119eb3609.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FilesystemCodec.Codec` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [absorbEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant503511333d07f39f5d39a5c5dd2dec7cbf7e23a8d69a2b0dd5d7528119eb3609.lean/declarations/absorbequiv--b9da82a2d4b2811c42b46a56.md) | 36 | `declaration-track:b9da82a2d4b2811c42b46a5622409948862ac1322ed84fba7bfc2e36c2ed7faf` |
| 2 | `def` | [absorb](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant503511333d07f39f5d39a5c5dd2dec7cbf7e23a8d69a2b0dd5d7528119eb3609.lean/declarations/absorb--601cb46fa3311a5565dcea9a.md) | 47 | `declaration-track:601cb46fa3311a5565dcea9aec61882084cc9a85d2fb326f1e164a5d76a9896e` |
| 3 | `def` | [unabsorb](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant503511333d07f39f5d39a5c5dd2dec7cbf7e23a8d69a2b0dd5d7528119eb3609.lean/declarations/unabsorb--9cc4304ec5d3515d87664e4b.md) | 59 | `declaration-track:9cc4304ec5d3515d87664e4b17af882d6134d36961eaaa8698ca7a60a03d5be9` |
| 4 | `theorem` | [unabsorb_absorb](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant503511333d07f39f5d39a5c5dd2dec7cbf7e23a8d69a2b0dd5d7528119eb3609.lean/declarations/unabsorb-absorb--6ec6d84adbd201a1f83d363c.md) | 71 | `result-track:6ec6d84adbd201a1f83d363c54367bc74a909cddb6057ebd936dc0894401c830` |
| 5 | `theorem` | [absorb_unabsorb](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant503511333d07f39f5d39a5c5dd2dec7cbf7e23a8d69a2b0dd5d7528119eb3609.lean/declarations/absorb-unabsorb--abe1db22b76cf7971fa2f7d6.md) | 83 | `result-track:abe1db22b76cf7971fa2f7d651619249192a386099f22049357d5abdd98dac08` |
| 6 | `theorem` | [unabsorb_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant503511333d07f39f5d39a5c5dd2dec7cbf7e23a8d69a2b0dd5d7528119eb3609.lean/declarations/unabsorb-apply--4ddadb46ce6aaae73b366224.md) | 95 | `result-track:4ddadb46ce6aaae73b36622480d60337e51ac47f49f45dd3c719e9407edda354` |
| 7 | `def` | [absorbSequenceEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant503511333d07f39f5d39a5c5dd2dec7cbf7e23a8d69a2b0dd5d7528119eb3609.lean/declarations/absorbsequenceequiv--8452954c6d397745343a3a9a.md) | 109 | `declaration-track:8452954c6d397745343a3a9aae749d96d1f8733740724899e66269fd24915ddc` |
| 8 | `theorem` | [absorbSequenceEquiv_bijective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant503511333d07f39f5d39a5c5dd2dec7cbf7e23a8d69a2b0dd5d7528119eb3609.lean/declarations/absorbsequenceequiv-bijective--cb849dabf76f9835856f6fb3.md) | 122 | `result-track:cb849dabf76f9835856f6fb30c83f80abb8b18706c8cf2990f713c9b36b25f59` |
| 9 | `theorem` | [absorbSequence_inverse_forward](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant503511333d07f39f5d39a5c5dd2dec7cbf7e23a8d69a2b0dd5d7528119eb3609.lean/declarations/absorbsequence-inverse-forward--5314a9f29e1c67c4d114a554.md) | 133 | `result-track:5314a9f29e1c67c4d114a5545f98f34a0f86c4a6a74d4a4012b6cd1cf0a2f8ad` |
| 10 | `theorem` | [absorb_pair_not_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant503511333d07f39f5d39a5c5dd2dec7cbf7e23a8d69a2b0dd5d7528119eb3609.lean/declarations/absorb-pair-not-injective--31011b5ec26d38240c49138b.md) | 152 | `result-track:31011b5ec26d38240c49138b181d3eb67253dcebe630d3a97f14abb3f76c9a08` |
| 11 | `def` | [digestQuantizer](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant503511333d07f39f5d39a5c5dd2dec7cbf7e23a8d69a2b0dd5d7528119eb3609.lean/declarations/digestquantizer--c9baed882fd5e3fafe7225ec.md) | 174 | `declaration-track:c9baed882fd5e3fafe7225ec5ce2dc8125e33fed66500d97b88334524c18c9f2` |
| 12 | `theorem` | [digest_effectiveStates_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant503511333d07f39f5d39a5c5dd2dec7cbf7e23a8d69a2b0dd5d7528119eb3609.lean/declarations/digest-effectivestates-le--692f1f2fc3b1c222d94f4630.md) | 182 | `result-track:692f1f2fc3b1c222d94f46306bcda38644b2c2ce93118b2a91acf79c71f72171` |
| 13 | `theorem` | [digest_not_injective_of_card_gt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant503511333d07f39f5d39a5c5dd2dec7cbf7e23a8d69a2b0dd5d7528119eb3609.lean/declarations/digest-not-injective-of-card-gt--8af8b52b9c3e5929ce22f24a.md) | 192 | `result-track:8af8b52b9c3e5929ce22f24a7d60e9a35ebfb6dbfd82ae50a288e2a8ba684be0` |
| 14 | `theorem` | [digest_has_collision_of_card_gt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant503511333d07f39f5d39a5c5dd2dec7cbf7e23a8d69a2b0dd5d7528119eb3609.lean/declarations/digest-has-collision-of-card-gt--9f06b9fa573e48693dcb577a.md) | 208 | `result-track:9f06b9fa573e48693dcb577a536d63bcad200d9aaf0b63e448d1732e91360773` |
| 15 | `theorem` | [digest_has_distinct_indistinguishable_snapshots](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant503511333d07f39f5d39a5c5dd2dec7cbf7e23a8d69a2b0dd5d7528119eb3609.lean/declarations/digest-has-distinct-indistinguishable-snapshots--6687bb6e207aa6708550e082.md) | 220 | `result-track:6687bb6e207aa6708550e08207aff54133a8b5023e9c0e92d5b188427d315c16` |
| 16 | `theorem` | [no_digest_decoder_of_card_gt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant503511333d07f39f5d39a5c5dd2dec7cbf7e23a8d69a2b0dd5d7528119eb3609.lean/declarations/no-digest-decoder-of-card-gt--819597dd2c9c00f29d80c880.md) | 232 | `result-track:819597dd2c9c00f29d80c880c02045e92af2449547241b218fbd6b279a1eab8c` |
| 17 | `theorem` | [collision_prevents_unique_preimage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant503511333d07f39f5d39a5c5dd2dec7cbf7e23a8d69a2b0dd5d7528119eb3609.lean/declarations/collision-prevents-unique-preimage--d176a29ad2fe51cd6178e51e.md) | 250 | `result-track:d176a29ad2fe51cd6178e51ed2d85a9cd82120101cbfec39f45b26ea0af2c13e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
