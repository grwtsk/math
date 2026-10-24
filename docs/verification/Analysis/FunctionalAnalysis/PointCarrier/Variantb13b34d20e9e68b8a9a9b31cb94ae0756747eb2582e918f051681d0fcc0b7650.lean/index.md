# Verification target: GRWTSK.Analysis.FunctionalAnalysis.PointCarrier.Variantb13b34d20e9e68b8a9a9b31cb94ae0756747eb2582e918f051681d0fcc0b7650

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21554459b9894ae10fca7bb914c0eac79df41ea5",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/PointCarrier/Variantb13b34d20e9e68b8a9a9b31cb94ae0756747eb2582e918f051681d0fcc0b7650.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/PointCarrier/Variantb13b34d20e9e68b8a9a9b31cb94ae0756747eb2582e918f051681d0fcc0b7650.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/PointCarrier/Variantb13b34d20e9e68b8a9a9b31cb94ae0756747eb2582e918f051681d0fcc0b7650.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21554459b9894ae10fca7bb914c0eac79df41ea5`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/PointCarrier/Variantb13b34d20e9e68b8a9a9b31cb94ae0756747eb2582e918f051681d0fcc0b7650.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/PointCarrier/Variantb13b34d20e9e68b8a9a9b31cb94ae0756747eb2582e918f051681d0fcc0b7650.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Hilbert.Finite` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Universe.Id` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Dual` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UnitInterval` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HypercubeVertex](../../../../../mathematics/Analysis/FunctionalAnalysis/PointCarrier/Variantb13b34d20e9e68b8a9a9b31cb94ae0756747eb2582e918f051681d0fcc0b7650.lean/declarations/hypercubevertex--75e9cc7d0ef92c104c3074d0.md) | 27 | `declaration-track:75e9cc7d0ef92c104c3074d094149d8a0917cbaf0170cc78d90b818539970b5e` |
| 2 | `structure` | [TerrainPoint](../../../../../mathematics/Analysis/FunctionalAnalysis/PointCarrier/Variantb13b34d20e9e68b8a9a9b31cb94ae0756747eb2582e918f051681d0fcc0b7650.lean/declarations/terrainpoint--07d4daac22f248e5f47b0a8d.md) | 30 | `declaration-track:07d4daac22f248e5f47b0a8d2e21336863270b2765c822da464b53f60120fb83` |
| 3 | `def` | [vertexFactor](../../../../../mathematics/Analysis/FunctionalAnalysis/PointCarrier/Variantb13b34d20e9e68b8a9a9b31cb94ae0756747eb2582e918f051681d0fcc0b7650.lean/declarations/vertexfactor--733fe3d104ba92b724e07eb4.md) | 39 | `declaration-track:733fe3d104ba92b724e07eb489e29046374a25220ee186d2222cad65493e5106` |
| 4 | `def` | [vertexWeight](../../../../../mathematics/Analysis/FunctionalAnalysis/PointCarrier/Variantb13b34d20e9e68b8a9a9b31cb94ae0756747eb2582e918f051681d0fcc0b7650.lean/declarations/vertexweight--ea38b5a05967209005358ae0.md) | 46 | `declaration-track:ea38b5a05967209005358ae031f78d47ea8dd1593a3da417539085cff627531a` |
| 5 | `theorem` | [vertexFactor_nonnegative](../../../../../mathematics/Analysis/FunctionalAnalysis/PointCarrier/Variantb13b34d20e9e68b8a9a9b31cb94ae0756747eb2582e918f051681d0fcc0b7650.lean/declarations/vertexfactor-nonnegative--41f5ffaf09ad0bcbf5a7c5d7.md) | 52 | `result-track:41f5ffaf09ad0bcbf5a7c5d770156d1d52c2688980bf7d310d499f4e6332b5b0` |
| 6 | `theorem` | [vertexWeight_nonnegative](../../../../../mathematics/Analysis/FunctionalAnalysis/PointCarrier/Variantb13b34d20e9e68b8a9a9b31cb94ae0756747eb2582e918f051681d0fcc0b7650.lean/declarations/vertexweight-nonnegative--632d93ccfe0d4449516559c6.md) | 62 | `result-track:632d93ccfe0d4449516559c612c1ad7246007c9a172bdb0dcd443f6e9084b145` |
| 7 | `theorem` | [sum_vertexWeight_eq_one](../../../../../mathematics/Analysis/FunctionalAnalysis/PointCarrier/Variantb13b34d20e9e68b8a9a9b31cb94ae0756747eb2582e918f051681d0fcc0b7650.lean/declarations/sum-vertexweight-eq-one--f74eea9bbdc2db6bf62d8869.md) | 71 | `result-track:f74eea9bbdc2db6bf62d886958a385f50688af97661e493c2af3cb1030515912` |
| 8 | `def` | [pointVector](../../../../../mathematics/Analysis/FunctionalAnalysis/PointCarrier/Variantb13b34d20e9e68b8a9a9b31cb94ae0756747eb2582e918f051681d0fcc0b7650.lean/declarations/pointvector--11a5ef5396d99bc02b16ef47.md) | 86 | `declaration-track:11a5ef5396d99bc02b16ef47c26efedd01b9c66320bd28a7817f0cc340451a69` |
| 9 | `theorem` | [pointVector_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/PointCarrier/Variantb13b34d20e9e68b8a9a9b31cb94ae0756747eb2582e918f051681d0fcc0b7650.lean/declarations/pointvector-apply--9b79ca1574b209c9484c749e.md) | 92 | `result-track:9b79ca1574b209c9484c749e345a29e0fd623261f5be779d58970ef61638319a` |
| 10 | `theorem` | [pointVector_norm_sq](../../../../../mathematics/Analysis/FunctionalAnalysis/PointCarrier/Variantb13b34d20e9e68b8a9a9b31cb94ae0756747eb2582e918f051681d0fcc0b7650.lean/declarations/pointvector-norm-sq--06bcae34c75b182f1f3fd5a3.md) | 100 | `result-track:06bcae34c75b182f1f3fd5a3d21b6428d266ae5d29eaadf020f9b0343ae76f57` |
| 11 | `theorem` | [pointVector_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/PointCarrier/Variantb13b34d20e9e68b8a9a9b31cb94ae0756747eb2582e918f051681d0fcc0b7650.lean/declarations/pointvector-norm--0038ffee327d34aefa1e64fc.md) | 109 | `result-track:0038ffee327d34aefa1e64fc9f9dcae40d0fe430a5635be08838f36b53c0b8d9` |
| 12 | `def` | [pointProjection](../../../../../mathematics/Analysis/FunctionalAnalysis/PointCarrier/Variantb13b34d20e9e68b8a9a9b31cb94ae0756747eb2582e918f051681d0fcc0b7650.lean/declarations/pointprojection--14b82d2a026e0eb93d57914f.md) | 115 | `declaration-track:14b82d2a026e0eb93d57914f1563a1daf30873e0fdbc0574c7f534ddc84758e6` |
| 13 | `theorem` | [pointProjection_adjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/PointCarrier/Variantb13b34d20e9e68b8a9a9b31cb94ae0756747eb2582e918f051681d0fcc0b7650.lean/declarations/pointprojection-adjoint--32fa03e32aeadb3afe6f42d6.md) | 121 | `result-track:32fa03e32aeadb3afe6f42d6bc87981167478271f39773d097de1ca32acc34ec` |
| 14 | `theorem` | [pointProjection_idempotent](../../../../../mathematics/Analysis/FunctionalAnalysis/PointCarrier/Variantb13b34d20e9e68b8a9a9b31cb94ae0756747eb2582e918f051681d0fcc0b7650.lean/declarations/pointprojection-idempotent--63c7de32b108ae9d184e1dda.md) | 126 | `result-track:63c7de32b108ae9d184e1ddae3b555bc28091ac9237cece73c78a8bf2c213009` |
| 15 | `theorem` | [pointProjection_isStarProjection](../../../../../mathematics/Analysis/FunctionalAnalysis/PointCarrier/Variantb13b34d20e9e68b8a9a9b31cb94ae0756747eb2582e918f051681d0fcc0b7650.lean/declarations/pointprojection-isstarprojection--6ae08e8b5829aad250f02c91.md) | 131 | `result-track:6ae08e8b5829aad250f02c916261f8a741a74eda6b57bd1cbb405b06d38ce07b` |
| 16 | `theorem` | [pointProjection_rank](../../../../../mathematics/Analysis/FunctionalAnalysis/PointCarrier/Variantb13b34d20e9e68b8a9a9b31cb94ae0756747eb2582e918f051681d0fcc0b7650.lean/declarations/pointprojection-rank--7385275e89f5d0ddcd1b2fc1.md) | 136 | `result-track:7385275e89f5d0ddcd1b2fc1ac07773c0b1775913613028515760a02126cd745` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
