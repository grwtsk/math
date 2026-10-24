# Verification target: GRWTSK.Geometry.Hodge.RationalKTheoryComparison

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "997f612416073194ef9f54f013fd6720066838b1",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/Hodge/RationalKTheoryComparison.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Geometry/Hodge/RationalKTheoryComparison.lean/index.md) · [Full source](../../../../mathematics/Geometry/Hodge/RationalKTheoryComparison.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `997f612416073194ef9f54f013fd6720066838b1`.

Source path: `GRWTSK/Geometry/Hodge/RationalKTheoryComparison.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/Hodge/RationalKTheoryComparison.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.
- [`GRWTSK.Geometry.Hodge.RationalCycleCellular`](../../../../mathematics/Geometry/Hodge/RationalCycleCellular.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RationalizationData](../../../../mathematics/Geometry/Hodge/RationalKTheoryComparison.lean/declarations/rationalizationdata--5abb0b316d6ed04a5e5ff5e7.md) | 13 | `declaration-track:5abb0b316d6ed04a5e5ff5e794b56bb918818bb3ebb1441840fde0b0af4ce89f` |
| 2 | `theorem` | [rationalize_eq_zero_iff](../../../../mathematics/Geometry/Hodge/RationalKTheoryComparison.lean/declarations/rationalize-eq-zero-iff--835570389597cfe7cfa0debe.md) | 28 | `result-track:835570389597cfe7cfa0debe28e55644423665967085adcf816554decee77003` |
| 3 | `theorem` | [rationalize_eq_of_sub_mem_lost](../../../../mathematics/Geometry/Hodge/RationalKTheoryComparison.lean/declarations/rationalize-eq-of-sub-mem-lost--9dd949cc7656636f2425f5cf.md) | 36 | `result-track:9dd949cc7656636f2425f5cfead145c4d18bdc0c6545b52a400ecf789d8536ba` |
| 4 | `structure` | [RationalChernData](../../../../mathematics/Geometry/Hodge/RationalKTheoryComparison.lean/declarations/rationalcherndata--ec253b884a1987e7d3d4dde0.md) | 52 | `declaration-track:ec253b884a1987e7d3d4dde06e687fd7259b9005bf8314f7df4839b669585444` |
| 5 | `theorem` | [cycleFromK_apply](../../../../mathematics/Geometry/Hodge/RationalKTheoryComparison.lean/declarations/cyclefromk-apply--f5a802574a79944627e3e914.md) | 71 | `result-track:f5a802574a79944627e3e91462021e2ccfd0d40efd96e6ed1528db6dde5e2271` |
| 6 | `structure` | [RationalKCycleCellularAdapter](../../../../mathematics/Geometry/Hodge/RationalKTheoryComparison.lean/declarations/rationalkcyclecellularadapter--3274563cec982fa51a05a27b.md) | 80 | `declaration-track:3274563cec982fa51a05a27b810498f99b4b8d2442ed9c6b78eea299c4a3a8a5` |
| 7 | `def` | [cellClassOfIntegral](../../../../mathematics/Geometry/Hodge/RationalKTheoryComparison.lean/declarations/cellclassofintegral--c9817dd4bd161c47cf91de7d.md) | 108 | `declaration-track:c9817dd4bd161c47cf91de7df18fd91ed9e2c7d2936eeea5385905e72848f346` |
| 8 | `theorem` | [cellClassOfIntegral_formula](../../../../mathematics/Geometry/Hodge/RationalKTheoryComparison.lean/declarations/cellclassofintegral-formula--bdd25c519f99e29a5e6d307c.md) | 114 | `result-track:bdd25c519f99e29a5e6d307cb473a8697728e52ce468602a428610a3180524da` |
| 9 | `theorem` | [cellClassOfIntegral_chern_add_correction](../../../../mathematics/Geometry/Hodge/RationalKTheoryComparison.lean/declarations/cellclassofintegral-chern-add-correction--cfe79bcfd4e987576d0a8d6e.md) | 124 | `result-track:cfe79bcfd4e987576d0a8d6e7b870996bac75b4da8c5fbca11800404bbd94405` |
| 10 | `theorem` | [cellClassOfIntegral_eq_of_rationalize_eq](../../../../mathematics/Geometry/Hodge/RationalKTheoryComparison.lean/declarations/cellclassofintegral-eq-of-rationalize-eq--e51b4cf1f15ade12970d9673.md) | 137 | `result-track:e51b4cf1f15ade12970d967326c02799e5a647ad0b191e45c0a2665fec3a8f7e` |
| 11 | `theorem` | [cellClassOfIntegral_eq_zero_of_mem_lost](../../../../mathematics/Geometry/Hodge/RationalKTheoryComparison.lean/declarations/cellclassofintegral-eq-zero-of-mem-lost--c3f445514c87d642a22572fa.md) | 147 | `result-track:c3f445514c87d642a22572fa5188de71669d6513621661921323a257a3ee1a08` |
| 12 | `theorem` | [cellClassOfIntegral_eq_of_sub_mem_lost](../../../../mathematics/Geometry/Hodge/RationalKTheoryComparison.lean/declarations/cellclassofintegral-eq-of-sub-mem-lost--bb873272194f1a87ff6e1759.md) | 157 | `result-track:bb873272194f1a87ff6e1759f3f58affd9aa35f77e3406f77e79a0254fdcd055` |
| 13 | `def` | [rationalIdentity](../../../../mathematics/Geometry/Hodge/RationalKTheoryComparison.lean/declarations/rationalidentity--5ad7a68fc798ff96a870cdcc.md) | 171 | `declaration-track:5ad7a68fc798ff96a870cdccfbd9f60cde0da408f2d6033ac5f7d434f82f94ca` |
| 14 | `def` | [identityChern](../../../../mathematics/Geometry/Hodge/RationalKTheoryComparison.lean/declarations/identitychern--8a750781d29e1faf3fa43251.md) | 179 | `declaration-track:8a750781d29e1faf3fa43251e34dab4658cfde3b194a804ab41762483c78458f` |
| 15 | `def` | [lineKAdapter](../../../../mathematics/Geometry/Hodge/RationalKTheoryComparison.lean/declarations/linekadapter--57ff76b4713fb57d749291ea.md) | 191 | `declaration-track:57ff76b4713fb57d749291ea5cb7752166bc4a687908eab8d9ef5be412c995d4` |
| 16 | `theorem` | [lineKAdapter_cellClass](../../../../mathematics/Geometry/Hodge/RationalKTheoryComparison.lean/declarations/linekadapter-cellclass--b31fdbd576ae70940c347739.md) | 199 | `result-track:b31fdbd576ae70940c347739cf190e589a5e1465e59aab3ae8fdb48d15956d02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
