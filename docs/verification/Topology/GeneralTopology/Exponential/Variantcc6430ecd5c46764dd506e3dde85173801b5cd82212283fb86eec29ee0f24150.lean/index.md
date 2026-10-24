# Verification target: GRWTSK.Topology.GeneralTopology.Exponential.Variantcc6430ecd5c46764dd506e3dde85173801b5cd82212283fb86eec29ee0f24150

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a2b6aaf59f996bb39b79e8464165fbb4fa2b2ee",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Exponential/Variantcc6430ecd5c46764dd506e3dde85173801b5cd82212283fb86eec29ee0f24150.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Exponential/Variantcc6430ecd5c46764dd506e3dde85173801b5cd82212283fb86eec29ee0f24150.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Exponential/Variantcc6430ecd5c46764dd506e3dde85173801b5cd82212283fb86eec29ee0f24150.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a2b6aaf59f996bb39b79e8464165fbb4fa2b2ee`.

Source path: `GRWTSK/Topology/GeneralTopology/Exponential/Variantcc6430ecd5c46764dd506e3dde85173801b5cd82212283fb86eec29ee0f24150.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Exponential/Variantcc6430ecd5c46764dd506e3dde85173801b5cd82212283fb86eec29ee0f24150.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Algebra.Exponential` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [selfAdjoint.expUnitary](../../../../../mathematics/Topology/GeneralTopology/Exponential/Variantcc6430ecd5c46764dd506e3dde85173801b5cd82212283fb86eec29ee0f24150.lean/declarations/selfadjoint-expunitary--ea4670b35f0bb1a5409199cc.md) | 41 | `declaration-track:ea4670b35f0bb1a5409199cc554cd4694f4854983f1961efee48f9d31ce0f0dc` |
| 2 | `lemma` | [selfAdjoint.expUnitary_zero](../../../../../mathematics/Topology/GeneralTopology/Exponential/Variantcc6430ecd5c46764dd506e3dde85173801b5cd82212283fb86eec29ee0f24150.lean/declarations/selfadjoint-expunitary-zero--7eeb4daf56aecf226a828c69.md) | 48 | `result-track:7eeb4daf56aecf226a828c69c97cf7b5083d70fd52e929c176c14ebbcf88ae25` |
| 3 | `lemma` | [selfAdjoint.continuous_expUnitary](../../../../../mathematics/Topology/GeneralTopology/Exponential/Variantcc6430ecd5c46764dd506e3dde85173801b5cd82212283fb86eec29ee0f24150.lean/declarations/selfadjoint-continuous-expunitary--0dd6401f2575b4f0b294531f.md) | 53 | `result-track:0dd6401f2575b4f0b294531f430757d806a1bb89a2306713340a0f10c788bee7` |
| 4 | `theorem` | [Commute.expUnitary_add](../../../../../mathematics/Topology/GeneralTopology/Exponential/Variantcc6430ecd5c46764dd506e3dde85173801b5cd82212283fb86eec29ee0f24150.lean/declarations/commute-expunitary-add--8bdcbfcd410bafd0336ac706.md) | 57 | `result-track:8bdcbfcd410bafd0336ac706f46000c2eceed6f185904cc2f4c4e13ee26425cb` |
| 5 | `theorem` | [Commute.expUnitary](../../../../../mathematics/Topology/GeneralTopology/Exponential/Variantcc6430ecd5c46764dd506e3dde85173801b5cd82212283fb86eec29ee0f24150.lean/declarations/commute-expunitary--a9b2038a583fdba5d7253925.md) | 65 | `result-track:a9b2038a583fdba5d7253925f33cce05025c1e8af537aa31528f75dce86cfd3e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
