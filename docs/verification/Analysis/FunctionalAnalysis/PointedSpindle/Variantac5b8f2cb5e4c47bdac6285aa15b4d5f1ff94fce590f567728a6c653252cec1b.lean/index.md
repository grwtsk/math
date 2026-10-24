# Verification target: GRWTSK.Analysis.FunctionalAnalysis.PointedSpindle.Variantac5b8f2cb5e4c47bdac6285aa15b4d5f1ff94fce590f567728a6c653252cec1b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30403d0fef645a10cf9000c98695b6b81b5c30e5",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/PointedSpindle/Variantac5b8f2cb5e4c47bdac6285aa15b4d5f1ff94fce590f567728a6c653252cec1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/PointedSpindle/Variantac5b8f2cb5e4c47bdac6285aa15b4d5f1ff94fce590f567728a6c653252cec1b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/PointedSpindle/Variantac5b8f2cb5e4c47bdac6285aa15b4d5f1ff94fce590f567728a6c653252cec1b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30403d0fef645a10cf9000c98695b6b81b5c30e5`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/PointedSpindle/Variantac5b8f2cb5e4c47bdac6285aa15b4d5f1ff94fce590f567728a6c653252cec1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/PointedSpindle/Variantac5b8f2cb5e4c47bdac6285aa15b4d5f1ff94fce590f567728a6c653252cec1b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Arithmetic.GammaSpindle` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Hilbert.FiniteTensor` — import line 7; external provider; requires a separately pinned dependency.
- `DAF.Hilbert.PointCarrier` — import line 8; external provider; requires a separately pinned dependency.
- `DAF.Hilbert.SpectralPacket` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [canonicalOrbitVector](../../../../../mathematics/Analysis/FunctionalAnalysis/PointedSpindle/Variantac5b8f2cb5e4c47bdac6285aa15b4d5f1ff94fce590f567728a6c653252cec1b.lean/declarations/canonicalorbitvector--e1bc690518e1e9aae5e39275.md) | 31 | `declaration-track:e1bc690518e1e9aae5e392751baf1e49e81a164cdab41f014bc649cc8f08117f` |
| 2 | `theorem` | [canonicalOrbitVector_apply_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/PointedSpindle/Variantac5b8f2cb5e4c47bdac6285aa15b4d5f1ff94fce590f567728a6c653252cec1b.lean/declarations/canonicalorbitvector-apply-zero--5d68d23bce04631ede2f3e45.md) | 35 | `result-track:5d68d23bce04631ede2f3e451fadfd903f5af2763a2d17f1dc087344845178de` |
| 3 | `theorem` | [canonicalOrbitVector_apply_one](../../../../../mathematics/Analysis/FunctionalAnalysis/PointedSpindle/Variantac5b8f2cb5e4c47bdac6285aa15b4d5f1ff94fce590f567728a6c653252cec1b.lean/declarations/canonicalorbitvector-apply-one--aad05661feb5693903381196.md) | 39 | `result-track:aad05661feb56939033811967c37aaa8999223bc9d1b47d19c3be57c63f2d6bd` |
| 4 | `theorem` | [canonicalOrbitVector_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/PointedSpindle/Variantac5b8f2cb5e4c47bdac6285aa15b4d5f1ff94fce590f567728a6c653252cec1b.lean/declarations/canonicalorbitvector-norm--29ede121eeb3cc041d3c765e.md) | 42 | `result-track:29ede121eeb3cc041d3c765ed5aa1500b83e2f5ff6f4ce1f523e2bca697f0b5b` |
| 5 | `structure` | [PointedSpindleState](../../../../../mathematics/Analysis/FunctionalAnalysis/PointedSpindle/Variantac5b8f2cb5e4c47bdac6285aa15b4d5f1ff94fce590f567728a6c653252cec1b.lean/declarations/pointedspindlestate--c122b745aa13948bcc89eee0.md) | 50 | `declaration-track:c122b745aa13948bcc89eee01d687cacaa145e07fc594891bb47cc9430f83862` |
| 6 | `def` | [vector](../../../../../mathematics/Analysis/FunctionalAnalysis/PointedSpindle/Variantac5b8f2cb5e4c47bdac6285aa15b4d5f1ff94fce590f567728a6c653252cec1b.lean/declarations/vector--ad824d2dbc920e519b0f8a27.md) | 66 | `declaration-track:ad824d2dbc920e519b0f8a271e2cea695ebf6dee0501c30c320ea64cf498ada9` |
| 7 | `theorem` | [vector_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/PointedSpindle/Variantac5b8f2cb5e4c47bdac6285aa15b4d5f1ff94fce590f567728a6c653252cec1b.lean/declarations/vector-norm--844e3d51f6e81de9e40ee4a0.md) | 73 | `result-track:844e3d51f6e81de9e40ee4a0b936bd79dd17e451157625834d1b98abcbdb280b` |
| 8 | `def` | [vectorState](../../../../../mathematics/Analysis/FunctionalAnalysis/PointedSpindle/Variantac5b8f2cb5e4c47bdac6285aa15b4d5f1ff94fce590f567728a6c653252cec1b.lean/declarations/vectorstate--2e36f248c83babec8859b82d.md) | 79 | `declaration-track:2e36f248c83babec8859b82d81814387a10c4f2baacf7cf943bf10f81c7805f0` |
| 9 | `def` | [projection](../../../../../mathematics/Analysis/FunctionalAnalysis/PointedSpindle/Variantac5b8f2cb5e4c47bdac6285aa15b4d5f1ff94fce590f567728a6c653252cec1b.lean/declarations/projection--cf22119792fe4abebba44695.md) | 82 | `declaration-track:cf22119792fe4abebba4469511c699478389e9ea1b19a4ab56d5711d34ead16a` |
| 10 | `theorem` | [projection_selfAdjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/PointedSpindle/Variantac5b8f2cb5e4c47bdac6285aa15b4d5f1ff94fce590f567728a6c653252cec1b.lean/declarations/projection-selfadjoint--d9c706e9dd45b46be9628bb1.md) | 89 | `result-track:d9c706e9dd45b46be9628bb1d9f943cb5bec4abf9daa7e4996f6358944855086` |
| 11 | `theorem` | [projection_idempotent](../../../../../mathematics/Analysis/FunctionalAnalysis/PointedSpindle/Variantac5b8f2cb5e4c47bdac6285aa15b4d5f1ff94fce590f567728a6c653252cec1b.lean/declarations/projection-idempotent--9a95ef066e6864da1d8c6733.md) | 93 | `result-track:9a95ef066e6864da1d8c673364ace2448141330f199a932457a4a07616c1f99e` |
| 12 | `def` | [canonical](../../../../../mathematics/Analysis/FunctionalAnalysis/PointedSpindle/Variantac5b8f2cb5e4c47bdac6285aa15b4d5f1ff94fce590f567728a6c653252cec1b.lean/declarations/canonical--7e0d4608b4e80207a7bd4890.md) | 98 | `declaration-track:7e0d4608b4e80207a7bd48902291637f7f2d25d734fa03fceb3dc58ffcf8389a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
