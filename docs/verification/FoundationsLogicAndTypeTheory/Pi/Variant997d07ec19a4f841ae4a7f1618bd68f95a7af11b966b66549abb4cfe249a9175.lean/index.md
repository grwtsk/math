# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Pi.Variant997d07ec19a4f841ae4a7f1618bd68f95a7af11b966b66549abb4cfe249a9175

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "435ad501e761904436fb36b5bd56890fd29758ea",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Pi/Variant997d07ec19a4f841ae4a7f1618bd68f95a7af11b966b66549abb4cfe249a9175.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Pi/Variant997d07ec19a4f841ae4a7f1618bd68f95a7af11b966b66549abb4cfe249a9175.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Pi/Variant997d07ec19a4f841ae4a7f1618bd68f95a7af11b966b66549abb4cfe249a9175.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `435ad501e761904436fb36b5bd56890fd29758ea`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Pi/Variant997d07ec19a4f841ae4a7f1618bd68f95a7af11b966b66549abb4cfe249a9175.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Pi/Variant997d07ec19a4f841ae4a7f1618bd68f95a7af11b966b66549abb4cfe249a9175.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Alias` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Notation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AssertExists` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instIntCast](../../../../mathematics/FoundationsLogicAndTypeTheory/Pi/Variant997d07ec19a4f841ae4a7f1618bd68f95a7af11b966b66549abb4cfe249a9175.lean/declarations/instintcast--ec369dfb82c08be14fd82ab1.md) | 35 | `declaration-track:ec369dfb82c08be14fd82ab1859cf6a7a8980fac20afa69e6d39c1826c6b115c` |
| 2 | `theorem` | [intCast_apply](../../../../mathematics/FoundationsLogicAndTypeTheory/Pi/Variant997d07ec19a4f841ae4a7f1618bd68f95a7af11b966b66549abb4cfe249a9175.lean/declarations/intcast-apply--d8ecaf1c4046608ba448a067.md) | 38 | `result-track:d8ecaf1c4046608ba448a0678fd1d2688403dd0b181230d090da2b4262235cc5` |
| 3 | `theorem` | [intCast_def](../../../../mathematics/FoundationsLogicAndTypeTheory/Pi/Variant997d07ec19a4f841ae4a7f1618bd68f95a7af11b966b66549abb4cfe249a9175.lean/declarations/intcast-def--f5f2b50e22ab25d51fd9dd62.md) | 41 | `result-track:f5f2b50e22ab25d51fd9dd6235694b5c46b0f197dc9fbe599e5f25cb3cd16c45` |
| 4 | `theorem` | [Sum.elim_intCast_intCast](../../../../mathematics/FoundationsLogicAndTypeTheory/Pi/Variant997d07ec19a4f841ae4a7f1618bd68f95a7af11b966b66549abb4cfe249a9175.lean/declarations/sum-elim-intcast-intcast--7fe6042d4467777f4719ff06.md) | 47 | `result-track:7fe6042d4467777f4719ff06b28ffc4952c5cc4e9804d09daa47c515354aa434` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
