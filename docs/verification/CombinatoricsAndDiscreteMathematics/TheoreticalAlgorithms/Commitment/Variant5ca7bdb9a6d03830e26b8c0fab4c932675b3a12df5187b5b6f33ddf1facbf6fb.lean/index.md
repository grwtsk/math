# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Commitment.Variant5ca7bdb9a6d03830e26b8c0fab4c932675b3a12df5187b5b6f33ddf1facbf6fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3cacbeaa4e51076752ccf09343537249a1c4c8be",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant5ca7bdb9a6d03830e26b8c0fab4c932675b3a12df5187b5b6f33ddf1facbf6fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant5ca7bdb9a6d03830e26b8c0fab4c932675b3a12df5187b5b6f33ddf1facbf6fb.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant5ca7bdb9a6d03830e26b8c0fab4c932675b3a12df5187b5b6f33ddf1facbf6fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3cacbeaa4e51076752ccf09343537249a1c4c8be`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant5ca7bdb9a6d03830e26b8c0fab4c932675b3a12df5187b5b6f33ddf1facbf6fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant5ca7bdb9a6d03830e26b8c0fab4c932675b3a12df5187b5b6f33ddf1facbf6fb.lean.json)

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
| 1 | `def` | [absorbEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant5ca7bdb9a6d03830e26b8c0fab4c932675b3a12df5187b5b6f33ddf1facbf6fb.lean/declarations/absorbequiv--2aba1f393aa71a80f5b7689d.md) | 36 | `declaration-track:2aba1f393aa71a80f5b7689d6e7a43ced9bb4a90372afce5d139fb825c0d903b` |
| 2 | `def` | [absorb](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant5ca7bdb9a6d03830e26b8c0fab4c932675b3a12df5187b5b6f33ddf1facbf6fb.lean/declarations/absorb--b64b9d7da99cc7129398856e.md) | 47 | `declaration-track:b64b9d7da99cc7129398856e5e731cb8816887eb0ca2529d7ca16b639cde05b5` |
| 3 | `def` | [unabsorb](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant5ca7bdb9a6d03830e26b8c0fab4c932675b3a12df5187b5b6f33ddf1facbf6fb.lean/declarations/unabsorb--1acdd076e157aed871a1d6f7.md) | 59 | `declaration-track:1acdd076e157aed871a1d6f7def1a837b6f80fa3912ed670e398566d62ea33b6` |
| 4 | `theorem` | [unabsorb_absorb](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant5ca7bdb9a6d03830e26b8c0fab4c932675b3a12df5187b5b6f33ddf1facbf6fb.lean/declarations/unabsorb-absorb--c0bc907af6d54e1b6e965f7b.md) | 71 | `result-track:c0bc907af6d54e1b6e965f7ba1073542fd1b68c4194ace6bbd271f609226d259` |
| 5 | `theorem` | [absorb_unabsorb](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant5ca7bdb9a6d03830e26b8c0fab4c932675b3a12df5187b5b6f33ddf1facbf6fb.lean/declarations/absorb-unabsorb--d236c9e548fe61b11cbccd9c.md) | 83 | `result-track:d236c9e548fe61b11cbccd9c6f6578e8b1d0fa9e2448609980b255607b7db51d` |
| 6 | `theorem` | [unabsorb_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant5ca7bdb9a6d03830e26b8c0fab4c932675b3a12df5187b5b6f33ddf1facbf6fb.lean/declarations/unabsorb-apply--b3229b5768bfb9d84c731193.md) | 95 | `result-track:b3229b5768bfb9d84c731193d1a299149399f1f5c8ee0365e43ee2d30cb440eb` |
| 7 | `def` | [absorbSequenceEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant5ca7bdb9a6d03830e26b8c0fab4c932675b3a12df5187b5b6f33ddf1facbf6fb.lean/declarations/absorbsequenceequiv--0e87cd6d5bc2933437c8ce51.md) | 109 | `declaration-track:0e87cd6d5bc2933437c8ce5124286e5dd3b7c9245caf1d5092249ebec9c31c9d` |
| 8 | `theorem` | [absorbSequenceEquiv_bijective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant5ca7bdb9a6d03830e26b8c0fab4c932675b3a12df5187b5b6f33ddf1facbf6fb.lean/declarations/absorbsequenceequiv-bijective--6d6f94f9cb4f2e5785998ae6.md) | 122 | `result-track:6d6f94f9cb4f2e5785998ae69d3abe0bb8635a76a3a6fbb4bdf81c0b9186aa0f` |
| 9 | `theorem` | [absorbSequence_inverse_forward](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant5ca7bdb9a6d03830e26b8c0fab4c932675b3a12df5187b5b6f33ddf1facbf6fb.lean/declarations/absorbsequence-inverse-forward--b1726d10b1359f7bda51cdf9.md) | 133 | `result-track:b1726d10b1359f7bda51cdf9d6083940c9a7fed33b821a5647fae0ea45c3b7b2` |
| 10 | `theorem` | [absorb_pair_not_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant5ca7bdb9a6d03830e26b8c0fab4c932675b3a12df5187b5b6f33ddf1facbf6fb.lean/declarations/absorb-pair-not-injective--c575f5748bf73c584f9476d0.md) | 152 | `result-track:c575f5748bf73c584f9476d0deeca43119d3df492e8529dbbea96429735ebe09` |
| 11 | `def` | [digestQuantizer](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant5ca7bdb9a6d03830e26b8c0fab4c932675b3a12df5187b5b6f33ddf1facbf6fb.lean/declarations/digestquantizer--fffc4e11531b8cca22647c8f.md) | 174 | `declaration-track:fffc4e11531b8cca22647c8ffa0971c8dfdb7e8163d8b342640b795f3ed2fae4` |
| 12 | `theorem` | [digest_effectiveStates_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant5ca7bdb9a6d03830e26b8c0fab4c932675b3a12df5187b5b6f33ddf1facbf6fb.lean/declarations/digest-effectivestates-le--e6461fbaa1778a1335dded56.md) | 182 | `result-track:e6461fbaa1778a1335dded56fdbfb8783b8e4476fac2c09e9fcd1286c40d8a8e` |
| 13 | `theorem` | [digest_not_injective_of_card_gt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant5ca7bdb9a6d03830e26b8c0fab4c932675b3a12df5187b5b6f33ddf1facbf6fb.lean/declarations/digest-not-injective-of-card-gt--8c6b5c0cdf559ef4f0d104a4.md) | 192 | `result-track:8c6b5c0cdf559ef4f0d104a4b7641a3f49b302c3b103c73451bdda1f703c96ac` |
| 14 | `theorem` | [digest_has_collision_of_card_gt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant5ca7bdb9a6d03830e26b8c0fab4c932675b3a12df5187b5b6f33ddf1facbf6fb.lean/declarations/digest-has-collision-of-card-gt--e0d3e1399fac11f24df66ab9.md) | 208 | `result-track:e0d3e1399fac11f24df66ab994972137aae538c11b92fb9c7dffc2ba3dda465f` |
| 15 | `theorem` | [digest_has_distinct_indistinguishable_snapshots](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant5ca7bdb9a6d03830e26b8c0fab4c932675b3a12df5187b5b6f33ddf1facbf6fb.lean/declarations/digest-has-distinct-indistinguishable-snapshots--ca5bb1d98ec518259fda5909.md) | 220 | `result-track:ca5bb1d98ec518259fda5909b7bd78c6e65115f1560316f0e5ee1190e4051d73` |
| 16 | `theorem` | [no_digest_decoder_of_card_gt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant5ca7bdb9a6d03830e26b8c0fab4c932675b3a12df5187b5b6f33ddf1facbf6fb.lean/declarations/no-digest-decoder-of-card-gt--f78e8c59ef690e0b99d1e303.md) | 232 | `result-track:f78e8c59ef690e0b99d1e3035889d4436065ceef0bd648798f608c34596badaa` |
| 17 | `theorem` | [collision_prevents_unique_preimage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant5ca7bdb9a6d03830e26b8c0fab4c932675b3a12df5187b5b6f33ddf1facbf6fb.lean/declarations/collision-prevents-unique-preimage--889d1999d1a371e862002b2e.md) | 250 | `result-track:889d1999d1a371e862002b2e5d171113957adf53361c2bad3f819cedbed59d04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
