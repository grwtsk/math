# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ConjugateQuartetBudget

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5ec9680b27aca7c73bde737c84bae21df795cf3",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ConjugateQuartetBudget.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConjugateQuartetBudget.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConjugateQuartetBudget.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5ec9680b27aca7c73bde737c84bae21df795cf3`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ConjugateQuartetBudget.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ConjugateQuartetBudget.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.WeightedQuartetBudget`](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedQuartetBudget.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.RemainingMultiplicityBudget`](../../../../../mathematics/NumberTheory/Zeta/Riemann/RemainingMultiplicityBudget.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRealAxisMellin`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [conjugated](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConjugateQuartetBudget.lean/declarations/conjugated--5933d10b6b0f88c9ad664609.md) | 40 | `declaration-track:5933d10b6b0f88c9ad664609fa3180f9d4427a37814c1aa50a1fb565b6143ffc` |
| 2 | `theorem` | [conjugated_re](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConjugateQuartetBudget.lean/declarations/conjugated-re--2a3180917c99696a3ddcb576.md) | 42 | `result-track:2a3180917c99696a3ddcb57665e15ec8df884cb0a4807170cef0d937627e92b5` |
| 3 | `theorem` | [conjugated_im](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConjugateQuartetBudget.lean/declarations/conjugated-im--c15f0819a416c1a33726b3b7.md) | 45 | `result-track:c15f0819a416c1a33726b3b7c7d0d0c32419a03d651003f383604fe635ee2c1b` |
| 4 | `theorem` | [conjugated_involutive](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConjugateQuartetBudget.lean/declarations/conjugated-involutive--31f33d7ef993a5aac67caafe.md) | 48 | `result-track:31f33d7ef993a5aac67caafe7ed4d23afa9314337cd1195580dd6bb2489fea3e` |
| 5 | `theorem` | [height_conjugated](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConjugateQuartetBudget.lean/declarations/height-conjugated--a7e9b6e64c1462e6d079e5d7.md) | 52 | `result-track:a7e9b6e64c1462e6d079e5d78e8aec22f69608db7233141ec9d901410d170aa9` |
| 6 | `theorem` | [multiplicity_conjugated](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConjugateQuartetBudget.lean/declarations/multiplicity-conjugated--019c26651d0f0a291db2e41f.md) | 56 | `result-track:019c26651d0f0a291db2e41ff7d9bd05519b17dc481c9ab1d9c617739809392c` |
| 7 | `theorem` | [nonreal](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConjugateQuartetBudget.lean/declarations/nonreal--2be955110ee6320f54b42ebe.md) | 63 | `result-track:2be955110ee6320f54b42ebefcf1790b8f12a1ea004f31d2183181b739a2724f` |
| 8 | `theorem` | [conjugated_ne_self](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConjugateQuartetBudget.lean/declarations/conjugated-ne-self--4f41af903887a411f176824e.md) | 67 | `result-track:4f41af903887a411f176824e10ea2c996eb136963f815ed5cb112b2849c26af4` |
| 9 | `theorem` | [conjugated_mem_regionHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConjugateQuartetBudget.lean/declarations/conjugated-mem-regionhead--cefd81465c451bea7327f707.md) | 74 | `result-track:cefd81465c451bea7327f70752c8aa41dba4459924e4b9365a1ccb6527b29776` |
| 10 | `theorem` | [quartet_distinct](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConjugateQuartetBudget.lean/declarations/quartet-distinct--2f378d24881ea5b83bc6db3b.md) | 82 | `result-track:2f378d24881ea5b83bc6db3bd60755186b96085080a37632e347af8b3253f12a` |
| 11 | `theorem` | [known_add_fourfold_le_count_of_off_line](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConjugateQuartetBudget.lean/declarations/known-add-fourfold-le-count-of-off-line--0c0839252d20ccc09ed24123.md) | 103 | `result-track:0c0839252d20ccc09ed24123d9099a3814d827b78e89c94b1f88ee70cd73ddd8` |
| 12 | `theorem` | [critical_line_of_known_quartet_budget](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConjugateQuartetBudget.lean/declarations/critical-line-of-known-quartet-budget--826e75f496227947e22682f9.md) | 131 | `result-track:826e75f496227947e22682f9054e343acefd94c8886244774de08a0f97502bf9` |
| 13 | `theorem` | [all_on_line_of_known_quartet_budget](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConjugateQuartetBudget.lean/declarations/all-on-line-of-known-quartet-budget--9c39b6175a681ea7276d5bf6.md) | 147 | `result-track:9c39b6175a681ea7276d5bf63e5250639b20b6508b47c9f77ad683f1fd5b1c4d` |
| 14 | `theorem` | [all_on_line_of_remaining_lt_four](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConjugateQuartetBudget.lean/declarations/all-on-line-of-remaining-lt-four--6e066fcea2769d844191fc56.md) | 161 | `result-track:6e066fcea2769d844191fc56ab4d7c84142df79dbc7eb3939260a6ac84712dcd` |
| 15 | `theorem` | [rhThrough_of_height_known_quartet_budget](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConjugateQuartetBudget.lean/declarations/rhthrough-of-height-known-quartet-budget--b37fc9437cdab2cd554cfeaa.md) | 173 | `result-track:b37fc9437cdab2cd554cfeaaa34436933632d7bf880ed67b28e46f478c13177b` |
| 16 | `theorem` | [known_eq_regionHead_of_conjugate_closed_remaining_lt_two](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConjugateQuartetBudget.lean/declarations/known-eq-regionhead-of-conjugate-closed-remaining-lt-two--a93a655cdf3a30dd11dfdd28.md) | 188 | `result-track:a93a655cdf3a30dd11dfdd2850d4b431ad2f6fd07fb8a72c5ca5c626998a69c3` |
| 17 | `theorem` | [real_axis_collapse_fixture](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConjugateQuartetBudget.lean/declarations/real-axis-collapse-fixture--d7104b217866bc40d36005cf.md) | 201 | `result-track:d7104b217866bc40d36005cffb792d227d4b4ece75e700cfe9bcebccce3b168d` |
| 18 | `theorem` | [positive_half_plane_not_conjugate_stable_fixture](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConjugateQuartetBudget.lean/declarations/positive-half-plane-not-conjugate-stable-fixture--6d48ad8ab020257b613ba061.md) | 207 | `result-track:6d48ad8ab020257b613ba0610a1c0dce9b558aaafc0cc94afe655568f54ae439` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
