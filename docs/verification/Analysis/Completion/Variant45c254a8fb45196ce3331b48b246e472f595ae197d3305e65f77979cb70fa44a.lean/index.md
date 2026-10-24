# Verification target: GRWTSK.Analysis.Completion.Variant45c254a8fb45196ce3331b48b246e472f595ae197d3305e65f77979cb70fa44a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "485a57a6a85ba33fe045e9d9b3ef5a3d0b33838d",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Completion/Variant45c254a8fb45196ce3331b48b246e472f595ae197d3305e65f77979cb70fa44a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Completion/Variant45c254a8fb45196ce3331b48b246e472f595ae197d3305e65f77979cb70fa44a.lean/index.md) · [Full source](../../../../mathematics/Analysis/Completion/Variant45c254a8fb45196ce3331b48b246e472f595ae197d3305e65f77979cb70fa44a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `485a57a6a85ba33fe045e9d9b3ef5a3d0b33838d`.

Source path: `GRWTSK/Analysis/Completion/Variant45c254a8fb45196ce3331b48b246e472f595ae197d3305e65f77979cb70fa44a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Completion/Variant45c254a8fb45196ce3331b48b246e472f595ae197d3305e65f77979cb70fa44a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [completion](../../../../mathematics/Analysis/Completion/Variant45c254a8fb45196ce3331b48b246e472f595ae197d3305e65f77979cb70fa44a.lean/declarations/completion--54a764b05f1e0595f22a55a5.md) | 48 | `declaration-track:54a764b05f1e0595f22a55a5a5b05626442e51e19ca39f9b1c610860869c79b2` |
| 2 | `instance` | [completion_completeSpace](../../../../mathematics/Analysis/Completion/Variant45c254a8fb45196ce3331b48b246e472f595ae197d3305e65f77979cb70fa44a.lean/declarations/completion-completespace--54080ae4f2ba1b9d350f360b.md) | 54 | `declaration-track:54080ae4f2ba1b9d350f360bf458432cec0e52a8e69814476da3e5790dd1ac5c` |
| 3 | `def` | [completion.incl](../../../../mathematics/Analysis/Completion/Variant45c254a8fb45196ce3331b48b246e472f595ae197d3305e65f77979cb70fa44a.lean/declarations/completion-incl--56fae7629d0e3c3dd6fbde8e.md) | 58 | `declaration-track:56fae7629d0e3c3dd6fbde8ed6ee023b6fb9448aaf4bdabf7ab152dfc2575076` |
| 4 | `theorem` | [completion.norm_incl_eq](../../../../mathematics/Analysis/Completion/Variant45c254a8fb45196ce3331b48b246e472f595ae197d3305e65f77979cb70fa44a.lean/declarations/completion-norm-incl-eq--d1885c81a5d1fbb428a51c56.md) | 64 | `result-track:d1885c81a5d1fbb428a51c56c2671c5864958e68b9ac18ec5f4cea5cd5095dd9` |
| 5 | `theorem` | [completion.map_normNoninc](../../../../mathematics/Analysis/Completion/Variant45c254a8fb45196ce3331b48b246e472f595ae197d3305e65f77979cb70fa44a.lean/declarations/completion-map-normnoninc--866d7f806945bcef2775bdc7.md) | 67 | `result-track:866d7f806945bcef2775bdc7a5cb7dbefc724937273be00c708b564477a0c596` |
| 6 | `def` | [completion.mapHom](../../../../mathematics/Analysis/Completion/Variant45c254a8fb45196ce3331b48b246e472f595ae197d3305e65f77979cb70fa44a.lean/declarations/completion-maphom--7f671bd1396903ac60bc1455.md) | 79 | `declaration-track:7f671bd1396903ac60bc145522e77543dd2195abe37ed2c8564a47bb1a1ca966` |
| 7 | `theorem` | [completion.map_zero](../../../../mathematics/Analysis/Completion/Variant45c254a8fb45196ce3331b48b246e472f595ae197d3305e65f77979cb70fa44a.lean/declarations/completion-map-zero--cca22e2904dd0314c493e21c.md) | 84 | `result-track:cca22e2904dd0314c493e21cc044cf86b3f79f833e0e08d0df99530ea8e5a02d` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Completion/Variant45c254a8fb45196ce3331b48b246e472f595ae197d3305e65f77979cb70fa44a.lean/declarations/instance--74a0858c5dc018fe8353396e.md) | 87 | `declaration-track:74a0858c5dc018fe8353396ead57ffd2969756bd6f94011d06ec74efd18ed84d` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Completion/Variant45c254a8fb45196ce3331b48b246e472f595ae197d3305e65f77979cb70fa44a.lean/declarations/instance--cb3e77ae9186a56a2db6aad7.md) | 89 | `declaration-track:cb3e77ae9186a56a2db6aad7c372d27565d393bcc3f3ad9175068cd242700d03` |
| 10 | `def` | [completion.lift](../../../../mathematics/Analysis/Completion/Variant45c254a8fb45196ce3331b48b246e472f595ae197d3305e65f77979cb70fa44a.lean/declarations/completion-lift--b77fbafa9cc4ebfefd25fefe.md) | 95 | `declaration-track:b77fbafa9cc4ebfefd25fefef6aaa20fd144ddb0eca651af249ff9d3cb29bed1` |
| 11 | `theorem` | [completion.lift_comp_incl](../../../../mathematics/Analysis/Completion/Variant45c254a8fb45196ce3331b48b246e472f595ae197d3305e65f77979cb70fa44a.lean/declarations/completion-lift-comp-incl--6cee308b7aff6d129fb9c26a.md) | 102 | `result-track:6cee308b7aff6d129fb9c26a44665a37b2c215d9d142698f20405793a19ac319` |
| 12 | `theorem` | [completion.lift_unique](../../../../mathematics/Analysis/Completion/Variant45c254a8fb45196ce3331b48b246e472f595ae197d3305e65f77979cb70fa44a.lean/declarations/completion-lift-unique--5931efaf4455105ea0088a7e.md) | 106 | `result-track:5931efaf4455105ea0088a7e0c3ca971c507ea7ce9f933210ade6a0e0696466a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
