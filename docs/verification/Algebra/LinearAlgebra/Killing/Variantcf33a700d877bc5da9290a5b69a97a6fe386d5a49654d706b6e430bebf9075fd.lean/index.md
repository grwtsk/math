# Verification target: GRWTSK.Algebra.LinearAlgebra.Killing.Variantcf33a700d877bc5da9290a5b69a97a6fe386d5a49654d706b6e430bebf9075fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87e4af2c07ad736ab7fa01c9ee030e3295a5b148",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Killing/Variantcf33a700d877bc5da9290a5b69a97a6fe386d5a49654d706b6e430bebf9075fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantcf33a700d877bc5da9290a5b69a97a6fe386d5a49654d706b6e430bebf9075fd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantcf33a700d877bc5da9290a5b69a97a6fe386d5a49654d706b6e430bebf9075fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87e4af2c07ad736ab7fa01c9ee030e3295a5b148`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Killing/Variantcf33a700d877bc5da9290a5b69a97a6fe386d5a49654d706b6e430bebf9075fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Killing/Variantcf33a700d877bc5da9290a5b69a97a6fe386d5a49654d706b6e430bebf9075fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Nilpotent` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Trace` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [traceForm](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantcf33a700d877bc5da9290a5b69a97a6fe386d5a49654d706b6e430bebf9075fd.lean/declarations/traceform--436b747196f8d1b52dfeeb20.md) | 46 | `declaration-track:436b747196f8d1b52dfeeb20446f9a38432189daf50916aea8fd35c716f68211` |
| 2 | `lemma` | [traceForm_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantcf33a700d877bc5da9290a5b69a97a6fe386d5a49654d706b6e430bebf9075fd.lean/declarations/traceform-apply-apply--69ec62c5091d5a59fc031eb5.md) | 49 | `result-track:69ec62c5091d5a59fc031eb5696158ca5de26c95107fa2e1a813f68b8a6ff9cb` |
| 3 | `lemma` | [traceForm_comm](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantcf33a700d877bc5da9290a5b69a97a6fe386d5a49654d706b6e430bebf9075fd.lean/declarations/traceform-comm--f00d46802177caa817eb3d90.md) | 53 | `result-track:f00d46802177caa817eb3d9023bf03e55386b36257d5b3c86d07d3239e9e69b5` |
| 4 | `lemma` | [traceForm_flip](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantcf33a700d877bc5da9290a5b69a97a6fe386d5a49654d706b6e430bebf9075fd.lean/declarations/traceform-flip--cd0a480676e117a15511834a.md) | 56 | `result-track:cd0a480676e117a15511834ad13723856a36de20a0fd13d57d4c3d077280d709` |
| 5 | `lemma` | [traceForm_apply_lie_apply](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantcf33a700d877bc5da9290a5b69a97a6fe386d5a49654d706b6e430bebf9075fd.lean/declarations/traceform-apply-lie-apply--f19292a39f9041d04abed5c8.md) | 59 | `result-track:f19292a39f9041d04abed5c874dccf6414cdec653d99f59c39af1bae2624f154` |
| 6 | `abbrev` | [killingForm](../../../../../mathematics/Algebra/LinearAlgebra/Killing/Variantcf33a700d877bc5da9290a5b69a97a6fe386d5a49654d706b6e430bebf9075fd.lean/declarations/killingform--4c40fdaa6c415c3fa3cea863.md) | 82 | `declaration-track:4c40fdaa6c415c3fa3cea863a7cbccd2c9154f92b464adeb21f13478572452dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
