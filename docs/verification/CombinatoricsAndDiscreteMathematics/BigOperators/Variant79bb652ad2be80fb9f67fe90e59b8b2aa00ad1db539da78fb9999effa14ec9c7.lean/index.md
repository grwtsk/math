# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variant79bb652ad2be80fb9f67fe90e59b8b2aa00ad1db539da78fb9999effa14ec9c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52d8c1aaa155f977dbe671348378373586084abd",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant79bb652ad2be80fb9f67fe90e59b8b2aa00ad1db539da78fb9999effa14ec9c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant79bb652ad2be80fb9f67fe90e59b8b2aa00ad1db539da78fb9999effa14ec9c7.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant79bb652ad2be80fb9f67fe90e59b8b2aa00ad1db539da78fb9999effa14ec9c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52d8c1aaa155f977dbe671348378373586084abd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant79bb652ad2be80fb9f67fe90e59b8b2aa00ad1db539da78fb9999effa14ec9c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BigOperators/Variant79bb652ad2be80fb9f67fe90e59b8b2aa00ad1db539da78fb9999effa14ec9c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Congruence.BigOperators` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Congruence.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [listSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant79bb652ad2be80fb9f67fe90e59b8b2aa00ad1db539da78fb9999effa14ec9c7.lean/declarations/listsum--9487dbba3e9e90e736b74cdd.md) | 17 | `result-track:9487dbba3e9e90e736b74cdd8127610758dafcf4bc809907fcb042ecf421d2a8` |
| 2 | `lemma` | [multisetSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant79bb652ad2be80fb9f67fe90e59b8b2aa00ad1db539da78fb9999effa14ec9c7.lean/declarations/multisetsum--5ac2215af8063963d4d87509.md) | 23 | `result-track:5ac2215af8063963d4d875099db92291c599f1e649cad0c23b70dffa7b6c9349` |
| 3 | `lemma` | [finsetSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant79bb652ad2be80fb9f67fe90e59b8b2aa00ad1db539da78fb9999effa14ec9c7.lean/declarations/finsetsum--712fc6027dd69eb7566cc254.md) | 29 | `result-track:712fc6027dd69eb7566cc254ce625104daadb325fd8db8a8d27c0f3b383562d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
