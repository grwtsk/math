# Verification target: GRWTSK.Interfaces.PortFiberSectionLinear

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96e6e21b30130c6a463d910708d81942f770e54c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Interfaces/PortFiberSectionLinear.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionLinear.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionLinear.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96e6e21b30130c6a463d910708d81942f770e54c`.

Source path: `GRWTSK/Interfaces/PortFiberSectionLinear.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Interfaces/PortFiberSectionLinear.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Interfaces.PortFiberSectionQuotient`](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionQuotient.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.Complex.HolomorphicLineSectionLinear`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [schemaVersion](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionLinear.lean/declarations/schemaversion--e020b44c77a5364bbb817739.md) | 33 | `declaration-track:e020b44c77a5364bbb817739d7f19e0d0135608ac25993f1ce7d4784720c503d` |
| 2 | `inductive` | [AddedIndex](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionLinear.lean/declarations/addedindex--4189676cf0ab2dd3dad9102c.md) | 35 | `declaration-track:4189676cf0ab2dd3dad9102cc02099d32c56516170e414b16738bc172bf52213` |
| 3 | `def` | [AddedClaim](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionLinear.lean/declarations/addedclaim--3a37d79fcb5a14b1441afa89.md) | 46 | `declaration-track:3a37d79fcb5a14b1441afa89c4e135653b90838ea599233e873110533c3ebffc` |
| 4 | `theorem` | [addedClaim_proof](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionLinear.lean/declarations/addedclaim-proof--4578d47d3573b303b44372ec.md) | 119 | `result-track:4578d47d3573b303b44372ec89f2c4134f615d9f3f1ede7aea5c55e398b929e7` |
| 5 | `def` | [portfolio](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionLinear.lean/declarations/portfolio--dd0d72159b6d7c4178f994e0.md) | 151 | `declaration-track:dd0d72159b6d7c4178f994e0c484070894920744dfb7deb6b37c6521fc948fa0` |
| 6 | `def` | [architecture](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionLinear.lean/declarations/architecture--efa252d0090fa62d6b1bdcc9.md) | 154 | `declaration-track:efa252d0090fa62d6b1bdcc9fc70409edce999a8b627909011834cc24f00b6ed` |
| 7 | `abbrev` | [PreviousIndex](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionLinear.lean/declarations/previousindex--c6ae9530b2b2b3555071bfc5.md) | 158 | `declaration-track:c6ae9530b2b2b3555071bfc5bc60e4148e99fe39d17fbea23afe1bc3029fc03f` |
| 8 | `theorem` | [original_branch_unchanged](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionLinear.lean/declarations/original-branch-unchanged--37b12a0e74514dc611ed4db9.md) | 162 | `result-track:37b12a0e74514dc611ed4db92af16b50dbc452d62c09428f94c380584fd2e685` |
| 9 | `theorem` | [new_branch_proved](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionLinear.lean/declarations/new-branch-proved--4e93ff1983074902a3d5fb4c.md) | 168 | `result-track:4e93ff1983074902a3d5fb4c90b27e89e5d92e50495bffa29aa7fdeec68990a3` |
| 10 | `theorem` | [target_unchanged](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionLinear.lean/declarations/target-unchanged--fc5ae2cea24e3f19a2283422.md) | 173 | `result-track:fc5ae2cea24e3f19a228342242dafec4dd49462a8ce84f9cdf3122ad178891d6` |
| 11 | `theorem` | [retarget_preserves_new](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionLinear.lean/declarations/retarget-preserves-new--28f14ab6f2878d521e753a3e.md) | 178 | `result-track:28f14ab6f2878d521e753a3e92d1ba7775b0dda1987cc442cca0db51ff11043c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
