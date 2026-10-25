# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Goal.Variantd90c5e934d65e79cd86227f12bfc2e079e5f0299a731f4f1bf730c7a3cc1eb47

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19b4d69745cf3623818a949819f1738ccd220b31",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Goal/Variantd90c5e934d65e79cd86227f12bfc2e079e5f0299a731f4f1bf730c7a3cc1eb47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Goal/Variantd90c5e934d65e79cd86227f12bfc2e079e5f0299a731f4f1bf730c7a3cc1eb47.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Goal/Variantd90c5e934d65e79cd86227f12bfc2e079e5f0299a731f4f1bf730c7a3cc1eb47.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19b4d69745cf3623818a949819f1738ccd220b31`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Goal/Variantd90c5e934d65e79cd86227f12bfc2e079e5f0299a731f4f1bf730c7a3cc1eb47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Goal/Variantd90c5e934d65e79cd86227f12bfc2e079e5f0299a731f4f1bf730c7a3cc1eb47.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Util` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.InferType` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SimpGoalResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Goal/Variantd90c5e934d65e79cd86227f12bfc2e079e5f0299a731f4f1bf730c7a3cc1eb47.lean/declarations/simpgoalresult--b70136285f0dcc473acfe50e.md) | 28 | `declaration-track:b70136285f0dcc473acfe50e730b26fb6386576fd35c07ac40870cb9c906b376` |
| 2 | `def` | [SimpGoalResult.toOption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Goal/Variantd90c5e934d65e79cd86227f12bfc2e079e5f0299a731f4f1bf730c7a3cc1eb47.lean/declarations/simpgoalresult-tooption--c7b8decc7a56b5a7da4bcc66.md) | 40 | `declaration-track:c7b8decc7a56b5a7da4bcc666a65b08e3171c45ea37b1047c1b682a3efbb9409` |
| 3 | `def` | [SimpGoalResult.ignoreNoProgress](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Goal/Variantd90c5e934d65e79cd86227f12bfc2e079e5f0299a731f4f1bf730c7a3cc1eb47.lean/declarations/simpgoalresult-ignorenoprogress--f19b8b7355d6343630b17099.md) | 45 | `declaration-track:f19b8b7355d6343630b17099f0c1f9e6b94ca17c3a8489b2a4119d80d91281e5` |
| 4 | `def` | [Simp.Result.toSimpGoalResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Goal/Variantd90c5e934d65e79cd86227f12bfc2e079e5f0299a731f4f1bf730c7a3cc1eb47.lean/declarations/simp-result-tosimpgoalresult--da875c06fb0d5e6ad7039626.md) | 52 | `declaration-track:da875c06fb0d5e6ad70396260178b8a06bfdfacc14a6c237c3317bd0e9279f05` |
| 5 | `def` | [simpGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Goal/Variantd90c5e934d65e79cd86227f12bfc2e079e5f0299a731f4f1bf730c7a3cc1eb47.lean/declarations/simpgoal--9c339d2f5de61713b6247fb8.md) | 74 | `declaration-track:9c339d2f5de61713b6247fb80dfaee418bd461aec13e0e30da3b3ab4e74521af` |
| 6 | `def` | [simpGoalIgnoringNoProgress](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Goal/Variantd90c5e934d65e79cd86227f12bfc2e079e5f0299a731f4f1bf730c7a3cc1eb47.lean/declarations/simpgoalignoringnoprogress--46285d938ca8d66b369d0d0d.md) | 82 | `declaration-track:46285d938ca8d66b369d0d0db17e7dc93a1b9a6c23f899b5008c56342d504e3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
