# Verification target: GRWTSK.Topology.GeneralTopology.FiberwiseLinear.Variantbd141699ecf27a26c399b8ff5fe3578cfe22cf17e2cfd2f265387d6b04661875

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f28b69cc1c51a2c2cad47e5969de84c560ea859",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/FiberwiseLinear/Variantbd141699ecf27a26c399b8ff5fe3578cfe22cf17e2cfd2f265387d6b04661875.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/FiberwiseLinear/Variantbd141699ecf27a26c399b8ff5fe3578cfe22cf17e2cfd2f265387d6b04661875.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/FiberwiseLinear/Variantbd141699ecf27a26c399b8ff5fe3578cfe22cf17e2cfd2f265387d6b04661875.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f28b69cc1c51a2c2cad47e5969de84c560ea859`.

Source path: `GRWTSK/Topology/GeneralTopology/FiberwiseLinear/Variantbd141699ecf27a26c399b8ff5fe3578cfe22cf17e2cfd2f265387d6b04661875.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/FiberwiseLinear/Variantbd141699ecf27a26c399b8ff5fe3578cfe22cf17e2cfd2f265387d6b04661875.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.ContMDiff.NormedSpace` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [partialHomeomorph](../../../../../mathematics/Topology/GeneralTopology/FiberwiseLinear/Variantbd141699ecf27a26c399b8ff5fe3578cfe22cf17e2cfd2f265387d6b04661875.lean/declarations/partialhomeomorph--45e20db81c025c52f6f6740a.md) | 32 | `declaration-track:45e20db81c025c52f6f6740ac5d4e0e545eb937f31a017cb70da708d17d9111d` |
| 2 | `theorem` | [trans_partialHomeomorph_apply](../../../../../mathematics/Topology/GeneralTopology/FiberwiseLinear/Variantbd141699ecf27a26c399b8ff5fe3578cfe22cf17e2cfd2f265387d6b04661875.lean/declarations/trans-partialhomeomorph-apply--fbb10b7c6c0a4a69615a7188.md) | 57 | `result-track:fbb10b7c6c0a4a69615a718833b60569fbc91369009340a84770d1a5085343d6` |
| 3 | `theorem` | [source_trans_partialHomeomorph](../../../../../mathematics/Topology/GeneralTopology/FiberwiseLinear/Variantbd141699ecf27a26c399b8ff5fe3578cfe22cf17e2cfd2f265387d6b04661875.lean/declarations/source-trans-partialhomeomorph--260655b5a5d71960154608ad.md) | 70 | `result-track:260655b5a5d71960154608ad6fe39487efb7f90f4e16f52e6882612a17638008` |
| 4 | `theorem` | [target_trans_partialHomeomorph](../../../../../mathematics/Topology/GeneralTopology/FiberwiseLinear/Variantbd141699ecf27a26c399b8ff5fe3578cfe22cf17e2cfd2f265387d6b04661875.lean/declarations/target-trans-partialhomeomorph--b193ceaa677ef582731cd089.md) | 82 | `result-track:b193ceaa677ef582731cd08951b542181061cde1ad1844a66ba1876971b10c33` |
| 5 | `theorem` | [ContMDiffFiberwiseLinear.locality_aux₁](../../../../../mathematics/Topology/GeneralTopology/FiberwiseLinear/Variantbd141699ecf27a26c399b8ff5fe3578cfe22cf17e2cfd2f265387d6b04661875.lean/declarations/contmdifffiberwiselinear-locality-aux--3ae90d848a477f344789fae1.md) | 103 | `result-track:3ae90d848a477f344789fae128dd5043ef5aeedcc73daa12053ea01140b838c2` |
| 6 | `theorem` | [ContMDiffFiberwiseLinear.locality_aux₂](../../../../../mathematics/Topology/GeneralTopology/FiberwiseLinear/Variantbd141699ecf27a26c399b8ff5fe3578cfe22cf17e2cfd2f265387d6b04661875.lean/declarations/contmdifffiberwiselinear-locality-aux--ba6716843c904c07fb74d305.md) | 158 | `result-track:ba6716843c904c07fb74d305b47d27d50130f845bb09dd40cc20bab0cafb5182` |
| 7 | `theorem` | [mem_aux](../../../../../mathematics/Topology/GeneralTopology/FiberwiseLinear/Variantbd141699ecf27a26c399b8ff5fe3578cfe22cf17e2cfd2f265387d6b04661875.lean/declarations/mem-aux--4a136e1c13a3f836948236e7.md) | 226 | `result-track:4a136e1c13a3f836948236e7d57edeb5f797501db6711654c6197d524eea8235` |
| 8 | `def` | [contMDiffFiberwiseLinear](../../../../../mathematics/Topology/GeneralTopology/FiberwiseLinear/Variantbd141699ecf27a26c399b8ff5fe3578cfe22cf17e2cfd2f265387d6b04661875.lean/declarations/contmdifffiberwiselinear--6706cf91f13fd788ad223b1e.md) | 245 | `declaration-track:6706cf91f13fd788ad223b1e173154a5b8130e559847a1b2a04f33b1b7409b5d` |
| 9 | `theorem` | [mem_contMDiffFiberwiseLinear_iff](../../../../../mathematics/Topology/GeneralTopology/FiberwiseLinear/Variantbd141699ecf27a26c399b8ff5fe3578cfe22cf17e2cfd2f265387d6b04661875.lean/declarations/mem-contmdifffiberwiselinear-iff--c5e795bf9a3f9dd6ebb42c7e.md) | 294 | `result-track:c5e795bf9a3f9dd6ebb42c7e4b4d3cf5a885e74dcb4cbf656e8cd36adeb73576` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
