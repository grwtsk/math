# Verification target: GRWTSK.Analysis.FunctionalAnalysis.PointCarrier.Variantac47677be31944fcae787b03524a77df89a148c5f22ab34e5dd7b2f9b125ba75

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25cf62b30a862c341ab229d28663f397e1c1f4dd",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/PointCarrier/Variantac47677be31944fcae787b03524a77df89a148c5f22ab34e5dd7b2f9b125ba75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/PointCarrier/Variantac47677be31944fcae787b03524a77df89a148c5f22ab34e5dd7b2f9b125ba75.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/PointCarrier/Variantac47677be31944fcae787b03524a77df89a148c5f22ab34e5dd7b2f9b125ba75.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25cf62b30a862c341ab229d28663f397e1c1f4dd`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/PointCarrier/Variantac47677be31944fcae787b03524a77df89a148c5f22ab34e5dd7b2f9b125ba75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/PointCarrier/Variantac47677be31944fcae787b03524a77df89a148c5f22ab34e5dd7b2f9b125ba75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Hilbert.Finite` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Universe.Id` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Dual` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UnitInterval` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HypercubeVertex](../../../../../mathematics/Analysis/FunctionalAnalysis/PointCarrier/Variantac47677be31944fcae787b03524a77df89a148c5f22ab34e5dd7b2f9b125ba75.lean/declarations/hypercubevertex--05b43d806489dcffa407548c.md) | 35 | `declaration-track:05b43d806489dcffa407548c5a2b18c8045394018667d152115e0934b60fd967` |
| 2 | `structure` | [TerrainPoint](../../../../../mathematics/Analysis/FunctionalAnalysis/PointCarrier/Variantac47677be31944fcae787b03524a77df89a148c5f22ab34e5dd7b2f9b125ba75.lean/declarations/terrainpoint--22ee1c090eb95dea3e3b396d.md) | 38 | `declaration-track:22ee1c090eb95dea3e3b396d9aabb568e597ddda0ecace7d328a41945e250852` |
| 3 | `def` | [vertexFactor](../../../../../mathematics/Analysis/FunctionalAnalysis/PointCarrier/Variantac47677be31944fcae787b03524a77df89a148c5f22ab34e5dd7b2f9b125ba75.lean/declarations/vertexfactor--9af9c57e3c545b9d42280b8d.md) | 47 | `declaration-track:9af9c57e3c545b9d42280b8dcd58eb9dad9fcc4bc74d45c7a0a13fc1ca34670c` |
| 4 | `def` | [vertexWeight](../../../../../mathematics/Analysis/FunctionalAnalysis/PointCarrier/Variantac47677be31944fcae787b03524a77df89a148c5f22ab34e5dd7b2f9b125ba75.lean/declarations/vertexweight--b4027a221917a43babaeb2a2.md) | 54 | `declaration-track:b4027a221917a43babaeb2a2a78950965367ddbec3bd06a2c73e036d91b68e6d` |
| 5 | `theorem` | [vertexFactor_nonnegative](../../../../../mathematics/Analysis/FunctionalAnalysis/PointCarrier/Variantac47677be31944fcae787b03524a77df89a148c5f22ab34e5dd7b2f9b125ba75.lean/declarations/vertexfactor-nonnegative--d8be47f575c347dd67682697.md) | 60 | `result-track:d8be47f575c347dd676826976805be180e7adb17a077673778c2a03f5cf5e54b` |
| 6 | `theorem` | [vertexWeight_nonnegative](../../../../../mathematics/Analysis/FunctionalAnalysis/PointCarrier/Variantac47677be31944fcae787b03524a77df89a148c5f22ab34e5dd7b2f9b125ba75.lean/declarations/vertexweight-nonnegative--90bb606301e3b101fe74180e.md) | 70 | `result-track:90bb606301e3b101fe74180ef01c67b32dada8c8c339fa7f3956b66fdc481b1c` |
| 7 | `theorem` | [sum_vertexWeight_eq_one](../../../../../mathematics/Analysis/FunctionalAnalysis/PointCarrier/Variantac47677be31944fcae787b03524a77df89a148c5f22ab34e5dd7b2f9b125ba75.lean/declarations/sum-vertexweight-eq-one--140d3409af22b7b90f4e854e.md) | 79 | `result-track:140d3409af22b7b90f4e854efa36e137880a6454440f106579a48bb17314b0ea` |
| 8 | `def` | [pointVector](../../../../../mathematics/Analysis/FunctionalAnalysis/PointCarrier/Variantac47677be31944fcae787b03524a77df89a148c5f22ab34e5dd7b2f9b125ba75.lean/declarations/pointvector--d77f42cb85d19c1e30ec09db.md) | 94 | `declaration-track:d77f42cb85d19c1e30ec09dbf99a7a365568f62d0801d1fe6d1081262cce0ebb` |
| 9 | `theorem` | [pointVector_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/PointCarrier/Variantac47677be31944fcae787b03524a77df89a148c5f22ab34e5dd7b2f9b125ba75.lean/declarations/pointvector-apply--9dc484a747db3dbdb6c9924b.md) | 100 | `result-track:9dc484a747db3dbdb6c9924b4636f4f221ee6b0e4b5d2a3e2245879503a35a12` |
| 10 | `theorem` | [pointVector_norm_sq](../../../../../mathematics/Analysis/FunctionalAnalysis/PointCarrier/Variantac47677be31944fcae787b03524a77df89a148c5f22ab34e5dd7b2f9b125ba75.lean/declarations/pointvector-norm-sq--3854de7e89805e27d93bcb2a.md) | 108 | `result-track:3854de7e89805e27d93bcb2ae9f57ea10a04577f7142559ed4df623f1b0a6993` |
| 11 | `theorem` | [pointVector_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/PointCarrier/Variantac47677be31944fcae787b03524a77df89a148c5f22ab34e5dd7b2f9b125ba75.lean/declarations/pointvector-norm--f714dfacc9795a782fd320f1.md) | 117 | `result-track:f714dfacc9795a782fd320f11dec61fa54262d15e5b3e8d7a53a073fd12fa517` |
| 12 | `def` | [pointProjection](../../../../../mathematics/Analysis/FunctionalAnalysis/PointCarrier/Variantac47677be31944fcae787b03524a77df89a148c5f22ab34e5dd7b2f9b125ba75.lean/declarations/pointprojection--232cabf104ca284d7b2346f5.md) | 123 | `declaration-track:232cabf104ca284d7b2346f57ddea24a37b0a23a234cbe7f46410eac437c4a8e` |
| 13 | `theorem` | [pointProjection_adjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/PointCarrier/Variantac47677be31944fcae787b03524a77df89a148c5f22ab34e5dd7b2f9b125ba75.lean/declarations/pointprojection-adjoint--004efbbbfde89096293bac50.md) | 129 | `result-track:004efbbbfde89096293bac50a684d326eeed9627c1cd1c0885be808b8d072557` |
| 14 | `theorem` | [pointProjection_idempotent](../../../../../mathematics/Analysis/FunctionalAnalysis/PointCarrier/Variantac47677be31944fcae787b03524a77df89a148c5f22ab34e5dd7b2f9b125ba75.lean/declarations/pointprojection-idempotent--7596bbe561d76493ed5594d1.md) | 134 | `result-track:7596bbe561d76493ed5594d1cb5545fe6c71ff4d8d0013df3fbae05aa19e2a2c` |
| 15 | `theorem` | [pointProjection_isStarProjection](../../../../../mathematics/Analysis/FunctionalAnalysis/PointCarrier/Variantac47677be31944fcae787b03524a77df89a148c5f22ab34e5dd7b2f9b125ba75.lean/declarations/pointprojection-isstarprojection--503bf8baeff56f65189e79fa.md) | 139 | `result-track:503bf8baeff56f65189e79fa781766027f604890867d55f02c4719666c4d4a31` |
| 16 | `theorem` | [pointProjection_rank](../../../../../mathematics/Analysis/FunctionalAnalysis/PointCarrier/Variantac47677be31944fcae787b03524a77df89a148c5f22ab34e5dd7b2f9b125ba75.lean/declarations/pointprojection-rank--710c9263273b84bc14087ea2.md) | 144 | `result-track:710c9263273b84bc14087ea22737a0814b82b8e9dfd96071e81426d53de2ca02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
