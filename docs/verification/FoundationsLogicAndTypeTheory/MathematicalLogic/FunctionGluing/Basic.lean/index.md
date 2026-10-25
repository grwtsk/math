# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FunctionGluing.Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f4f8bf3a1c6b28644200e9dcae47c775653291a",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionGluing/Basic.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionGluing/Basic.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionGluing/Basic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f4f8bf3a1c6b28644200e9dcae47c775653291a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionGluing/Basic.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionGluing/Basic.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [glue](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionGluing/Basic.lean/declarations/glue--433463ef88a1491b3cd01b9b.md) | 10 | `declaration-track:433463ef88a1491b3cd01b9b7411d92337df719558b4632b00ee1742cad3dd2c` |
| 2 | `theorem` | [restrict_glue](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionGluing/Basic.lean/declarations/restrict-glue--72f1cbf865bc213e14570d2c.md) | 13 | `result-track:72f1cbf865bc213e14570d2c07f1c02dae987cc8635dab73e6e338da915381a0` |
| 3 | `theorem` | [unique_glue](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionGluing/Basic.lean/declarations/unique-glue--30e1b1adee30f4b4ed2fbe56.md) | 21 | `result-track:30e1b1adee30f4b4ed2fbe56571dc156f632528cda05755d6b5f476f9f7dfe99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
