# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eval.Variant7c051b6798d559413769f3495dc3d3e20317429422a0ada57a8c4656e0f4b7ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75f1f8d5123940e9ae05758cdc637ee0d1bfd8d7",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant7c051b6798d559413769f3495dc3d3e20317429422a0ada57a8c4656e0f4b7ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant7c051b6798d559413769f3495dc3d3e20317429422a0ada57a8c4656e0f4b7ed.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant7c051b6798d559413769f3495dc3d3e20317429422a0ada57a8c4656e0f4b7ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75f1f8d5123940e9ae05758cdc637ee0d1bfd8d7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant7c051b6798d559413769f3495dc3d3e20317429422a0ada57a8c4656e0f4b7ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant7c051b6798d559413769f3495dc3d3e20317429422a0ada57a8c4656e0f4b7ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Formula` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant7c051b6798d559413769f3495dc3d3e20317429422a0ada57a8c4656e0f4b7ed.lean/declarations/eval--ac357c64505611022c290c2e.md) | 20 | `declaration-track:ac357c64505611022c290c2e3360b007cfc11f3be1972c1e5a245279ef706de3` |
| 2 | `theorem` | [eval_var](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant7c051b6798d559413769f3495dc3d3e20317429422a0ada57a8c4656e0f4b7ed.lean/declarations/eval-var--45ee93e77734fd3323e7939f.md) | 30 | `result-track:45ee93e77734fd3323e7939f1bdfac22b78c7e3a1e800a00c5c5aa3ea3b01949` |
| 3 | `theorem` | [eval_falsum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant7c051b6798d559413769f3495dc3d3e20317429422a0ada57a8c4656e0f4b7ed.lean/declarations/eval-falsum--712623a1983a7334eaebf31f.md) | 33 | `result-track:712623a1983a7334eaebf31fbab1e449eda958f12e20008d3b33a4f168cf4020` |
| 4 | `theorem` | [eval_truth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant7c051b6798d559413769f3495dc3d3e20317429422a0ada57a8c4656e0f4b7ed.lean/declarations/eval-truth--79d27a8b8c2186f007ccec0f.md) | 36 | `result-track:79d27a8b8c2186f007ccec0f81726887e8b236a8938dcbca696bd56397c55c7c` |
| 5 | `theorem` | [eval_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant7c051b6798d559413769f3495dc3d3e20317429422a0ada57a8c4656e0f4b7ed.lean/declarations/eval-neg--873eab35a153e7dcacd1362f.md) | 39 | `result-track:873eab35a153e7dcacd1362f1fa106fa8cfbb6ba98530456d7970e802736afcc` |
| 6 | `theorem` | [eval_conj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant7c051b6798d559413769f3495dc3d3e20317429422a0ada57a8c4656e0f4b7ed.lean/declarations/eval-conj--62b7e8f5555300c1c6ea78de.md) | 42 | `result-track:62b7e8f5555300c1c6ea78de397583f9bff6971402d36290f3f29404a46c7411` |
| 7 | `theorem` | [eval_disj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant7c051b6798d559413769f3495dc3d3e20317429422a0ada57a8c4656e0f4b7ed.lean/declarations/eval-disj--48bc75186c5148f6e1b5ddf2.md) | 45 | `result-track:48bc75186c5148f6e1b5ddf2eab94857b2578796dec7571d9986db7ade7343dd` |
| 8 | `theorem` | [eval_impl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant7c051b6798d559413769f3495dc3d3e20317429422a0ada57a8c4656e0f4b7ed.lean/declarations/eval-impl--7295c4ed6016b1c8f131b879.md) | 48 | `result-track:7295c4ed6016b1c8f131b8799d2f2a0d0aacfd5966d8d4c655a212a9a5504e96` |
| 9 | `theorem` | [eval_eqv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant7c051b6798d559413769f3495dc3d3e20317429422a0ada57a8c4656e0f4b7ed.lean/declarations/eval-eqv--1f520a58fdb04067f3ada93e.md) | 51 | `result-track:1f520a58fdb04067f3ada93e53c8fcf531a86e453dc4f02e365fcf4ba3fbf2e0` |
| 10 | `theorem` | [eval_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant7c051b6798d559413769f3495dc3d3e20317429422a0ada57a8c4656e0f4b7ed.lean/declarations/eval-const--f558f1abb83ba8faa6335ec0.md) | 54 | `result-track:f558f1abb83ba8faa6335ec0455306ddfacff2b26b51b685f7c15420a389e1d4` |
| 11 | `theorem` | [eval_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant7c051b6798d559413769f3495dc3d3e20317429422a0ada57a8c4656e0f4b7ed.lean/declarations/eval-congr--83c875cfbdea4d89698aba6f.md) | 59 | `result-track:83c875cfbdea4d89698aba6fce4cfc05ad696ebe0b3ce79a5c97fffa9fc0ebc2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
