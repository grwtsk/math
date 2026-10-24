# Verification target: GRWTSK.NumberTheory.Moebius.MertensPointwiseToDyadicGeometric

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c733396529d16479328faf49cf014faa96699ad6",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c733396529d16479328faf49cf014faa96699ad6`.

Source path: `GRWTSK/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.MertensDyadicGeometricEnvelope`](../../../../mathematics/NumberTheory/Moebius/MertensDyadicGeometricEnvelope.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Data.Nat.Cast.Order.Field` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pointwiseMertensDyadicEpsilon](../../../../mathematics/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean/declarations/pointwisemertensdyadicepsilon--e446c1a66b7d6d2dfd4a7dfe.md) | 54 | `declaration-track:e446c1a66b7d6d2dfd4a7dfeaa131fdcc8125b73b019e0ac695c3ecbee0f36fa` |
| 2 | `def` | [pointwiseMertensDyadicExponent](../../../../mathematics/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean/declarations/pointwisemertensdyadicexponent--5f9a8f34c2983341e58e3ea9.md) | 59 | `declaration-track:5f9a8f34c2983341e58e3ea9256118d808db56a822f0470a5507e4f8cb59ef27` |
| 3 | `def` | [pointwiseMertensDyadicConstantFactor](../../../../mathematics/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean/declarations/pointwisemertensdyadicconstantfactor--05e9489ff7b754ac8e5f4689.md) | 65 | `declaration-track:05e9489ff7b754ac8e5f4689324f1d5e06427c2f2cfaa164294aa0a8b43b95e6` |
| 4 | `def` | [pointwiseMertensDyadicRatio](../../../../mathematics/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean/declarations/pointwisemertensdyadicratio--7e114676747fa98ea13df5b4.md) | 70 | `declaration-track:7e114676747fa98ea13df5b49a361fbea698f345c6d7298986aaf56087eb3371` |
| 5 | `theorem` | [pointwiseMertensDyadicRatio_eq_rpow_neg](../../../../mathematics/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean/declarations/pointwisemertensdyadicratio-eq-rpow-neg--2c560204382cd01b31e3e205.md) | 75 | `result-track:2c560204382cd01b31e3e20505fdce7781d86333340b9607b1b7a02ab34a026f` |
| 6 | `theorem` | [pointwiseMertensDyadicExponent_pos](../../../../mathematics/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean/declarations/pointwisemertensdyadicexponent-pos--ccbf888749ff75c4a7698723.md) | 84 | `result-track:ccbf888749ff75c4a76987231bbf049e19e4f8114fba432f98eb4694df60de6a` |
| 7 | `theorem` | [pointwiseMertensDyadicRatio_nonneg](../../../../mathematics/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean/declarations/pointwisemertensdyadicratio-nonneg--948836555ad4126481564fa1.md) | 92 | `result-track:948836555ad4126481564fa1ab2de5fa8917ca51df08c4c1a8b9e24a1dbf91fb` |
| 8 | `theorem` | [pointwiseMertensDyadicRatio_lt_one](../../../../mathematics/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean/declarations/pointwisemertensdyadicratio-lt-one--86c7c9e426973220f3fc9a2a.md) | 100 | `result-track:86c7c9e426973220f3fc9a2a1ec5f098801eacede2140596932a71740dafc682` |
| 9 | `theorem` | [cast_dyadicDescendant_le_upperModel](../../../../mathematics/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean/declarations/cast-dyadicdescendant-le-uppermodel--542ecd22b7cd7be6a4a91ab7.md) | 112 | `result-track:542ecd22b7cd7be6a4a91ab75cc4d694ae69531f916e9afbc5e87cbc58560949` |
| 10 | `theorem` | [sqrt_mul_rpow_eq_totalExponent](../../../../mathematics/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean/declarations/sqrt-mul-rpow-eq-totalexponent--9f666bddcab0a83e76947d7e.md) | 134 | `result-track:9f666bddcab0a83e76947d7e3edffa7f7ee791661f0ead7285c7795188b4ed76` |
| 11 | `theorem` | [upperModel_rpow_eq_geometric](../../../../mathematics/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean/declarations/uppermodel-rpow-eq-geometric--9729d2ab44087473c9970055.md) | 143 | `result-track:9729d2ab44087473c9970055ae0264e45d76353746e7fb3fd9c3c45b29153994` |
| 12 | `theorem` | [dyadic_totalExponent_le_parentScale](../../../../mathematics/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean/declarations/dyadic-totalexponent-le-parentscale--aa433d0dbb008ac4961c52c5.md) | 179 | `result-track:aa433d0dbb008ac4961c52c5e740747d58a5ee381d9df788fb460a9af5b33d51` |
| 13 | `theorem` | [ordinaryMertens_descendant_le_geometric](../../../../mathematics/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean/declarations/ordinarymertens-descendant-le-geometric--1bbf3d7cc3d12eca94341796.md) | 197 | `result-track:1bbf3d7cc3d12eca94341796032307dc8ae99f2044be3425342081095916dde5` |
| 14 | `theorem` | [dyadicOrdinaryMertensGeometricEnvelope_of_pointwise](../../../../mathematics/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean/declarations/dyadicordinarymertensgeometricenvelope-of-pointwise--ed7c1754ac45ce1a155a3f66.md) | 260 | `result-track:ed7c1754ac45ce1a155a3f6645e0d789a220c722ab7a956f7d62b45d7098158e` |
| 15 | `def` | [pointwiseMertensToDyadicGeometricAdapter](../../../../mathematics/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean/declarations/pointwisemertenstodyadicgeometricadapter--30eb9063717e152e863014bb.md) | 287 | `declaration-track:30eb9063717e152e863014bb9f44f46c14ba0fe33dfcedac90b0ed13a3cd2e31` |
| 16 | `theorem` | [parityMertensSquareRootEnergy_of_pointwise](../../../../mathematics/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean/declarations/paritymertenssquarerootenergy-of-pointwise--8e7c3141f3581dafab79add2.md) | 294 | `result-track:8e7c3141f3581dafab79add201da1639d6d12b4fa4514a2ce6ceada6f1cefb8e` |
| 17 | `theorem` | [naturalScaleCongruenceL1_of_pointwiseMertens_and_nonzero](../../../../mathematics/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean/declarations/naturalscalecongruencel1-of-pointwisemertens-and-nonzero--32f9714f6ee69760a11455d9.md) | 302 | `result-track:32f9714f6ee69760a11455d994a2e3ac992ed8b5df0c0189d8df54df92d9324e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
