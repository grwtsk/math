# Verification target: GRWTSK.Analysis.MeasureTheory.HittingTime.Variant9b2faf6c6194163462860d0c38b3154d556342c2b75451f8921a92e73574842c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "490f35e93595efac0579faae6f98a20d1c822df3",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/HittingTime/Variant9b2faf6c6194163462860d0c38b3154d556342c2b75451f8921a92e73574842c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant9b2faf6c6194163462860d0c38b3154d556342c2b75451f8921a92e73574842c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant9b2faf6c6194163462860d0c38b3154d556342c2b75451f8921a92e73574842c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `490f35e93595efac0579faae6f98a20d1c822df3`.

Source path: `GRWTSK/Analysis/MeasureTheory/HittingTime/Variant9b2faf6c6194163462860d0c38b3154d556342c2b75451f8921a92e73574842c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/HittingTime/Variant9b2faf6c6194163462860d0c38b3154d556342c2b75451f8921a92e73574842c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Process.Stopping` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.AdaptationNote` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hitting](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant9b2faf6c6194163462860d0c38b3154d556342c2b75451f8921a92e73574842c.lean/declarations/hitting--b5dee4df48738c85e69b68e6.md) | 51 | `declaration-track:b5dee4df48738c85e69b68e6667b0c6952b66b6008b84d3018d16d1bdcb554a0` |
| 2 | `theorem` | [hitting_def](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant9b2faf6c6194163462860d0c38b3154d556342c2b75451f8921a92e73574842c.lean/declarations/hitting-def--e4cf09dc44ce7f5d67880a1e.md) | 57 | `result-track:e4cf09dc44ce7f5d67880a1e013d7b73a583282abc5fba9b7a59e5904f095e0a` |
| 3 | `theorem` | [hitting_of_lt](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant9b2faf6c6194163462860d0c38b3154d556342c2b75451f8921a92e73574842c.lean/declarations/hitting-of-lt--8a676846082f9762420dd807.md) | 67 | `result-track:8a676846082f9762420dd807a6488d62ad57cb585fb28b496f78635ec7b5d5f0` |
| 4 | `theorem` | [hitting_le](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant9b2faf6c6194163462860d0c38b3154d556342c2b75451f8921a92e73574842c.lean/declarations/hitting-le--57bb116deb553fa8c4f0612b.md) | 77 | `result-track:57bb116deb553fa8c4f0612bd1ec76a82959846fd4d459c2f98d2d5c0558c739` |
| 5 | `theorem` | [notMem_of_lt_hitting](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant9b2faf6c6194163462860d0c38b3154d556342c2b75451f8921a92e73574842c.lean/declarations/notmem-of-lt-hitting--5f9f007f4db6c6fd4338d05b.md) | 85 | `result-track:5f9f007f4db6c6fd4338d05be55b2ea1f45a100e7360a0297c09e422ff6ce32c` |
| 6 | `theorem` | [hitting_eq_end_iff](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant9b2faf6c6194163462860d0c38b3154d556342c2b75451f8921a92e73574842c.lean/declarations/hitting-eq-end-iff--46251f92027e157d10ec6803.md) | 96 | `result-track:46251f92027e157d10ec680368341b4b916f377c9a8886e14362e4dbf5ca973f` |
| 7 | `theorem` | [hitting_of_le](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant9b2faf6c6194163462860d0c38b3154d556342c2b75451f8921a92e73574842c.lean/declarations/hitting-of-le--50edbe2daf8c6b4efb7a35b9.md) | 101 | `result-track:50edbe2daf8c6b4efb7a35b9800fe7eae6da6eff26f875db82a812dee3a87251` |
| 8 | `theorem` | [le_hitting](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant9b2faf6c6194163462860d0c38b3154d556342c2b75451f8921a92e73574842c.lean/declarations/le-hitting--072a654916138df12e3a05db.md) | 111 | `result-track:072a654916138df12e3a05dbe97ee6e09ee1233c8e103c7f8757ec6825cc7d76` |
| 9 | `theorem` | [le_hitting_of_exists](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant9b2faf6c6194163462860d0c38b3154d556342c2b75451f8921a92e73574842c.lean/declarations/le-hitting-of-exists--95fc66abef421b0366cceff5.md) | 121 | `result-track:95fc66abef421b0366cceff5f25cc4a93f8ae02819778b5b34ed7e025c47d12b` |
| 10 | `theorem` | [hitting_mem_Icc](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant9b2faf6c6194163462860d0c38b3154d556342c2b75451f8921a92e73574842c.lean/declarations/hitting-mem-icc--77002b52aece198a17bbdf4e.md) | 128 | `result-track:77002b52aece198a17bbdf4e58572da1a984f0dce1f8d22706f99a779b9fc1f4` |
| 11 | `theorem` | [hitting_mem_set](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant9b2faf6c6194163462860d0c38b3154d556342c2b75451f8921a92e73574842c.lean/declarations/hitting-mem-set--5b6576d78ee3b2ba8fd15e33.md) | 131 | `result-track:5b6576d78ee3b2ba8fd15e336cb7dbb2bee39fbe50d7c48bfecb21afb862b74d` |
| 12 | `theorem` | [hitting_mem_set_of_hitting_lt](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant9b2faf6c6194163462860d0c38b3154d556342c2b75451f8921a92e73574842c.lean/declarations/hitting-mem-set-of-hitting-lt--6b6a8b30a9d86bb86f5531d3.md) | 141 | `result-track:6b6a8b30a9d86bb86f5531d3e8add583cbbf62206a9094560475203973430db9` |
| 13 | `theorem` | [hitting_le_of_mem](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant9b2faf6c6194163462860d0c38b3154d556342c2b75451f8921a92e73574842c.lean/declarations/hitting-le-of-mem--0378dd3207af259ecdbdca9e.md) | 148 | `result-track:0378dd3207af259ecdbdca9e190b09acae548532b42538808a563d2d8b27409c` |
| 14 | `theorem` | [hitting_le_iff_of_exists](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant9b2faf6c6194163462860d0c38b3154d556342c2b75451f8921a92e73574842c.lean/declarations/hitting-le-iff-of-exists--0529e79676e9071b6638ce48.md) | 154 | `result-track:0529e79676e9071b6638ce48119e8989da0098e76a6962cf155f07b16bfe6463` |
| 15 | `theorem` | [hitting_le_iff_of_lt](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant9b2faf6c6194163462860d0c38b3154d556342c2b75451f8921a92e73574842c.lean/declarations/hitting-le-iff-of-lt--f412394114057bcdd3b0c1c0.md) | 168 | `result-track:f412394114057bcdd3b0c1c01820c2d5a6dc88b7d2b41ab51fcc6286d54d8964` |
| 16 | `theorem` | [hitting_lt_iff](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant9b2faf6c6194163462860d0c38b3154d556342c2b75451f8921a92e73574842c.lean/declarations/hitting-lt-iff--f2a15ef3a270fb525559ca96.md) | 177 | `result-track:f2a15ef3a270fb525559ca966536f389f0fb22f5e38cd497c51ab3a74e420231` |
| 17 | `theorem` | [hitting_eq_hitting_of_exists](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant9b2faf6c6194163462860d0c38b3154d556342c2b75451f8921a92e73574842c.lean/declarations/hitting-eq-hitting-of-exists--d1a4d55c28c9d40e8c10e923.md) | 189 | `result-track:d1a4d55c28c9d40e8c10e923e7c386ba5a1f0b831eedb247455c216613a1b3a7` |
| 18 | `theorem` | [hitting_mono](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant9b2faf6c6194163462860d0c38b3154d556342c2b75451f8921a92e73574842c.lean/declarations/hitting-mono--5fda38414ddc8b57447a76bd.md) | 204 | `result-track:5fda38414ddc8b57447a76bda4d272d1e7d2893144610716595a8e9c42e4aa2f` |
| 19 | `theorem` | [hitting_isStoppingTime](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant9b2faf6c6194163462860d0c38b3154d556342c2b75451f8921a92e73574842c.lean/declarations/hitting-isstoppingtime--08f8a574110d578ffe4e5846.md) | 219 | `result-track:08f8a574110d578ffe4e58462f2ceac9621483927e35409f26a5329d2cba1c29` |
| 20 | `theorem` | [stoppedValue_hitting_mem](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant9b2faf6c6194163462860d0c38b3154d556342c2b75451f8921a92e73574842c.lean/declarations/stoppedvalue-hitting-mem--b258c86ef3573ab5be8d21b3.md) | 235 | `result-track:b258c86ef3573ab5be8d21b39f2ba560db7a7e3fc9ceb9acc6ebbf052673ce81` |
| 21 | `theorem` | [isStoppingTime_hitting_isStoppingTime](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant9b2faf6c6194163462860d0c38b3154d556342c2b75451f8921a92e73574842c.lean/declarations/isstoppingtime-hitting-isstoppingtime--13dbeee2b34ebc0ddeda634e.md) | 246 | `result-track:13dbeee2b34ebc0ddeda634ec069f8aa4965326dfe53d441b50234c046da2933` |
| 22 | `theorem` | [hitting_eq_sInf](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant9b2faf6c6194163462860d0c38b3154d556342c2b75451f8921a92e73574842c.lean/declarations/hitting-eq-sinf--383feba70fb9cd5608dd57ca.md) | 272 | `result-track:383feba70fb9cd5608dd57ca69b5deaf9a1c85eb50a1e4f645e3339db35a2f7f` |
| 23 | `theorem` | [hitting_bot_le_iff](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant9b2faf6c6194163462860d0c38b3154d556342c2b75451f8921a92e73574842c.lean/declarations/hitting-bot-le-iff--8d99a653a0ffb185654a9f8b.md) | 288 | `result-track:8d99a653a0ffb185654a9f8b847ec220a6829b1d2eb6a44ab8c1ba111f1ae620` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
