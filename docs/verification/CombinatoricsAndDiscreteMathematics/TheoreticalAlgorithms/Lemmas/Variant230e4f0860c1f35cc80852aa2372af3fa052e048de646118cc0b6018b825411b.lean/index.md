# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variant230e4f0860c1f35cc80852aa2372af3fa052e048de646118cc0b6018b825411b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7341c00066b6cdfa8eeeee30164f6265acdd1a0",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant230e4f0860c1f35cc80852aa2372af3fa052e048de646118cc0b6018b825411b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant230e4f0860c1f35cc80852aa2372af3fa052e048de646118cc0b6018b825411b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant230e4f0860c1f35cc80852aa2372af3fa052e048de646118cc0b6018b825411b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7341c00066b6cdfa8eeeee30164f6265acdd1a0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant230e4f0860c1f35cc80852aa2372af3fa052e048de646118cc0b6018b825411b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant230e4f0860c1f35cc80852aa2372af3fa052e048de646118cc0b6018b825411b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Bitvec.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [bitsToNat_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant230e4f0860c1f35cc80852aa2372af3fa052e048de646118cc0b6018b825411b.lean/declarations/bitstonat-tolist--6b2dbc279f0c89ee02f0dde0.md) | 22 | `result-track:6b2dbc279f0c89ee02f0dde0dd868f486f8cc0483d3b0d004e430c620b312a11` |
| 2 | `theorem` | [toNat_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant230e4f0860c1f35cc80852aa2372af3fa052e048de646118cc0b6018b825411b.lean/declarations/tonat-append--215a884274078c0762ce21e4.md) | 33 | `result-track:215a884274078c0762ce21e46510d959de6aa14cd9731b6a4259d7c22d66279f` |
| 3 | `theorem` | [bits_toNat_decide](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant230e4f0860c1f35cc80852aa2372af3fa052e048de646118cc0b6018b825411b.lean/declarations/bits-tonat-decide--21e64522dd3c2ca13a6317e1.md) | 59 | `result-track:21e64522dd3c2ca13a6317e1a3aff4a4b15e806e5093a35ced017a090a78ef6b` |
| 4 | `theorem` | [ofNat_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant230e4f0860c1f35cc80852aa2372af3fa052e048de646118cc0b6018b825411b.lean/declarations/ofnat-succ--0048aa67aba8f8a710b48544.md) | 65 | `result-track:0048aa67aba8f8a710b48544417416d302ee27054154b91ac0cb23b1ecdeba42` |
| 5 | `theorem` | [toNat_ofNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant230e4f0860c1f35cc80852aa2372af3fa052e048de646118cc0b6018b825411b.lean/declarations/tonat-ofnat--3653416ba58876ccbecf0fad.md) | 70 | `result-track:3653416ba58876ccbecf0fadac2366f503c0d214bed64dd418b3ab755e640e67` |
| 6 | `theorem` | [ofFin_val](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant230e4f0860c1f35cc80852aa2372af3fa052e048de646118cc0b6018b825411b.lean/declarations/offin-val--883ddad3aa6526081909e688.md) | 77 | `result-track:883ddad3aa6526081909e68823eb794cd993d2eae71130acd352ece75993379c` |
| 7 | `theorem` | [addLsb_eq_twice_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant230e4f0860c1f35cc80852aa2372af3fa052e048de646118cc0b6018b825411b.lean/declarations/addlsb-eq-twice-add-one--c30713770b8c1636865d7121.md) | 82 | `result-track:c30713770b8c1636865d7121014b0864673322b1ce1d9af0c2dc6722377fd003` |
| 8 | `theorem` | [toNat_eq_foldr_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant230e4f0860c1f35cc80852aa2372af3fa052e048de646118cc0b6018b825411b.lean/declarations/tonat-eq-foldr-reverse--fbb6eea1d1acb054a28ddea8.md) | 86 | `result-track:fbb6eea1d1acb054a28ddea8daa0ef1ee400dafbd242c91d16823122925b0e7c` |
| 9 | `theorem` | [toNat_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant230e4f0860c1f35cc80852aa2372af3fa052e048de646118cc0b6018b825411b.lean/declarations/tonat-lt--53bc7e8e168624a5af682cda.md) | 90 | `result-track:53bc7e8e168624a5af682cdafafd3231d22133ff97fd16fdf9cd3e6194208f2b` |
| 10 | `theorem` | [addLsb_div_two](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant230e4f0860c1f35cc80852aa2372af3fa052e048de646118cc0b6018b825411b.lean/declarations/addlsb-div-two--143974e3f0e99b13613db8a6.md) | 112 | `result-track:143974e3f0e99b13613db8a6260d8bb3e94a3d259d61f55e2697c38766fa3f90` |
| 11 | `theorem` | [decide_addLsb_mod_two](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant230e4f0860c1f35cc80852aa2372af3fa052e048de646118cc0b6018b825411b.lean/declarations/decide-addlsb-mod-two--60deaa74b48b32f6761468dd.md) | 119 | `result-track:60deaa74b48b32f6761468dd4d63bc4336559050a488de7a87a06dd9a4fe1ff8` |
| 12 | `theorem` | [ofNat_toNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant230e4f0860c1f35cc80852aa2372af3fa052e048de646118cc0b6018b825411b.lean/declarations/ofnat-tonat--2560788de01d88d959f2e0c7.md) | 125 | `result-track:2560788de01d88d959f2e0c77820a13878e76fa72898b2d77e8a963cd4705478` |
| 13 | `theorem` | [toFin_val](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant230e4f0860c1f35cc80852aa2372af3fa052e048de646118cc0b6018b825411b.lean/declarations/tofin-val--bec8e9b4ae24113f076a0313.md) | 147 | `result-track:bec8e9b4ae24113f076a0313ed9cfc6e86aeed3b7f5c2a4d4da0a3daf3244aab` |
| 14 | `theorem` | [toFin_le_toFin_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant230e4f0860c1f35cc80852aa2372af3fa052e048de646118cc0b6018b825411b.lean/declarations/tofin-le-tofin-of-le--50859ba1829b22e832581eca.md) | 152 | `result-track:50859ba1829b22e832581eca24c66675612cac1a63fafc9dc62594389286dd90` |
| 15 | `theorem` | [ofFin_le_ofFin_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant230e4f0860c1f35cc80852aa2372af3fa052e048de646118cc0b6018b825411b.lean/declarations/offin-le-offin-of-le--85e1f15e642320ae1d2a69a5.md) | 158 | `result-track:85e1f15e642320ae1d2a69a558055d0e73d5188bd1268ffa77409e5d20537a01` |
| 16 | `theorem` | [toFin_ofFin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant230e4f0860c1f35cc80852aa2372af3fa052e048de646118cc0b6018b825411b.lean/declarations/tofin-offin--0e998023b0363cc697cde2c3.md) | 164 | `result-track:0e998023b0363cc697cde2c3478b9903100b30a7942b15b49b2d0b8fbeb2460e` |
| 17 | `theorem` | [ofFin_toFin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant230e4f0860c1f35cc80852aa2372af3fa052e048de646118cc0b6018b825411b.lean/declarations/offin-tofin--7d89c1861022f3e2817c0b1f.md) | 168 | `result-track:7d89c1861022f3e2817c0b1fbd314054eddb72cbea56b982ce023558e524bdf8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
