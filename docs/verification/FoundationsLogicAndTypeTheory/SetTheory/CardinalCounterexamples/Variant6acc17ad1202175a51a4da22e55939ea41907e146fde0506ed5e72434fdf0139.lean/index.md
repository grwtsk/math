# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CardinalCounterexamples.Variant6acc17ad1202175a51a4da22e55939ea41907e146fde0506ed5e72434fdf0139

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "575001dda44b296e6c2f0930284ebe8fe4606b0e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalCounterexamples/Variant6acc17ad1202175a51a4da22e55939ea41907e146fde0506ed5e72434fdf0139.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalCounterexamples/Variant6acc17ad1202175a51a4da22e55939ea41907e146fde0506ed5e72434fdf0139.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalCounterexamples/Variant6acc17ad1202175a51a4da22e55939ea41907e146fde0506ed5e72434fdf0139.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `575001dda44b296e6c2f0930284ebe8fe4606b0e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalCounterexamples/Variant6acc17ad1202175a51a4da22e55939ea41907e146fde0506ed5e72434fdf0139.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/CardinalCounterexamples/Variant6acc17ad1202175a51a4da22e55939ea41907e146fde0506ed5e72434fdf0139.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Cardinal.Aleph` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Arithmetic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Regular` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bethFiber](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalCounterexamples/Variant6acc17ad1202175a51a4da22e55939ea41907e146fde0506ed5e72434fdf0139.lean/declarations/bethfiber--0a8785f37cce154156e5fdae.md) | 27 | `declaration-track:0a8785f37cce154156e5fdae10833e7166b68745ff1060f1689e2f5ba7e72e51` |
| 2 | `theorem` | [bethFiber_card](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalCounterexamples/Variant6acc17ad1202175a51a4da22e55939ea41907e146fde0506ed5e72434fdf0139.lean/declarations/bethfiber-card--1a4189aa37d0db4d160a493a.md) | 29 | `result-track:1a4189aa37d0db4d160a493a25fd616cb10af50c2fee2570370597844b1d6db0` |
| 3 | `theorem` | [bethFiber_small](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalCounterexamples/Variant6acc17ad1202175a51a4da22e55939ea41907e146fde0506ed5e72434fdf0139.lean/declarations/bethfiber-small--7341c7d57795b0fd8f215895.md) | 32 | `result-track:7341c7d57795b0fd8f215895f8ef393ed99851fa10c22af5944adaec0b7553aa` |
| 4 | `theorem` | [beth_omega_uncountable](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalCounterexamples/Variant6acc17ad1202175a51a4da22e55939ea41907e146fde0506ed5e72434fdf0139.lean/declarations/beth-omega-uncountable--30601ece07d8f1d8c7276704.md) | 36 | `result-track:30601ece07d8f1d8c7276704483252c3f4b087cae9dc8bc1b5a8ae5278eefb72` |
| 5 | `theorem` | [beth_omega_strongLimit](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalCounterexamples/Variant6acc17ad1202175a51a4da22e55939ea41907e146fde0506ed5e72434fdf0139.lean/declarations/beth-omega-stronglimit--1dbf17b934e39c08edc60c8a.md) | 41 | `result-track:1dbf17b934e39c08edc60c8ac53d17decabe1b89880f8d75e36538c661879339` |
| 6 | `theorem` | [beth_omega_natural_sup](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalCounterexamples/Variant6acc17ad1202175a51a4da22e55939ea41907e146fde0506ed5e72434fdf0139.lean/declarations/beth-omega-natural-sup--b0cc4464f8aebd57b0e28093.md) | 44 | `result-track:b0cc4464f8aebd57b0e280932ea6d236f5330201d300a2990c31ab365332ec89` |
| 7 | `theorem` | [beth_omega_shifted_sup](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalCounterexamples/Variant6acc17ad1202175a51a4da22e55939ea41907e146fde0506ed5e72434fdf0139.lean/declarations/beth-omega-shifted-sup--30d41afc5a3bbb1ff7f4840b.md) | 48 | `result-track:30d41afc5a3bbb1ff7f4840bcd3b2f145bbf159b953723fecd35b7e7944eff0a` |
| 8 | `theorem` | [bethFiber_sigma_card](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalCounterexamples/Variant6acc17ad1202175a51a4da22e55939ea41907e146fde0506ed5e72434fdf0139.lean/declarations/bethfiber-sigma-card--b27877da1de61d1347d4beba.md) | 62 | `result-track:b27877da1de61d1347d4bebabd4b053bdbbaac902241ebff9b58d4a813463b0a` |
| 9 | `theorem` | [beth_omega_not_regular](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalCounterexamples/Variant6acc17ad1202175a51a4da22e55939ea41907e146fde0506ed5e72434fdf0139.lean/declarations/beth-omega-not-regular--436320c62fb7dee8390f8d08.md) | 73 | `result-track:436320c62fb7dee8390f8d0800d31389d90825c604ac1784a7239da35fa6436c` |
| 10 | `theorem` | [beth_fragment_catalogue_card](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalCounterexamples/Variant6acc17ad1202175a51a4da22e55939ea41907e146fde0506ed5e72434fdf0139.lean/declarations/beth-fragment-catalogue-card--da138c0871e0823e258699e4.md) | 82 | `result-track:da138c0871e0823e258699e4a3bc03a7113a520168f4b48ca365e4c52d1c5d47` |
| 11 | `theorem` | [beth_complete_subsets_exceed_catalogue](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalCounterexamples/Variant6acc17ad1202175a51a4da22e55939ea41907e146fde0506ed5e72434fdf0139.lean/declarations/beth-complete-subsets-exceed-catalogue--3c75770ddb40c84d9f07ebb5.md) | 95 | `result-track:3c75770ddb40c84d9f07ebb592ec1ea1526c3db07b6d2940d567b954f6a3e205` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
