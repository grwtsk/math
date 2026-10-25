# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AdditiveCombination.Variant01e91fb58d7a61631d630723784a882b91d79d0b524473fdaca7d141257ad39d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d905a653bf1c7ad2d66704053f3b3a362286fa7",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant01e91fb58d7a61631d630723784a882b91d79d0b524473fdaca7d141257ad39d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant01e91fb58d7a61631d630723784a882b91d79d0b524473fdaca7d141257ad39d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant01e91fb58d7a61631d630723784a882b91d79d0b524473fdaca7d141257ad39d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d905a653bf1c7ad2d66704053f3b3a362286fa7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant01e91fb58d7a61631d630723784a882b91d79d0b524473fdaca7d141257ad39d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant01e91fb58d7a61631d630723784a882b91d79d0b524473fdaca7d141257ad39d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Abel` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombinationPrime` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pf_smul_c](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant01e91fb58d7a61631d630723784a882b91d79d0b524473fdaca7d141257ad39d.lean/declarations/pf-smul-c--a8a7721fa7d0df6727d3c078.md) | 48 | `result-track:a8a7721fa7d0df6727d3c07846d82d7b1815d6d2b3796e5e3ea7659f02803f11` |
| 2 | `theorem` | [c_smul_pf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant01e91fb58d7a61631d630723784a882b91d79d0b524473fdaca7d141257ad39d.lean/declarations/c-smul-pf--5565320099917219517af74b.md) | 49 | `result-track:5565320099917219517af74bacbff6c5245f542202c5b175836603730ae4caf8` |
| 3 | `theorem` | [smul_pf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant01e91fb58d7a61631d630723784a882b91d79d0b524473fdaca7d141257ad39d.lean/declarations/smul-pf--e56143adb326c3cbdd3839bf.md) | 50 | `result-track:e56143adb326c3cbdd3839bfaae0641ee0f1f226b028f14bee919c2c84a61c90` |
| 4 | `def` | [expandAdditiveCombo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant01e91fb58d7a61631d630723784a882b91d79d0b524473fdaca7d141257ad39d.lean/declarations/expandadditivecombo--9b74bf6f6aece867eb470100.md) | 61 | `declaration-track:9b74bf6f6aece867eb470100280251b9cd3c27494eea61e8793b901b142ccc11` |
| 5 | `def` | [elabAdditiveCombination](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant01e91fb58d7a61631d630723784a882b91d79d0b524473fdaca7d141257ad39d.lean/declarations/elabadditivecombination--a8e9eee9dfed483113789e7b.md) | 102 | `declaration-track:a8e9eee9dfed483113789e7b9104ce84f73c89254785011370c9b299c1c99b8e` |
| 6 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant01e91fb58d7a61631d630723784a882b91d79d0b524473fdaca7d141257ad39d.lean/declarations/syntax--5c374effd376347f417aa8b3.md) | 187 | `declaration-track:5c374effd376347f417aa8b3bbfac433eb4b46cbe39826ff1976906d6cb6cee2` |
| 7 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant01e91fb58d7a61631d630723784a882b91d79d0b524473fdaca7d141257ad39d.lean/declarations/elab-rules--3244bb2b9332cabe0a8b29ac.md) | 189 | `declaration-track:3244bb2b9332cabe0a8b29ac09f2f2eb12a099f682029566c28012d92b7db8d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
