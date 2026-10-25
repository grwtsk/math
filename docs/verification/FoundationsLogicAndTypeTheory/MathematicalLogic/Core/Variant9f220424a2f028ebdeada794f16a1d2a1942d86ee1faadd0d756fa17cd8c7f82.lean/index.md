# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Core.Variant9f220424a2f028ebdeada794f16a1d2a1942d86ee1faadd0d756fa17cd8c7f82

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb6905e34374bce4db4d3c0eff2c889d1b9cc327",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant9f220424a2f028ebdeada794f16a1d2a1942d86ee1faadd0d756fa17cd8c7f82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant9f220424a2f028ebdeada794f16a1d2a1942d86ee1faadd0d756fa17cd8c7f82.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant9f220424a2f028ebdeada794f16a1d2a1942d86ee1faadd0d756fa17cd8c7f82.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb6905e34374bce4db4d3c0eff2c889d1b9cc327`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant9f220424a2f028ebdeada794f16a1d2a1942d86ee1faadd0d756fa17cd8c7f82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant9f220424a2f028ebdeada794f16a1d2a1942d86ee1faadd0d756fa17cd8c7f82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Qq.MetaM` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Nontrivial` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SolveByElim` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [subsingleton_or_nontrivial_elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant9f220424a2f028ebdeada794f16a1d2a1942d86ee1faadd0d756fa17cd8c7f82.lean/declarations/subsingleton-or-nontrivial-elim--5f85468a30c7373c79d369f9.md) | 17 | `result-track:5f85468a30c7373c79d369f9a2b26146d331c520ee79cf539f030c9fc8423a2d` |
| 2 | `def` | [nontrivialityByElim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant9f220424a2f028ebdeada794f16a1d2a1942d86ee1faadd0d756fa17cd8c7f82.lean/declarations/nontrivialitybyelim--d47aef44c20fe85245600244.md) | 27 | `declaration-track:d47aef44c20fe85245600244bd0ed484e7aa56558b9e384fe852cb868dffda5b` |
| 3 | `def` | [nontrivialityByAssumption](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant9f220424a2f028ebdeada794f16a1d2a1942d86ee1faadd0d756fa17cd8c7f82.lean/declarations/nontrivialitybyassumption--da5b33f42633a80dd233e1e3.md) | 50 | `declaration-track:da5b33f42633a80dd233e1e38502de4e0af64f465078cacf293b9d10dfc088dc` |
| 4 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant9f220424a2f028ebdeada794f16a1d2a1942d86ee1faadd0d756fa17cd8c7f82.lean/declarations/syntax--5a9fa639b242e624c6c5e75c.md) | 97 | `declaration-track:5a9fa639b242e624c6c5e75c1f63ca6a7b50614dd02058ddc7d392294a19e7df` |
| 5 | `def` | [elabNontriviality](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant9f220424a2f028ebdeada794f16a1d2a1942d86ee1faadd0d756fa17cd8c7f82.lean/declarations/elabnontriviality--ab12914f7bc505504959a886.md) | 101 | `declaration-track:ab12914f7bc505504959a88614762433606cb03950b8aef2ce22bf386ed796ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
