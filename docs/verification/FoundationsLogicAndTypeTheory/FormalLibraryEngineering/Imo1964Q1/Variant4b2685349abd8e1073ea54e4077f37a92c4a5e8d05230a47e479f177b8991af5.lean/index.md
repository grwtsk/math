# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Imo1964Q1.Variant4b2685349abd8e1073ea54e4077f37a92c4a5e8d05230a47e479f177b8991af5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9442c22f27a0bda13b04cbccede62142fe9f89e9",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1964Q1/Variant4b2685349abd8e1073ea54e4077f37a92c4a5e8d05230a47e479f177b8991af5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1964Q1/Variant4b2685349abd8e1073ea54e4077f37a92c4a5e8d05230a47e479f177b8991af5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1964Q1/Variant4b2685349abd8e1073ea54e4077f37a92c4a5e8d05230a47e479f177b8991af5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9442c22f27a0bda13b04cbccede62142fe9f89e9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1964Q1/Variant4b2685349abd8e1073ea54e4077f37a92c4a5e8d05230a47e479f177b8991af5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1964Q1/Variant4b2685349abd8e1073ea54e4077f37a92c4a5e8d05230a47e479f177b8991af5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.IntervalCases` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.ModEq` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [two_pow_mod_seven](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1964Q1/Variant4b2685349abd8e1073ea54e4077f37a92c4a5e8d05230a47e479f177b8991af5.lean/declarations/two-pow-mod-seven--39b18f6b653dce115ce515d5.md) | 41 | `result-track:39b18f6b653dce115ce515d5d57124649a8f6837132f8d30bf2984b14c76e224` |
| 2 | `def` | [ProblemPredicate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1964Q1/Variant4b2685349abd8e1073ea54e4077f37a92c4a5e8d05230a47e479f177b8991af5.lean/declarations/problempredicate--9e3adb8d3f17ee70463d1149.md) | 53 | `declaration-track:9e3adb8d3f17ee70463d11491655a7d1e1dff94bcfc4258bcf1e93d5f1edd47f` |
| 3 | `theorem` | [imo1964_q1a](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1964Q1/Variant4b2685349abd8e1073ea54e4077f37a92c4a5e8d05230a47e479f177b8991af5.lean/declarations/imo1964-q1a--d39645175f8424e4cbeb8433.md) | 57 | `result-track:d39645175f8424e4cbeb8433f7dfeb1d21a00461756bf08307604783365ee40f` |
| 4 | `theorem` | [imo1964_q1b](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1964Q1/Variant4b2685349abd8e1073ea54e4077f37a92c4a5e8d05230a47e479f177b8991af5.lean/declarations/imo1964-q1b--aa876014661d922ff6bf84c9.md) | 72 | `result-track:aa876014661d922ff6bf84c99ee6cec724b4fc1c395d203426548c3de075dc58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
