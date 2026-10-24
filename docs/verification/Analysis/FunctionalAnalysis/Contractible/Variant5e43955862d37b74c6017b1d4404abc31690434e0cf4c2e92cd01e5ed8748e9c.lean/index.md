# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Contractible.Variant5e43955862d37b74c6017b1d4404abc31690434e0cf4c2e92cd01e5ed8748e9c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "182826e1e06e5eb5699a646379ac4e5b84868ad9",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Contractible/Variant5e43955862d37b74c6017b1d4404abc31690434e0cf4c2e92cd01e5ed8748e9c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Contractible/Variant5e43955862d37b74c6017b1d4404abc31690434e0cf4c2e92cd01e5ed8748e9c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Contractible/Variant5e43955862d37b74c6017b1d4404abc31690434e0cf4c2e92cd01e5ed8748e9c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `182826e1e06e5eb5699a646379ac4e5b84868ad9`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Contractible/Variant5e43955862d37b74c6017b1d4404abc31690434e0cf4c2e92cd01e5ed8748e9c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Contractible/Variant5e43955862d37b74c6017b1d4404abc31690434e0cf4c2e92cd01e5ed8748e9c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Star` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homotopy.Contractible` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [StarConvex.contractibleSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Contractible/Variant5e43955862d37b74c6017b1d4404abc31690434e0cf4c2e92cd01e5ed8748e9c.lean/declarations/starconvex-contractiblespace--7307160710b6e5f39e9da35e.md) | 21 | `result-track:7307160710b6e5f39e9da35e1a6aca6cf39b65c4bd589ea3caa5475baeb7021f` |
| 2 | `theorem` | [Convex.contractibleSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Contractible/Variant5e43955862d37b74c6017b1d4404abc31690434e0cf4c2e92cd01e5ed8748e9c.lean/declarations/convex-contractiblespace--ecdf2574551f70ff9e127b57.md) | 39 | `result-track:ecdf2574551f70ff9e127b57649b7ff6c46424c0e00c0b97fe4a1f9ea3d88095` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Contractible/Variant5e43955862d37b74c6017b1d4404abc31690434e0cf4c2e92cd01e5ed8748e9c.lean/declarations/instance--d9ee43acd18b4e628bc8739f.md) | 44 | `declaration-track:d9ee43acd18b4e628bc8739f1d793f27adaac0c65f6b3af037e6b259e51ca340` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
