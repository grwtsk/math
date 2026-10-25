# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PProd.Variant2a7d8d218710bba5c58d6f25d40d9375f129b3ce77d50b1ca51638c6c764fe53

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dbbf70e0f9842c11901d505b30189016000acafc",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PProd/Variant2a7d8d218710bba5c58d6f25d40d9375f129b3ce77d50b1ca51638c6c764fe53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PProd/Variant2a7d8d218710bba5c58d6f25d40d9375f129b3ce77d50b1ca51638c6c764fe53.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PProd/Variant2a7d8d218710bba5c58d6f25d40d9375f129b3ce77d50b1ca51638c6c764fe53.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dbbf70e0f9842c11901d505b30189016000acafc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PProd/Variant2a7d8d218710bba5c58d6f25d40d9375f129b3ce77d50b1ca51638c6c764fe53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/PProd/Variant2a7d8d218710bba5c58d6f25d40d9375f129b3ce77d50b1ca51638c6c764fe53.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mk.injArrow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PProd/Variant2a7d8d218710bba5c58d6f25d40d9375f129b3ce77d50b1ca51638c6c764fe53.lean/declarations/mk-injarrow--f8d6b1708aa477ab7967ed94.md) | 19 | `declaration-track:f8d6b1708aa477ab7967ed94cb6da3a65ecf6b4bfe23c2e422dbaa8177b2f8d9` |
| 2 | `theorem` | [mk.eta](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PProd/Variant2a7d8d218710bba5c58d6f25d40d9375f129b3ce77d50b1ca51638c6c764fe53.lean/declarations/mk-eta--bb23f4c14e6462a9d60cad9a.md) | 24 | `result-track:bb23f4c14e6462a9d60cad9a73aea2b30864c26f7ea6315e94994a67ee090ad2` |
| 3 | `theorem` | [«forall»](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PProd/Variant2a7d8d218710bba5c58d6f25d40d9375f129b3ce77d50b1ca51638c6c764fe53.lean/declarations/forall--e817ef03401c80421119d20a.md) | 28 | `result-track:e817ef03401c80421119d20ad4e8a8689bb1a7f49ce86772d32be9a23702e1c4` |
| 4 | `theorem` | [«exists»](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PProd/Variant2a7d8d218710bba5c58d6f25d40d9375f129b3ce77d50b1ca51638c6c764fe53.lean/declarations/exists--cc35953c35cc5c3302f1fc3b.md) | 32 | `result-track:cc35953c35cc5c3302f1fc3bae1c44e29b909226f3001879fa4ef216b25b399e` |
| 5 | `theorem` | [forall'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PProd/Variant2a7d8d218710bba5c58d6f25d40d9375f129b3ce77d50b1ca51638c6c764fe53.lean/declarations/forall--e51986a75c6c152da81d3f91.md) | 35 | `result-track:e51986a75c6c152da81d3f9184b8d10b33f49ea030193ccc2e55a52af57d9b13` |
| 6 | `theorem` | [exists'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PProd/Variant2a7d8d218710bba5c58d6f25d40d9375f129b3ce77d50b1ca51638c6c764fe53.lean/declarations/exists--4f1ca2f90c0be43721ede023.md) | 38 | `result-track:4f1ca2f90c0be43721ede023c5231b79db24bb11ced2ff4163147a88654d91d1` |
| 7 | `theorem` | [Function.Injective.pprod_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PProd/Variant2a7d8d218710bba5c58d6f25d40d9375f129b3ce77d50b1ca51638c6c764fe53.lean/declarations/function-injective-pprod-map--54faa4725a16afc4967dbcee.md) | 43 | `result-track:54faa4725a16afc4967dbcee0042d5569bdd7ed1c514a2f14b58a282b5ca760e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
