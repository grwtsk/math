# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ConjAct.Variant574613a4ddbe7d3b81a650494a21abcc68e8740e21065340bb6bd436872f64c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1404ac618763df24461a31dbc26b8cbbb1158730",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ConjAct/Variant574613a4ddbe7d3b81a650494a21abcc68e8740e21065340bb6bd436872f64c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ConjAct/Variant574613a4ddbe7d3b81a650494a21abcc68e8740e21065340bb6bd436872f64c3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ConjAct/Variant574613a4ddbe7d3b81a650494a21abcc68e8740e21065340bb6bd436872f64c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1404ac618763df24461a31dbc26b8cbbb1158730`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ConjAct/Variant574613a4ddbe7d3b81a650494a21abcc68e8740e21065340bb6bd436872f64c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ConjAct/Variant574613a4ddbe7d3b81a650494a21abcc68e8740e21065340bb6bd436872f64c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Pointwise.Finset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Cycle.Factors` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_conj_support](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ConjAct/Variant574613a4ddbe7d3b81a650494a21abcc68e8740e21065340bb6bd436872f64c3.lean/declarations/mem-conj-support--021428cba62636c3a5faafa5.md) | 40 | `result-track:021428cba62636c3a5faafa5e455a6ccbfc9c26ad8e0f3010ea961f3b30fee2f` |
| 2 | `theorem` | [cycleFactorsFinset_conj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ConjAct/Variant574613a4ddbe7d3b81a650494a21abcc68e8740e21065340bb6bd436872f64c3.lean/declarations/cyclefactorsfinset-conj--246295822dd520b0ca6dbe85.md) | 46 | `result-track:246295822dd520b0ca6dbe858c76bfa0853b1e94fec1aee8b4569413014b0cb5` |
| 3 | `theorem` | [mem_cycleFactorsFinset_conj'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ConjAct/Variant574613a4ddbe7d3b81a650494a21abcc68e8740e21065340bb6bd436872f64c3.lean/declarations/mem-cyclefactorsfinset-conj--a6d6a9f9ed80732c8dec929d.md) | 58 | `result-track:a6d6a9f9ed80732c8dec929d5450ca8ea6988b6c4bac8239c813436c657e6ba8` |
| 4 | `theorem` | [cycleFactorsFinset_conj_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ConjAct/Variant574613a4ddbe7d3b81a650494a21abcc68e8740e21065340bb6bd436872f64c3.lean/declarations/cyclefactorsfinset-conj-eq--5cfbfdb5aa6e6f6c093c0188.md) | 64 | `result-track:5cfbfdb5aa6e6f6c093c0188e902ac3e2877685f038bfc649c950afa48e64814` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
