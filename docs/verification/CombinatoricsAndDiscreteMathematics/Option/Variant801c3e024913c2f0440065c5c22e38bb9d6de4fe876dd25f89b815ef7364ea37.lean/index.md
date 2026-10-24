# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Option.Variant801c3e024913c2f0440065c5c22e38bb9d6de4fe876dd25f89b815ef7364ea37

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "799659441f54f347e82e913e1554233f5b176ef8",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Option/Variant801c3e024913c2f0440065c5c22e38bb9d6de4fe876dd25f89b815ef7364ea37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variant801c3e024913c2f0440065c5c22e38bb9d6de4fe876dd25f89b815ef7364ea37.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variant801c3e024913c2f0440065c5c22e38bb9d6de4fe876dd25f89b815ef7364ea37.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `799659441f54f347e82e913e1554233f5b176ef8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Option/Variant801c3e024913c2f0440065c5c22e38bb9d6de4fe876dd25f89b815ef7364ea37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Option/Variant801c3e024913c2f0440065c5c22e38bb9d6de4fe876dd25f89b815ef7364ea37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Card` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Union` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variant801c3e024913c2f0440065c5c22e38bb9d6de4fe876dd25f89b815ef7364ea37.lean/declarations/tofinset--d9c94d62c42164703fcd8b66.md) | 35 | `declaration-track:d9c94d62c42164703fcd8b6695ee403bcb4c8c132cc8a066bb3b905a5ca50024` |
| 2 | `theorem` | [toFinset_none](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variant801c3e024913c2f0440065c5c22e38bb9d6de4fe876dd25f89b815ef7364ea37.lean/declarations/tofinset-none--65a15454b202b3115f713233.md) | 39 | `result-track:65a15454b202b3115f71323343de632a4dd663cb8141203aa6f860e9719dc920` |
| 3 | `theorem` | [toFinset_some](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variant801c3e024913c2f0440065c5c22e38bb9d6de4fe876dd25f89b815ef7364ea37.lean/declarations/tofinset-some--2b1ff41d9a509ba55ff9d657.md) | 43 | `result-track:2b1ff41d9a509ba55ff9d6572b3c2151512d56c705b18f5de6e2cb312692e8d5` |
| 4 | `theorem` | [mem_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variant801c3e024913c2f0440065c5c22e38bb9d6de4fe876dd25f89b815ef7364ea37.lean/declarations/mem-tofinset--bad5311c8f190c20b977e264.md) | 47 | `result-track:bad5311c8f190c20b977e2647d493a5fc80f7a1de2f25a16b747771e69836945` |
| 5 | `theorem` | [card_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variant801c3e024913c2f0440065c5c22e38bb9d6de4fe876dd25f89b815ef7364ea37.lean/declarations/card-tofinset--d806b6d61f573c70c0073b70.md) | 50 | `result-track:d806b6d61f573c70c0073b703244d1c83dc13c2ab8f8bdbf0e2d19f674c201de` |
| 6 | `def` | [insertNone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variant801c3e024913c2f0440065c5c22e38bb9d6de4fe876dd25f89b815ef7364ea37.lean/declarations/insertnone--7d6fcf6a7e8050bb0246fc24.md) | 58 | `declaration-track:7d6fcf6a7e8050bb0246fc24203b02609a41603cee84da37cbb717648ac8dfd0` |
| 7 | `theorem` | [mem_insertNone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variant801c3e024913c2f0440065c5c22e38bb9d6de4fe876dd25f89b815ef7364ea37.lean/declarations/mem-insertnone--20aac45a2e2e157e7e3e8435.md) | 63 | `result-track:20aac45a2e2e157e7e3e8435c3c5941f8b8ed9ef9148f1668e7fc1a05a91fb3f` |
| 8 | `lemma` | [forall_mem_insertNone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variant801c3e024913c2f0440065c5c22e38bb9d6de4fe876dd25f89b815ef7364ea37.lean/declarations/forall-mem-insertnone--80a207e44df29b7e5dbc0c7b.md) | 67 | `result-track:80a207e44df29b7e5dbc0c7b9646cf4aff797ceb0bc3761a5eca8ff3e3c485e9` |
| 9 | `theorem` | [some_mem_insertNone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variant801c3e024913c2f0440065c5c22e38bb9d6de4fe876dd25f89b815ef7364ea37.lean/declarations/some-mem-insertnone--77b9ad25f5165e58d0bdfb0c.md) | 70 | `result-track:77b9ad25f5165e58d0bdfb0c194589b5ba7ec125753c09fe8e041cc6e2a5879a` |
| 10 | `lemma` | [none_mem_insertNone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variant801c3e024913c2f0440065c5c22e38bb9d6de4fe876dd25f89b815ef7364ea37.lean/declarations/none-mem-insertnone--8106ad1d7566d16eee55e445.md) | 72 | `result-track:8106ad1d7566d16eee55e4452a194e5f9315cb947ba6dd7ebb25b09f334ab4f3` |
| 11 | `lemma` | [insertNone_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variant801c3e024913c2f0440065c5c22e38bb9d6de4fe876dd25f89b815ef7364ea37.lean/declarations/insertnone-nonempty--333308b9ee0435e33587945e.md) | 75 | `result-track:333308b9ee0435e33587945e4e4c45d436a18b0e7e9cc10e9453ff35528833d9` |
| 12 | `theorem` | [card_insertNone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variant801c3e024913c2f0440065c5c22e38bb9d6de4fe876dd25f89b815ef7364ea37.lean/declarations/card-insertnone--a3acb0f559f2cbd80be3bd0d.md) | 78 | `result-track:a3acb0f559f2cbd80be3bd0d0271d421eaf09d420d356a690c005bc368085188` |
| 13 | `def` | [eraseNone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variant801c3e024913c2f0440065c5c22e38bb9d6de4fe876dd25f89b815ef7364ea37.lean/declarations/erasenone--4e278559b55557d7c16515ed.md) | 82 | `declaration-track:4e278559b55557d7c16515ed3a71fcfbcdd394d184e050a46cbbcaa8b90bc7ff` |
| 14 | `theorem` | [mem_eraseNone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variant801c3e024913c2f0440065c5c22e38bb9d6de4fe876dd25f89b815ef7364ea37.lean/declarations/mem-erasenone--86078272f9814a99008481d5.md) | 87 | `result-track:86078272f9814a99008481d5745c28257574d1dc42496e93daf2b367b2612871` |
| 15 | `lemma` | [forall_mem_eraseNone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variant801c3e024913c2f0440065c5c22e38bb9d6de4fe876dd25f89b815ef7364ea37.lean/declarations/forall-mem-erasenone--14bf78852483874107ffc4e4.md) | 90 | `result-track:14bf78852483874107ffc4e4bde6c6a52db159180cd22f0c7bcc71e1f779a288` |
| 16 | `theorem` | [eraseNone_eq_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variant801c3e024913c2f0440065c5c22e38bb9d6de4fe876dd25f89b815ef7364ea37.lean/declarations/erasenone-eq-biunion--c85d2bf52a74409953aff385.md) | 93 | `result-track:c85d2bf52a74409953aff3859dcda648b5f430c1cb4a730e7a07b79f1f218597` |
| 17 | `theorem` | [eraseNone_map_some](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variant801c3e024913c2f0440065c5c22e38bb9d6de4fe876dd25f89b815ef7364ea37.lean/declarations/erasenone-map-some--a79a3450bc4d6be7bbb9ba57.md) | 99 | `result-track:a79a3450bc4d6be7bbb9ba573739c9b34eb429a86d821dabf33a130d52dce664` |
| 18 | `theorem` | [eraseNone_image_some](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variant801c3e024913c2f0440065c5c22e38bb9d6de4fe876dd25f89b815ef7364ea37.lean/declarations/erasenone-image-some--2ddbc3bdf4f6a4887ec8d6e9.md) | 104 | `result-track:2ddbc3bdf4f6a4887ec8d6e93a0d232fe8eb17ca14f4e8dfc82f764208925895` |
| 19 | `theorem` | [coe_eraseNone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variant801c3e024913c2f0440065c5c22e38bb9d6de4fe876dd25f89b815ef7364ea37.lean/declarations/coe-erasenone--ba5791d81d19fd76a57c316e.md) | 108 | `result-track:ba5791d81d19fd76a57c316ef5a0a327aa73007f0aef9d51d1b36f6f4f5184ab` |
| 20 | `theorem` | [eraseNone_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variant801c3e024913c2f0440065c5c22e38bb9d6de4fe876dd25f89b815ef7364ea37.lean/declarations/erasenone-union--62e0ed93d8226a72df254e93.md) | 112 | `result-track:62e0ed93d8226a72df254e93b52cde36e4e3ba18002c741d2c9b46cb54bb4c23` |
| 21 | `theorem` | [eraseNone_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variant801c3e024913c2f0440065c5c22e38bb9d6de4fe876dd25f89b815ef7364ea37.lean/declarations/erasenone-inter--385824d1e2286226066def1a.md) | 118 | `result-track:385824d1e2286226066def1a2f2aa6789789c0d9975faba255801e81a096b1c9` |
| 22 | `theorem` | [eraseNone_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variant801c3e024913c2f0440065c5c22e38bb9d6de4fe876dd25f89b815ef7364ea37.lean/declarations/erasenone-empty--ebc433f875809065bd188746.md) | 124 | `result-track:ebc433f875809065bd18874667e4ad5f882271b2104372eed8bfb0e922c681c3` |
| 23 | `theorem` | [eraseNone_none](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variant801c3e024913c2f0440065c5c22e38bb9d6de4fe876dd25f89b815ef7364ea37.lean/declarations/erasenone-none--320ac146653abde3c35fa8bf.md) | 129 | `result-track:320ac146653abde3c35fa8bff583e31eb161e78b692878564335ad81625ee0f6` |
| 24 | `theorem` | [image_some_eraseNone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variant801c3e024913c2f0440065c5c22e38bb9d6de4fe876dd25f89b815ef7364ea37.lean/declarations/image-some-erasenone--85d8ed49c001f51f65cb8507.md) | 134 | `result-track:85d8ed49c001f51f65cb85076239262de664bd929650761f07004251c708b7f2` |
| 25 | `theorem` | [map_some_eraseNone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variant801c3e024913c2f0440065c5c22e38bb9d6de4fe876dd25f89b815ef7364ea37.lean/declarations/map-some-erasenone--3974aeea0fef4a9ce6bd154c.md) | 138 | `result-track:3974aeea0fef4a9ce6bd154c1c4254abf0372b44f4630545af10e1c1887f2ec2` |
| 26 | `theorem` | [insertNone_eraseNone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variant801c3e024913c2f0440065c5c22e38bb9d6de4fe876dd25f89b815ef7364ea37.lean/declarations/insertnone-erasenone--9bc7a4ed0875d6fc57d406c7.md) | 143 | `result-track:9bc7a4ed0875d6fc57d406c78a0196d5589b168afa7c0ec28de2d388a80d8c63` |
| 27 | `theorem` | [eraseNone_insertNone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variant801c3e024913c2f0440065c5c22e38bb9d6de4fe876dd25f89b815ef7364ea37.lean/declarations/erasenone-insertnone--f81ecd7c5545b25b64509e9f.md) | 147 | `result-track:f81ecd7c5545b25b64509e9fb0e60fb0fade2e8dc52a43c6b24345976d849a1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
