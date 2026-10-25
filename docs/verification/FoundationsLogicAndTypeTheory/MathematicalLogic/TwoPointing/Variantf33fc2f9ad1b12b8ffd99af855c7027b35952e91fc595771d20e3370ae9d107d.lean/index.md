# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TwoPointing.Variantf33fc2f9ad1b12b8ffd99af855c7027b35952e91fc595771d20e3370ae9d107d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1181c3663f1bec62861da152d920854976d7e47",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantf33fc2f9ad1b12b8ffd99af855c7027b35952e91fc595771d20e3370ae9d107d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantf33fc2f9ad1b12b8ffd99af855c7027b35952e91fc595771d20e3370ae9d107d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantf33fc2f9ad1b12b8ffd99af855c7027b35952e91fc595771d20e3370ae9d107d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1181c3663f1bec62861da152d920854976d7e47`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantf33fc2f9ad1b12b8ffd99af855c7027b35952e91fc595771d20e3370ae9d107d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantf33fc2f9ad1b12b8ffd99af855c7027b35952e91fc595771d20e3370ae9d107d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Sum.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Nontrivial` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TwoPointing](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantf33fc2f9ad1b12b8ffd99af855c7027b35952e91fc595771d20e3370ae9d107d.lean/declarations/twopointing--b58807e999e85a4d2d05f57b.md) | 41 | `declaration-track:b58807e999e85a4d2d05f57bb756f54836abb1c393d7da3e8ee2b85cf5d3c2ed` |
| 2 | `theorem` | [snd_ne_fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantf33fc2f9ad1b12b8ffd99af855c7027b35952e91fc595771d20e3370ae9d107d.lean/declarations/snd-ne-fst--ba71d5acdb52b75787795f91.md) | 55 | `result-track:ba71d5acdb52b75787795f914635c11ddedc9b664f6ab3b64633ce7153647890` |
| 3 | `def` | [swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantf33fc2f9ad1b12b8ffd99af855c7027b35952e91fc595771d20e3370ae9d107d.lean/declarations/swap--7eecf5a2f15dba13190541e8.md) | 61 | `declaration-track:7eecf5a2f15dba13190541e8a353f26d38f64b44078263100d1ce2c7e1000d58` |
| 4 | `theorem` | [swap_fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantf33fc2f9ad1b12b8ffd99af855c7027b35952e91fc595771d20e3370ae9d107d.lean/declarations/swap-fst--1d2e0566b6ec98192b398a78.md) | 66 | `result-track:1d2e0566b6ec98192b398a78f381893f9d077ed8208692a060a3e9a03131ce70` |
| 5 | `theorem` | [swap_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantf33fc2f9ad1b12b8ffd99af855c7027b35952e91fc595771d20e3370ae9d107d.lean/declarations/swap-snd--709b41de98fc5d75c48c03db.md) | 69 | `result-track:709b41de98fc5d75c48c03dbec44132e541fe5bc168f804968a5bd3207e7a9db` |
| 6 | `theorem` | [swap_swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantf33fc2f9ad1b12b8ffd99af855c7027b35952e91fc595771d20e3370ae9d107d.lean/declarations/swap-swap--6f038d1b94e865bcd05f65ea.md) | 73 | `result-track:6f038d1b94e865bcd05f65eaaf64e2ae266bb4a96bcca0923f370fa97823b50d` |
| 7 | `theorem` | [to_nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantf33fc2f9ad1b12b8ffd99af855c7027b35952e91fc595771d20e3370ae9d107d.lean/declarations/to-nontrivial--b13e0d9f859730eb9ee764bf.md) | 78 | `result-track:b13e0d9f859730eb9ee764bf86b9f589981b8ca7873b941c9ec10082b12dbe41` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantf33fc2f9ad1b12b8ffd99af855c7027b35952e91fc595771d20e3370ae9d107d.lean/declarations/instance--0f58957315ad8a3b5631fd66.md) | 82 | `declaration-track:0f58957315ad8a3b5631fd6624eb0842f8dcaabd9e68e45228d19606666e4129` |
| 9 | `theorem` | [nonempty_two_pointing_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantf33fc2f9ad1b12b8ffd99af855c7027b35952e91fc595771d20e3370ae9d107d.lean/declarations/nonempty-two-pointing-iff--e56efd0bfc1525f33a99d921.md) | 87 | `result-track:e56efd0bfc1525f33a99d921fd23cfde18099411629ba4a359595b474166c202` |
| 10 | `def` | [pi](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantf33fc2f9ad1b12b8ffd99af855c7027b35952e91fc595771d20e3370ae9d107d.lean/declarations/pi--a83e56877db281662354ba75.md) | 96 | `declaration-track:a83e56877db281662354ba75a023a46f213accb9934bdbe09b54388c453f5b7c` |
| 11 | `theorem` | [pi_fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantf33fc2f9ad1b12b8ffd99af855c7027b35952e91fc595771d20e3370ae9d107d.lean/declarations/pi-fst--a5419185a01c1f0c36d3ca0d.md) | 103 | `result-track:a5419185a01c1f0c36d3ca0d2b36f9ccb0df3298db0a5e178bca99cff9254061` |
| 12 | `theorem` | [pi_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantf33fc2f9ad1b12b8ffd99af855c7027b35952e91fc595771d20e3370ae9d107d.lean/declarations/pi-snd--68be4e8ced66fbcc257c475c.md) | 108 | `result-track:68be4e8ced66fbcc257c475cedb104d4b34c785baee2e777f82898de36372e12` |
| 13 | `def` | [prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantf33fc2f9ad1b12b8ffd99af855c7027b35952e91fc595771d20e3370ae9d107d.lean/declarations/prod--fa7774742a69d605b4d38e42.md) | 115 | `declaration-track:fa7774742a69d605b4d38e42fbb10e2555fe05e2cb2f68b716e948a80041ef39` |
| 14 | `theorem` | [prod_fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantf33fc2f9ad1b12b8ffd99af855c7027b35952e91fc595771d20e3370ae9d107d.lean/declarations/prod-fst--2b61b4b31ab0b530d21d68a8.md) | 122 | `result-track:2b61b4b31ab0b530d21d68a8aa98c49799101f4c2208a21e8319b29874271f4e` |
| 15 | `theorem` | [prod_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantf33fc2f9ad1b12b8ffd99af855c7027b35952e91fc595771d20e3370ae9d107d.lean/declarations/prod-snd--f040cdd51dfe10b49c0da131.md) | 127 | `result-track:f040cdd51dfe10b49c0da13111ab416edf8b146cf75ae3f9cac00e915f768803` |
| 16 | `def` | [sum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantf33fc2f9ad1b12b8ffd99af855c7027b35952e91fc595771d20e3370ae9d107d.lean/declarations/sum--70c5e8a8d9f90e202478cf4f.md) | 133 | `declaration-track:70c5e8a8d9f90e202478cf4f6379ccd8bc18e99020053cc75a72b8271cc4c981` |
| 17 | `theorem` | [sum_fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantf33fc2f9ad1b12b8ffd99af855c7027b35952e91fc595771d20e3370ae9d107d.lean/declarations/sum-fst--1f54a7ec15e4eb15ee44fa1d.md) | 138 | `result-track:1f54a7ec15e4eb15ee44fa1d94cc69dff076b0196252bcba877c539313c39822` |
| 18 | `theorem` | [sum_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantf33fc2f9ad1b12b8ffd99af855c7027b35952e91fc595771d20e3370ae9d107d.lean/declarations/sum-snd--c1b9e8108e6bb2ff39204353.md) | 143 | `result-track:c1b9e8108e6bb2ff39204353c0bab6165c9c1a920e43018c3c44e555183b80da` |
| 19 | `def` | [bool](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantf33fc2f9ad1b12b8ffd99af855c7027b35952e91fc595771d20e3370ae9d107d.lean/declarations/bool--a86f8b4eae3e7d7136af8e96.md) | 148 | `declaration-track:a86f8b4eae3e7d7136af8e9616ef5ed85638f99a5477542c24182a622c7fb9f6` |
| 20 | `theorem` | [bool_fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantf33fc2f9ad1b12b8ffd99af855c7027b35952e91fc595771d20e3370ae9d107d.lean/declarations/bool-fst--6f493253cd9b960a7ea1c01a.md) | 153 | `result-track:6f493253cd9b960a7ea1c01a3f8eb3864443f85d4b5ea27419dc6819d67325e8` |
| 21 | `theorem` | [bool_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantf33fc2f9ad1b12b8ffd99af855c7027b35952e91fc595771d20e3370ae9d107d.lean/declarations/bool-snd--bcd8da4e43583991344953e9.md) | 157 | `result-track:bcd8da4e43583991344953e933d7408a3fe368952c142c216d89d0371ed29d86` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantf33fc2f9ad1b12b8ffd99af855c7027b35952e91fc595771d20e3370ae9d107d.lean/declarations/instance--3c0fe0d156abc7b1c78c44e0.md) | 160 | `declaration-track:3c0fe0d156abc7b1c78c44e007b243426caffd013860d61c1978bf3465f17f7c` |
| 23 | `def` | [prop](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantf33fc2f9ad1b12b8ffd99af855c7027b35952e91fc595771d20e3370ae9d107d.lean/declarations/prop--95c6622ddedce9e7e42834e9.md) | 164 | `declaration-track:95c6622ddedce9e7e42834e9d55b2759c328faa319c95293a318a7ae084f9da3` |
| 24 | `theorem` | [prop_fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantf33fc2f9ad1b12b8ffd99af855c7027b35952e91fc595771d20e3370ae9d107d.lean/declarations/prop-fst--9340cd558be62846de782483.md) | 169 | `result-track:9340cd558be62846de782483d79831456f29a13b818c11258b5b37b7b277fecb` |
| 25 | `theorem` | [prop_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantf33fc2f9ad1b12b8ffd99af855c7027b35952e91fc595771d20e3370ae9d107d.lean/declarations/prop-snd--b0ef3a4bbdc9abde925b18c5.md) | 174 | `result-track:b0ef3a4bbdc9abde925b18c5c5ea20ea7ff23a44b1d23713e582320403330d82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
