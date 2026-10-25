# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExplicitFormula.Variant9408384d744163ae8ef56598dda7a02c90a6513fea02bd4e3158add590f00350

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79f818f7082f314aa61b7d673aec5bba8b89b88d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant9408384d744163ae8ef56598dda7a02c90a6513fea02bd4e3158add590f00350.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant9408384d744163ae8ef56598dda7a02c90a6513fea02bd4e3158add590f00350.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant9408384d744163ae8ef56598dda7a02c90a6513fea02bd4e3158add590f00350.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79f818f7082f314aa61b7d673aec5bba8b89b88d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant9408384d744163ae8ef56598dda7a02c90a6513fea02bd4e3158add590f00350.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant9408384d744163ae8ef56598dda7a02c90a6513fea02bd4e3158add590f00350.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredTwistedPsiCriticalRate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant9408384d744163ae8ef56598dda7a02c90a6513fea02bd4e3158add590f00350.lean/declarations/centeredtwistedpsicriticalrate--0cc3b7b6a70c393e42314584.md) | 36 | `declaration-track:0cc3b7b6a70c393e42314584cb707297c222254e5acb8a066de69ea7bc910027` |
| 2 | `def` | [CenteredTwistedPsiCriticalBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant9408384d744163ae8ef56598dda7a02c90a6513fea02bd4e3158add590f00350.lean/declarations/centeredtwistedpsicriticalbound--d86bd849fb0ce72ae6ea9da6.md) | 41 | `declaration-track:d86bd849fb0ce72ae6ea9da646155a3f01e4b311a5af4afb78f88d30d3546753` |
| 3 | `theorem` | [centeredTwistedPsiCriticalRate_le_halfPlusEpsilon](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant9408384d744163ae8ef56598dda7a02c90a6513fea02bd4e3158add590f00350.lean/declarations/centeredtwistedpsicriticalrate-le-halfplusepsilon--bc3238c42d29f5c4200734d6.md) | 50 | `result-track:bc3238c42d29f5c4200734d62fe6398f97e3a8c0e1430f7b132399891ceeab98` |
| 4 | `theorem` | [centeredTwistedPsiCriticalBound_implies_halfPlusEpsilon](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant9408384d744163ae8ef56598dda7a02c90a6513fea02bd4e3158add590f00350.lean/declarations/centeredtwistedpsicriticalbound-implies-halfplusepsilon--0ebcdb00be82a66f42b15070.md) | 107 | `result-track:0ebcdb00be82a66f42b1507066bdb3ff634e899ac32923408c39cc1a07344434` |
| 5 | `structure` | [PrimitiveExplicitFormulaSquare](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant9408384d744163ae8ef56598dda7a02c90a6513fea02bd4e3158add590f00350.lean/declarations/primitiveexplicitformulasquare--6b57c6c5cd03dddeae8d9a73.md) | 129 | `declaration-track:6b57c6c5cd03dddeae8d9a73afb2d93fe03ea20204916f1f2c0b854720c7ae4b` |
| 6 | `theorem` | [grh_implies_centeredTwistedPsiCriticalBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant9408384d744163ae8ef56598dda7a02c90a6513fea02bd4e3158add590f00350.lean/declarations/grh-implies-centeredtwistedpsicriticalbound--efde968b6ad36416d02258ee.md) | 135 | `result-track:efde968b6ad36416d02258ee47421b22d46ea1dfd00e7c4cd47cb40b4146c640` |
| 7 | `theorem` | [grh_implies_centeredTwistedPsiHalfPlusEpsilon](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant9408384d744163ae8ef56598dda7a02c90a6513fea02bd4e3158add590f00350.lean/declarations/grh-implies-centeredtwistedpsihalfplusepsilon--84cb757c073b14440d33fc44.md) | 143 | `result-track:84cb757c073b14440d33fc4410be2cc37f2a795a6daefa1af50f4dee361d62b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
