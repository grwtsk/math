# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ActualLogCellTailAttempt02.Variant54a7c468175239ac21601867639912b5c9a0fce9b08f7c2dbe2c03a75febc18d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21d15d55a1ee92a9dae6759605579e0e68fd5ff4",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt02/Variant54a7c468175239ac21601867639912b5c9a0fce9b08f7c2dbe2c03a75febc18d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt02/Variant54a7c468175239ac21601867639912b5c9a0fce9b08f7c2dbe2c03a75febc18d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt02/Variant54a7c468175239ac21601867639912b5c9a0fce9b08f7c2dbe2c03a75febc18d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21d15d55a1ee92a9dae6759605579e0e68fd5ff4`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt02/Variant54a7c468175239ac21601867639912b5c9a0fce9b08f7c2dbe2c03a75febc18d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt02/Variant54a7c468175239ac21601867639912b5c9a0fce9b08f7c2dbe2c03a75febc18d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualLogCellMoment` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cellTail](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt02/Variant54a7c468175239ac21601867639912b5c9a0fce9b08f7c2dbe2c03a75febc18d.lean/declarations/celltail--28721aa8acb6a57c35f2765c.md) | 14 | `declaration-track:28721aa8acb6a57c35f2765c4115d5e9daa2d06d00d249cb937ef06d8ed6b7fb` |
| 2 | `theorem` | [cellTail_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt02/Variant54a7c468175239ac21601867639912b5c9a0fce9b08f7c2dbe2c03a75febc18d.lean/declarations/celltail-summable--8453c515c101e4170bc70b8e.md) | 16 | `result-track:8453c515c101e4170bc70b8e08615c1669bd9004f62cd08c37fac503e0928193` |
| 3 | `theorem` | [cellTail_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt02/Variant54a7c468175239ac21601867639912b5c9a0fce9b08f7c2dbe2c03a75febc18d.lean/declarations/celltail-nonneg--aa10ba5d1ac8a7d3bd5a179c.md) | 19 | `result-track:aa10ba5d1ac8a7d3bd5a179c8cbebfa4eaaeec7bb8bd627546a205f6e81f5207` |
| 4 | `theorem` | [cellTail_prefix](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt02/Variant54a7c468175239ac21601867639912b5c9a0fce9b08f7c2dbe2c03a75febc18d.lean/declarations/celltail-prefix--ece191cb57359de592ced854.md) | 22 | `result-track:ece191cb57359de592ced854a011d33a90372776aa8b032be67fb3ac525abe85` |
| 5 | `theorem` | [cellTail_exact](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt02/Variant54a7c468175239ac21601867639912b5c9a0fce9b08f7c2dbe2c03a75febc18d.lean/declarations/celltail-exact--5d65b9192a9323cf7b76cd2b.md) | 27 | `result-track:5d65b9192a9323cf7b76cd2b5d0a4be69e429e55ada6f4794fab8cb3f3598d99` |
| 6 | `theorem` | [harmonic_error_upper](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt02/Variant54a7c468175239ac21601867639912b5c9a0fce9b08f7c2dbe2c03a75febc18d.lean/declarations/harmonic-error-upper--28984016f151ea728ed14e67.md) | 34 | `result-track:28984016f151ea728ed14e67aa3d4437144252410f9a9df488c4dcf74c4651aa` |
| 7 | `theorem` | [cellTail_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt02/Variant54a7c468175239ac21601867639912b5c9a0fce9b08f7c2dbe2c03a75febc18d.lean/declarations/celltail-le--7375bb484813aea7e611ffc4.md) | 45 | `result-track:7375bb484813aea7e611ffc411b6768fd8f1ef9f0ee4f4e2aa5716060545bcb6` |
| 8 | `theorem` | [cellTail_enclosure](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt02/Variant54a7c468175239ac21601867639912b5c9a0fce9b08f7c2dbe2c03a75febc18d.lean/declarations/celltail-enclosure--8cd15785eecd537575c619ab.md) | 55 | `result-track:8cd15785eecd537575c619ab1024f4eb6e4b8eae7b848bcc94024012a1866f56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
