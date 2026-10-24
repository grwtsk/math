# Verification target: GRWTSK.Topology.GeneralTopology.Constructions.Variant73bc07001696a031301563cce1e7b40385825cf2a8183667380f9308e7995f3a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ead15c259e3ea348a46cd82dae737044b58f0e94",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Constructions/Variant73bc07001696a031301563cce1e7b40385825cf2a8183667380f9308e7995f3a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant73bc07001696a031301563cce1e7b40385825cf2a8183667380f9308e7995f3a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant73bc07001696a031301563cce1e7b40385825cf2a8183667380f9308e7995f3a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ead15c259e3ea348a46cd82dae737044b58f0e94`.

Source path: `GRWTSK/Topology/GeneralTopology/Constructions/Variant73bc07001696a031301563cce1e7b40385825cf2a8183667380f9308e7995f3a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Constructions/Variant73bc07001696a031301563cce1e7b40385825cf2a8183667380f9308e7995f3a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.FiberBundle.Constructions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.VectorBundle.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.Prod` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [trivialization.isLinear](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant73bc07001696a031301563cce1e7b40385825cf2a8183667380f9308e7995f3a.lean/declarations/trivialization-islinear--6386df2e7272703867810ed7.md) | 48 | `declaration-track:6386df2e7272703867810ed742465acdf43738302a94adeefa7b7d7bec1ee65c` |
| 2 | `theorem` | [trivialization.coordChangeL](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant73bc07001696a031301563cce1e7b40385825cf2a8183667380f9308e7995f3a.lean/declarations/trivialization-coordchangel--5b3a7bff3940213e344b86ee.md) | 52 | `result-track:5b3a7bff3940213e344b86eea93cc08581dc4b02b3438aa180277eedec6ad25b` |
| 3 | `instance` | [vectorBundle](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant73bc07001696a031301563cce1e7b40385825cf2a8183667380f9308e7995f3a.lean/declarations/vectorbundle--1bf05e28751d4a6a5b0d89e2.md) | 59 | `declaration-track:1bf05e28751d4a6a5b0d89e2f710a072c020b0f51b8c0c0d11661dfcb044e454` |
| 4 | `instance` | [prod.isLinear](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant73bc07001696a031301563cce1e7b40385825cf2a8183667380f9308e7995f3a.lean/declarations/prod-islinear--86ad06e12cf709c52c9d7a68.md) | 87 | `declaration-track:86ad06e12cf709c52c9d7a6842cfcc58e2bc4d470220be836e8926d48770b1d2` |
| 5 | `theorem` | [coordChangeL_prod](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant73bc07001696a031301563cce1e7b40385825cf2a8183667380f9308e7995f3a.lean/declarations/coordchangel-prod--a5f270450efb190a2b8d347c.md) | 92 | `result-track:a5f270450efb190a2b8d347ca5fd513e33a064cc82465c265ef827c3759e1730` |
| 6 | `theorem` | [prod_apply](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant73bc07001696a031301563cce1e7b40385825cf2a8183667380f9308e7995f3a.lean/declarations/prod-apply--aa3e3cde984a490c207bbf50.md) | 107 | `result-track:aa3e3cde984a490c207bbf50192d6bcc7e5b59da81bb6621728eb561a55b0a6d` |
| 7 | `instance` | [VectorBundle.prod](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant73bc07001696a031301563cce1e7b40385825cf2a8183667380f9308e7995f3a.lean/declarations/vectorbundle-prod--7f11d9d115cb4b7b16cb1b39.md) | 122 | `declaration-track:7f11d9d115cb4b7b16cb1b39f542ee98abf72a56a8a3e71af9f239ede5ddb149` |
| 8 | `theorem` | [Trivialization.continuousLinearEquivAt_prod](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant73bc07001696a031301563cce1e7b40385825cf2a8183667380f9308e7995f3a.lean/declarations/trivialization-continuouslinearequivat-prod--46b25863cb8bc68903d64efa.md) | 145 | `result-track:46b25863cb8bc68903d64efae3466303b6b329390e1b4874e495c7af282e75b6` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant73bc07001696a031301563cce1e7b40385825cf2a8183667380f9308e7995f3a.lean/declarations/instance--939683b69843a5667217e2cc.md) | 163 | `declaration-track:939683b69843a5667217e2cc00bb356309358ff8924c2cb166ca105122d8ddfc` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant73bc07001696a031301563cce1e7b40385825cf2a8183667380f9308e7995f3a.lean/declarations/instance--cfbdddd5c16d86b795a1b662.md) | 165 | `declaration-track:cfbdddd5c16d86b795a1b6625787056e7b27064a878336e867ecc59024a01f60` |
| 11 | `instance` | [Trivialization.pullback_linear](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant73bc07001696a031301563cce1e7b40385825cf2a8183667380f9308e7995f3a.lean/declarations/trivialization-pullback-linear--9ed47d049e1a9b8458d41e1f.md) | 172 | `declaration-track:9ed47d049e1a9b8458d41e1f23a0dc895188dbcc54fc0b16de873148bb153b84` |
| 12 | `instance` | [VectorBundle.pullback](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant73bc07001696a031301563cce1e7b40385825cf2a8183667380f9308e7995f3a.lean/declarations/vectorbundle-pullback--18ec58e955dbc330d47a8134.md) | 176 | `declaration-track:18ec58e955dbc330d47a8134e939c453b4c7294cc26f38056863192e0993992f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
