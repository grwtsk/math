# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpectralGraphTheory.OrientedFiniteGraphEnergy.Variant095db63c5a49f882.NeighborAndTotalSums

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c4c15dbf8e53799d6a112dd3b277e5653b497f0",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/SpectralGraphTheory/OrientedFiniteGraphEnergy/Variant095db63c5a49f882/NeighborAndTotalSums.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/SpectralGraphTheory/OrientedFiniteGraphEnergy/Variant095db63c5a49f882/NeighborAndTotalSums.lean/index.md) · [Full source](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/SpectralGraphTheory/OrientedFiniteGraphEnergy/Variant095db63c5a49f882/NeighborAndTotalSums.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c4c15dbf8e53799d6a112dd3b277e5653b497f0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/SpectralGraphTheory/OrientedFiniteGraphEnergy/Variant095db63c5a49f882/NeighborAndTotalSums.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/SpectralGraphTheory/OrientedFiniteGraphEnergy/Variant095db63c5a49f882/NeighborAndTotalSums.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.RealAnalysis.RealFunctions.FiniteSquaredDifferences.Variant095db63c5a49f882.EdgeChannelSum`](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/FiniteSquaredDifferences/Variant095db63c5a49f882/EdgeChannelSum.lean/index.md) — import line 19; pinned internal source present.
- `Folder.Spectral.Graph` — import line 21; external provider; requires a separately pinned dependency.
- `Folder.Spectral.Tensor` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cellEnergy](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/SpectralGraphTheory/OrientedFiniteGraphEnergy/Variant095db63c5a49f882/NeighborAndTotalSums.lean/declarations/cellenergy--a2f655a93b62aa4dd97cc570.md) | 45 | `declaration-track:a2f655a93b62aa4dd97cc5700598d9122d5c11e5f55046a50c81396a1cd31ba5` |
| 2 | `def` | [energy](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/SpectralGraphTheory/OrientedFiniteGraphEnergy/Variant095db63c5a49f882/NeighborAndTotalSums.lean/declarations/energy--17f1aaa7ad4b0575811c3266.md) | 58 | `declaration-track:17f1aaa7ad4b0575811c326667408986661f8f73e97cff6e69e550043a2f997a` |
| 3 | `theorem` | [cellEnergy_nonneg](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/SpectralGraphTheory/OrientedFiniteGraphEnergy/Variant095db63c5a49f882/NeighborAndTotalSums.lean/declarations/cellenergy-nonneg--3e98dfa73ef62d995050cce7.md) | 64 | `result-track:3e98dfa73ef62d995050cce7bc08788738a0d6ee4c0a70e921ee6a19aab75d16` |
| 4 | `theorem` | [energy_nonneg](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/SpectralGraphTheory/OrientedFiniteGraphEnergy/Variant095db63c5a49f882/NeighborAndTotalSums.lean/declarations/energy-nonneg--d96f3ac940d2f9ee9a9dfeb2.md) | 74 | `result-track:d96f3ac940d2f9ee9a9dfeb2cb29a0723500eb97f88cf68b6df08e97f2e83cfc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
