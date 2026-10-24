# Verification target: GRWTSK.Topology.GeneralTopology.ExtendFrom.Variant059ca94f4962e1d21e5af8aec176729b3fcd52f9600ef28ad0a75f72febbd1fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75f29794cf71ed9f226b0fdcd313559c2a142f26",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ExtendFrom/Variant059ca94f4962e1d21e5af8aec176729b3fcd52f9600ef28ad0a75f72febbd1fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ExtendFrom/Variant059ca94f4962e1d21e5af8aec176729b3fcd52f9600ef28ad0a75f72febbd1fe.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ExtendFrom/Variant059ca94f4962e1d21e5af8aec176729b3fcd52f9600ef28ad0a75f72febbd1fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75f29794cf71ed9f226b0fdcd313559c2a142f26`.

Source path: `GRWTSK/Topology/GeneralTopology/ExtendFrom/Variant059ca94f4962e1d21e5af8aec176729b3fcd52f9600ef28ad0a75f72febbd1fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ExtendFrom/Variant059ca94f4962e1d21e5af8aec176729b3fcd52f9600ef28ad0a75f72febbd1fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ExtendFrom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.DenselyOrdered` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [continuousOn_Icc_extendFrom_Ioo](../../../../../mathematics/Topology/GeneralTopology/ExtendFrom/Variant059ca94f4962e1d21e5af8aec176729b3fcd52f9600ef28ad0a75f72febbd1fe.lean/declarations/continuouson-icc-extendfrom-ioo--dea772d7613e7b430f9de810.md) | 25 | `result-track:dea772d7613e7b430f9de810f6776ce5cd637cfba74d96aa22107472807d6405` |
| 2 | `theorem` | [eq_lim_at_left_extendFrom_Ioo](../../../../../mathematics/Topology/GeneralTopology/ExtendFrom/Variant059ca94f4962e1d21e5af8aec176729b3fcd52f9600ef28ad0a75f72febbd1fe.lean/declarations/eq-lim-at-left-extendfrom-ioo--081796dcbd30087f6491700e.md) | 37 | `result-track:081796dcbd30087f6491700e955db41c6e5a1d70ac010a829926ca3e9d5f0934` |
| 3 | `theorem` | [eq_lim_at_right_extendFrom_Ioo](../../../../../mathematics/Topology/GeneralTopology/ExtendFrom/Variant059ca94f4962e1d21e5af8aec176729b3fcd52f9600ef28ad0a75f72febbd1fe.lean/declarations/eq-lim-at-right-extendfrom-ioo--4aaad3b5c6d34d8258e19139.md) | 45 | `result-track:4aaad3b5c6d34d8258e191391276b617d465d60cbaad6f9e8e6ad33962bf8d95` |
| 4 | `theorem` | [continuousOn_Ico_extendFrom_Ioo](../../../../../mathematics/Topology/GeneralTopology/ExtendFrom/Variant059ca94f4962e1d21e5af8aec176729b3fcd52f9600ef28ad0a75f72febbd1fe.lean/declarations/continuouson-ico-extendfrom-ioo--9690786ff4d04b8d4171ba21.md) | 53 | `result-track:9690786ff4d04b8d4171ba219472186791d702dcbefee6a694dabc0f030e853f` |
| 5 | `theorem` | [continuousOn_Ioc_extendFrom_Ioo](../../../../../mathematics/Topology/GeneralTopology/ExtendFrom/Variant059ca94f4962e1d21e5af8aec176729b3fcd52f9600ef28ad0a75f72febbd1fe.lean/declarations/continuouson-ioc-extendfrom-ioo--50fe3710fe4e229771348ee8.md) | 66 | `result-track:50fe3710fe4e229771348ee830f4bad13ceb968022fdb43968a1fcc3eb200fd1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
